--insert into memberships
SET IDENTITY_INSERT Memberships ON
insert into Memberships(MembershipTypeID,Type,Cost) values(101,'Weekly', 10)
SET IDENTITY_INSERT Memberships Off
insert into Memberships(Type, Cost) values ('Monthly', 20)
insert into Memberships(Type, Cost) values ('Weekly', 10)
insert into Memberships(Type, Cost) values ('Monthly', 20)
insert into Memberships(Type, Cost) values ('Weekly', 10)
insert into Memberships(Type, Cost) values ('Monthly', 20)
insert into Memberships(Type, Cost) values ('Weekly', 10)
insert into Memberships(Type, Cost) values ('Monthly', 20)
insert into Memberships(Type, Cost) values ('Weekly', 10)
insert into Memberships(Type, Cost) values ('Monthly', 20)




--inserting data to customers
SET IDENTITY_INSERT Customers ON
insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN) 
values ( 'John','Doe','Male', 'Student', '1997-05-09','Park st','Boston','MA',02115,98988,1111 )
SET IDENTITY_INSERT Customers off

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN) 
values ( 'Mark','Don','Male', 'Employee', '1989-05-09','Parkinosn st','Boston','MA',02105,9898989898,1111111111 )

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Mary','Donner','Female', 'Employee', '1989-04-08','Parkino dr','Cambridge','MA',02345,6848984848,111111131,(Select MembershipTypeID from Memberships where MembershipTypeID=101))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Martin','Gu','Male', 'Student', '1998-12-08','Pant dr','Boston','MA',02145,7848944748,111111112,(Select MembershipTypeID from Memberships where MembershipTypeID=102))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Mart','Guptill','Male', 'Student', '1999-12-08','Hunt dr','Boston','MA',02045,8800044748,111111113,(Select MembershipTypeID from Memberships where MembershipTypeID=103))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Jane','Johnson','Female', 'Student', '1995-12-08','Pantene dr','Boston','MA',02130,7000944008,111111114,(Select MembershipTypeID from Memberships where MembershipTypeID=104))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Jenny','Johny','Female', 'Student', '1996-11-18','Audrey st','Boston','MA',02133,6170944008,111111115,(Select MembershipTypeID from Memberships where MembershipTypeID=105))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Harsh','Shah','Male', 'Employee', '1988-10-28','Hand dr','Boston','MA',02140,8999944008,111111116,(Select MembershipTypeID from Memberships where MembershipTypeID=106))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Anusha','Sharma','Female', 'Student', '1998-11-16','Hander dr','Boston','MA',02240,5899944009,111111117,(Select MembershipTypeID from Memberships where MembershipTypeID=107))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Lily','Ham','Female', 'Employee', '1990-01-18','Handle dr','Boston','MA',02150,6996664008,111111118,(Select MembershipTypeID from Memberships where MembershipTypeID=108))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Jerry','Hamilton','Male', 'Student', '1997-11-18','Huntington dr','Boston','MA',02136,6177664008,111111119,(Select MembershipTypeID from Memberships where MembershipTypeID=109))

insert into Customers(FirstName,LastName,Gender,Occupation,DateOfBirth,Street,City,State,Zipcode,PhoneNo,SSN,MembershipTypeID) 
values ( 'Tom','Head','Male', 'Employee', '1992-11-13','Semes st','Boston','MA',02450,2246664508,111111120,(Select MembershipTypeID from Memberships where MembershipTypeID=110))




