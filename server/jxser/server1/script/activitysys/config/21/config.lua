Include("\\script\\activitysys\\config\\21\\variables.lua")

--Close Config21 and open config1021--ThanhLD 20130724
tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "server start",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:Init",	{nil} },
	},
}
--tbConfig[2] = --一个细节
--{
--	nId = 2,
--	szMessageType = "ClickNpc",
--	szName = "click shijianzongguan",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"T鎛g Qu秐 S� Ki謓"},
--	tbCondition = 
--	{
--	},
--	tbActition = 
--	{
--		{"AddDialogOpt",	{"H頿 th祅h ph莕 thng",3} },
--		--сng ch鴆 n╪g i nguy猲 li謚 - Modified By DinhHQ - 20120629
--		--{"AddDialogOpt",	{"фi nguy猲 li謚",8} },
--		{"AddDialogOpt",	{"Nh薾 ph莕 thng tr鵦 tuy課",7} },
--		{"SetDialogTitle",	{"Tng truy襫 nghe giang h� n r籲g, c� th� 甶襲 ch� 產n dc   th玭g k� kinh b竧 m筩h, ngi th祅h c玭g s� c� hi謚 qu� b蕋 ng�, c竎 ch� v� i hi謕 c� th� n Trng B筩h S琻 Nam, Trng B筩h S琻 B綾, nh 畊鎖 cng o  nh薾 頲 Л琻g Quy, v� mua X� Hng t筰 h祅g Rong, tham gia T鑞g Kim, Vi猰 д, Vt 秈, Phong L╪g ч, Thi猲 Tr� M藅 C秐h, Ki誱 Gia M� Cung, v� nh Boss Th� Gi韎 s� nh薾 頲 Tr莕 B�. Trong K� Tr﹏ C竎 c� Dng Vng жnh, c竎 h� c� th� mang 5 lo筰 nguy猲 li謚 tr猲 甧m n y cho ta, ta s� t苙g thng cho c竎 h� ph莕 thng tng 鴑g. Ngo礽 ra trong th阨 gian di詎 ra ho箃 ng, c竎 h� c� th� d飊g th阨 gian tr鵦 tuy課 c馻 m譶h  i l蕐 ph莕 thng, m鏸 ng祔 m鏸 i hi謕 nhi襲 nh蕋 ch� c� th� i 頲 10 c竔."} },
--	},
--}
--tbConfig[3] = --一个细节
--{
--	nId = 3,
--	szMessageType = "CreateDialog",
--	szName = "compose dialog",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"Xin Ch祇!",0},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--	},
--	tbActition = 
--	{
--		{"AddDialogOpt",	{ITEM_AWARD1.szName,4} },
--		{"AddDialogOpt",	{ITEM_AWARD2.szName,5} },
--		{"AddDialogOpt",	{ITEM_AWARD3.szName,6} },
--	},
--}
--tbConfig[4] = --一个细节
--{
--	nId = 4,
--	szMessageType = "CreateCompose",
--	szName = "compose award1",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_AWARD1.szName,1,1,1,0.02,0,50},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_1.szName,ITEM_MATERIAL_1,1} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_2.szName,ITEM_MATERIAL_2,2} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_3.szName,ITEM_MATERIAL_3,1} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_4.szName,ITEM_MATERIAL_4,1} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_AWARD1,1,EVENT_LOG_TITLE,"COMPOSE AWARD1"} },
--	},
--}
--tbConfig[5] = --一个细节
--{
--	nId = 5,
--	szMessageType = "CreateCompose",
--	szName = "compose award2",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_AWARD2.szName,1,1,1,0.02,0,50},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_1.szName,ITEM_MATERIAL_1,1} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_2.szName,ITEM_MATERIAL_2,2} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_3.szName,ITEM_MATERIAL_3,1} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_4.szName,ITEM_MATERIAL_4,1} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_5.szName,ITEM_MATERIAL_5,1} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_AWARD2,1,EVENT_LOG_TITLE,"COMPOSE AWARD2"} },
--	},
--}
--tbConfig[6] = --一个细节
--{
--	nId = 6,
--	szMessageType = "CreateCompose",
--	szName = "compose award3",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_AWARD3.szName,1,1,1,0.02,0,50},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_1.szName,ITEM_MATERIAL_1,1} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_2.szName,ITEM_MATERIAL_2,2} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_3.szName,ITEM_MATERIAL_3,1} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_4.szName,ITEM_MATERIAL_4,1} },
--		{"AddOneMaterial",	{ITEM_MATERIAL_5.szName,ITEM_MATERIAL_5,1} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_AWARD3,1,EVENT_LOG_TITLE,"COMPOSE AWARD3"} },
--	},
--}
--tbConfig[7] = --一个细节
--{
--	nId = 7,
--	szMessageType = "nil",
--	szName = "get onlineaward",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"ThisActivity:CheckTaskDaily",	{TSK_GET_ONLINEAWARD,MAX_GET_ONLINEAWARD,"H玬 nay ngi kh玭g th� nh薾 n鱝, ng祔 mai h穣 quay l筰.","<"} },
--		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
--	},
--	tbActition = 
--	{
--		{"ThisActivity:GetOnlineAward",	{nil} },
--	},
--}
--tbConfig[8] = --一个细节
--{
--	nId = 8,
--	szMessageType = "nil",
--	szName = "compose material4 dialog",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--	},
--	tbActition = 
--	{
--		{"ThisActivity:ComposeMaterial4Dailog",	{nil} },
--	},
--}
--tbConfig[9] = --一个细节
--{
--	nId = 9,
--	szMessageType = "NpcOnDeath",
--	szName = "kill monster at field",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
--		{"NpcFunLib:CheckInMap",	{"321,322,340,75,225,226,227"} },
--	},
--	tbActition = 
--	{
--		{"NpcFunLib:DropSingleItem",	{ITEM_MATERIAL_1,1,"5"} },
--	},
--}
--tbConfig[10] = --一个细节
--{
--	nId = 10,
--	szMessageType = "ClickNpc",
--	szName = "click lingfan",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"H祅g rong"},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
--	},
--	tbActition = 
--	{
--		{"AddDialogOpt",	{format("Mua %s",ITEM_MATERIAL_2.szName),28} },
--	},
--}
--tbConfig[11] = --一个细节
--{
--	nId = 11,
--	szMessageType = "CreateCompose",
--	szName = "buy material2",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_MATERIAL_2.szName,1,1,1,0.02,0,50},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
--		{"AddOneMaterial",	{MONEY.szName,MONEY,10000} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_2,1,EVENT_LOG_TITLE,"BUY MATERIAL2"} },
--	},
--}
--tbConfig[12] = --一个细节
--{
--	nId = 12,
--	szMessageType = "FinishSongJin",
--	szName = "songjin mark>=1500 and <3000",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {-2,"3"},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
--		{"PlayerFunLib:CheckTask",	{"751",1500,"",">="} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,10,EVENT_LOG_TITLE,"TongKim1000"} },
--	},
--}
--tbConfig[13] = --一个细节
--{
--	nId = 13,
--	szMessageType = "FinishSongJin",
--	szName = "songjin mark>=3000",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {-2,"3"},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,15,EVENT_LOG_TITLE,"TongKim3000"} },
--	},
--}
--tbConfig[14] = --一个细节
--{
--	nId = 14,
--	szMessageType = "NpcOnDeath",
--	szName = "yandibaozang boss",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"NpcFunLib:CheckId",	{"1289,1290,1291,1292,1293,1294,1295,1296,1297,1298"} },
--		{"NpcFunLib:CheckInMap",	{"853,854,855,856,857,858,859,860,861,862"} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,2,EVENT_LOG_TITLE,"BossTieuViemDe"} },
--	},
--}
--tbConfig[15] = --一个细节
--{
--	nId = 15,
--	szMessageType = "NpcOnDeath",
--	szName = "yandibaozang boss sp",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"NpcFunLib:CheckId",	{"1310,1312,1317,1314,1318,1319,1311,1313,1315,1316"} },
--		{"NpcFunLib:CheckInMap",	{"853,854,855,856,857,858,859,860,861,862"} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,6,EVENT_LOG_TITLE,"BossDaiViemDe"} },
--	},
--}
--tbConfig[16] = --一个细节
--{
--	nId = 16,
--	szMessageType = "Chuanguan",
--	szName = "chuangguan_17",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"17"},
--	tbCondition = 
--	{
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,10,EVENT_LOG_TITLE,"VuotAi17"} },
--	},
--}
--tbConfig[17] = --一个细节
--{
--	nId = 17,
--	szMessageType = "Chuanguan",
--	szName = "chuangguan_28",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"28"},
--	tbCondition = 
--	{
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,10,EVENT_LOG_TITLE,"VuotAi28"} },
--	},
--}
--tbConfig[18] = --一个细节
--{
--	nId = 18,
--	szMessageType = "NpcOnDeath",
--	szName = "fenglingdu_boatboss",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"NpcFunLib:CheckBoatBoss",	{nil} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,10,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinh"} },
--	},
--}
--tbConfig[19] = --一个细节
--{
--	nId = 19,
--	szMessageType = "NpcOnDeath",
--	szName = "tianchimijing floor3",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"NpcFunLib:CheckInMap",	{"937,938,939,940,941"} },
--	},
--	tbActition = 
--	{
--		{"NpcFunLib:DropSingleItem",	{ITEM_MATERIAL_3,1,"10"} },
--	},
--}
--tbConfig[20] = --一个细节
--{
--	nId = 20,
--	szMessageType = "MazeTaskFinish",
--	szName = "maze task",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckFreeBagCell",	{1,"nomsg"} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,3,EVENT_LOG_TITLE,"MAZE TASK"} },
--	},
--}
--tbConfig[21] = --一个细节
--{
--	nId = 21,
--	szMessageType = "ItemScript",
--	szName = "use award1",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_AWARD1},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"PlayerFunLib:CheckCashLimit",	{1900000000,"default"} },
--		{"ThisActivity:CheckTask",	{TSK_USE_AWARD1,MAX_USE_AWARD1,"Х t n gi韎 h筺, kh玭g th� s� d鬾g ti誴","<"} },
--		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
--	},
--	tbActition = 
--	{
--		{"ThisActivity:UseAward1",	{nil} },
--	},
--}
--tbConfig[22] = --一个细节
--{
--	nId = 22,
--	szMessageType = "ItemScript",
--	szName = "use award2",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_AWARD2},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"PlayerFunLib:CheckCashLimit",	{1900000000,"default"} },
--		{"ThisActivity:CheckTask",	{TSK_USE_AWARD2,MAX_USE_AWARD2,"Х t n gi韎 h筺, kh玭g th� s� d鬾g ti誴","<"} },
--		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
--	},
--	tbActition = 
--	{
--		{"ThisActivity:UseAward2",	{nil} },
--	},
--}
--tbConfig[23] = --一个细节
--{
--	nId = 23,
--	szMessageType = "ItemScript",
--	szName = "use award3",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_AWARD3},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"PlayerFunLib:CheckCashLimit",	{1900000000,"default"} },
--		{"ThisActivity:CheckTask",	{TSK_USE_AWARD2,MAX_USE_AWARD2,"Х t n gi韎 h筺, kh玭g th� s� d鬾g ti誴","<"} },
--		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
--	},
--	tbActition = 
--	{
--		{"ThisActivity:UseAward3",	{nil} },
--	},
--}
--tbConfig[24] = --一个细节
--{
--	nId = 24,
--	szMessageType = "ItemScript",
--	szName = "use onlineaward1",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_ONLINEAWARD1},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"ThisActivity:CheckTaskDaily",	{TSK_USE_ONLINEAWARD,MAX_USE_ONLINEAWARD,"S� l莕 s� d鬾g c馻 ngi h玬 nay  , ng祔 mai h穣 quay l筰 nh�!","<"} },
--		--{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d鬾g t筰 c竎 th祅h th� v� c竎 t﹏ th� th玭"} },	
--		{"PlayerFunLib:VnCheckInCity",	{"default"} },
--	},
--	tbActition = 
--	{
--		{"ThisActivity:AddTaskDaily",	{TSK_USE_ONLINEAWARD,1} },
--		{"PlayerFunLib:AddExp",	{EXP_ONLINEAWARD1,1,EVENT_LOG_TITLE,"USE ONLINEAWARD1"} },
--	},
--}
--tbConfig[25] = --一个细节
--{
--	nId = 25,
--	szMessageType = "ItemScript",
--	szName = "use onlineaward2",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_ONLINEAWARD2},
--	tbCondition = 
--	{
--		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
--		{"PlayerFunLib:IsHaveTong",	{"C竎 h� v蒼 ch璦 c� bang h閕"} },
--		{"ThisActivity:CheckTaskDaily",	{TSK_USE_ONLINEAWARD,MAX_USE_ONLINEAWARD,"S� l莕 s� d鬾g c馻 ngi h玬 nay  , ng祔 mai h穣 quay l筰 nh�!","<"} },
--		--{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d鬾g t筰 c竎 th祅h th� v� c竎 t﹏ th� th玭"} },	
--		{"PlayerFunLib:VnCheckInCity",	{"default"} },	
--		{"ThisActivity:CheckState",	{nil} },
--	},
--	tbActition = 
--	{
--		{"ThisActivity:AddTaskDaily",	{TSK_USE_ONLINEAWARD,1} },
--		{"ThisActivity:UseOnlineAward2",	{NUM_CONTRIBUTION} },
--	},
--}
--tbConfig[26] = --一个细节
--{
--	nId = 26,
--	szMessageType = "OnLogin",
--	szName = "on login",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--	},
--	tbActition = 
--	{
--		{"ThisActivity:PlayerOnLogin",	{nil} },
--	},
--}
--tbConfig[27] = --一个细节
--{
--	nId = 27,
--	szMessageType = "NpcOnDeath",
--	szName = "kill world boss",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{
--		{"NpcFunLib:CheckWorldBoss",	{nil} },
--	},
--	tbActition = 
--	{		
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,25,EVENT_LOG_TITLE,"TieuDietBossTheGioi"} },	
--	},
--}
--tbConfig[28] = --一个细节
--{
--	nId = 28,
--	szMessageType = "CreateCompose",
--	szName = "buy material2",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {ITEM_MATERIAL_2.szName,1,1,1,0.02,0,50},
--	tbCondition = 
--	{
--		{"AddOneMaterial",	{MONEY.szName,MONEY,10000} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_2,1,EVENT_LOG_TITLE,"BUY MATERIAL2"} },
--	},
--}
--tbConfig[29] = --thu� t芻 i u l躰h
--{
--	nId = 29,
--	szMessageType = "NpcOnDeath",
--	szName = "Ti猽 di謙 thu� t芻 i u l躰h",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {nil},
--	tbCondition = 
--	{		
--		{"NpcFunLib:CheckId",	{"1692"} },
--		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{ITEM_MATERIAL_3,20,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinh"} },		
--	},
--}