// Decompiled with JetBrains decompiler
// Type: UserDefinedFunctions
// Assembly: SqlRegex, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: F373EC98-C8C5-48BE-B4E7-3D2DCFFCE170
// Assembly location: C:\Users\senya\Downloads\SqlRegex\SqlRegex.dll

using Microsoft.SqlServer.Server;
using System;
using System.Data.SqlTypes;
using System.Text.RegularExpressions;

public class UserDefinedFunctions
{
  public static bool IsValidRegex(string pattern)
  {
    try
    {
      Regex regex = new Regex(pattern);
      return true;
    }
    catch (Exception ex)
    {
      return false;
    }
  }

  [SqlFunction]
  public static SqlBoolean IsValidEmail(SqlString Email)
  {
    return (SqlBoolean) Regex.IsMatch(Convert.ToString((object) Email), "([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})");
  }

  [SqlFunction]
  public static SqlBoolean ContainsEmail(SqlString Email)
  {
    return (SqlBoolean) Regex.Match(Convert.ToString((object) Email), "([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})").Success;
  }

  [SqlFunction]
  public static SqlBoolean IsValidIPv4(SqlString IPv4)
  {
    return (SqlBoolean) Regex.IsMatch(Convert.ToString((object) IPv4), "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");
  }

  public static SqlBoolean ContainsIPv4(SqlString IPv4)
  {
    return (SqlBoolean) Regex.Match(Convert.ToString((object) IPv4), "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$").Success;
  }

  [SqlFunction]
  public static bool IsValidIPv4WithPort(SqlString IPv4WithPort)
  {
    return Regex.IsMatch(Convert.ToString((object) IPv4WithPort), "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])((?::\\d*)?)$");
  }

  [SqlFunction]
  public static bool IsValidIPv4CIDR(SqlString IPv4CIDR)
  {
    return Regex.IsMatch(Convert.ToString((object) IPv4CIDR), "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(\\d|[1-2]\\d|3[0-2]))$");
  }

  [SqlFunction]
  public static bool ContainsInteger(SqlString IntegerStr, bool isDistinguish = true)
  {
    string input = Convert.ToString((object) IntegerStr);
    string pattern = "\\b\\s+[-+]?\\d+\\s+\\b";
    if (!isDistinguish)
      pattern = "[-+]?\\d+";
    return Regex.Match(input, pattern).Success;
  }

  [SqlFunction]
  public static bool ContainsNumeric(SqlString NumericStr, bool isDistinguish = true)
  {
    string input = Convert.ToString((object) NumericStr);
    string pattern = "\\b\\s+[-+]?\\d*\\.?\\d+\\s+\\b";
    if (!isDistinguish)
      pattern = "[-+]?\\d*\\.?\\d+";
    return Regex.Match(input, pattern).Success;
  }

  [SqlFunction]
  public static bool IsValidDate(SqlString DateStr)
  {
    DateTime result;
    return DateTime.TryParse(Convert.ToString((object) DateStr), out result);
  }

  [SqlFunction]
  public static bool ContainsDate(SqlString DateStr)
  {
    return Regex.Match(Convert.ToString((object) DateStr), "\\b\\s+(?:\\d{1,2})/(?:\\d{1,2})/(?:(?:\\d{4}|\\d{3}|\\d{2}))|(?:\\d{1,2})-(?:\\d{1,2})-(?:(?:\\d{4}|\\d{3}|\\d{2}))|(?:\\d{1,2})\\.(?:\\d{1,2})\\.(?:(?:\\d{4}|\\d{3}|\\d{2}))|(?:(?:\\d{4}|\\d{3}|\\d{2}))/(?:\\d{1,2})/(?:\\d{1,2})|(?:(?:\\d{4}|\\d{3}|\\d{2}))-(?:\\d{1,2})-(?:\\d{1,2})|(?:(?:\\d{4}|\\d{3}|\\d{2}))\\.(?:\\d{1,2})\\.(?:\\d{1,2})|(?:\\d{4})\\s*(?:\\d{1,2})\\s*(?:\\d{1,2})|(?:\\d{1,2})\\s*(?:\\d{1,2})\\s*(?:(?:\\d{4}|\\d{3}|\\d{2}))\\s+\\b").Success;
  }

