CREATE TABLE NewsLetterMessages(
	NewsLetterMessageID int AUTO_INCREMENT NOT NULL,
	NewsLetterCategoryID int NOT NULL,
	MessageName nvarchar(255) NOT NULL,
	MessageContent text NOT NULL,
	CrDateTime datetime NOT NULL,
	CrUserName nvarchar(255) NOT NULL,
	AttachFilePath nvarchar(255) NOT NULL,
	Checked bit NOT NULL,
	PRIMARY KEY(NewsLetterMessageID)
)
CREATE TABLE NewsLetterSubscriberCategories(
	NewsLetterSubscriberCategoryID int AUTO_INCREMENT NOT NULL,
	NewsLetterSubscriberID int NOT NULL,
	NewsLetterCategoryID int NOT NULL,
	PRIMARY KEY(NewsLetterSubscriberCategoryID)
)
CREATE TABLE Tags(
	TagID int AUTO_INCREMENT NOT NULL,
	TagTypeID tinyint NOT NULL,
	TagLevelID tinyint NOT NULL,
	TagName nvarchar(255) NOT NULL,
	Description nvarchar(max) NULL,
	isHotTag bit NOT NULL,
	Counter int NOT NULL,
	Checked bit NOT NULL,
	PRIMARY KEY(TagID)
)
CREATE TABLE TaskAssigns(
	TaskAssignID int AUTO_INCREMENT NOT NULL,
	TaskID int NOT NULL,
	TaskDepartmentID int NOT NULL,
	TaskStatus int NULL,
	CrDateTime datetime NOT NULL,
	CrUserID int NOT NULL,
	PRIMARY KEY(TaskAssignID)
)
CREATE TABLE PhoneBookUnits(
	PhoneBookUnitID int AUTO_INCREMENT NOT NULL,
	PhoneBookUnitGroupID int NULL,
	ShortName nvarchar(255) NOT NULL,
	FullName nvarchar(255) NULL,
	Address nvarchar(255) NULL,
	Email nvarchar(255) NULL,
	Telephone varchar(50) NULL,
	Fax varchar(50) NULL,
	Code nvarchar(100) NULL,
	PRIMARY KEY(PhoneBookUnitID)
)
CREATE TABLE Tabs(
	TabID int AUTO_INCREMENT NOT NULL,
	PortalID tinyint NOT NULL,
	TemplateID int NOT NULL,
	TabName nvarchar(255) NOT NULL,
	AuthorizedRoles nvarchar(255) NULL,
	AuthorizedPortals varchar(255) NULL,
	ParentID int NULL,
	TabLevel int NOT NULL,
	TabOrder int NOT NULL,
	VisitCounter int NOT NULL,
	PRIMARY KEY(TabID)
)
CREATE TABLE Medias(
	MediaID int AUTO_INCREMENT NOT NULL,
	UserID int NULL,
	MediaGroupID int NULL,
	FileType int NULL,
	Title nvarchar(255) NULL,
	VirtualPath nvarchar(255) NULL,
	PreviewPath nvarchar(255) NULL,
	ThumbPath1 nvarchar(255) NULL,
	ThumbPath2 varchar(255) NULL,
	FullSizePath nvarchar(255) NULL,
	FileName nvarchar(255) NULL,
	FileContentType nvarchar(50) NULL,
	FileSize int NULL,
	FileContent image NULL,
	CrDateTime datetime NOT NULL,
	PRIMARY KEY(MediaID)
)
CREATE TABLE VoteDetails(
	VoteDetailID int AUTO_INCREMENT NOT NULL,
	VoteID int NOT NULL,
	VoteContent nvarchar(max) NOT NULL,
	VoteContentEnglish nvarchar(max) NULL,
	Counter int NOT NULL,
	PRIMARY KEY(VoteDetailID)
)
CREATE TABLE UserHashInfos(
	UserHashInfoID int AUTO_INCREMENT NOT NULL,
	UserID int NOT NULL,
	DateCreate datetime NOT NULL,
	DateExpire datetime NOT NULL,
	Hash varchar(255) NOT NULL,
	IsUsed tinyint NOT NULL
)
CREATE TABLE UserGroupRoles(
	UserGroupRoleID int AUTO_INCREMENT NOT NULL,
	UserGroupID int NOT NULL,
	RoleID int NOT NULL
)
CREATE TABLE NewsLetterEmails(
	NewsLetterEmailID int AUTO_INCREMENT NOT NULL,
	NewsLetterEmailTypeID int NOT NULL,
	Email nvarchar(255) NOT NULL,
	IsActive bit NOT NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE TaskReports(
	TaskReportID int AUTO_INCREMENT NOT NULL,
	TaskID int NOT NULL,
	UserID int NOT NULL,
	TaskDepartmentID int NOT NULL,
	TaskFileID int NOT NULL,
	ReportTitle nvarchar(255) NOT NULL,
	ReportContent text NULL,
	CrDateTime datetime NOT NULL,
	Checked bit NOT NULL
)
CREATE TABLE TaskUserDepartments(
	TaskUserDepartmentID int AUTO_INCREMENT NOT NULL,
	UserID int NULL,
	DepartmentID int NULL
)

CREATE TABLE TaskReportHistories(
	TaskReportHistoryID int AUTO_INCREMENT NOT NULL,
	TaskReportID int NOT NULL,
	HistoryContent text NOT NULL,
	CrUserID int NOT NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE ModuleDefStyles(
	ModuleDefStyleID int AUTO_INCREMENT NOT NULL,
	ModuleDefinitionID int NOT NULL,
	ModuleDefStyleContent nvarchar(max) NULL
)
CREATE TABLE ModuleDefSettings(
	ModuleDefSettingID int AUTO_INCREMENT NOT NULL,
	ModuleDefinitionID int NOT NULL,
	SettingName nvarchar(255) NOT NULL,
	Description nvarchar(255) NULL,
	UrlSelectSettingValueID int NULL
)
CREATE TABLE ModuleDefPortals(
	ModuleDefPortalID int AUTO_INCREMENT NOT NULL,
	ModuleDefinitionID int NOT NULL,
	PortalID int NOT NULL
)
CREATE TABLE Modules(
	ModuleID int AUTO_INCREMENT NOT NULL,
	TabID int NOT NULL,
	ModuleDefinitionID int NOT NULL,
	ModuleOrder int NOT NULL,
	PaneName nvarchar(255) NOT NULL,
	Title nvarchar(255) NOT NULL,
	CacheTime int NOT NULL,
	AllTabs bit NOT NULL,
	ExcludeTabs nvarchar(255) NULL
)
CREATE TABLE Faqs(
	FaqID int AUTO_INCREMENT NOT NULL,
	FaqCategoryID int NOT NULL,
	FullName nvarchar(255) NULL,
	Organization nvarchar(255) NULL,
	Address nvarchar(255) NULL,
	Email nvarchar(255) NULL,
	QuestionContent nvarchar(max) NULL,
	AnswerContent text NULL,
	Phone nvarchar(30) NULL,
	CrDateTime datetime NOT NULL,
	FilePath varchar(255) NULL,
	FileName varchar(255) NULL,
	HasAttachment int NOT NULL,
	Checked bit NOT NULL
)
CREATE TABLE MenuRoles(
	MenuRoleID int AUTO_INCREMENT NOT NULL,
	MenuID int NOT NULL,
	RoleID int NOT NULL,
	MenuGroupID int NOT NULL
)
CREATE TABLE Cf_Answers(
	AnswerID int AUTO_INCREMENT NOT NULL,
	QuestionID int NOT NULL,
	AnswerContent text NOT NULL,
	CrUserID int NOT NULL,
	CrDatetime datetime NOT NULL,
	UdUserID int NULL,
	UdDatetime datetime NULL,
	Checked tinyint NOT NULL
)
CREATE TABLE PhoneBookDepartments(
	PhoneBookDepartmentID int AUTO_INCREMENT NOT NULL,
	PhoneBookUnitID int NOT NULL,
	DepartmentName nvarchar(255) NULL,
	Address nvarchar(255) NULL,
	Fax varchar(50) NULL,
	PhoneNumber varchar(50) NULL,
	SortOrder int NULL
)
CREATE TABLE NewsLetterBroadcasts(
	NewsLetterBroadcastID int AUTO_INCREMENT NOT NULL,
	NewsLetterEmailTypeID int NOT NULL,
	NewsLetterMessageID int NOT NULL,
	NewsLetterEmailID int NOT NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE Cf_SessionUserQuestions(
	SessionUserQuestionID int AUTO_INCREMENT NOT NULL,
	SessionID int NOT NULL,
	UserID int NOT NULL,
	QuestionID int NOT NULL,
)
CREATE TABLE CommentsUploadFiles(
	CommentsUploadFileID int AUTO_INCREMENT NOT NULL,
	CommentID int NOT NULL,
	UserID int NULL,
	FileName nvarchar(255) NOT NULL,
	FileContentType nvarchar(50) NOT NULL,
	FileContent image NULL,
	FileSize int NOT NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE CommentsReports(
	CommentsReportID int AUTO_INCREMENT NOT NULL,
	CommentID int NOT NULL,
	UserID int NOT NULL,
	CreatedDate datetime NOT NULL
)
CREATE TABLE GalleriesHotImages(
	GalleriesHotImageID int AUTO_INCREMENT NOT NULL,
	ContentTypeID int NOT NULL,
	GalleryID int NOT NULL,
	SortOrder int NOT NULL
)
CREATE TABLE ModuleDefImages(
	ModuleDefImageID int AUTO_INCREMENT NOT NULL,
	ModuleDefinitionID int NOT NULL,
	FileName nvarchar(255) NULL,
	FileContentType varchar(50) NULL,
	FileSize int NULL,
	FileContent image NULL
)
CREATE TABLE PhoneBookAgents(
	PhoneBookAgentID int AUTO_INCREMENT NOT NULL,
	PhoneBookDepartmentID int NOT NULL,
	PhoneBookJobTitleID int NULL,
	AgentName nvarchar(255) NULL,
	ECom varchar(50) NULL,
	EPhone varchar(50) NULL,
	EMobile varchar(50) NULL,
	ETel varchar(50) NULL,
	InternalTelephone varchar(50) NULL,
	OfficePhoneNumber varchar(50) NULL,
	Fax varchar(50) NULL,
	PersonalPhoneNumber varchar(50) NULL,
	CellPhoneNumber varchar(50) NULL,
	PC1EMail varchar(50) NULL,
	OtherMail varchar(50) NULL,
	YahooMail varchar(50) NULL,
	SortOrder int NULL
)
CREATE TABLE ModuleStyles(
	ModuleStyleID int AUTO_INCREMENT NOT NULL,
	ModuleID int NOT NULL,
	ModuleStyleContent nvarchar(max) NULL
)
CREATE TABLE ModuleSettings(
	ModuleSettingID int AUTO_INCREMENT NOT NULL,
	ModuleID int NOT NULL,
	SettingName nvarchar(255) NOT NULL,
	SettingValue nvarchar(255) NOT NULL
)
CREATE TABLE UserRoles(
	UserRoleID int AUTO_INCREMENT NOT NULL,
	UserID int NOT NULL,
	RoleID int NOT NULL
)
CREATE TABLE UserPortals(
	UserPortalID int AUTO_INCREMENT NOT NULL,
	UserID int NOT NULL,
	PortalID tinyint NOT NULL
)
CREATE TABLE TemplateSettings(
	TemplateSettingID int AUTO_INCREMENT NOT NULL,
	TemplateID int NOT NULL,
	CellName nvarchar(255) NOT NULL
)


CREATE TABLE Weathers(
	WeatherID int AUTO_INCREMENT NOT NULL,
	WeatherProvinceID int NOT NULL,
	WeatherStateID int NOT NULL,
	DisplayTime datetime NOT NULL,
	Temperature nvarchar(50) NOT NULL,
	Humidity nvarchar(50) NOT NULL,
	Wind nvarchar(255) NOT NULL,
	WindSpeed nvarchar(50) NOT NULL
)
CREATE TABLE WebLinks(
	WebLinkID int AUTO_INCREMENT NOT NULL,
	WebLinkGroupID int NOT NULL,
	ParentID int NOT NULL,
	WebLinkName nvarchar(255) NOT NULL,
	WebLinkNameEnglish nvarchar(255) NULL,
	URL varchar(255) NOT NULL,
	CrDateTime datetime NULL,
	CrUserName nvarchar(255) NULL,
	ObjectLevel int NOT NULL,
	SortOrder int NOT NULL
)
CREATE TABLE Cf_Questions(
	QuestionID int AUTO_INCREMENT NOT NULL,
	SessionID int NOT NULL,
	QuestionContent text NOT NULL,
	QuestionPlaitext text NULL,
	AnswerID int NULL,
	WebUserID int NOT NULL,
	CrDatetime datetime NOT NULL,
	UdUserID int NULL,
	UdDatetime datetime NULL,
	RvUserID int NULL,
	RvDatetime datetime NULL,
	Note nvarchar(max) NULL,
	Status tinyint NOT NULL
)
CREATE TABLE Menus(
	MenuID int AUTO_INCREMENT NOT NULL,
	ParentID int NOT NULL,
	MenuGroupID int NOT NULL,
	MenuIconPath nvarchar(255) NOT NULL,
	MenuTitle nvarchar(255) NOT NULL,
	MenuTitle2 nvarchar(255) NULL,
	MenuTitle3 nvarchar(255) NULL,
	MenuDescriptions nvarchar(255) NOT NULL,
	MenuUrl nvarchar(255) NOT NULL,
	MenuUrl2 nvarchar(255) NULL,
	MenuUrl3 nvarchar(255) NULL,
	MenuTarget varchar(50) NOT NULL,
	MenuLevel int NOT NULL,
	SortOrder int NOT NULL,
	IsMegaMenu bit NOT NULL,
	Checked bit NOT NULL
)
CREATE TABLE UserUserGroups(
	UserUserGroupID int AUTO_INCREMENT NOT NULL,
	UserGroupID int NOT NULL,
	UserID int NOT NULL
)
CREATE TABLE HtmlTexts(
	HtmlTextID int AUTO_INCREMENT NOT NULL,
	PortalID tinyint NOT NULL,
	HtmlTextName nvarchar(255) NOT NULL,
	HtmlTextContent text NOT NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE UserCategories(
	UserCategoryID int AUTO_INCREMENT NOT NULL,
	UserID int NOT NULL,
	CategoryID int NOT NULL
)
CREATE TABLE LogoPositionGroups(
	LogoPositionGroupID int AUTO_INCREMENT NOT NULL,
	LogoPositionID int NOT NULL,
	LogoGroupID int NOT NULL,
	CategoryID int NOT NULL,
	PortalID int NOT NULL
)
CREATE TABLE Comments(
	CommentID int AUTO_INCREMENT NOT NULL,
	ParentID int NULL,
	CommentsContentTypeID tinyint NOT NULL,
	ObjectID int NOT NULL,
	OwnerObjectID int NOT NULL,
	UserID int NULL,
	UserName nvarchar(255) NULL,
	Email nvarchar(255) NULL,
	Phone varchar(20) NULL,
	Organization nvarchar(255) NULL,
	Address nvarchar(255) NULL,
	CommentTitle nvarchar(1000) NOT NULL,
	CommentContent nvarchar(max) NOT NULL,
	CrDateTime datetime NOT NULL,
	UdDateTime datetime NULL,
	Point float NULL,
	Checked bit NOT NULL,
	CommentLevel int NOT NULL,
	SortOrder int NOT NULL
)
CREATE TABLE Galleries(
	GalleryID int AUTO_INCREMENT NOT NULL,
	AlbumID int NOT NULL,
	ImageName nvarchar(255) NOT NULL,
	Description nvarchar(255) NOT NULL,
	FileNamePreview nvarchar(255) NULL,
	FilePathPreview nvarchar(255) NULL,
	FileNameSmall nvarchar(255) NULL,
	FilePathSmall nvarchar(255) NULL,
	FileNameOriginal nvarchar(255) NULL,
	FilePathOriginal nvarchar(255) NULL,
	FileName nvarchar(255) NULL,
	VirtualPath nvarchar(255) NULL,
	SortOrder int NOT NULL,
	Counter int NOT NULL,
	CrDateTime datetime NOT NULL,
	UdDateTime datetime NULL,
	CrUserID int NOT NULL,
	UdUserID int NULL
)
CREATE TABLE Tasks(
	TaskID int AUTO_INCREMENT NOT NULL,
	TaskCode varchar(50) NULL,
	UserID int NOT NULL,
	TaskProjectID int NULL,
	TaskName nvarchar(255) NOT NULL,
	NextTask nvarchar(255) NULL,
	Description text NULL,
	PriorityID tinyint NOT NULL,
	PreAlertTimeID tinyint NOT NULL,
	StartTime datetime NOT NULL,
	EndTime datetime NOT NULL,
	Status tinyint NOT NULL,
	IsEmailAlert tinyint NOT NULL,
	IsSmsAlert tinyint NOT NULL,
	CrDateTime datetime NULL,
 
)
CREATE TABLE UserGroups(
	UserGroupID int AUTO_INCREMENT NOT NULL,
	ParentID int NULL,
	UserGroupName nvarchar(255) NOT NULL,
	Description nvarchar(255) NULL,
	SortLevel int NULL,
	SortOrder int NULL,
)
CREATE TABLE SystemMessages(
	SystemMessageID int AUTO_INCREMENT NOT NULL,
	SystemMessageName nvarchar(255) NULL,
	SystemMessageDesc nvarchar(255) NULL,
	SystemMessageTypeID tinyint NULL,

)
CREATE TABLE Votes(
	VoteID int AUTO_INCREMENT NOT NULL,
	PortalID tinyint NOT NULL,
	VoteTypeID tinyint NOT NULL,
	VoteTitle nvarchar(max) NOT NULL,
	VoteTitleEnglish nvarchar(max) NULL,
	PostedTime datetime NOT NULL,
	ExpireTime datetime NULL,
	TotalCounter int NOT NULL,
	Checked bit NOT NULL,
)
CREATE TABLE MediaPath(
	MediaPathID int AUTO_INCREMENT NOT NULL,
	DirectoryCount int NOT NULL,
	DirectoryPath nvarchar(255) NOT NULL,
	MaxFile int NOT NULL,
	Counter int NOT NULL,
	Used bit NOT NULL,

)
CREATE TABLE SystemConfigurations(
	SystemConfigurationID tinyint AUTO_INCREMENT NOT NULL,
	Domain nvarchar(255) NULL,
	WebMasterEmail varchar(255) NOT NULL,
	SmtpServer varchar(255) NOT NULL,
	SmtpUsername varchar(255) NOT NULL,
	SmtpPassword varchar(255) NOT NULL,
	SmtpEnableSSL bit NOT NULL,
	SmtpPort int NOT NULL,
)
CREATE TABLE HomepageCounters(
	HomepageCounterID int AUTO_INCREMENT NOT NULL,
	HomepageCounterName nvarchar(255) NOT NULL,
	Counter int NOT NULL,
	Visible bit NOT NULL,
	CreatedTime datetime NOT NULL,
)
CREATE TABLE SystemMessageTypes(
	SystemMessageTypeID tinyint AUTO_INCREMENT NOT NULL,
	TypeName nvarchar(100) NOT NULL,
)
CREATE TABLE SystemErrors(
	SystemErrorID int AUTO_INCREMENT NOT NULL,
	ProcID int NOT NULL,
	ProcName nvarchar(255) NOT NULL,
	ErrorDesc nvarchar(4000) NOT NULL,
	ErrorLevelID tinyint NULL,
	ErrorLine int NULL,
	CrDateTime datetime NOT NULL,
)
CREATE TABLE SystemErrorLevels(
	ErrorLevelID tinyint AUTO_INCREMENT NOT NULL,
	LevelName nvarchar(50) NULL,
)
CREATE TABLE Popups(
	PopUpID int AUTO_INCREMENT NOT NULL,
	PortalID int NOT NULL,
	HtmlTextID int NOT NULL,
	PopUpName nvarchar(255) NOT NULL,
	PopUpContent text NOT NULL,
	TopPosition int NOT NULL,
	LeftPosition int NOT NULL,
	Width int NOT NULL,
	Height int NOT NULL,
	IsShowScroll bit NOT NULL,
	IsShowPopup bit NOT NULL,
	CrDateTime datetime NOT NULL,
	CrUserName nvarchar(255) NOT NULL,
)
CREATE TABLE SchedulerTelevisionChannels(
	SchedulerTelevisionChannelID int AUTO_INCREMENT NOT NULL,
	ChannelName nvarchar(255) NOT NULL,
	Description nvarchar(max) NULL,
	ChannelType int NULL,
)
CREATE TABLE TaskDepartments(
	TaskDepartmentID int AUTO_INCREMENT NOT NULL,
	ParentID int NOT NULL,
	DepartmentName nvarchar(255) NOT NULL,
	Description nvarchar(max) NULL,
	SortLevel int NOT NULL,
	SortOrder int NOT NULL,
	Checked bit NOT NULL,
)
CREATE TABLE UserConnections(
	UserConnectionID int AUTO_INCREMENT NOT NULL,
	UserName nvarchar(255) NOT NULL,
	CurrentConnection int NOT NULL,
	MaxConnection int NOT NULL,
)
CREATE TABLE TaskProjects(
	TaskProjectID int AUTO_INCREMENT NOT NULL,
	ProjectName nvarchar(255) NOT NULL,
	ProjectCode nvarchar(255) NULL,
	Description nvarchar(max) NULL,
	Status tinyint NULL,
	CrDateTime datetime NOT NULL,
	CrUserID int NOT NULL,
)
CREATE TABLE TaskAlertTimes(
	TaskAlertTimeID tinyint AUTO_INCREMENT NOT NULL,
	AlertTimeName nvarchar(255) NOT NULL,
	AlertTimeInSecond int NOT NULL,
)
CREATE TABLE NewsLetterSubscribers(
	NewsLetterSubscriberID int AUTO_INCREMENT NOT NULL,
	Email nvarchar(255) NOT NULL,
	ActiveKey varchar(10) NOT NULL,
	DateSubscriber datetime NOT NULL,
	Checked bit NOT NULL,
)
CREATE TABLE PhoneBookUnitGroups(
	PhoneBookUnitGroupID int AUTO_INCREMENT NOT NULL,
	GroupName nvarchar(255) NOT NULL,
	Description nvarchar(max) NULL,
	SortOrder int NOT NULL,
)
CREATE TABLE ModuleGroups(
	ModuleGroupID int AUTO_INCREMENT NOT NULL,
	ModuleGroupName nvarchar(255) NOT NULL,
)
CREATE TABLE NewsLetterEmailTypes(
	NewsLetterEmailTypeID int AUTO_INCREMENT NOT NULL,
	TypeName nvarchar(255) NOT NULL,
	CrDateTime datetime NOT NULL,
	Checked bit NOT NULL,
)
CREATE TABLE GalleriesAlbums(
	AlbumID int AUTO_INCREMENT NOT NULL,
	PortalID int NOT NULL,
	ParentID int NULL,
	AlbumLevel int NOT NULL,
	AlbumName nvarchar(255) NULL,
	Description nvarchar(500) NULL,
	AlbumNameEnglish nvarchar(255) NULL,
	DescriptionEnglish nvarchar(255) NULL,
	CreatedTime datetime NULL,
	SortOrder int NULL,
	Checked bit NULL,
)
CREATE TABLE Roles(
	RoleID int AUTO_INCREMENT NOT NULL,
	RoleName nvarchar(255) NOT NULL,
	ParentID int NOT NULL,
	Description nvarchar(255) NULL,
	AllowDelete bit NOT NULL,
	RoleLevel int NOT NULL,
	SortOrder int NOT NULL,
	IsVisible bit NOT NULL,
)
CREATE TABLE Ratings(
	RatingID int AUTO_INCREMENT NOT NULL,
	RatingTypeID int NOT NULL,
	ObjectID int NOT NULL,
	TotalRaters int NULL,
	TotalScore float NULL,
	AverageRating float NULL,
)
CREATE TABLE RatingDetails(
	RatingDetailID int AUTO_INCREMENT NOT NULL,
	RatingID int NOT NULL,
	RatingScore float NOT NULL,
	HostIP varchar(30) NOT NULL,
	CreateDate datetime NOT NULL,
)
CREATE TABLE CommentsContentTypes(
	CommentsContentTypeID tinyint AUTO_INCREMENT NOT NULL,
	TypeName nvarchar(255) NOT NULL,
)
CREATE TABLE Categories(
	CategoryID int AUTO_INCREMENT NOT NULL,
	PortalID tinyint NOT NULL,
	ParentID int NOT NULL,
	CategoryName nvarchar(255) NOT NULL,
	CategoryName2 nvarchar(255) NULL,
	CategoryName3 nvarchar(255) NULL,
	Description nvarchar(max) NULL,
	CateLevel int NOT NULL,
	SortOrder int NOT NULL,
	CrUserID int NULL,
	CrDateTime datetime NOT NULL,
	Counter int NULL,
	HtmlID int NULL,
	ListParentCate varchar(max) NULL,
	ImagePath nvarchar(255) NULL,
)
CREATE TABLE SiteLogVisitors(
	SiteLogVisitorID decimal(18, 0) AUTO_INCREMENT NOT NULL,
	PortalID int NULL,
	DateCreated datetime NULL,
	VisitorCounter decimal(18, 0) NULL,
	VisitCounter decimal(18, 0) NULL,
	SpiderCounter decimal(18, 0) NULL,
)
CREATE TABLE SiteLogVisitorDetails(
	SiteLogVisitorDetailID decimal(18, 0) AUTO_INCREMENT NOT NULL,
	PortalID int NULL,
	DateCreated datetime NULL,
	HostAddress varchar(50) NULL,
)
CREATE TABLE SiteMaps(
	SiteMapID int AUTO_INCREMENT NOT NULL,
	ParentID int NULL,
	PortalID int NOT NULL,
	PageName nvarchar(255) NOT NULL,
	Description nvarchar(max) NULL,
	PageUrl varchar(255) NOT NULL,
	Target varchar(30) NOT NULL,
	IconPath varchar(255) NULL,
	SortOrder int NOT NULL,
	ObjectLevel int NOT NULL,
	Checked bit NOT NULL,
)
CREATE TABLE LogoGroups(
	LogoGroupID int AUTO_INCREMENT NOT NULL,
	PortalID int NOT NULL,
	LogoGroupName nvarchar(255) NOT NULL,
	CreatedTime datetime NULL,
	IsRotator bit NULL,
)
CREATE TABLE JobTitles(
	JobTitleID int AUTO_INCREMENT NOT NULL,
	JobTitleName nvarchar(255) NULL,
	Desciption nvarchar(255) NULL,
)
CREATE TABLE IPAddressFilters(
	IPAddressFilterID int AUTO_INCREMENT NOT NULL,
	IPAddressStart varchar(50) NOT NULL,
	IPAddressEnd varchar(50) NULL,
	IPAddressStartNumber decimal(18, 0) NOT NULL,
	IPAddressEndNumber decimal(18, 0) NULL,
	IPAddressFilterType tinyint NOT NULL,
	Descriptions nvarchar(255) NULL,
)
CREATE TABLE ArticleExchangeRates(
	USD nvarchar(50) NOT NULL,
	Gold nvarchar(50) NOT NULL
)
CREATE TABLE ArticleLanguages(
	ArticleLanguageID tinyint AUTO_INCREMENT NOT NULL,
	LanguageName nvarchar(255) NOT NULL,
	LanguageAlias varchar(10) NOT NULL,
	IsEnable bit NOT NULL,
)
CREATE TABLE TagsLevels(
	TagLevelID tinyint AUTO_INCREMENT NOT NULL,
	TagLevelName nvarchar(255) NULL,
	FontName nvarchar(100) NULL,
	FontSize nvarchar(50) NULL,
	FontMeasurement varchar(10) NULL,
	ForeColor nvarchar(50) NULL,
	FontWeight bit NULL,
	FontItalic bit NULL,
	FontUnderline bit NULL,
)

CREATE TABLE MenuGroups(
	MenuGroupID int AUTO_INCREMENT NOT NULL,
	MenuGroupName nvarchar(255) NOT NULL,
	MenuType tinyint NOT NULL,
	MenuContent text NULL,
	IsAllowDelete bit NOT NULL
)
CREATE TABLE UserTrackings(
	UserTrackingID int AUTO_INCREMENT NOT NULL,
	ActionDetail text NOT NULL,
	UserID int NOT NULL,
	UserName nvarchar(255) NOT NULL,
	IPAddress nvarchar(50) NOT NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE WeatherProvinces(
	WeatherProvinceID int AUTO_INCREMENT NOT NULL,
	ProvinceName nvarchar(255) NOT NULL,
	Description nvarchar(max) NULL
)
CREATE TABLE WebLinkGroups(
	WebLinkGroupID int AUTO_INCREMENT NOT NULL,
	WebLinkGroupName nvarchar(255) NOT NULL
)
CREATE TABLE WeatherStates(
	WeatherStateID int AUTO_INCREMENT NOT NULL,
	IconDefaultPath varchar(255) NOT NULL,
	IconDefaultName varchar(255) NOT NULL,
	StateName nvarchar(255) NOT NULL,
	Description nvarchar(max) NOT NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE SiteLogs(
	SiteLogID decimal(18, 0) AUTO_INCREMENT NOT NULL,
	DateCreated datetime NULL,
	PortalID int NULL,
	TabID int NULL,
	Counter decimal(18, 0) NULL,
	Visitor decimal(18, 0) NULL
)
CREATE TABLE SiteLogHours(
	SiteLogHourID decimal(18, 0) AUTO_INCREMENT NOT NULL,
	SiteLogID decimal(18, 0) NULL,
	PortalID int NULL,
	TabID int NULL,
	DateCreated smalldatetime NULL,
	Hours int NULL,
	Counter int NULL
)
CREATE TABLE SchedulerTelevisionEvents(
	SchedulerTelevisionEventID int AUTO_INCREMENT NOT NULL,
	ChannelID int NOT NULL,
	DisplayTime datetime NOT NULL,
	Description nvarchar(max) NOT NULL,
	CrUserName nvarchar(255) NOT NULL,
	UdUserName nvarchar(255) NULL,
	CrDateTime datetime NOT NULL,
	UdDateTime datetime NULL,
	ContentType tinyint NOT NULL
)
CREATE TABLE SiteLogHourDetails(
	SiteLogHourDetailID decimal(18, 0) AUTO_INCREMENT NOT NULL,
	DateCreated datetime NULL,
	Hours tinyint NULL,
	PortalID int NULL,
	TabID int NULL,
	RawUrl nvarchar(255) NULL,
	HostAddress varchar(50) NULL
)
CREATE TABLE RatingContentTypes(
	RatingsContentTypeID tinyint AUTO_INCREMENT NOT NULL,
	RatingsContentTypeName nvarchar(255) NOT NULL
)
CREATE TABLE Provinces(
	ProvinceID int AUTO_INCREMENT NOT NULL,
	ProvinceCode varchar(50) NULL,
	ProvinceName nvarchar(255) NOT NULL,
	Description nvarchar(1000) NULL,
	SortOrder int NULL
)
CREATE TABLE Portals(
	PortalID tinyint AUTO_INCREMENT NOT NULL,
	PortalName nvarchar(255) NOT NULL,
	UrlLogOn nvarchar(255) NULL,
	UrlAccessDenied varchar(255) NULL,
	HasNews bit NOT NULL,
	HasLog bit NOT NULL,
	CssFile varchar(255) NOT NULL,
	IsReadOnly bit NOT NULL
)
CREATE TABLE UserOnlines(
	UserOnlineID int AUTO_INCREMENT NOT NULL,
	SessionID nvarchar(255) NOT NULL,
	UserName nvarchar(255) NOT NULL,
	RemoteIP nvarchar(50) NULL,
	StartTime datetime NOT NULL,
	Counter int NOT NULL,
	LastTime datetime NULL,
	URL nvarchar(255) NOT NULL
)
CREATE TABLE UrlSelectValues(
	UrlSelectValueID int AUTO_INCREMENT NOT NULL,
	UrlSelectValueName nvarchar(255) NOT NULL,
	Url nvarchar(255) NOT NULL,
	Type varchar(50) NOT NULL
)
CREATE TABLE Users(
	UserID int AUTO_INCREMENT NOT NULL,
	UserUniqueCode uniqueidentifier ROWGUIDCOL  NOT NULL,
	UserGroupID int NOT NULL,
	UserName nvarchar(255) NOT NULL,
	Password nvarchar(255) NOT NULL,
	NotAllowChangePassword bit NOT NULL,
	FullName nvarchar(255) NULL,
	Birthday datetime NULL,
	Gender bit NULL,
	Address nvarchar(255) NULL,
	ProvinceID int NULL,
	Email nvarchar(255) NULL,
	Phone nvarchar(20) NULL,
	OccupationID int NULL,
	CreateDateTime datetime NOT NULL,
	LastLoginDateTime datetime NULL,
	ExpireDateTime datetime NULL,
	IsMultipleLogin int NOT NULL,
	IsSuperUser bit NOT NULL,
	Checked bit NOT NULL
)
CREATE TABLE PhoneBookJobTitles(
	PhoneBookJobTitleID int AUTO_INCREMENT NOT NULL,
	JobName nvarchar(255) NOT NULL,
	Description nvarchar(255) NULL,
	SortOrder int NULL
)
CREATE TABLE Templates(
	TemplateID int AUTO_INCREMENT NOT NULL,
	TemplateName nvarchar(255) NOT NULL,
	Description nvarchar(255) NULL,
	FilePath varchar(255) NOT NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE TaskPriorities(
	TaskPriorityID tinyint AUTO_INCREMENT NOT NULL,
	PriorityName nvarchar(255) NOT NULL
)
CREATE TABLE Cf_Sessions(
	SessionID int AUTO_INCREMENT NOT NULL,
	Title nvarchar(max) NOT NULL,
	SubjectContent text NOT NULL,
	StartTime datetime NOT NULL,
	EndTime datetime NULL,
	ConferenceType tinyint NOT NULL,
	CrUserID int NOT NULL,
	CrDatetime datetime NOT NULL,
	Status tinyint NOT NULL
)
CREATE TABLE Cf_WebUsers(
	WebUserID int AUTO_INCREMENT NOT NULL,
	WebUserName nvarchar(255) NOT NULL,
	Password varchar(255) NOT NULL,
	FullName nvarchar(255) NULL,
	Address nvarchar(255) NULL,
	Email nvarchar(255) NOT NULL,
	CrDatetime datetime NOT NULL
)
CREATE TABLE Contacts(
	ContactID int AUTO_INCREMENT NOT NULL,
	UserID int NULL,
	ContactGroupID int NOT NULL,
	JobTitleID int NULL,
	FirstName nvarchar(255) NOT NULL,
	LastName nvarchar(255) NOT NULL,
	DateOfBirth datetime NULL,
	NativePlace nvarchar(255) NULL,
	InteriorityNumber varchar(20) NULL,
	OfficeNumber varchar(20) NULL,
	HomeNumber varchar(20) NULL,
	MobileNumber varchar(20) NULL,
	Email varchar(255) NULL,
	FilePath varchar(255) NULL,
	SortOrder int NOT NULL,
	Checked tinyint NOT NULL
)
CREATE TABLE ContactJobTitles(
	ContactsJobTitleID int AUTO_INCREMENT NOT NULL,
	JobTitleName nvarchar(255) NOT NULL,
	Description nvarchar(max) NULL,
	SortOrder int NOT NULL
)
CREATE TABLE ContactGroups(
	ContactsGroupID int AUTO_INCREMENT NOT NULL,
	UserID int NULL,
	GroupName nvarchar(255) NOT NULL,
	Description nvarchar(max) NOT NULL,
	SortOrder int NOT NULL,
	CrUserID int NULL,
	CrDateTime datetime NOT NULL
)
CREATE TABLE CurrencyExchangeRates(
	CurrencyExchangeRateID int AUTO_INCREMENT NOT NULL,
	CurrencyCode nvarchar(255) NOT NULL,
	CurrencyName nvarchar(255) NULL,
	Buy float NULL,
	Transfer float NULL,
	Sell float NULL,
	Source nvarchar(255) NULL,
	Sortorder int NULL
)

CREATE TABLE ArticleContentTypes(
	ArticleContentTypeID tinyint AUTO_INCREMENT NOT NULL,
	ContentTypeName nvarchar(255) NOT NULL
)
CREATE TABLE Events(
	EventID int AUTO_INCREMENT NOT NULL,
	PortalID tinyint NULL,
	EventName nvarchar(255) NOT NULL,
	CategoryID int NULL,
	PhotoID int NULL,
	PhotoPath nvarchar(255) NULL,
	CreatedTime datetime NULL,
	Checked bit NOT NULL,
	SortOrder int NULL
)
CREATE TABLE LogoPositions(
	LogoPositionID int AUTO_INCREMENT NOT NULL,
	CategoryID int NOT NULL,
	PortalID int NOT NULL,
	LogoPositionName nvarchar(255) NOT NULL,
	LogoPositionCode nvarchar(255) NOT NULL,
	CrDateTime datetime NOT NULL,
	CrUserName nvarchar(255) NOT NULL
)
CREATE TABLE GalleriesHotImageTypes(
	GalleriesHotImageTypeID int AUTO_INCREMENT NOT NULL,
	GalleriesHotImageTypeName nvarchar(255) NOT NULL,
	FilePath nvarchar(255) NOT NULL
)
CREATE TABLE MediaGroups(
	MediaGroupID int AUTO_INCREMENT NOT NULL,
	UserID int NOT NULL,
	ParentID int NOT NULL,
	PortalID int NOT NULL,
	MediaGroupName nvarchar(255) NOT NULL,
	ObjectLevel int NOT NULL,
	SortOrder int NOT NULL
)
CREATE TABLE Occupations(
	OccupationID int AUTO_INCREMENT NOT NULL,
	OccupationName nvarchar(255) NULL,
	OccupationNameEnglish nvarchar(255) NULL
)
CREATE TABLE NewsLetterCategories(
	NewsLetterCategoryID int AUTO_INCREMENT NOT NULL,
	ParentID int NOT NULL,
	CategoryName nvarchar(255) NOT NULL,
	Description nvarchar(255) NOT NULL,
	CategoryNameEnglish nvarchar(255) NULL,
	DescriptionEnglish nvarchar(255) NULL,
	CategoryLevel int NOT NULL,
	SortOrder int NOT NULL
)
CREATE TABLE Logos(
	LogoID int AUTO_INCREMENT NOT NULL,
	LogoGroupID int NOT NULL,
	PhotoID int NOT NULL,
	Url nvarchar(255) NULL,
	ClickCounter int NOT NULL,
	Width varchar(10) NOT NULL,
	Height varchar(10) NOT NULL,
	IsVisible bit NOT NULL,
	IsTargetInNewWindow bit NOT NULL,
	CrDateTime datetime NOT NULL,
	SortOrder int NOT NULL
)
CREATE TABLE ModuleDefinitions(
	ModuleDefinitionID int AUTO_INCREMENT NOT NULL,
	ModuleGroupID int NOT NULL,
	ModuleDefinitionName nvarchar(255) NOT NULL,
	Description nvarchar(max) NULL,
	DesktopSrc nvarchar(255) NOT NULL
)
CREATE TABLE FaqCategories(
	FaqCategoryID int AUTO_INCREMENT NOT NULL,
	PortalID tinyint NOT NULL,
	ParentID int NULL,
	CategoryName nvarchar(255) NOT NULL,
	Descriptions nvarchar(1000) NULL,
	CategoryLevel int NOT NULL,
	SortOrder int NULL
)
CREATE TABLE Districts(
	DistrictID int AUTO_INCREMENT NOT NULL,
	ProvinceID int NULL,
	DistrictName nvarchar(255) NULL,
	Description nvarchar(max) NULL,
	SortOrder int NULL
)

CREATE TABLE ArticleCrawlers(
	ArticleCrawlerID int AUTO_INCREMENT NOT NULL,
	ArticleSourceID int NOT NULL,
	SourceName nvarchar(255) NOT NULL,
	RssSources varchar(255) NOT NULL,
	Xpath nvarchar(255) NOT NULL,
	IsRelativePath bit NOT NULL,
	IsOverWriteCrawlerLink bit NOT NULL
)
CREATE TABLE Cf_SessionUsers(
	SessionUserID int AUTO_INCREMENT NOT NULL,
	SessionID int NOT NULL,
	UserID int NOT NULL
)
CREATE TABLE TaskFiles(
	TaskFileID int AUTO_INCREMENT NOT NULL,
	TaskFileCode nvarchar(50) NULL,
	TaskID int NOT NULL,
	TaskReportID int NULL,
	UserID int NOT NULL,
	TaskType tinyint NOT NULL,
	FileTitle nvarchar(255) NOT NULL,
	FilePath nvarchar(255) NOT NULL,
	FileName nvarchar(255) NOT NULL,
	FileContentType nvarchar(50) NOT NULL,
	FileSize int NOT NULL,
	FileContent image NULL,
	CrDateTime datetime NOT NULL,
	CrUserID int NOT NULL
)