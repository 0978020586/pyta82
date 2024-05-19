--花灯活动
--每晚19：00~21：00 每15分钟 在华山，青城山，点苍山，武夷山
--四个地点分别 产生300个花灯
LANTERN_DATE_START	= 20080611
LANTERN_DATE_END	= 20080713
LANTERN_TIME_START 	= 1900
LANTERN_TIME_END	= 2100

function TaskShedule()
	-- 设置方案名称
	TaskName("Ho箃 ng 'Hoa Жng'");
	TaskTime(19, 00);
	TaskInterval(15);
	TaskCountLimit(0);
	OutputMsg("Kh雐 ng h鋋t ng Hoa ng"..date("%H%M"));
end

function TaskContent()
	local nTime	= tonumber(date("%H%M"));
	local nDate	= tonumber(date("%Y%m%d"));
	
	if (nDate >= LANTERN_DATE_START and nDate <= LANTERN_DATE_END and nTime >= LANTERN_TIME_START and nTime <= LANTERN_TIME_END) then
		if (nTime == LANTERN_TIME_END) then
			GlobalExecute("dw del_all_lantern()");
			return 0;
		end
		GlobalExecute("dw Msg2SubWorld([[B筺 h穣 nhanh ch﹏ n Thanh Th祅h s琻, V� Di S琻, 觤 Thng s琻, Hoa s琻! Ch� c莕 gi秈 p ng 3 c﹗  s� nh薾 頲 ph莕 thng phong ph� v� h蕄 d蒼!]])");
		GlobalExecute("dw create_lanterns()");
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end