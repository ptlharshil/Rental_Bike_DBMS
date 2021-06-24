 ---VIEWS FOR REPORTING----
CREATE VIEW PrefferedCustomers AS
SELECT c.*
FROM GROUP7.dbo.Customers c
WHERE CustomerID IN (
	SELECT CustomerID 
	FROM GROUP7.dbo.BookingDetails bd
	WHERE EndDate >= DATEADD(day, -31, convert(date, GETDATE()))
	GROUP BY CustomerID
	HAVING COUNT(bd.BookingID) > 2)

	
CREATE VIEW BikeBookingReport AS
SELECT 
	c.CustomerID, c.FirstName, c.LastName, c.Gender, c.Occupation, c.Age, c.Street, c.City, c.State, c.Zipcode, c.PhoneNo, c.SSN, c.MembershipTypeID, 
	bd.BookingID, bd.StartDate, bd.EndDate, bd.Duration, bd.StationID, bd.BikeID, bd.Discount, bd.TotalCost, bd.PaidCost, bd.Commisssion 
FROM GROUP7.dbo.Customers c
JOIN GROUP7.dbo.BookingDetails bd 
ON c.CustomerID = bd.CustomerID 


CREATE VIEW RankedSeasons AS 
SELECT 
	tp.Season, 
	SUM(bd.TotalCost) AS TotalRideSales, 
	COUNT(bd.BookingID) AS TotalRides,
	RANK() OVER ( ORDER BY COUNT(bd.BookingID) DESC) AS Ranking
FROM GROUP7.dbo.TimePeriod tp 
JOIN GROUP7.dbo.BookingDetails bd 
ON tp.BookingID = bd.BookingID 
GROUP BY tp.Season 


CREATE VIEW BikeOwnerStatus AS
SELECT DISTINCT 
	b.BikeID, 
	CASE 
	 	WHEN b.StationID IS NOT NULL THEN 'Company'
	 	WHEN b.RenterID IS NOT NULL THEN 'Renter'
	 	ELSE 'Error'
	 END AS BikeOwner
FROM GROUP7.dbo.Bikes b
JOIN GROUP7.dbo.BookingDetails bd 
ON bd.BikeID = b.BikeID


CREATE VIEW BikeDistributionStatistics AS 
SELECT 
	 b.BikeType,
	 bos.BikeOwner,
	 CASE
		 WHEN bos.BikeOwner = 'Company' THEN COUNT(b.StationID)
		 WHEN bos.BikeOwner = 'Renter' THEN COUNT(b.RenterID)
		 ELSE '0'
	 END AS NumberOfBikes,
	 SUM(bd.TotalCost) AS TotalSales,
	 CASE
	 	WHEN SUM(bd.TotalCost) > 150 THEN 'HIGH'
	 	WHEN SUM(bd.TotalCost) <= 50 THEN 'LOW'
	 	ELSE 'NEUTRAL'
	 END AS DemandStatus
FROM GROUP7.dbo.Bikes b
JOIN GROUP7.dbo.BookingDetails bd 
  ON bd.BikeID = b.BikeID
JOIN BikeOwnerStatus bos
  ON bos.BikeID = bd.BikeID 
GROUP BY b.BikeType, bos.BikeOwner

CREATE VIEW BikeServiceProfitMargin AS 
SELECT 
	SUM(r.RepairCost - SUBSTRING(r.InsuranceDetails, 32, 100)) AS TotalCosts,
	SUM(bd.TotalCost) AS TotalSales,
	SUM(bd.TotalCost) - SUM(r.RepairCost - SUBSTRING(r.InsuranceDetails, 32, 100)) AS Profit
FROM GROUP7.dbo.BookingDetails bd
JOIN GROUP7.dbo.Repairs r 
 ON r.BikeID = bd.BikeID


--COMMANDS TO EXECUTE THE VIEWS--

 -- Joins Together all customer info and their individual rides. 
 SELECT *
FROM GROUP7.dbo.BikeBookingReport bbr 

-- Shows the distribution of bikes based on type and ownership to dertermine demand based on sales
SELECT *
FROM GROUP7.dbo.BikeDistributionStatistics bds 

-- Shows the bikes in the system and who owns them (this view was mostly for implementing the BikeDistributionStatistic View)
SELECT *
FROM GROUP7.dbo.BikeOwnerStatus bos 

-- Relays the total costs of repairs, the total sales from rentals, and the profit made
SELECT *
FROM GROUP7.dbo.BikeServiceProfitMargin bspm 

-- Returns a list of preffered customers based on rides occured in the last 31 days (3 rides or more is a preffered customer)
SELECT *
FROM GROUP7.dbo.PrefferedCustomers pc 

-- Ranks the seasons based on total rides and shows ride sales as well for each season
SELECT *
FROM GROUP7.dbo.RankedSeasons rs