-- 剑阁蜀道 战斗NPC 蛮人3 少林20级任务
-- by：Dan_Deng(2003-08-01)
--打蛮人的过程中不可退出，否则要重新打过。

function OnDeath()
	UTask_sl = GetTask(7);
	if (UTask_sl >= 20*256+64) and (UTask_sl < 20*256+128) and (GetBit(UTask_sl,3) == 0) then			-- 任务中且这一只未打过
		UTask_sl = SetBit(UTask_sl,3,1)
		if (UTask_sl == 20*256+64+31) then		--如果够(bin(10000 + 01000 + 00100 + 00010 + 00001))
			SetTask(7,20*256+128)
			AddNote("N╩ g� ng� ngc b� b筺 gi竜 hu蕁  t﹎ ph鬰 kh萿 ph鬰, h鴄 t� nay tu t﹎ s鯽 t輓h, kh玭g d竚 l閚g h祅h n鱝. ")
			Msg2Player("N╩ g� ng� ngc b� b筺 gi竜 hu蕁  t﹎ ph鬰 kh萿 ph鬰, h鴄 t� nay tu t﹎ s鯽 t輓h, kh玭g d竚 l閚g h祅h n鱝. ")
		else
			Msg2Player("B筺 nh b筰 m閠 g� ng� ngc. ")
			SetTask(7,UTask_sl)
		end
	end
end;