--inserting data in employees table
SET IDENTITY_INSERt Employees ON
insert into Employees(EmployeeID,FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values (201,'Brad','Kam', 'Male', 'Gent st.', 'Boston','MA',02144,1000000001, 'Technician')
SET IDENTITY_INSERt Employees Off

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Brian','Kamat', 'Male', 'Gentle st.', 'Boston','MA',02154,1000000002, 'Customer Service')

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Ashley','Kale', 'Female', 'Hide st.', 'Boston','MA',03454,1000000003, 'Customer Service')

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Jordon','Jondon', 'Female', 'Hidbound st.', 'Boston','MA',03334,1000000004, 'Customer Service')

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Tom','Kamen', 'Male', 'Hidden st.', 'Boston','MA',02134,1000000005, 'Admin Staff')

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Jerry','Kaemen', 'Female', 'Stuart st.', 'Boston','MA',02454,1000000006, 'Admin Staff')

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Andrew','Stu', 'Male', 'Binny st.', 'Boston','MA',04454,1000000007, 'Technician')

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Lady','Stem', 'Female', 'Lara st.', 'Boston','MA',01454,1000000008, 'Customer Service')

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Andres','Stung', 'Male', 'Umber st.', 'Boston','MA',02254,1000000009, 'Sales Representative')

insert into Employees(FirstName,LastName,gender,street,city,State,Zipcode,SSN,EmployeeType) 
values ('Ramsei','Gordam', 'Male', 'Umb st.', 'Boston','MA',01253,1000000010, 'Sales Representative')

--insert in distributors table
Insert into Distributers(DistributersID, BikeType, Name, Street, State, ZipCode) values 
(601,'Geared', 'CBZ', 'Beacon st','MA', 02134);

Insert into Distributers(DistributersID, BikeType, Name, Street, City, State, ZipCode) values 
(602,'Non-Geared', 'Activa', 'Beacon st','Boston','MA', 02134);

Insert into Distributers(DistributersID, BikeType, Name) values 
(603,'Geared', 'ZMR');
Insert into Distributers(DistributersID, BikeType, Name) values 
(604,'Geared', 'ZMR');
Insert into Distributers(DistributersID, BikeType, Name) values 
(605,'Geared', 'ZMR');
Insert into Distributers(DistributersID, BikeType, Name) values 
(606,'Geared', 'ZMR');
Insert into Distributers(DistributersID, BikeType, Name) values 
(607,'Non-Geared', 'Activa');
Insert into Distributers(DistributersID, BikeType, Name) values 
(608,'Non-Geared', 'Activa');
Insert into Distributers(DistributersID, BikeType, Name) values 
(609,'Non-Geared', 'Activa');
Insert into Distributers(DistributersID, BikeType, Name, Street, City, State, ZipCode) values 
(610,'Geared', 'CBZ', 'Beacon st','Boston','MA', 02134);


--INSERTING DATA IN STATION TABLE
SET IDENTITY_INSERT Station ON
INSERT INTO Station(StationID,Street,ZipCode,Capacity) values (401, 'Alphonsus St',02120,10)
SET IDENTITY_INSERT Station OFF

INSERT INTO Station(Street,ZipCode,Capacity) values ('Charles Street',02120,5)
INSERT INTO Station(Street,ZipCode,Capacity) values ('Newbury Street',02111,10)
INSERT INTO Station(Street,ZipCode,Capacity) values ('Day Boulevard',02112,5)
INSERT INTO Station(Street,ZipCode,Capacity) values ('Centre Street',02115,10)
INSERT INTO Station(Street,ZipCode,Capacity) values ('Commonwealth Avenue',02116,5)
INSERT INTO Station(Street,ZipCode,Capacity) values ('Salem Street',02117,10)
INSERT INTO Station(Street,ZipCode,Capacity) values ('Memorial Drive',02122,5)
INSERT INTO Station(Street,ZipCode,Capacity) values ('Boylston Street',02121,10)
INSERT INTO Station(Street,ZipCode,Capacity) values ('Harvard Square',02125,5)

alter table [GROUP7].[dbo].[Renters] alter column PhoneNumber bigint;
alter table [GROUP7].[dbo].[Employees] alter column SSN bigint;


--INSERTING DATA INTO RENTERS TABLE
SET IDENTITY_INSERT Renters ON
INSERT INTO Renters(RenterID,FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values (301,'Mary','Drake','Female','Alphonsus St','Boston','MA',02120,7465839402,2228372838,'Geared')
SET IDENTITY_INSERT Renters OFF

INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('May','Denwer','Female','Charles St','Boston','MA',02125,8575839402,4553452228,'Geared')
INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('Jacob','Brooke','Male','Newbury Street','Boston','MA',02111,7465354402,2228354338,' Non-Geared')
INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('Bob','Froo','Male','Day Boulevard','Boston','MA',02112,7455539402,2228849338,'Non-Geared')
INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('Zack','Helman','Male','Centre Street','Boston','MA',02115,7465843402,1118372838,'Geared')
INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('Spring','Faunae','Female','Commonwealth Avenue','Boston','MA',02116,7466758402,2128392838,'Non-Geared')
INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('Mason','Geee','Male','Salem Street','Boston','MA',02117,5647339402,7222372838,'Geared')
INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('Meghan','Ave','Female','Memorial Drive','Boston','MA',02122,5555839402,6758392283,'Non-Geared')
INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('Niahh','Ded','Female','Boylston Street','Boston','MA',02121,7465839402,2228372838,'Geared')
INSERT INTO Renters(FirstName,LastName,Gender,Street,City,State,ZipCode,PhoneNumber,SSN,BikeType) 
values ('Neejam','Graaax','Male','Harvard Square','Boston','MA',02125,7412343440,4352372838,'Geared')

--INSERTING DATA INTO BIKES TABLE
SET IDENTITY_INSERT Bikes ON
INSERT INTO Bikes(BikeID,BikeType,BikeStatus,Cost,StationID) 
values (501,'Geared','enabled',5,(Select StationID from Station where StationID=401))
SET IDENTITY_INSERT Bikes OFF

INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID,RenterID) 
values ('Non-Geared','enabled',4,(Select StationID from Station where StationID=401),(Select RenterID from Renters where RenterID=304))
INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID) 
values ('Geared','enabled',5,(Select StationID from Station where StationID=402))
INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID) 
values ('Non-Geared','enabled',4,(Select StationID from Station where StationID=403))
INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID,RenterID) 
values ('Non-Geared','enabled',4,(Select StationID from Station where StationID=404),(Select RenterID from Renters where RenterID=308))
INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID) 
values ('Geared','disabled',5,(Select StationID from Station where StationID=405))
INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID) 
values ('Non-Geared','enabled',4,(Select StationID from Station where StationID=406))
INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID) 
values ('Non-Geared','disabled',4,(Select StationID from Station where StationID=407))
INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID,RenterID) 
values ('Geared','disabled',5,(Select StationID from Station where StationID=408),(Select RenterID from Renters where RenterID=305))
INSERT INTO Bikes(BikeType,BikeStatus,Cost,StationID) 
values ('Geared','disabled',5,(Select StationID from Station where StationID=409))

