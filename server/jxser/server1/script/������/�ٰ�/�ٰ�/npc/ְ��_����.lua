-- 临安　职能　铁匠
-- by：Dan_Deng(2003-09-16)
--update:zhaowenyi(2005-02-20)增加紫色及黄金装备铸造

Include("\\script\\global\\global_tiejiang.lua")


TIEJIANG_DIALOG = "<dec><npc>Gian h祅g th� r蘮 n祔 l� do 玭g t� ta truy襫 l筰, t筰 L﹎ An n祔 kh玭g ngi n祇 kh玭g bi誸, xin h醝 i hi謕 mu鑞 mua m鉵  n祇?";
function main()
	tiejiang_city(TIEJIANG_DIALOG);
end;


function yes()
	Sale(1);  				--弹出交易框
end;

