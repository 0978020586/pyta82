--龙门镇 路人 乞丐 新手任务：捎口信
-- By: Dan_Deng(2003-09-04)

Include("\\script\\global\\itemhead.lua")

function main(sel)
	UTask_world26 = GetTask(26)
	if (UTask_world26 == 0) and (GetLevel() >= 2) then		-- 任务启动
		if (GetSex() == 0) then
			Talk(4,"W26_get","V� i hi謕 n祔, xin gi髉 ta 1 vi謈. ","Sao?","B筺 c� th� gi髉 ta chuy觧 l阨 t韎 Mi Nhi c� nng trong tr蕁 kh玭g? ","L阨 g�. ")
		else
			Talk(4,"W26_get","V� i hi謕 n祔, xin gi髉 ta 1 vi謈. ","Sao?","B筺 c� th� gi髉 ta chuy觧 l阨 t韎 Mi Nhi c� nng trong tr蕁 kh玭g? ","L阨 g�. ")
		end
	elseif (UTask_world26 == 6) then
		Talk(1,"W26_prise","R鑤 cu閏 ngi  b秓 ta n鉯 ra � ngh躠 g� khi課 cho Tri謚 My Nhi 產u kh� tuy謙 v鋘g!? Th藅 l� ng thng!")
	elseif (UTask_world26 >= 10) then
		Talk(1,"","Tr╪g s韒 ch糿g th� s竛g, n鏸 bu錸 產u tim gan! Ai n鉯 m颽 xu﹏ p, ch� th蕐 hoa r鬾g t祅. ! L璾 l筩 nh� th� n祔 th� c遪 m苩 m騣 n祇 g苝 m鋓 ngi!")
	else				-- 非任务对话
		Talk(1,"","C竔 g�? B� th� cho ta �?  甶卼a u c� xin ti襫! ng c� ngh� ta l� ╪ m祔.")
	end
end;

function W26_get()
	Say("H穣 n鉯 v韎 c� 蕐 l� Ti猽 D辌h 秐h  ch誸 r錳. C遪 n鱝, kh玭g 頲 n鉯 l� ta n鉯!",2,"Gi髉 /W26_get_yes","Kh玭g gi髉 /W26_get_no")
end

function W26_get_yes()
	Talk(1,"","Kh玭g bi誸 ngi n鉯 g� n鱝! Nh璶g ta c騨g s� 甶 m閠 chuy課!")
	SetTask(26,3)
	AddNote("Nhi謒 v� k� ti誴: G輚p l穙 ╪ m祔 a tin cho Tri謚 Mi Nhi ")
	Msg2Player("Nhi謒 v� k� ti誴: G輚p l穙 ╪ m祔 a tin cho Tri謚 Mi Nhi ")
end

function W26_get_no()
	Talk(2,"","Th藅 l� th豱h c莡 k� l�! Huynh kh玭g n鉯 r� th� ta kh玭g gi髉 u.","V藋�. ta t譵 ngi kh竎 gi髉 v藋!")
end

function W26_prise()
	Talk(1,"",":卪閠 l阨 kh� n鉯 h誸! Зy c� ch� th祅h �! Xin nh薾 l蕐!")
	SetTask(26,10)
	AddNote("N鉯 ph秐 鴑g c馻 Tri謚 Mi Nhi cho C竔 Bang, ho祅 th祅h nhi謒 v�. ")
	Msg2Player("N鉯 ph秐 鴑g c馻 Tri謚 Mi Nhi cho C竔 Bang, ho祅 th祅h nhi謒 v�. ")
	p1,p2,p3,p4,p5,p6 = RndItemProp(6,15)
	if(GetSex() == 0) then
		AddItem(0, 8, 1, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Л頲 m閠 m秐h Ng璾 b� H� Uy觧. ")
	else
		AddItem(0, 8, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Л頲 m閠 Thanh уng Ng鋍 Tr筩. ")
	end
	AddRepute(5)
	Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 5 甶觤 ")
end