--INSERTING DATA INTO REPAIRS TABLE
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (801,25,'Cost Covered from insurance is 20',(Select EmployeeID from Employees where EmployeeID=201),(Select BikeID from Bikes where BikeID=501))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (802,20,'Cost Covered from insurance is 15',(Select EmployeeID from Employees where EmployeeID=201),(Select BikeID from Bikes where BikeID=509))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (803,30,'Cost Covered from insurance is 22',(Select EmployeeID from Employees where EmployeeID=207),(Select BikeID from Bikes where BikeID=508))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (804,40,'Cost Covered from insurance is 32',(Select EmployeeID from Employees where EmployeeID=207),(Select BikeID from Bikes where BikeID=507))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (805,50,'Cost Covered from insurance is 35',(Select EmployeeID from Employees where EmployeeID=207),(Select BikeID from Bikes where BikeID=503))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (806,40,'Cost Covered from insurance is 15',(Select EmployeeID from Employees where EmployeeID=201),(Select BikeID from Bikes where BikeID=510))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (807,30,'Cost Covered from insurance is 20',(Select EmployeeID from Employees where EmployeeID=207),(Select BikeID from Bikes where BikeID=505))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (808,40,'Cost Covered from insurance is 33',(Select EmployeeID from Employees where EmployeeID=201),(Select BikeID from Bikes where BikeID=504))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (809,50,'Cost Covered from insurance is 40',(Select EmployeeID from Employees where EmployeeID=201),(Select BikeID from Bikes where BikeID=506))
INSERT INTO Repairs(RepairsID,RepairCost,InsuranceDetails,EmployeeID,BikeID) 
values (810,20,'Cost Covered from insurance is 15',(Select EmployeeID from Employees where EmployeeID=207),(Select BikeID from Bikes where BikeID=503))


--Adding Values in BikeOrders Coloumn 
alter table [GROUP7].dbo.BikeOrders alter column EmployeeID int Not Null;
alter table [GROUP7].dbo.BikeOrders alter column DistributersID int Not Null;

Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(701,3,500,205,601);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(702,30,150,206,602);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(703,20,200,205,603);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(704,5,1000,205,604);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(705,12,250,206,605);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(706,3,500,205,606);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(707,30,150,206,607);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(708,20,200,206,608);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(709,5,1000,205,609);
Insert into BikeOrders(OrdersID,Quantity,Price,EmployeeID,DistributersID) 
values(710,12,250,206,610);

