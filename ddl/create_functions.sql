CREATE FUNCTION dbo.IsValidEmail(@Email NVARCHAR(255))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsValidEmail;
GO

CREATE FUNCTION dbo.ContainsEmail(@Email NVARCHAR(255))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsEmail;
GO

CREATE FUNCTION dbo.IsValidIPv4(@IPv4 NVARCHAR(20))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsValidIPv4;
GO

CREATE FUNCTION dbo.ContainsIPv4(@IPv4 NVARCHAR(20))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsIPv4;
GO

CREATE FUNCTION dbo.IsValidIPv4WithPort(@IPv4WithPort NVARCHAR(20))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsValidIPv4WithPort;
GO

CREATE FUNCTION dbo.IsValidIPv4CIDR(@IPv4CIDR NVARCHAR(20))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsValidIPv4CIDR;
GO

CREATE FUNCTION dbo.ContainsInteger(@IntegerStr NVARCHAR(max), @isDistinguish bit)
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsInteger;
GO

CREATE FUNCTION dbo.ContainsNumeric(@NumericStr NVARCHAR(max), @IsDistinguish bit)
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsNumeric;
GO

CREATE FUNCTION dbo.IsValidDate(@DateStr NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsValidDate;
GO

/*
contains Date, supports following date formats:
[d|dd]/[m|mm]/[yy|yyy|yyyy]; [d|dd].[m|mm].[yy|yyy|yyyy]; [d|dd]-[m|mm]-[yy|yyy|yyyy]
[yy|yyy|yyyy]/[m|mm]/[d|dd]; [yy|yyy|yyyy].[m|mm].[d|dd]; [yy|yyy|yyyy]-[m|mm]-[d|dd]
[yy|yyy|yyyy]/[d|dd]/[m|mm]; [yy|yyy|yyyy].[d|dd].[m|mm]; [yy|yyy|yyyy]-[d|dd]-[m|mm]
yyyy [d|dd] [m|mm]; yyyy [m|mm] [d|dd]
*/
CREATE FUNCTION dbo.ContainsDate(@DateStr NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsDate;
GO

CREATE FUNCTION dbo.IsValidUrl(@UrlStr NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsValidUrl;
GO

CREATE FUNCTION dbo.ContainsUrl(@UrlStr NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsUrl;
GO

CREATE FUNCTION dbo.IsValidCardFormat(@CardNumber NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsValidCardFormat;
GO

CREATE FUNCTION dbo.ContainsCardFormat(@CardNumber NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsCardFormat;
GO

CREATE FUNCTION dbo.IsDecimalRounded(@DecimalStr NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsDecimalRounded;
GO

CREATE FUNCTION dbo.IsPalindrome(@StrValue NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.IsPalindrome;
GO

CREATE FUNCTION dbo.ContainsPalindrome(@Text NVARCHAR(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsPalindrome;
GO

CREATE FUNCTION dbo.ContainsString(@Text NVARCHAR(max), @pattern nvarchar(max))
RETURNS BIT 
WITH EXECUTE AS CALLER
EXTERNAL NAME SqlRegex.UserDefinedFunctions.ContainsString;
GO

