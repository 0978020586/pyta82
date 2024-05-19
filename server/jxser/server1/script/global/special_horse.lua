-- special_horse.lua 卖特殊马(80级马)的NPC脚本
-- By Dan_Deng(2003-11-10)

function main()
	UWorld97 = GetTask(97)
	if (UWorld97 == 10) then		-- 已经买过
		Talk(1,"","Ngi nh蕋 nh ph秈 i i t鑤 v韎 ng鵤, h籲g ng祔 ph秈 t緈 cho n�, b竛h u ph秈 gi� b閠 cho nhuy詎... ")
	elseif (UWorld97 == 1) and (IsTongMaster() == 1) then			-- 可以买马
		Talk(4,"sele_color","V� anh h飊g n祔 xin d鮪g bc . ","Huynh i, c� chuy謓 g� c莕 ch� gi竜? ","T筰 h� Th萴 C﹗, hi謓 c� 1 con thi猲 l� m� mu鑞 b竛, xem v� huynh i n祔 nh蕋 nh l� m閠 i t玭g s� c馻 ch輓h ph竔. Ng鵤 t鑤 c馻 t筰 h� th藅 kh玭g x蕌 h� khi ph鬰 v� anh h飊g. ","в ta xem th� ng鵤 qu� c馻 huynh,,, ")
	else
		Talk(1,"","Thi猲 L� m� kh玭g thi誹, nh璶g ngi bi誸 d飊g ng鵤 h醝 c� m蕐 ai!")
	end
end

function sele_color()
	Say("Anh h飊g h穣 xem! ",6,"Зy kh玭g ph秈 l� � V﹏ Чp Tuy誸 sao! /buy_black","Зy kh玭g ph秈 l� X輈h Th� B秓 M� sao! /buy_red","Зy kh玭g ph秈 l� Tuy謙 秐h sao! /buy_cyan","Зy kh玭g ph秈 l� лch L� sao! /buy_yellow","Зy ch糿g ph秈 l� Chi誹 D� Ng鋍 S� T� sao! /buy_white","Зy l� ng鵤 g� v藋? T筰 h� hi觰 bi誸 c遪 k衜 /buy_none")
end

function buy_black()
	the_buy(1)
end

function buy_red()
	the_buy(2)
end

function buy_cyan()
	the_buy(3)
end

function buy_yellow()
	the_buy(4)
end

function buy_white()
	the_buy(5)
end

function buy_none()
	Talk(1,"","Nh蕋 bang chi ch�, l� m閠 nh﹏ v藅 b薱 th莥 l祄 sao kh玭g bi誸 y r鑤 cu閏 l� ng鵤 g� ch�? Th� l鏸, xem ra t筰 h�  nh譶 l莔 ngi!")
end

function the_buy(i)
	SetTaskTemp(49,i)
	Say("Kh玭g sai,anh h飊g qu� nhi猲 bi誸 nh譶!  T筰 h� y c騨g kh玭g mu鑞 ph秈 b竛 n�,nh璶g hi謓 gi� t筰 h� c莕 300 v筺 lng b筩!  Hy v鋘g anh h飊g i i t鑤 v韎 n�! ",2,"kh玭g sao u, ta nh蕋 nh s� i x� t鑤 v韎 n� m� /buy_yes","Nh蕋 th阨 l祄 sao t譵 ra 頲 s� ti襫 n祔 /buy_no")
end

function buy_yes()
	if (GetCash() >= 3000000) then
		i = GetTaskTemp(49)
		Pay(3000000)
		AddItem(0,10,5,i,0,0,0)
		SetTask(97,100+i)			-- 变量赋值，并且记住买的是什么颜色马
		Talk(1,"","Ng鵤 琲 ng鵤! T� y v� sau ngi h穣 甶 theo v� anh h飊g n祔 nh�, nh蕋 nh ph秈 ngoan ngo穘 !")
	else
		Talk(1,"","Ta hi謓 gi� trong ngi kh玭g mang theo  ng﹏ lng, huynh t筸 th阨 c莔  s� ti襫 n祔 v藋!")
	end
end

function buy_no()
	Talk(1,"","Kh玭g l� s� ti襫 n祔 l筰 l祄 kh� anh h飊g sao")
end