--INSERTING DATA INTO BOOKINGDETAILS TABLE
SET IDENTITY_INSERT BookingDetails ON
INSERT INTO BookingDetails(BookingID,StartDate,EndDate,Duration,CustomerID,StationID,BikeID) 
values (1001,'2021-03-22','2021-03-22',2,(Select CustomerID from Customers where CustomerID=01)
,(Select StationID from Station where StationID=401),(Select BikeID from Bikes where BikeID=503))
SET IDENTITY_INSERT BookingDetails OFF

UPDATE BookingDetails
SET StationID = 402
WHERE BookingID=1001;

INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,BikeID) ---without station
values ('2021-03-22','2021-03-23',14,(Select CustomerID from Customers where CustomerID=03)
,(Select BikeID from Bikes where BikeID=505))

INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,StationID,BikeID) ---with station
values ('2021-03-23','2021-03-23',4,(Select CustomerID from Customers where CustomerID=04)
,(Select StationID from Station where StationID=402),(Select BikeID from Bikes where BikeID=503))

INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,BikeID) 
values ('2021-06-23','2021-06-24',24,(Select CustomerID from Customers where CustomerID=04)
,(Select BikeID from Bikes where BikeID=502))


INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,StationID,BikeID) ---with station
values ('2021-06-24','2021-06-24',8,(Select CustomerID from Customers where CustomerID=01)
,(Select StationID from Station where StationID=406),(Select BikeID from Bikes where BikeID=507))

INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,StationID,BikeID) ---with station
values ('2021-07-25','2021-07-25',12,(Select CustomerID from Customers where CustomerID=07)
,(Select StationID from Station where StationID=409),(Select BikeID from Bikes where BikeID=510))

INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,StationID,BikeID) ---with station
values ('2021-07-25','2021-07-27',35,(Select CustomerID from Customers where CustomerID=04)
,(Select StationID from Station where StationID=405),(Select BikeID from Bikes where BikeID=506))


INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,BikeID) ---without station
values ('2021-10-25','2021-10-26',10,(Select CustomerID from Customers where CustomerID=05)
,(Select BikeID from Bikes where BikeID=509))


INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,StationID,BikeID) ---with station
values ('2021-11-26','2021-11-27',22,(Select CustomerID from Customers where CustomerID=01)
,(Select StationID from Station where StationID=401),(Select BikeID from Bikes where BikeID=501))

INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,BikeID) ---without station
values ('2021-11-26','2021-11-28',30,(Select CustomerID from Customers where CustomerID=02)
,(Select BikeID from Bikes where BikeID=509))


---checking CHECK CONSTRAINT more than 5 days
INSERT INTO BookingDetails(StartDate,EndDate,Duration,CustomerID,BikeID) ---without station
values ('2021-03-26','2021-04-01',150,(Select CustomerID from Customers where CustomerID=02)
,(Select BikeID from Bikes where BikeID=509))




UPDATE Bikes
SET StationID = Null
WHERE RenterID=305
 

--INSERT DATA INTO FEEDBACK TABLE
insert into Feedback(FeedbackID,Complaints,Rating,CustomerID,EmployeeID)
values (901,'Gear issue',2,(select CustomerID from Customers where CustomerID=1),(Select EmployeeID from Employees where EmployeeID=202))

insert into Feedback(FeedbackID,Recommendation,Rating,CustomerID,EmployeeID)
values (902,'Good service, can improve',4,(select CustomerID from Customers where CustomerID=2),(Select EmployeeID from Employees where EmployeeID=203))

insert into Feedback(FeedbackID,Recommendation,Complaints,Rating,CustomerID,EmployeeID)
values (903,'Use good quality parts','Issue with chain',1,(select CustomerID from Customers where CustomerID=3),(Select EmployeeID from Employees where EmployeeID=204))

insert into Feedback(FeedbackID,Recommendation,Complaints,Rating,CustomerID,EmployeeID)
values (904,'Keep more bike types ','Not suitable for long travel',3,(select CustomerID from Customers where CustomerID=4),(Select EmployeeID from Employees where EmployeeID=208))

