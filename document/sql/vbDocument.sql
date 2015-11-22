CREATE TABLE `vbLiteGroups`(
	`GroupID` `int` AUTO_INCREMENT NOT NULL,
	`GroupName` `nvarchar`(255) NOT NULL,
	`Description` `nvarchar`(255) NULL,
	`Status` `int` NOT NULL
)
CREATE TABLE `vbDocuments`(
	`DocumentID` `int` AUTO_INCREMENT NOT NULL,
	`DocumentCode` `nvarchar`(50) NOT NULL,
	`LanguageID` `tinyint` NOT NULL,
	`TypeID` `tinyint` NOT NULL,
	`DocumentTitle` `nvarchar`(max) NOT NULL,
	`DocumentTitleCleaned` `nvarchar`(255) NOT NULL,
	`IdentityNumber` `nvarchar`(50) NOT NULL,
	`DocumentSummary` `nvarchar`(max) NULL,
	`DocumentSummaryPlainText` `nvarchar`(max) NULL,
	`DocumentContent` `ntext` NULL,
	`Source` `nvarchar`(255) NULL,
	`PublishDate` `datetime` NULL,
	`EffectiveDate` `datetime` NULL,
	`ExpireDate` `datetime` NULL,
	`IsExpired` `bit` NULL,
	`Description` `nvarchar`(max) NULL,
	`CrUserID` `int` NULL,
	`CrUserName` `nvarchar`(255) NULL,
	`CrDateTime` `datetime` NULL,
	`UdUserID` `int` NULL,
	`UdUserName` `nvarchar`(255) NULL,
	`UdDateTime` `datetime` NULL,
	`RvUserID` `int` NULL,
	`RvUserName` `nvarchar`(255) NULL,
	`RvDateTime` `datetime` NULL,
	`ViewCounter` `int` NULL,
	`DownloadCounter` `int` NULL,
	`SearchKeyword` `nvarchar`(255) NULL,
	`Checked` `bit` NULL
)
CREATE TABLE `vbFiles`(
	`FileID` `int` AUTO_INCREMENT NOT NULL,
	`DocumentID` `int` NULL,
	`FileTitle` `nvarchar`(255) NULL,
	`FilePath` `nvarchar`(255) NULL,
	`VirtualPath` `nvarchar`(255) NULL,
	`FileName` `nvarchar`(255) NULL,
	`FileContentType` `nvarchar`(50) NULL,
	`FileSize` `int` NULL,
	`FileContent` `image` NULL,
	`Description` `ntext` NULL,
	`CreatedBy` `nvarchar`(255) NULL,
	`DateCreated` `datetime` NULL,
	`UpdateBy` `nvarchar`(255) NULL,
	`DateUpdated` `datetime` NULL
)
CREATE TABLE `vbLiteCategoryDocuments`(
	`CategoryDocumentID` `int` AUTO_INCREMENT NOT NULL,
	`CategoryID` `int` NOT NULL,
	`DocumentID` `int` NOT NULL
)
CREATE TABLE `vbDocumentCategories`(
	`DocumentsCategoryID` `int` AUTO_INCREMENT NOT NULL,
	`DocumentID` `int` NOT NULL,
	`CategoryID` `int` NOT NULL
)
CREATE TABLE `vbDocumentKeywords`(
	`DocumentKeywordID` `int` AUTO_INCREMENT NOT NULL,
	`DocumentID` `int` NOT NULL,
	`KeywordID` `int` NOT NULL
)
CREATE TABLE `vbDocumentOrganizations`(
	`DocumentOrganizationID` `int` AUTO_INCREMENT NOT NULL,
	`DocumentID` `int` NOT NULL,
	`OrganizationID` `int` NOT NULL
)
CREATE TABLE `vbLiteDocuments`(
	`DocumentID` `int` AUTO_INCREMENT NOT NULL,
	`GroupID` `int` NOT NULL,
	`Title` `nvarchar`(max) NOT NULL,
	`TitleCleaned` `nvarchar`(255) NULL,
	`Sumary` `nvarchar`(max) NULL,
	`Description` `ntext` NULL,
	`Author` `nvarchar`(255) NULL,
	`Source` `nvarchar`(255) NULL,
	`FileName` `nvarchar`(255) NULL,
	`FilePath` `nvarchar`(255) NULL,
	`FileSize` `int` NULL,
	`FileContentType` `nvarchar`(50) NULL,
	`FileContent` `image` NULL,
	`Status` `int` NOT NULL,
	`CrUserID` `int` NOT NULL,
	`CrUserName` `nvarchar`(255) NOT NULL,
	`CrDateTime` `datetime` NOT NULL,
	`UdUserID` `int` NULL,
	`UdUserName` `nvarchar`(255) NULL,
	`UdDateTime` `datetime` NULL
)
CREATE TABLE `vbDocumentRelates`(
	`DocumentRelateID` `int` AUTO_INCREMENT NOT NULL,
	`DocSrcID` `int` NOT NULL,
	`DocDstID` `int` NOT NULL,
)
CREATE TABLE `vbJobs`(
	`JobID` `int` AUTO_INCREMENT NOT NULL,
	`JobName` `nvarchar`(255) NOT NULL,
	`Checked` `bit` NOT NULL,
)
CREATE TABLE `vbDocumentSigners`(
	`DocumentSignerID` `int` AUTO_INCREMENT NOT NULL,
	`DocumentID` `int` NOT NULL,
	`SignerID` `int` NOT NULL
)
CREATE TABLE `vbTypes`(
	`TypeID` `tinyint` AUTO_INCREMENT NOT NULL,
	`TypeName` `nvarchar`(255) NOT NULL,
	`TypeNameEnglish` `nvarchar`(255) NULL,
	`SortOrder` `tinyint` NULL,
)
CREATE TABLE `vbCategories`(
	`CategoryID` `int` AUTO_INCREMENT NOT NULL,
	`ParentID` `int` NOT NULL,
	`CategoryName` `nvarchar`(255) NOT NULL,
	`CategoryNameEnglish` `nvarchar`(255) NULL,
	`Description` `nvarchar`(255) NULL,
	`DescriptionEnglish` `nvarchar`(255) NULL,
	`ObjectLevel` `int` NOT NULL,
	`SortOrder` `int` NOT NULL,
	`Checked` `bit` NOT NULL
)
CREATE TABLE `vbLanguages`(
	`LanguageID` `tinyint` AUTO_INCREMENT NOT NULL,
	`LanguageName` `nvarchar`(255) NOT NULL,
	`LanguageAlias` `nvarchar`(50) NOT NULL,
	`SortOrder` `int` NOT NULL
)
CREATE TABLE `vbKeywords`(
	`KeywordID` `int` AUTO_INCREMENT NOT NULL,
	`KeywordName` `nvarchar`(255) NOT NULL,
	`KeywordNameEnglish` `nvarchar`(255) NULL
)
CREATE TABLE `vbLiteCategories`(
	`CategoryID` `int` AUTO_INCREMENT NOT NULL,
	`Categoryname` `nvarchar`(255) NOT NULL,
	`SortLevel` `int` NOT NULL,
	`SortOrder` `int` NOT NULL,
	`Status` `int` NOT NULL,
	`CrUserName` `nvarchar`(255) NOT NULL,
	`CrDateTime` `datetime` NOT NULL
)
CREATE TABLE `vbSigners`(
	`SignerID` `int` AUTO_INCREMENT NOT NULL,
	`SignerName` `nvarchar`(255) NOT NULL,
	`SignerNameEnglish` `nvarchar`(255) NULL
)
CREATE TABLE `vbProvinces`(
	`ProvinceID` `int` AUTO_INCREMENT NOT NULL,
	`ProvinceName` `nvarchar`(255) NOT NULL,
	`ProvinceCode` `nvarchar`(50) NULL,
	`Checked` `bit` NULL
)
CREATE TABLE `vbOrganizations`(
	`OrganizationID` `int` AUTO_INCREMENT NOT NULL,
	`OrganizationName` `nvarchar`(255) NOT NULL,
	`OrganizationNameEnglish` `nvarchar`(255) NULL,
	`SortOrder` `int` NOT NULL
)
CREATE TABLE `vbObjects`(
	`ObjectID` `int` AUTO_INCREMENT NOT NULL,
	`ObjectName` `nvarchar`(255) NOT NULL,
	`ObjectCode` `nvarchar`(50) NULL,
	`SortOrder` `int` NOT NULL,
	`Checked` `bit` NOT NULL
)