STARTHOUR = 22;
STARTMIN = 30;

FIRSTDAY = 816;--8月16日作为第一次开黄金彩票时间
GoldResultTab = {};--各时间里黄金彩票的结果


function GameSvrConnected(dwGameSvrIP)
	nIntervalDay = tonumber(getCurrTime()) - FIRSTDAY;
	for i = 1, nIntervalDay do 
		if (GoldResultTab[i] ~= 0 or GoldResultTab[i] ~= nil) then 
			strsomeday = format("%.4d", FIRSTDAY + i - 1)
			ResultString = szResultString..strsomeday
			result , P1, P2 = GetCustomDataFromSDB(ResultString, 0, 0, "ii")
			if (result > 0) then 
				NotifySDBRecordChanged(ResultString, 0 ,0 ,1);		
			end
		end;
	end;
end;

function GameSvrReady(dwGameSvrIP)
end

function getCurrTime()
	return date( "%m%d" );
end

szMainString = "GoldLottery";
szResultString = "GoldLtyResult"

function TaskShedule()
	--设置方案名称
	TaskName("Olympic Gold")
	TaskInterval(1440)
	
	
	-- 22点00分开始竞奖
	TaskTime(STARTHOUR , STARTMIN);
	
	TaskCountLimit(0);
end

--"GoldLottery" timestamp id 

function TaskContent()
	OutputMsg("----------------R髏 th╩ v� s� ho祅g kim GoldLottery -----------------");
	OutputMsg(date());
	if (tonumber(getCurrTime()) >= 903 ) then 
		OutputMsg("Ho箃 ng v� s� olympic  k誸 th骳, ng ch鴆 n╪g v� s� ho祅g kim!")
		return
	end

	randomseed( tonumber( date("%m%d%H%M%S") ) )
	nIntervalDay = tonumber(getCurrTime()) - FIRSTDAY;
	for i = 1, nIntervalDay + 1 do 
		GetGoldLotteryInfo(FIRSTDAY + i - 1)
	end;
	OutputMsg("----------------------------------------------------------");
end

function GetGoldLotteryInfo(someday)
	strsomeday = format("%.4d", someday)
	OutputMsg("Ng祔 v� s� "..strsomeday.."--------------")
	RecordString = szMainString..strsomeday
	ResultString = szResultString..strsomeday
	result , P1, P2 = GetCustomDataFromSDB(ResultString, 0, 0, "ii")
	
	if (result > 0 ) then
		GoldResultTab[someday - FIRSTDAY + 1] = P2
		OutputMsg("ID v� s� ho祅g kim ng b� "..P2.."-"..P1)
		NotifySDBRecordChanged(ResultString, 0, 0, 1)
	else
		GenGoldLottery(RecordString, ResultString, someday)
	end
end;

function GenGoldLottery(RdString, RsString, someday)
	GoldResultTab[someday - FIRSTDAY + 1] = 0
	nCount = GetRecordCount(RdString,0,0,0,0);
	OutputMsg("GoldLottery Count "..nCount);
	if (nCount > 0) then
		nRand =	random(1, nCount)
		bFound , P1,P2 = GetRecordInfoFromNO(RdString, 0, 0, 0, 0, nRand)
		if(bFound == 1) then
			bResult , m = GetCustomDataFromSDB(RdString, P1, P2, "i");		
			str = format("ID ph莕 thng trong v� s� ho祅g kim l� %d-%d", P2, P1);
			success = SaveCustomDataToSDBOw(RsString, 0, 0, "ii", P1, P2);
			NotifySDBRecordChanged(RsString, 0, 0 ,1);
			nMonth = floor(someday / 100)
			nDay = mod(someday, 100);
			strNews = format("dw AddLocalNews ( [ [V� s� ho祅g kim tr髇g thng trong %d ng祔 %d th竛g  m�! S� l�: [%d-%d]. M阨 ngi ch琲 tr髇g thng mau n L� Quan nh薾 ph莕 thng ho祅g kim!]], 1) ", nMonth, nDay, P2,P1)
			GlobalExecute(strNews);
			GoldResultTab[someday - FIRSTDAY + 1] = P2
			OutputMsg(str);
		else
			OutputMsg("Ki觤 tra s� li謚 c� l鏸, ch璦 t譵 頲 ngi tr髇g thng")
		end
	else
		OutputMsg("Kh玭g c� ngi n祇 tr髇g thng n猲 kh玭g c� ph莕 thng.")
	end
end;
