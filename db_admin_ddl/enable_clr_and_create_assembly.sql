EXEC sp_configure 'clr enabled' , '1'; 
RECONFIGURE

ALTER DATABASE CURRENT SET TRUSTWORTHY ON;

USE [uld]
GO

/****** Object:  SqlAssembly [SqlRegex]    Script Date: 11/30/2018 11:01:01 PM ******/
CREATE ASSEMBLY [SqlRegex]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C010300225380590000000000000000E00022200B013000001C000000060000000000001A3B0000002000000040000000000010002000000002000004000000000000000600000000000000008000000002000000000000030060850000100000100000000010000010000000000000100000000000000000000000C83A00004F00000000400000A802000000000000000000000000000000000000006000000C000000903900001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000201B000000200000001C000000020000000000000000000000000000200000602E72737263000000A80200000040000000040000001E0000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000002200000000000000000000000000004000004200000000000000000000000000000000FC3A0000000000004800000002000500282500006814000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B3001001500000001000011000002730500000A26170ADE060B00160ADE00062A00000001100000000001000C0D00060600000113300200240000000200001100028C09000001280600000A0A72010000700B0607280700000A280800000A0C2B00082A133002002B0000000300001100028C09000001280600000A0A72010000700B0607280900000A0C086F0A00000A280800000A0D2B00092A0013300200240000000200001100028C09000001280600000A0A72E00000700B0607280700000A280800000A0C2B00082A133002002B0000000300001100028C09000001280600000A0A72E00000700B0607280900000A0C086F0A00000A280800000A0D2B00092A00133002001F0000000400001100028C09000001280600000A0A72B50100700B0607280700000A0C2B00082A00133002001F0000000400001100028C09000001280600000A0A72A00200700B0607280700000A0C2B00082A0013300200360000000500001100028C09000001280600000A0A72A30300700B0316FE010D092C0672C90300700B0607280900000A0C086F0A00000A13042B0011042A000013300200360000000500001100028C09000001280600000A0A72DB0300700B0316FE010D092C06720D0400700B0607280900000A0C086F0A00000A13042B0011042A000013300200230000000600001100028C09000001280600000A0A061201280B00000A0C082C04170D2B04160D2B00092A0013300200260000000700001100028C09000001280600000A0A722B0400700B0607280900000A0C086F0A00000A0D2B00092A0000133002001F0000000400001100028C09000001280600000A0A72580700700B0607280700000A0C2B00082A0013300200260000000700001100028C09000001280600000A0A72330800700B0607280900000A0C086F0A00000A0D2B00092A0000133002001F0000000400001100028C09000001280600000A0A720A0900700B0607280700000A0C2B00082A0013300200260000000700001100028C09000001280600000A0A720A0900700B0607280900000A0C086F0A00000A0D2B00092A0000133002001F0000000400001100028C09000001280600000A0A72400900700B0607280700000A0C2B00082A00133002001F0000000400001100028C09000001280600000A0A728E0900700B0607280700000A0C2B00082A0013300200260000000700001100028C09000001280600000A0A72D20900700B0607280900000A0C086F0A00000A0D2B00092A000013300200450000000800001100028C09000001280600000A0A038C09000001280600000A0B0728010000060C082C13000607280900000A0D096F0A00000A13042B0C0072240A0070730C00000A7A11042A00000013300300390000000900001100028C09000001280600000A0A726A0A00700B726E0A00700C0818730D00000A0D0906076F0E00000A130411046F0F00000A13052B0011052A00000013300300670000000A00001100028C09000001280600000A0A038C09000001280600000A0B028C09000001280600000A0C048C09000001280600000A0D072801000006130411042C160007730500000A1305110508096F0E00000A0A002B0C0072240A0070730C00000A7A0613062B0011062A2202281000000A002A2602281100000A00002A2A0203281200000A00002A2E020304281300000A00002A2202281100000A002A000042534A4201000100000000000C00000076342E302E33303331390000000005006C0000008C040000237E0000F8040000B003000023537472696E677300000000A8080000980A00002355530040130000100000002347554944000000501300001801000023426C6F620000000000000002000001471D02000916000000FA0133001600000100000011000000040000001A0000001D0000001300000002000000150000000A000000010000000300000002000000010000000100000000009E01010000000000060004019C02060024019C020600DB0089020F00BC02000006005203C20106000502C2010A00EF0038020A00D101CB020A004B01CB020E006F01E00206009000C2010E00A803E00206007103C2010E001702E0020600FD01C2010E001403E00206006601C201000000002C00000000000100010001001000FF020000150001000100020010000100000019000100170002001000DC010000190001001A0050200000000096009803AF00010084200000000096008301B4000200B4200000000096009001B4000300EC200000000096001300B40004001C210000000096001F00B400050054210000000096007903BB00060080210000000096003500BB000700AC210000000096002802C1000800F0210000000096005C00C1000A003422000000009600C200BB000C006422000000009600CE00BB000D009822000000009600AB01BB000E00C422000000009600B601BB000F00F8220000000096002D03BB00100024230000000096003F03BB00110058230000000096006C00BB00120084230000000096009900BB001300B023000000009600A600BB001400E4230000000096005E01C80015003824000000009600C901D000170080240000000096007D00D6001800F324000000008618530206001B00FC24000000008618530206001B000625000000008618530216001B00112500000000861853029D001C001D25000000008618530206001E00000001000F02000001009801000001009801000001002700000001002700000001008003000001003C00000001007E02101002007501000001005902101002007501000001006402000001006402000001007702000001007702000001001D02000001001D02000001006C02000001004201000001009303000001009303000002000F02000001009303000001008D03000002000F0200000300650300000100880000000100880000000200EE01090053020100110053020600190053020A0039005302060061005302160069005501220061006D012700410059032D0061006F013C007100210343005900B9005E007900530216006100530281006100800088008900CC018E00290053020600310053020600310053021600310053029D0002002500AD0002002D00AD002E000B00E0002E001300E9002E001B000801400023001101600023001101800023001101C00023001101E00023001101000123001101200123001101400123001101600123001101800123001101A00123001101C00123001101000223001101200223001101400223001101600223001101800223001101A0022300110110001B00330047004D00560066006E0077009200048000000000000000000000000000000000A5030000040000000000000000000000A400530000000000040000000000000000000000A400470000000000040000000000000000000000A400C2010000000003000200040002000000000006004500010019000000000000437573746F6D457863657074696F6E603100497356616C69644950763400436F6E7461696E7349507634003C4D6F64756C653E00497356616C6964495076344349445200540053797374656D2E44617461006D73636F726C696200436F6E7461696E734E756D65726963004973446563696D616C526F756E646564005267785265706C616365006D657373616765004461746554696D6500497350616C696E64726F6D6500436F6E7461696E7350616C696E64726F6D6500547279506172736500497356616C69644461746500436F6E7461696E73446174650044656275676761626C654174747269627574650053716C46756E6374696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E734174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650053747256616C75650053716C537472696E6700546F537472696E6700436F6E7461696E73537472696E670049734D6174636800697344697374696E677569736800497356616C6964456D61696C00436F6E7461696E73456D61696C0053716C52656765782E646C6C00497356616C696455726C00436F6E7461696E7355726C0053797374656D005267785472696D0053716C426F6F6C65616E004D79437573746F6D457863657074696F6E00696E6E6572457863657074696F6E00417267756D656E74457863657074696F6E007061747465726E0047726F757000436172644E756D62657200436F6E7461696E73496E7465676572004D6963726F736F66742E53716C5365727665722E536572766572002E63746F72004E756D65726963537472004461746553747200446563696D616C5374720055726C53747200496E74656765725374720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E446174612E53716C54797065730053797374656D2E546578742E526567756C617245787072657373696F6E730055736572446566696E656446756E6374696F6E730052656765784F7074696F6E73006765745F5375636365737300497356616C696443617264466F726D617400436F6E7461696E7343617264466F726D6174004F626A656374006F705F496D706C69636974007265706C6163656D656E7400436F6E7665727400497356616C69644950763457697468506F727400696E707574005465787400497356616C696452656765780053716C52656765780000000080DD28005B0061002D007A0041002D005A0030002D0039005F005C002D005C002E005D002B0029004000280028005C005B005B0030002D0039005D007B0031002C0033007D005C002E005B0030002D0039005D007B0031002C0033007D005C002E005B0030002D0039005D007B0031002C0033007D005C002E0029007C00280028005B0061002D007A0041002D005A0030002D0039005C002D005D002B005C002E0029002B002900290028005B0061002D007A0041002D005A005D007B0032002C0034007D007C005B0030002D0039005D007B0031002C0033007D0029000180D35E00280028005B0030002D0039005D007C005B0031002D0039005D005B0030002D0039005D007C0031005B0030002D0039005D007B0032007D007C0032005B0030002D0034005D005B0030002D0039005D007C00320035005B0030002D0035005D0029005C002E0029007B0033007D0028005B0030002D0039005D007C005B0031002D0039005D005B0030002D0039005D007C0031005B0030002D0039005D007B0032007D007C0032005B0030002D0034005D005B0030002D0039005D007C00320035005B0030002D0035005D00290024000180E95E00280028005B0030002D0039005D007C005B0031002D0039005D005B0030002D0039005D007C0031005B0030002D0039005D007B0032007D007C0032005B0030002D0034005D005B0030002D0039005D007C00320035005B0030002D0035005D0029005C002E0029007B0033007D0028005B0030002D0039005D007C005B0031002D0039005D005B0030002D0039005D007C0031005B0030002D0039005D007B0032007D007C0032005B0030002D0034005D005B0030002D0039005D007C00320035005B0030002D0035005D002900280028003F003A003A005C0064002A0029003F00290024000181015E00280028005B0030002D0039005D007C005B0031002D0039005D005B0030002D0039005D007C0031005B0030002D0039005D007B0032007D007C0032005B0030002D0034005D005B0030002D0039005D007C00320035005B0030002D0035005D0029005C002E0029007B0033007D0028005B0030002D0039005D007C005B0031002D0039005D005B0030002D0039005D007C0031005B0030002D0039005D007B0032007D007C0032005B0030002D0034005D005B0030002D0039005D007C00320035005B0030002D0035005D00290028005C002F0028005C0064007C005B0031002D0032005D005C0064007C0033005B0030002D0032005D0029002900240001255C0062005C0073002B005B002D002B005D003F005C0064002B005C0073002B005C00620001115B002D002B005D003F005C0064002B0001315C0062005C0073002B005B002D002B005D003F005C0064002A005C002E003F005C0064002B005C0073002B005C006200011D5B002D002B005D003F005C0064002A005C002E003F005C0064002B0001832B5C0062005C0073002B0028003F003A005C0064007B0031002C0032007D0029002F0028003F003A005C0064007B0031002C0032007D0029002F0028003F003A0028003F003A005C0064007B0034007D007C005C0064007B0033007D007C005C0064007B0032007D00290029007C0028003F003A005C0064007B0031002C0032007D0029002D0028003F003A005C0064007B0031002C0032007D0029002D0028003F003A0028003F003A005C0064007B0034007D007C005C0064007B0033007D007C005C0064007B0032007D00290029007C0028003F003A005C0064007B0031002C0032007D0029005C002E0028003F003A005C0064007B0031002C0032007D0029005C002E0028003F003A0028003F003A005C0064007B0034007D007C005C0064007B0033007D007C005C0064007B0032007D00290029007C0028003F003A0028003F003A005C0064007B0034007D007C005C0064007B0033007D007C005C0064007B0032007D00290029002F0028003F003A005C0064007B0031002C0032007D0029002F0028003F003A005C0064007B0031002C0032007D0029007C0028003F003A0028003F003A005C0064007B0034007D007C005C0064007B0033007D007C005C0064007B0032007D00290029002D0028003F003A005C0064007B0031002C0032007D0029002D0028003F003A005C0064007B0031002C0032007D0029007C0028003F003A0028003F003A005C0064007B0034007D007C005C0064007B0033007D007C005C0064007B0032007D00290029005C002E0028003F003A005C0064007B0031002C0032007D0029005C002E0028003F003A005C0064007B0031002C0032007D0029007C0028003F003A005C0064007B0034007D0029005C0073002A0028003F003A005C0064007B0031002C0032007D0029005C0073002A0028003F003A005C0064007B0031002C0032007D0029007C0028003F003A005C0064007B0031002C0032007D0029005C0073002A0028003F003A005C0064007B0031002C0032007D0029005C0073002A0028003F003A0028003F003A005C0064007B0034007D007C005C0064007B0033007D007C005C0064007B0032007D00290029005C0073002B005C0062000180D95E002800680074007C006600290074007000280073003F0029005C003A005C002F005C002F005B0030002D00390061002D007A0041002D005A005D0028005B002D002E005C0077005D002A005B0030002D00390061002D007A0041002D005A005D0029002A0028003A00280030002D00390029002A0029002A0028005C002F003F00290028005B0061002D007A0041002D005A0030002D0039005C002D005C002E005C003F005C002C005C0027005C002F005C005C005C002B00260061006D0070003B0025005C00240023005F005D002A0029003F0024000180D52800680074007C006600290074007000280073003F0029005C003A005C002F005C002F005B0030002D00390061002D007A0041002D005A005D0028005B002D002E005C0077005D002A005B0030002D00390061002D007A0041002D005A005D0029002A0028003A00280030002D00390029002A0029002A0028005C002F003F00290028005B0061002D007A0041002D005A0030002D0039005C002D005C002E005C003F005C002C005C0027005C002F005C005C005C002B00260061006D0070003B0025005C00240023005F005D002A0029003F0001355C0064007B0034007D002D003F005C0064007B0034007D002D003F005C0064007B0034007D002D003F005C0064007B0034007D00014D5E005C0064002A005C002E003F00280028003200350029007C0028003500300029007C002800350029007C0028003700350029007C002800300029007C00280030003000290029003F002400004328003F003C004E003E002E0029002B002E003F0028003F003C002D004E003E005C006B003C004E003E0029002B0028003F0028004E00290028003F0021002900290001515C0062005C0073002B0028003F003C004E003E002E0029002B002E003F0028003F003C002D004E003E005C006B003C004E003E0029002B0028003F0028004E00290028003F002100290029005C00620001454500520052004F0052003A0020005000410054005400450052004E0020004900530020004E004F0054002000570045004C004C002D0046004F0052004D004500440021000103200000275E005B0020005C0074005D002B007C005C0073002B007C005B0020005C0074005D002B00240000000098EC73F3C5C8BE48B4E73D2DCFFCE17000042001010803200001052001011111050702021219042001010E0607030E0E11210400010E1C050002020E0E0500011121020807040E0E1229112106000212290E0E032000020507030E0E020807050E0E122902020707040E112D0202070002020E10112D0707040E0E1229020807050E0E021229020907060E0E0E12310E0E062002010E11410520020E0E0E0320000E0A07070E0E0E0E0212310E062002010E121908B77A5C561934E0890101040001020E060001112111250500010211250600020211250207000202112511250500010E11250900030E1125112511250801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F77730108010007010000000004010000000000000000002253805900000000020000001C010000AC390000AC1B0000525344538561CDA95D93B040BC5FE506E38F187501000000433A5C55736572735C69676F722E6D696365765C4465736B746F705C4323204578706572745C52656765785C53716C52656765785C53716C52656765785C6F626A5C44656275675C53716C52656765782E7064620000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F03A000000000000000000000A3B0000002000000000000000000000000000000000000000000000FC3A0000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF25002000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000584000004C02000000000000000000004C0234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000000000000000000000000000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004AC010000010053007400720069006E006700460069006C00650049006E0066006F0000008801000001003000300030003000300034006200300000002C0002000100460069006C0065004400650073006300720069007000740069006F006E000000000020000000300008000100460069006C006500560065007200730069006F006E000000000030002E0030002E0030002E00300000003A000D00010049006E007400650072006E0061006C004E0061006D0065000000530071006C00520065006700650078002E0064006C006C00000000002800020001004C006500670061006C0043006F00700079007200690067006800740000002000000042000D0001004F0072006900670069006E0061006C00460069006C0065006E0061006D0065000000530071006C00520065006700650078002E0064006C006C0000000000340008000100500072006F006400750063007400560065007200730069006F006E00000030002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000030002E0030002E0030002E0030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000C0000001C3B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = SAFE
GO
