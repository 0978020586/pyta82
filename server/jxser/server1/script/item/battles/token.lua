-- 宋金道具令牌,3分钟内,附近己方玩家跑速增加30%,攻速增加50%
-- Liu Kuo
-- 2004.12.18
Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine()
	CastSkill( 492, 1);		--跑速增加30%,攻速增加50%
	Msg2Player("B筺  s� d鬾g 1 l謓h b礽");
end