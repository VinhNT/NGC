CREATE TABLE `CuteChat4_User`(
	`UserId` `nvarchar`(50) NOT NULL,
	`DisplayName` `nvarchar`(100) NULL,
	`Description` `nvarchar`(300) NULL,
	`BuildinIgnores` `ntext` NULL,
	`BuildinContacts` `ntext` NULL,
	`ServerProperties` `ntext` NULL,
	`PublicProperties` `ntext` NULL,
	`PrivateProperties` `ntext` NULL,
)
CREATE TABLE `CuteChat4_SupportSession`(
	`SessionId` `int` AUTO_INCREMENT NOT NULL,
	`BeginTime` `datetime` NOT NULL,
	`DepartmentId` `int` NOT NULL,
	`AgentUserId` `nvarchar`(100) NOT NULL,
	`CustomerId` `nvarchar`(100) NOT NULL,
	`DisplayName` `nvarchar`(100) NOT NULL,
	`ActiveTime` `datetime` NOT NULL,
	`Email` `nvarchar`(50) NULL,
	`IPAddress` `nvarchar`(50) NOT NULL,
	`Culture` `nvarchar`(50) NOT NULL,
	`Platform` `nvarchar`(50) NOT NULL,
	`Browser` `nvarchar`(50) NOT NULL,
	`AgentRating` `int` NOT NULL,
	`SessionData` `ntext` NULL,
)
CREATE TABLE `CuteChat4_SupportMessage`(
	`MessageId` `int` AUTO_INCREMENT NOT NULL,
	`MsgTime` `datetime` NOT NULL,
	`SessionId` `int` NOT NULL,
	`MsgType` `nvarchar`(50) NOT NULL,
	`Sender` `nvarchar`(100) NULL,
	`SenderId` `nvarchar`(100) NULL,
	`Target` `nvarchar`(100) NULL,
	`TargetId` `nvarchar`(100) NULL,
	`Text` `ntext` NULL,
	`Html` `ntext` NULL,
)
CREATE TABLE `CuteChat4_SupportFeedback`(
	`FeedbackId` `int` AUTO_INCREMENT NOT NULL,
	`FbTime` `datetime` NOT NULL,
	`CustomerId` `nvarchar`(100) NULL,
	`DisplayName` `nvarchar`(100) NULL,
	`Name` `nvarchar`(100) NOT NULL,
	`Email` `nvarchar`(100) NOT NULL,
	`Title` `nvarchar`(200) NOT NULL,
	`Content` `ntext` NOT NULL,
	`Comment` `ntext` NULL,
	`CommentBy` `nvarchar`(100) NULL,
)
CREATE TABLE `CuteChat4_SupportDepartment`(
	`DepartmentId` `int` AUTO_INCREMENT NOT NULL,
	`DepartmentName` `nvarchar`(50) NOT NULL,
)
CREATE TABLE `CuteChat4_SupportCustomer`(
	`CustomerId` `nvarchar`(50) NOT NULL,
	`CustomerData` `ntext` NULL
)
CREATE TABLE `CuteChat4_Settings`(
	`SettingName` `nvarchar`(50) NOT NULL,
	`SettingData` `ntext` NOT NULL
)
CREATE TABLE `CuteChat4_Rule`(
	`RuleId` `int` AUTO_INCREMENT NOT NULL,
	`Category` `nvarchar`(50) NOT NULL,
	`SortIndex` `int` NOT NULL,
	`RuleMode` `nvarchar`(50) NOT NULL,
	`Expression` `nvarchar`(50) NOT NULL,
	`Disabled` `bit` NOT NULL
)
CREATE TABLE `CuteChat4_Portal`(
	`PortalName` `nvarchar`(50) NOT NULL,
	`Properties` `ntext` NULL
)
CREATE TABLE `CuteChat4_LogMessage`(
	`MessageId` `int` AUTO_INCREMENT NOT NULL,
	`MsgTime` `datetime` NOT NULL,
	`Location` `nvarchar`(50) NOT NULL,
	`Place` `nvarchar`(50) NOT NULL,
	`Sender` `nvarchar`(100) NULL,
	`SenderId` `nvarchar`(100) NULL,
	`Target` `nvarchar`(100) NULL,
	`TargetId` `nvarchar`(100) NULL,
	`Whisper` `int` NOT NULL,
	`IPAddress` `nvarchar`(25) NOT NULL,
	`Text` `ntext` NULL,
	`Html` `ntext` NULL
)
CREATE TABLE `CuteChat4_LogEvent`(
	`EventId` `int` AUTO_INCREMENT NOT NULL,
	`EvtTime` `datetime` NOT NULL,
	`Category` `nvarchar`(50) NOT NULL,
	`Message` `nvarchar`(3000) NOT NULL,
	`Portal` `nvarchar`(50) NOT NULL,
	`Place` `nvarchar`(50) NOT NULL,
	`UserName` `nvarchar`(50) NULL,
	`UserId` `nvarchar`(50) NULL
)
CREATE TABLE `CuteChat4_Lobby`(
	`LobbyId` `int` AUTO_INCREMENT NOT NULL,
	`Title` `nvarchar`(50) NOT NULL,
	`Topic` `nvarchar`(200) NOT NULL,
	`Announcement` `ntext` NOT NULL,
	`Locked` `bit` NOT NULL,
	`AllowAnonymous` `bit` NOT NULL,
	`Password` `nvarchar`(50) NOT NULL,
	`Description` `nvarchar`(400) NOT NULL,
	`Integration` `nvarchar`(200) NOT NULL,
	`ManagerList` `ntext` NOT NULL,
	`MaxOnlineCount` `int` NOT NULL,
	`MaxIdleMinute` `int` NOT NULL,
	`AutoAwayMinute` `int` NOT NULL,
	`HistoryCount` `int` NOT NULL,
	`HistoryDay` `int` NOT NULL,
	`SortIndex` `int` NOT NULL
)
CREATE TABLE `CuteChat4_InstantMessage`(
	`MessageId` `int` AUTO_INCREMENT NOT NULL,
	`MsgTime` `datetime` NOT NULL,
	`Sender` `nvarchar`(100) NOT NULL,
	`SenderId` `nvarchar`(100) NOT NULL,
	`Target` `nvarchar`(100) NOT NULL,
	`TargetId` `nvarchar`(100) NOT NULL,
	`Offline` `int` NOT NULL,
	`DeletedBySender` `int` NULL,
	`DeletedByTarget` `int` NULL,
	`IPAddress` `nvarchar`(25) NOT NULL,
	`Text` `ntext` NULL,
	`Html` `ntext` NULL
)
