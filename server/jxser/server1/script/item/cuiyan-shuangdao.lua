-- Created by fangjieying 2003-5-17
-- 《翠烟双刀》
-- 学会技能冰心仙子
-- 翠烟，80级以上可用
function main(sel)
	party = GetLastAddFaction()
	skill = HaveMagic(337)	
	if(party ~= "cuiyan") then							-- 不是翠烟
		Msg2Player("B筺 c莔 quy觧 Th髖 Y猲 o ph竝  nghi猲 c鴘  n鯽 ng祔, k誸 qu� ch糿g l躰h ng� 頲 g�. ")
		return 1
	elseif(GetLever < 80) then							-- 是翠烟但未到80级
		Msg2Player("B筺 c莔 quy觧 Th髖 Y猲 o ph竝  nghi猲 c鴘  n鯽 ng祔, k誸 qu� l躰h ng� ch髏 輙. ")
		return 1
	elseif(skill ~= -1) then							-- 已学过该技能
		Msg2Player("B筺 nghi猲 c鴘 k� quy觧 Th髖 Y猲 o ph竝, kh玭g r髏 ra 頲 g�. ")
		return 1
	else
		AddMagic(337,1)										-- 学会技能
		Msg2Player("H鋍 頲 k� n╪g B╪g T﹎ Ti猲 T� ")
		return 0
	end
end