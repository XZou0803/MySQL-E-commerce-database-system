
CREATE SCHEMA  `MSIS-2603-Project-<group1>`;
use`MSIS-2603-Project-<group1>`;



CREATE TABLE `Supplier` (
 `SupplierID` varchar(11) NOT NULL,
  `CompanyName` TEXT default NULL,
  `Address` varchar(255) default NULL,
  `City` varchar(255),
  `State` varchar(50) default NULL,
  `Zipcode` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  `ContactPerson` varchar(255) default NULL,
  `ContactNumber` varchar(100) default NULL,
  `ContactEmail` varchar(255) default NULL,
  `ContactFax` varchar(100) default NULL,
   PRIMARY KEY (`SupplierID`));


INSERT INTO `Supplier` (`SupplierID`,`CompanyName`,`Address`,`City`,`State`,`Zipcode`,`Country`,`ContactPerson`,`ContactNumber`,`ContactEmail`,`ContactFax`) VALUES 
("30918186609","Nascetur","8496 Sed St.","Annapolis","Maryland","36447","United States","Montana Griffin","1-547-354-2975","Vivamus.non@gmail.com","1-747-514-7405"),
("70268860023","Vivamusdapibus","P.O. Box 185, 7096 Fusce St.","Minneapolis","MN","12392","United States","Jamal Ward","1-808-398-1802","Cras@purusNullamscelerisque.ca","1-633-148-7287"),
("31704489846","Luctus sit","747-1877 Fusce Street","Montpelier","Vermont","45116","United States","Breanna Tran","1-179-453-8363","interdum@ametfaucibus.com","1-402-203-9423"),
("68659281779","Mauris","6077 Id St.","Springdale","Arkansas","71245","United States","Armando Whitfield","1-201-374-3545","scelerisque.neque@Loremipsumdolor.com","1-214-295-9506"),
("12716365607","Sed","Ap #924-2093 Nisi Road","South Burlington","Vermont","61177","United States","Venus Tyson","1-635-591-2113","eget@Sed.com","1-624-477-4294"),
("30751277561","Aliquam","Ap #559-963 Aliquet. Avenue","Bangor","ME","46316","United States","Gil Watts","1-384-828-2779","mollis.lectus@Donectempus.co.uk","1-921-770-8330"),
("39656653836","Phasellus","396-5140 Sodales Rd.","Little Rock","Arkansas","72723","United States","Galvin Keller","1-870-828-3188","dignissim@euduiCum.com","1-266-190-0065"),
("39599259968","P&G","4166 Id Avenue","Athens","GA","93824","United States","Xanthus Phillips","1-592-174-7801","ridiculus@condimentumDonecat.com","1-137-184-4261"),
("12241497023","Praesent eu dui","P.O. Box 135, 8772 Mauris Avenue","Minneapolis","Minnesota","34193","United States","Yael Reyes","1-925-532-3739","eleifend.vitae@pretiumaliquet.com","1-795-854-4581"),
("43636501698","tortor Integer","824-4773 Neque. Avenue","Bellevue","Nebraska","99315","United States","McKenzie Owen","1-156-811-6215","elit.pede.malesuada@euaccumsansed.net","1-577-204-1040");


CREATE TABLE `Products` (
  `ProductID` varchar(11) NOT NULL,
  `ProductName` varchar(255) default NULL,
  `SupplierID` varchar(11) default NULL,
  `Category` varchar(255) default NULL,
  `UnitPrice` varchar(100) default NULL,
  `Color` varchar(255) default NULL,
  `QuantityOnHand` int default NULL,
   PRIMARY KEY (`ProductID`));

INSERT INTO `Products` (`ProductID`,`ProductName`,`SupplierID`,`Category`,`UnitPrice`,`Color`,`QuantityOnHand`) VALUES 
("748130-5105","Lotion","12241497023","Hair","$6.83","yellow",109),
("206908-3232","Remover","31704489846","Lip","$29.58","green",898),
("332338-2345","Beauty","68659281779","Face","$56.17","red",271),
("096419-4823","Beauty","30918186609","Cheek","$26.70","red",551),
("585230-0077","Sets","39656653836","Cheek","$5.24","red",514),
("197710-3876","Lotion","70268860023","Eye, Face","$26.98","green",794),
("533169-3365","Shampoo","30751277561","Body, Hair","$84.35","yellow",916),
("588681-0034","Moisturizer","39599259968","Lip","$73.53","blue",162),
("998757-5991","Sets","43636501698","","$59.44","orange",827),
("375163-6428","Primer","12716365607","","$2.72","red",464);

ALTER TABLE Products
ADD FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID);



CREATE TABLE `Order_Details` (
   `OrderID` varchar(11) NOT NULL,
  `ProductID` varchar(11) default NULL,
  `ItemQuantity` int default NULL,
   PRIMARY KEY (`OrderID`));

