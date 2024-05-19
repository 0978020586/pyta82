-- 炎帝的宝藏比赛定时器
--每天下午2点到下午12点整点触发

--by 小浪多多
--2007.10.22
INTERVAL_TIME = 60	-- 每小时触发
Include("\\script\\gb_modulefuncs.lua")
Include("\\script\\leaguematch\\timetable.lua")
Include("\\script\\leaguematch\\head.lua")

function GetNextTime()
    local hour = tonumber(date("%H"));
    if (hour == 23) then
    	hour = 0;
    else
    	hour = hour + 1;
    end
    return hour, 25;
end

function TaskShedule()
	TaskName("YANDIBAOZANG");	
	
	-- 60分钟一次
	TaskInterval(INTERVAL_TIME);
	-- 设置触发时间
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format("[YANDIBAOZANG] Task Start At %d:%d...", h, m));
	-- 执行无限次
	TaskCountLimit(0);
	-- OutputMsg("启动自动滚动公告...");
end

function TaskContent()
	local TB_YDBZ_DATE_START =	--启动场次(时)
	{
		8,9,10,12,14,16,18,20,22,
	}
	
	local nhour = tonumber(date("%H"))
	for nindex,ndate_hour in TB_YDBZ_DATE_START do
	
		if (nhour == ndate_hour) then
			
--			if gb_GetModule("YANDIBAOZANG") == 1 and gb_GetModule("YANDIBAOZANG_TALK") == 1 then
				OutputMsg("[YANDIBAOZANG]"..tonumber(date("%H"))..":55 StartSignUp...");
				-- 触发GameServer上的脚本
				--GlobalExecute("dw LoadScript([[\\settings\\trigger_challengeoftime.lua]])");
				GlobalExecute("dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger()");
				szMsg = "Ho箃 ng vt 秈 b秓 t祅g vi猰   b総 u b竜 danh r錳, m鋓 ngi h穣 nhanh ch鉵g n B譶h B譶h c� nng � Bi謓 Kinh  ng k� nh�, th阨 gian b竜 danh l� 5 ph髏."
				GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
--			end
			break;
		end
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end