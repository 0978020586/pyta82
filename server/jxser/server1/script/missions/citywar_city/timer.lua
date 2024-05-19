Include("\\script\\missions\\citywar_city\\head.lua");

function OnTimer()
	timestate = GetMissionV(MS_STATE);
	V = GetMissionV(MS_NEWSVALUE);
	SetMissionV(MS_NEWSVALUE, V+1);
	if (timestate == 2) then --开战了
		ReportBattle(V);
	end;
end;

function ReportBattle(V)
--战斗进行过程中，系统定期通知石碑的情况
	gametime = (floor(GetMSRestTime(MISSIONID,13) / 18));
	RestMin, RestSec = GetMinAndSec(gametime);
	str = format("Hi謓 t筰 %s 產ng trong giai 畂筺 tranh 畂箃 quy誸 li謙! Th阨 gian c遪 d� %d ph髏 %d gi﹜; hi謓 t筰 %d Long tr�  h錳 ph鬰 thu閏 t輓h", GetGameCity(), RestMin, RestSec, MS_SYMBOLCOUNT);
	for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
			str = str .. "Phe ph遪g th� "	;
		else 	
			str = str .. "Phe t蕁 c玭g ";
		end;
	end;

	--2004.11.5关闭向全球发送广播的功能
	--if (mod(V, 18) == 0) then 
	--	AddGlobalNews(str)
	--else
		Msg2MSAll(MISSIONID, str)
	--end;
end;
 