INSERT INTO `Order_Details` (`OrderID`,`ProductID`,`ItemQuantity`) VALUES 
("05553373345","748130-5105",57),
("07261862587","206908-3232",26),
("21942566549","332338-2345",34),
("47217024154","096419-4823",57),
("70701609058","585230-0077",13),
("85764031654","197710-3876",29),
("89878325779","533169-3365",11),
("90817183713","588681-0034",9),
("96945305380","998757-5991",46),
("99251300121","375163-6428",81);


ALTER TABLE Order_Details
ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID);



CREATE TABLE `Buyers` (
  `BuyerID` varchar(11) NOT NULL,
  `TelNumber` varchar(100) default NULL,
  `Email` varchar(255) default NULL,
  `UserName` varchar(255) default NULL,
  `Password` varchar(255),
  `ShipAdress` varchar(255) default NULL,
  `ShipCity` varchar(255) default NULL,
  `ShipState` varchar(50) default NULL,
  `ShipCountry` varchar(255),
  `ShipZipcode` varchar(10) default NULL,
   PRIMARY KEY (`BuyerID`));
 
INSERT INTO `Buyers` (`BuyerID`,`TelNumber`,`Email`,`UserName`,`Password`,`ShipAdress`,`ShipCity`,`ShipState`,`ShipCountry`,`ShipZipcode`) VALUES 
("94908631679","1-772-737-2701","molestie@idantedictum.ca","Clark","JFA79CQJ8XU","P.O. Box 504, 7630 Lacus Rd.","Viransehir","Sanliurfa","Liberia","65242"),
("89264121725","1-905-188-8108","mi.pede@non.edu","Noble","AOF35ISM0QN","2510 Tellus Avenue","Joliet","IL","Christmas Island","86876"),
("50345881058","1-850-899-9543","euismod.Etiam@etultrices.edu","Tashya","PDE87LWL3PY","8200 Quis, Street","Vezirköprü","Samsun","Guinea-Bissau","M5Y 1Z0"),
("81921795835","1-583-615-6760","velit.dui@sapien.org","Aretha","ANP81YWC9CU","Ap #516-795 Nisi Road","Mildura","VIC","Singapore","4505"),
("26350935579","1-865-217-7844","ac.mattis@felispurus.org","Abbot","VSR52BPA7OY","951-727 A Street","Laramie","WY","Morocco","007708"),
("12714972662","1-102-293-5153","Quisque@elitdictumeu.net","Vance","RST79SIK9CB","1341 In St.","Jerez de la Frontera","AN","Singapore","53506"),
("75521050479","1-959-804-3019","id.libero.Donec@gmail.com","Matthew","PWN64YUG3AJ","253-4847 Rutrum Ave","Callander","PE","Mongolia","ZN53 8TG"),
("72330070747","1-184-195-5645","gravida.sagittis.Duis@magnaa.ca","Dominic","OFX66VPY2TS","Ap #976-802 Dignissim Street","Islahiye","Gaz","Finland","33067"),
("42711312958","1-317-594-7754","Nunc.ac@molestieSedid.ca","Lynn","JEE58NSU1DO","7377 Cras Rd.","Gotzis","Vbg","Seychelles","C5E 9C8"),
("67711139299","1-632-629-5645","gravida.non@urnasuscipitnonummy.net","Dustin","BSW81VNC4BY","Ap #972-7019 Nulla Street","Orangeville","ON","Marshall Islands","113921");



CREATE TABLE `Shipment` (
  `ShippingID` varchar(11)  NOT NULL,
  `ShipTEL` varchar(100) default NULL,
  `ShipperName` varchar(255),
   PRIMARY KEY (`ShippingID`));

INSERT INTO `Shipment` (`ShippingID`,`ShipTEL`,`ShipperName`) VALUES 

("93438458936",",",","),
("09462963286","1-228-832-3305","Fedex"),
("02373273025","1-717-664-9542","UPS"),
("90750814057","1-288-751-7876","UPS"),
("86649590825","1-585-683-9924","UPS"),
("43358910115","1-650-659-5553","Fedex"),
("73874731131","1-732-599-2845","UPS"),
("44764907944","1-837-186-2802","UPS"),
("14265493321","1-183-564-7100","Fedex"),
("81892563843",",",",");



CREATE TABLE `Payment` (
  `PaymentID` varchar(11) NOT NULL,
  `CardHolderName` varchar(255) default NULL,
  `CardType` varchar(255) default NULL,
  `CreditCard` varchar(255),
  `CredExpMo` mediumint default NULL,
  `CardExpYr` mediumint default NULL,
  `BillingAddress` varchar(255) default NULL,
  `BillingCity` varchar(255),
  `BillingState` varchar(50) default NULL,
  `BillingZipcode` varchar(10) default NULL,
  `BillCountry` varchar(100) default NULL,
  `OrderID` varchar(11) default NULL,
   PRIMARY KEY (`PaymentID`));