  [SqlFunction]
  public static bool IsValidUrl(SqlString UrlStr)
  {
    return Regex.IsMatch(Convert.ToString((object) UrlStr), "^(ht|f)tp(s?)\\:\\/\\/[0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*(:(0-9)*)*(\\/?)([a-zA-Z0-9\\-\\.\\?\\,\\'\\/\\\\\\+&amp;%\\$#_]*)?$");
  }

  [SqlFunction]
  public static bool ContainsUrl(SqlString UrlStr)
  {
    return Regex.Match(Convert.ToString((object) UrlStr), "(ht|f)tp(s?)\\:\\/\\/[0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*(:(0-9)*)*(\\/?)([a-zA-Z0-9\\-\\.\\?\\,\\'\\/\\\\\\+&amp;%\\$#_]*)?").Success;
  }

  [SqlFunction]
  public static bool IsValidCardFormat(SqlString CardNumber)
  {
    return Regex.IsMatch(Convert.ToString((object) CardNumber), "\\d{4}-?\\d{4}-?\\d{4}-?\\d{4}");
  }

  public static bool ContainsCardFormat(SqlString CardNumber)
  {
    return Regex.Match(Convert.ToString((object) CardNumber), "\\d{4}-?\\d{4}-?\\d{4}-?\\d{4}").Success;
  }

  [SqlFunction]
  public static bool IsDecimalRounded(SqlString DecimalStr)
  {
    return Regex.IsMatch(Convert.ToString((object) DecimalStr), "^\\d*\\.?((25)|(50)|(5)|(75)|(0)|(00))?$");
  }

  [SqlFunction]
  public static bool IsPalindrome(SqlString StrValue)
  {
    return Regex.IsMatch(Convert.ToString((object) StrValue), "(?<N>.)+.?(?<-N>\\k<N>)+(?(N)(?!))");
  }

  [SqlFunction]
  public static bool ContainsPalindrome(SqlString Text)
  {
    return Regex.Match(Convert.ToString((object) Text), "\\b\\s+(?<N>.)+.?(?<-N>\\k<N>)+(?(N)(?!))\\b").Success;
  }

  [SqlFunction]
  public static bool ContainsString(SqlString Text, SqlString pattern)
  {
    string input = Convert.ToString((object) Text);
    string pattern1 = Convert.ToString((object) pattern);
    if (UserDefinedFunctions.IsValidRegex(pattern1))
      return Regex.Match(input, pattern1).Success;
    throw new ArgumentException("ERROR: PATTERN IS NOT WELL-FORMED!");
  }

  [SqlFunction]
  public static string RgxTrim(SqlString Text)
  {
    return new Regex("^[ \\t]+|\\s+|[ \\t]+$", RegexOptions.Multiline).Replace(Convert.ToString((object) Text), " ").Trim();
  }

  [SqlFunction]
  public static string RgxReplace(SqlString input, SqlString pattern, SqlString replacement)
  {
    Convert.ToString((object) input);
    string pattern1 = Convert.ToString((object) pattern);
    string input1 = Convert.ToString((object) input);
    string replacement1 = Convert.ToString((object) replacement);
    if (UserDefinedFunctions.IsValidRegex(pattern1))
      return new Regex(pattern1).Replace(input1, replacement1);
    throw new ArgumentException("ERROR: PATTERN IS NOT WELL-FORMED!");
  }

  public class CustomException<T> : Exception where T : Exception
  {
    public CustomException()
    {
    }

    public CustomException(string message)
      : base(message)
    {
    }

    public CustomException(string message, Exception innerException)
      : base(message, innerException)
    {
    }
  }

  public class MyCustomException : Exception
  {
  }
}
