-- 国战宋金
-- DongZhi
Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

function TaskShedule()
	
	TaskName( "Qu鑓 chi課 T鑞g Kim t鎛g 甶襲 ng" );	--任务名称
	TaskTime( 20, 00 );				--启动时间
	TaskInterval(1440);				--间隔时间:一天
	TaskCountLimit(0);				--无次数限制
	
	OutputMsg("**************** T鎛g 甶襲 ng qu鑓 chi課 t鑞g kim nhi謒 v� kh雐 ng th祅h c玭g ****************")	
end

function TaskContent()
	
	local nWeekday = tonumber(date("%w"));
	
	if nWeekday == 1 then
		OutputMsg("**************** Create GUOZHAN New Battle ****************")	
		battle_StartNewIssue(2, 3);	
		OutputMsg("***********************************************************")
	end

end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
