CREATE TABLE Article_Tags(
	Article_Tag_Id int AUTO_INCREMENT NOT NULL,
	Tag_Id int NOT NULL,
	Article_Id int NOT NULL,
	TagLevel_Id int NOT NULL,
	Cr_User_Id int NOT NULL,
	Cr_Date_Time datetime NOT NULL,
	PRIMARY KEY(Article_Tag_Id)
);
CREATE TABLE Article_Medias(
	Article_Media_Id int AUTO_INCREMENT NOT NULL,
	Article_Id int NOT NULL,
	Media_Id int NOT NULL,
	Cr_Date_Time datetime NOT NULL,
	PRIMARY KEY(Article_Media_Id)
);
CREATE TABLE Article_HotNews_By_Catergories(
	Article_HotNews_By_Catergories_Id int AUTO_INCREMENT NOT NULL,
	Article_Id int NOT NULL,
	Category_Id int NOT NULL,
	Sort_Order int NOT NULL,
	Cr_DateTime datetime NOT NULL,
	PRIMARY KEY(Article_HotNews_By_Catergories_Id)
);
CREATE TABLE Article_HotNews(
	Article_HotNews_Id int AUTO_INCREMENT NOT NULL,
	Article_Id int NOT NULL,
	Content_Type_Id tinyint NOT NULL,
	Portal_Id tinyint,
	Sort_Order int NOT NULL,
	Create_DateTime datetime NOT NULL,
	PRIMARY KEY(Article_HotNews_Id)
);
CREATE TABLE Article_Feeds(
	Article_Feed_Id int AUTO_INCREMENT NOT NULL,
	Category_Id int NOT NULL,
	Feed_Name nvarchar(255) NOT NULL,
	Description text,
	URL varchar(255) NOT NULL,
	Feed_Count tinyint NOT NULL,
	Portal_Id tinyint,
	Copyright text,
	Sort_Order int NOT NULL,
	Checked bit NOT NULL,
	PRIMARY KEY(Article_Feed_Id)
);
CREATE TABLE Article_Events(
	Article_Event_Id int AUTO_INCREMENT NOT NULL,
	Event_Id int NOT NULL,
	Article_Id int NOT NULL,
	Created_DateTime datetime NOT NULL,
	PRIMARY KEY(Article_Event_Id)
);
CREATE TABLE Article_Relates(
	Article_Relate_Id int AUTO_INCREMENT NOT NULL,
	Article_Src_Id int NOT NULL,
	Article_Dst_Id int NOT NULL,
	Created_DateTime datetime NOT NULL,
	PRIMARY KEY(Article_Relate_Id)
);
CREATE TABLE Articles(
	Article_Id nvarchar(20),
	Article_Code nvarchar(20),
	Article_Content_Type_Id tinyint,
	Title text,
	Title_Cleaned_Signalture text,
	Secondary_Title text,
	Article_Summary text,
	Article_Summary_Plaitext text,
	Article_Content text,
	Source_Id int,
	Photo_Id int,
	Photo_Path nvarchar(255),
	Audio_Path nvarchar(255),
	VIdeo_Path nvarchar(255),
	File_Link nvarchar(255),
	Counter int,
	LastView_Time datetime,
	Created_User_Id int,
	Created_UserName nvarchar(255),
	Created_DateTime datetime,
	Display_Time datetime,
	Update_User_Id int,
	Update_User_Name nvarchar(255),
	Update_Date_Time datetime,
	Review_User_Id int,
	Review_UserName nvarchar(255),
	Review_DateTime datetime,
	Search_Page_Title nvarchar(1000),
	Search_Page_Keyword nvarchar(1000),
	Search_Page_Description nvarchar(1000),
	ShowIn_Homepage bit,
	Language tinyint,
	Checked tinyint,
	PRIMARY KEY(Article_Id)
);
CREATE TABLE Article_Review_Queues(
	Article_Review_Queue_Id int AUTO_INCREMENT NOT NULL,
	Article_Id int NOT NULL,
	User_Id int NOT NULL,
	Is_Executed int NOT NULL,
	Date_Created datetime NOT NULL,
	Date_Review datetime,
	PRIMARY KEY(Article_Review_Queue_Id)
);
CREATE TABLE Article_Categories(
	Article_Category_Id int AUTO_INCREMENT NOT NULL,
	Category_Id int NOT NULL,
	Article_Id int NOT NULL,
	Sort_Order int NOT NULL,
	Created_DateTime datetime NOT NULL,
	PRIMARY KEY(Article_Category_Id)
);
CREATE TABLE Article_Sources(
	Article_Source_Id int AUTO_INCREMENT NOT NULL,
	Source_Name nvarchar(255) NOT NULL,
	PRIMARY KEY(Article_Source_Id)
);