insert into Feedback(FeedbackID,Complaints,Rating,CustomerID,EmployeeID)
values (905,'Costly charges',2,(select CustomerID from Customers where CustomerID=5),(Select EmployeeID from Employees where EmployeeID=202))

insert into Feedback(FeedbackID,Recommendation,Rating,CustomerID,EmployeeID)
values (906,'Keep it up',5,(select CustomerID from Customers where CustomerID=6),(Select EmployeeID from Employees where EmployeeID=203))

insert into Feedback(FeedbackID,Recommendation,Complaints,Rating,CustomerID,EmployeeID)
values (911,'increase capacity', 'no bike at station',1,(select CustomerID from Customers where CustomerID=7),(Select EmployeeID from Employees where EmployeeID=204))

insert into Feedback(FeedbackID,Recommendation,Rating,CustomerID,EmployeeID)
values (908,'Good quality bikes',5,(select CustomerID from Customers where CustomerID=8),(Select EmployeeID from Employees where EmployeeID=208))

insert into Feedback(FeedbackID,Recommendation,Rating,CustomerID,EmployeeID)
values (909,'Loved my ride',5,(select CustomerID from Customers where CustomerID=9),(Select EmployeeID from Employees where EmployeeID=202))

insert into Feedback(FeedbackID,Recommendation,Rating,CustomerID,EmployeeID)
values (910,'Cool bikes',5,(select CustomerID from Customers where CustomerID=10),(Select EmployeeID from Employees where EmployeeID=204))



--insert values in promotions

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=1), (select BookingID from BookingDetails where BookingID=1001),3)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=3), (select BookingID from BookingDetails where BookingID=1003),0)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=4), (select BookingID from BookingDetails where BookingID=1004),3)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=4), (select BookingID from BookingDetails where BookingID=1005),0)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=1), (select BookingID from BookingDetails where BookingID=1006),3)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=7), (select BookingID from BookingDetails where BookingID=1007),0)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount)
values ((select CustomerID from Customers where CustomerID=4), (select BookingID from BookingDetails where BookingID=1008),0)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=5), (select BookingID from BookingDetails where BookingID=1010),0)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=1), (select BookingID from BookingDetails where BookingID=1011),0)

insert into Promotion(CustomerID,BookingDetailsID,PromoAmount) 
values ((select CustomerID from Customers where CustomerID=2), (select BookingID from BookingDetails where BookingID=1012),3)



--INSERTING DATA INTO WEATHER TABLE
INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(54, 'cloudy-no precipitation',(Select BookingID from BookingDetails where BookingID = 1001))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(60, 'partlycloudy-no precipitation',(Select BookingID from BookingDetails where BookingID = 1003))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(50, 'precipitation',(Select BookingID from BookingDetails where BookingID = 1004))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(45, 'precipitation',(Select BookingID from BookingDetails where BookingID = 1005))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(62, 'sunny - no precipitation',(Select BookingID from BookingDetails where BookingID = 1006))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(53, 'sunny - little precipitation',(Select BookingID from BookingDetails where BookingID = 1007))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(45, 'cloudy - precipitation',(Select BookingID from BookingDetails where BookingID = 1008))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(70, 'sunny - no precipitation',(Select BookingID from BookingDetails where BookingID = 1010))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(68, 'sunny - no precipitation',(Select BookingID from BookingDetails where BookingID = 1011))

INSERT INTO Weather(Temperature, Precipitation, BookingDetailsID)
Values(48, 'precipitation',(Select BookingID from BookingDetails where BookingID = 1012))


---- Inserting data in TimePeriod---
select * from TimePeriod
Insert into TimePeriod(BookingID) 
values(1001);

Insert into TimePeriod(BookingID) 
values(1012);
Insert into TimePeriod(BookingID) 
values(1003);
Insert into TimePeriod(BookingID) 
values(1004);
Insert into TimePeriod(BookingID) 
values(1005);
Insert into TimePeriod(BookingID) 
values(1006);
Insert into TimePeriod(BookingID) 
values(1007);
Insert into TimePeriod(BookingID) 
values(1008);
Insert into TimePeriod(BookingID) 
values(1011);
Insert into TimePeriod(BookingID) 
values(1010);