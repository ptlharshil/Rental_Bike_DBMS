USE GROUP7;

create table dbo.Employees
(EmployeeID int identity not null primary key, 
FirstName varchar(45) not null, 
LastName varchar (45) not null, 
gender varchar (45),
street varchar (45),
city varchar (45),
[State] varchar (45),
Zipcode int,
SSN bigint, 
EmployeeType varchar (45)
);

create table dbo.Repairs
(RepairsID int,
RepairCost int,
InsuranceDetails varchar (45),
EmployeeID int, 
BikeID int, 
primary key (RepairsID),
Foreign key (EmployeeID) references dbo.Employees (EmployeeID),
Foreign key (BikeID) references dbo.Bikes (BikeID)
);

--customer table
create table Customers
(CustomerID int identity primary key   not null,
FirstName varchar(30) not null, 
LastName varchar(30) ,
Gender varchar(10) not null,
Occupation varchar(30) not null,
DateOfBirth date not null,
Age as datediff(hour, DateOfBirth,getdate())/8766,
Street varchar(30), 
City varchar(30),
State varchar(30),
Zipcode int, 
PhoneNo bigint,
SSN bigint,
MembershipTypeID int,
foreign key (MembershipTypeID) references Memberships(MembershipTypeID))

--membership table
create table Memberships
(MembershipTypeID int identity primary key,
Type varchar(30),
Cost int,
)

--Booking Details Table
create table BookingDetails
(BookingID int identity primary key,
StartDate date,
EndDate date,
Duration varchar(30),
TotalCost As dbo.totalCost(BookingID),
Discount As dbo.discount(BookingID),
PaidCost As dbo.costpaid(BookingID),
Commission As dbo.commission(BookingID),
CustomerID int,
foreign key (CustomerID) references Customers(CustomerID),
StationID int,
foreign key (StationID) references Station(StationID),
BikeID int,
foreign key (BikeID) references Bikes(BikeID)
);

---Distributers Table Creation---
CREATE TABLE Distributers
(DistributersID INT PRIMARY KEY,
BikeType VARCHAR(45) Not Null,
Name VARCHAR(45) Not Null,
Street VARCHAR(45),
City VARCHAR(45),
State VARCHAR(45),
ZipCode bigint
);
---BikeOrders Table Creation---
CREATE TABLE BikeOrders
(OrdersID INT PRIMARY KEY,
Quantity INT Not Null,
Price INT Not Null,
EmployeeID INT REFERENCES Employees(EmployeeID),
DistributersID INT REFERENCES Distributers(DistributersID)
);
---Feedback Table Creation---
CREATE TABLE Feedback
(FeedbackID INT PRIMARY KEY,
Recommendation VARCHAR(45),
Complaints VARCHAR(45),
Rating INT Not Null,
CustomerID INT REFERENCES Customers(CustomerID),
EmployeeID INT REFERENCES Employees(EmployeeID)
); 
---TimePeriod Table Creation---
CREATE TABLE TimePeriod
(Month AS dbo.getMonth(BookingID),
Season as dbo.getSeason(BookingID),
BookingID INT REFERENCES BookingDetails(BookingID)
);


CREATE TABLE Station(
   StationID INT IDENTITY  NOT NULL,
   Street VARCHAR (45)     NOT NULL,
   ZipCode INT    NOT NULL,
   Capacity  INT        NOT NULL,
   PRIMARY KEY (StationID)
);


CREATE TABLE Bikes(
   BikeID INT IDENTITY  NOT NULL,
   BikeType VARCHAR (45)     NOT NULL,
   BikeStatus VARCHAR (45)     NOT NULL,
   Cost INT    NOT NULL,
   StationID INT null,
   RenterID INT null,
   PRIMARY KEY (BikeID),
   FOREIGN KEY (StationID) REFERENCES Station(StationID),
   FOREIGN KEY (RenterID) REFERENCES Renters(RenterID)  
);
   
CREATE TABLE Renters(
   RenterID INT IDENTITY  NOT NULL,
   FirstName VARCHAR (45)     NOT NULL,
   LastName VARCHAR (45)    NOT NULL,
   Gender  VARCHAR (25)        NOT NULL,
   Street  VARCHAR (25)        NOT NULL,
   City  CHAR (25)     NOT NULL,
   State CHAR (25)     NOT NULL,
   ZipCode INT    NOT NULL,
   PhoneNumber bigint   NOT NULL,
   SSN  bigint   NOT NULL,
   BikeType VARCHAR(45)  
   PRIMARY KEY (RenterID),
);

CREATE TABLE Promotion(
	CustomerID INT   NOT NULL,
	BookingDetailsID INT NOT NULL,
	PromoAmount INT,
	FOREIGN KEY (CustomerID) REFERENCES [dbo].[Customers](CustomerID),
	FOREIGN KEY (BookingDetailsID) REFERENCES [dbo].[BookingDetails](BookingID),
);

CREATE TABLE Weather(
	Temperature INT,
	Precipitation VARCHAR(40),
	BookingDetailsID INT  NOT NULL,
	FOREIGN KEY (BookingDetailsID) REFERENCES [dbo].[BookingDetails](BookingID)
);

---FUNCTION getMonth for TimePeriod Table----
CREATE OR ALTER FUNCTION dbo.getMonth(@bookingID INT)
RETURNS INT
AS
BEGIN
	DECLARE @month INT;
    select @month=Month(StartDate) from
	BookingDetails
	where BookingID = @bookingID;
	RETURN @month;
