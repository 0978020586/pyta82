
--攻城战 中转地图to城战地图（守城方）
--Trap ID：攻城战
--211，1622，3249      211，1608，3235
Include("\\script\\missions\\citywar_city\\head.lua")

function main()
	ft = GetFightState();
	if (ft == 0) then 
		SetPos(1866,3547)
		SetFightState(1)
		bt_RankEffect(BT_GetData(PL_CURRANK))
	else
		if (GetCurCamp() ~= 2) then 
			Msg2Player("Kh玭g th� 甶 頲, n誹 甶 s� n n琲 ph鬰 k輈h c馻 ch qu﹏. ");
			SetPos(1866,3547)
		else
			SetPos(1875,3571)
			SetFightState(0)
		end;
	end;
end;