INSERT INTO `Payment` (`PaymentID`,`CardHolderName`,`CardType`,`CreditCard`,`CredExpMo`,`CardExpYr`,`BillingAddress`,`BillingCity`,`BillingState`,`BillingZipcode`,`BillCountry`,`OrderID`) VALUES 
("79922775587","Ruth Conway","JCR","448528 7520883769",11,2024,"173-7331 Semper, St.","Amstelveen","Noord Holland","48257","Mongolia","10423068699"),
("26660945790","Willow Solis","Visa","4532802912657",12,2024,"129-2522 At, Rd.","Minneapolis","Minnesota","96354","Burkina Faso","81537344499"),
("57773141099","Venus Holland","JCR","4556331596954",11,2021,"316-4992 Duis St.","Belfast","Ulster","8960","Netherlands","35958952099"),
("39477519625","Margaret Berry","Visa","4556557037126",3,2023,"828-5278 Vitae Av.","Quesada","Alajuela","96727","Åland Islands","64766274299"),
("38387495295","Giacomo Bryant","Discover","4916344775203687",3,2021,"P.O. Box 717, 3210 Pede, Street","Igboho","Oyo","79987","Jersey","39450640399"),
("31863280913","Alexander Bell","JCR","471670 547393 0304",4,2020,"1603 Ut, St.","Steenokkerzeel","VB","4375 FZ","Tanzania","84632895499"),
("49871562602","Clinton Parks","America Express","448551 2676119878",8,2021,"710-5611 Massa St.","Elversele","OV","U7G 1OM","Spain","73488575399"),
("36297339285","Erica Townsend","Discover","4539605158431500",4,2020,"831-967 Eleifend Rd.","Valley East","ON","8212","Cape Verde","61482494299"),
("92384433306","Gannon Decker","America Express","4539 049 41 1088",3,2025,"1073 Suspendisse St.","Slupsk","Pomorskie","61317","Togo","95732033799"),
("83308456699","Tamekah Roman","Visa","4929766014453",8,2021,"927-4982 Suspendisse Av.","Cervinara","Campania","797729","Malawi","88468168899");



CREATE TABLE `Orders` (
`OrderID` varchar(11) NOT NULL,
  `BuyerID` varchar(11) NOT NULL,
  `Total_amount` mediumint default NULL,
  `Total_quantity` mediumint default NULL,
  `PaymentID` varchar(11) NOT NULL,
  `PaymentDate` varchar(255),
  `OrderDate` varchar(255),
  `Cancel` TEXT default NULL,
  `Paid` TEXT default NULL,
  `Fulfilled` TEXT default NULL,
  `ShipDate` varchar(255),
  `ShippingID` varchar(11) default NULL, 
  PRIMARY KEY (`OrderID`),
  Constraint Orders_FK1 FOREIGN KEY (BuyerID) REFERENCES
Buyers(BuyerID),
Constraint Orders_FK2 FOREIGN KEY (PaymentID) REFERENCES
Payment(PaymentID),
Constraint Orders_FK3 FOREIGN KEY (ShippingID) REFERENCES
Shipment(ShippingID));

INSERT INTO `Orders` (`OrderID`,`BuyerID`,`Total_amount`,`Total_quantity`,`PaymentID`,`PaymentDate`,`OrderDate`,`Cancel`,`Paid`,`Fulfilled`,`ShipDate`,`ShippingID`) VALUES 
("21942566549","50345881058",47.81,1,"57773141099","2018-07-02","2018-07-02","0","1","1","2018-07-03","81892563843"),
("07261862587","12714972662",177.48,6,"26660945790","2018-08-01","2018-08-01","0","1","1","2018-08-06","86649590825"),
("96945305380","42711312958",56.17,4,"36297339285","2018-06-16","2018-06-15","0","1","1","2018-06-16","02373273025"),
("89878325779","72330070747",133.5,11,"83308456699","2018-02-24","2018-02-24","0","1","1","2018-02-27","93438458936"),
("99251300121","81921795835",68.12,8,"92384433306","2018-09-03","2018-09-03","0","1","1","2018-09-05","14265493321"),
("90817183713","67711139299",53.96,9,"49871562602","2018-10-16","2018-10-16","0","1","0","2018-10-19","09462963286"),
("85764031654","94908631679",927.85,2,"31863280913","2018-11-03","2018-11-03","0","1","1","2018-11-07","44764907944"),  
("47217024154","26350935579",661.77,5,"39477519625","2018-05-09","2018-05-09","0","1","1","2018-05-10","43358910115"),
("70701609058","89264121725",237.76,13,"38387495295","2018-05-18","2018-05-18","0","1","1","2018-05-22","73874731131"),
("05553373345","75521050479",21.76,7,"79922775587","2018-07-06","2018-07-06","0","1","1","2018-07-10","90750814057");



ALTER TABLE Orders
ADD FOREIGN KEY (OrderID) REFERENCES Order_Details(OrderID);


