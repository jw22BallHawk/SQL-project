Drop table if exists Client_table;
Drop table if exists Person_table;
Drop table  if exists Category_table;
Drop table  if exists Label_table;


Create table Label_table (
    Label_range varchar (20) NOT NULL,
    Label_ID int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Label_ID)
);

Create table Category_table (
    Category_ID int NOT NULL AUTO_INCREMENT,
    Category_type Varchar (10) NOT NULL,
    Category_label Varchar (25) NOT NULL,
    Label_ID int NOT NULL Default 4,
    PRIMARY KEY (Category_ID),
    FOREIGN KEY (Label_ID) REFERENCES Label_table (Label_ID)
);

Create table Person_table (
    Customer_ID int NOT NULL AUTO_INCREMENT,
    Customer_Age int NOT NULL,
    Gender char (2)  NOT NULL,
    Dependent_count int  NOT NULL,
    Education_Level Varchar (25)  NOT NULL,
    Marital_Status Varchar (20) NOT NULL,
    Category_ID int NOT NULL Default 0, 
    PRIMARY KEY (Customer_ID),
    FOREIGN KEY (Category_ID) REFERENCES Category_table (Category_ID)
);

Create table Client_table(
    Card_Category Varchar (15),
    Months_on_book int NOT NULL,
    Total_Relationship_Count int NOT NULL,
    Months_Inactive_12_mon	int NOT NULL,
    Contacts_Count_12_mon	int NOT NULL,
    Credit_Limit	int NOT NULL,
    Total_Revolving_Bal	int NOT NULL,
    Avg_Open_To_Buy	int NOT NULL,
    Total_Amt_Chng_Q4_Q1	 DECIMAL(4,3)  DEFAULT 0.0 ,
    Total_Trans_Amt	int NOT NULL,
    Total_Trans_Ct	int NOT NULL,
    Total_Ct_Chng_Q4_Q1	DECIMAL(4,3) DEFAULT 0.0 ,	
    Avg_Utilization_Ratio	DECIMAL(4,3) DEFAULT 0.0 ,
    Attrition_Flag Varchar (20) NOT NULL,	
    CLIENTNUM int NOT NULL,
    Customer_ID int NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Person_table (Customer_ID),
    PRIMARY KEY (CLIENTNUM)
);



