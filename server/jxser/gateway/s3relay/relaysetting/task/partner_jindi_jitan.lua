--长歌门禁地　祭坛任务
Include("\\script\\gb_taskfuncs.lua")
LG_PARTNER_JITAN_NAME = "T� n"
function GetNextTime()
    local hour = tonumber(date("%H"));
    if (hour == 23) then
    	hour = 0;
    else
    	hour = hour + 1;
    end
    return hour, 0;
end

function TaskShedule()
	TaskName( "Trng Ca M玭 c蕀 a   Nhi謒 v� t� n" );
	--启动后的正点开始
	local h, m = GetNextTime();
	TaskTime(h, m);
	TaskInterval( 60 );
	TaskCountLimit( 0 );
	for i = 1, 5 do
		gb_SetTask(LG_PARTNER_JITAN_NAME, i, 0)
	end
	-- 输出启动消息
	OutputMsg( "Trng Ca M玭 c蕀 a   Nhi謒 v� t� n" );
end

function TaskContent()
	for i = 1, 5 do
		gb_SetTask(LG_PARTNER_JITAN_NAME, i, 1)
	end
	GlobalExecute("dw Msg2SubWorld ( [ [Trong Trng Ca M玭 c蕀 a, linh l鵦 c馻 s竧 n  h錳 sinh. N� 產ng k猽 g鋓 b筺 ng h祅h c馻 b筺, n� c莕 ch髇g nh﹏ kinh b竔. D総 b筺 ng h祅h c馻 b筺 th玭g qua <color=yellow>M玭 nh﹏ Trng Ca M玭<color> x﹎ nh藀 th竚 hi觤 c蕀 a.]]) ")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