END


--Function for getting the season for TimePeriod table--

create or alter function dbo.getSeason(@bookingID int)
returns varchar(20)
as
begin
     declare @season varchar(20);
	 declare @month int;
	 select @month=Month(StartDate) from
	BookingDetails
	where BookingID = @bookingID;
	 if(@month>1 and @month<6)
	 begin
	 set @season='Spring';
	 end
	 else if (@month>=6 and @month <8)
	 begin
	 set @season='Summer';
	 end
	 else
	 begin
	 set @season='Fall';
	 end
	 return @season
end

---FUNCTION totalCost for BookingDetails Table----
CREATE OR ALTER FUNCTION totalCost(@bookingId INT)
Returns INT
As
Begin
	Declare @type Varchar(45);
	Declare @cost float;
	Declare @duration float;
	Begin
		select @type=BikeType from Bikes b
		join BookingDetails bd
		on b.BikeID= bd.BikeID
		WHERE bd.BookingID = @bookingId;
	end
	Begin
		select @duration = CEILING(Duration)
		from BookingDetails
		WHERE BookingID = @bookingId;;
	end
	If @type = 'Geared'
	Begin
		if @duration < 6
		Begin
			SET @cost = 5*@duration;
		End
		Else If @duration >6 AND @duration < 24
		Begin
			SET @cost = 4.5*@duration;
		End
		ELSE If @duration < 121
		Begin
			SET @cost = 4*@duration;
		End
	end
	Else If @type= 'Non-Geared'
	Begin
		if @duration < 6
		Begin
			SET @cost = 4*@duration;
		End
		Else If @duration >6 AND @duration < 24
		Begin
			SET @cost = 3.5*@duration;
		End
		ELSE If @duration < 121
		Begin
			SET @cost = 3*@duration;
		end
	end
	RETURN @cost;
END;

---FUNCTION discount for BookingDetails Table----
CREATE OR ALTER FUNCTION discount(@bookingID INT)
Returns float
As
Begin
	Declare @cost float;
	select @cost = TotalCost
	from BookingDetails 
	WHERE BookingID = @bookingId;

	If Exists(
		select c.MembershipTypeID from Memberships m
		join Customers c
		on m.MembershipTypeID= c.MembershipTypeID
		join BookingDetails b
		on c.CustomerID = b.CustomerID
		WHERE b.BookingID = @bookingId
	)
	Begin
	SET @cost = 0.1*@cost;
	end
	else
	Begin
	SET @cost = 0
	end
	RETURN @cost;
END;
---FUNCTION costpaid for BookingDetails Table----
CREATE OR ALTER FUNCTION costpaid(@bookingID INT)
Returns float
As
Begin
	Declare @cost float;
	select @cost = TotalCost
	from BookingDetails 
	WHERE BookingID = @bookingId;

	If Exists(
		select c.MembershipTypeID from Memberships m
		join Customers c
		on m.MembershipTypeID= c.MembershipTypeID
		join BookingDetails b
		on c.CustomerID = b.CustomerID
		WHERE b.BookingID = @bookingId
	)
	Begin
	SET @cost = 0.9*@cost;
	end
	RETURN @cost;
END;


---FUNCTION commission for BookingDetails Table----
CREATE OR ALTER FUNCTION commission(@bookingID INT)
Returns float
As
Begin
	Declare @cost float;
	Declare @RenterID INT;
	select @cost = TotalCost
	from BookingDetails 
	WHERE BookingID = @bookingId;
	BEGIN
		select @RenterID = b.RenterID from BookingDetails bd
		join Bikes b
		on bd.BikeID= b.BikeID
		WHERE bd.BookingID = @bookingID;
	END
	If @RenterID IS NULL
		Begin
			SET @cost = 0.0;
		end
	else
		Begin
			SET @cost = 0.2*@cost;
		end
	RETURN @cost;
END;

---FUNCTION CheckEndDate for BookingDetails Table (CHECK Constraint)----
CREATE FUNCTION CheckEndDate(@endDate Date)
Returns INT
As
Begin
	Declare @count INT;
	select @count = DATEDIFF(day,StartDate,@endDate)
	from BookingDetails;
	RETURN @count;
END;

ALTER TABLE BookingDetails ADD CONSTRAINT EndDatecheck 
CHECK (dbo.CheckEndDate(EndDate) <= 5);


-----Check Constraints for cost -- 

CREATE FUNCTION CheckCost(@MembershipId INT)
Returns INT
As
Begin
	Declare @count INT;
	Declare @cost INT;
	Declare @type varchar(30);
	select @type = Type from Memberships 
	where MembershipTypeID = @MembershipId;
	select @cost = Cost from Memberships 
	where MembershipTypeID = @MembershipId;
	IF @type = 'Weekly'
	Begin
		if @cost = 10
		Begin
			SET @count=1
		end
		else
		Begin
			SET @count=0
		end
	end
	else if @type = 'Monthly'
	Begin
		if @cost = 20
		Begin
			SET @count=1
		end
		else
		Begin
			SET @count=0
		end
	end
	RETURN @count;
END;

ALTER TABLE Memberships ADD CONSTRAINT CheckMembershipCost 
CHECK (dbo.CheckCost(MembershipTypeID) =1);

