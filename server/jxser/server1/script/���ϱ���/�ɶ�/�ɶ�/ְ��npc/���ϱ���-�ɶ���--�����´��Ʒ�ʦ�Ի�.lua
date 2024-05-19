--西南北区 成都府 信相寺慈海大师对话
--author: yuanlan	
--date: 2003/3/6
-- Update: Dan_Deng(2003-08-12)

function main(sel)
	UTask_em = GetTask(1);
	if (UTask_em <10) then				--没有加入峨嵋派
		Talk(4, "", "Th� ch�! Xem d竛g l� ngi c� luy謓 v�! Kh玭g bi誸 c� nh n Nga Mi hay Л阯g m玭 th豱h gi竜 kh玭g?", "N誹 th藅 s� c� � , trc ti猲 xin nghe v礽 l阨 khuy猲 c馻 l穙 n筽!", "Nga mi Thanh Hi觰 s� th竔 v� tr� tr� c馻 t� n祔 l� ch� tri giao, b� t� bi v韎 m鋓 ngi, s� kh玭g l祄 kh� cho ngi. Nh璶g m蕐  t� t鬰 gia c馻 h� v� c玭g cao cng v� r蕋 ng筼 m筺. N誹 nh� ngi mu鑞 l猲 n骾 Nga Mi, ph秈 th玭g qua s� kh秓 nghi謒 c馻 h� m韎 � ", "N鉯 n Th鬰 Nam tr骳 H秈 阯g m玭, l穙 n筽 khuy猲 ngi ng 甶! Ngi trong 阯g m玭 h祅h s� b� hi觤, ch輓h t� l蒼 l閚, b猲 trong r蕋 l� nghi猰 ng苩, mu鑞 x玭g v祇 Tr骳 H秈, e r籲g l祅h 輙 d� nhi襲!")
	elseif (UTask_em == 40*256+50) then 		--峨嵋派40级任务
		UTask_emsub02 = GetByte(GetTask(29),2)
		if (UTask_emsub02 == 0) then 
			Say("A di У ph藅! Th� ra l� n� hi謕 c馻 Nga Mi ph竔. Ph藅 l� c馻 chng m玭 Thanh hi觰 s� th竔 qu� ph竔 r蕋 cao th﹎, nh璶g tr譶h  ph藅 h鋍 c馻  t� m玭 h� c騨g kh玭g k衜, l穙 t╪g kh玭g t� lng s鴆, mu鑞 th豱h gi竜, th豱h gi竜!", 2, "M阨 i s� ch� b秓 /L40_V2_Q1", "V穘 b鑙 c遪 b薾 vi謈 kh竎 n鱝 /no")
		elseif (UTask_emsub02 == 3) then
			L40_V2_Q1()
		elseif (UTask_emsub02 == 5) then
			L40_V2_Q2()
		elseif (UTask_emsub02 == 7) then
			L40_V2_Q3()
		else
			if (HaveItem(167) == 0) then
				AddEventItem(167)
				Talk(1,"","N� hi謕 qu� kh玭g h� danh  t� Nga Mi. g T譶h H� Th﹏ ph� y! Xin nh薾 l蕐!")
			else
				Talk(1,"","Tr譶h  Ph藅 h鋍 c馻  t� Nga Mi kh玭g k衜 g� v� h鋍! L穙 t╪g b閕 ph鬰!")
			end
		end
	elseif ((UTask_em == 50*256+50) and (HaveItem(23) == 1)) then		--峨嵋派50级任务
		Talk(5, "","T� V﹏ Ph竝 s�:A Di У Ph藅! N� hi謕 c� g� ch� gi竜?","T筰 h� theo l謓h s� t玭, bi誹 l� v藅 cho qu� t�, l祄 phi襫 i s� h醝 Phng trng T� H秈 c馻 qu� t� m閠 ti課g."," t� � t鑤 c馻 t玭 s�,ch糿g qua b莕 t╪g kh玭g bi誸 Phng trng hi謓 gi� � u, 產ng lo l緉g cho s� an nguy c馻 玭g 蕐.","Kh玭g bi誸 x秠 ra chuy謓 g�?","Th藅 l� k� l�! Phng trng s竛g nay sau khi nh薾 頲 m閠 phong th� th� 甶 v祇 h藆 vi謓, n bay gi� v蒼 ch璦 th蕐 ra, c騨g kh玭g bi誸  x秠 ra chuy謓 g�.")
		SetTask(1, 50*256+60)
		AddNote("Sau khi tr� chuy謓 v韎 T� V﹏ Ph竝 s� � T輓 Tng t� Th祅h Й, 頲 bi誸 T� H秈 i s�  甶 v祇 a o h藆 vi謓. ")
		Msg2Player("Sau khi tr� chuy謓 v韎 T� V﹏ Ph竝 s�, 頲 bi誸 phng trng T� H秈 i s�  甶 v祇 a o h藆 vi謓. ")
	elseif (UTask_em == 50*256+60) then
		Talk(1,"","Th藅 l� k� l�! Phng trng s竛g nay sau khi nh薾 頲 m閠 phong th� th� 甶 v祇 h藆 vi謓, n bay gi� v蒼 ch璦 th蕐 ra, c騨g kh玭g bi誸  x秠 ra chuy謓 g�.")
	elseif (UTask_em >= 50*256+80) and (GetFaction() == "emei") then
		Talk(1,""," t� n� hi謕 c鴘 Phng trng! N� hi謕 Nga Mi qu� l� danh b蕋 h� truy襫.")
	elseif (UTask_em == 70*256) then
		Talk(1,"","N� hi謕 ng祔 sau h祅h t萿 giang h�, c� g� c莕 tr� gi髉 th� xin c� n鉯, b莕 t� s� h誸 l遪g gi髉 .")
	else
		Say("L﹗ r錳 kh玭g g苝, Thanh Hi觰 S� Th竔 v蒼 b譶h an ch�? ")	--加入峨嵋派后的非任务对话
	end
end;

function no()
	Talk(1,"","V藋 b莕 t╪g kh玭g l祄 phi襫 n� hi謕 n鱝.")
end;

function L40_V2_Q1()
	Say("Ph藅 gi竜 truy襫 nh藀 trung th� t� tri襲 i n祇?", 4, "Chi課 qu鑓 /f1", "шi H竛 /L40_V2_Q2", "шi Л阯g /f1", "шi Minh /f1")
end;

function f1()
	Say("A Di У Ph藅! Xem ra n� th� ch� kh玭g hi觰 s﹗ s綾 ph藅 h鋍. ")
	SetTask(29, SetByte(GetTask(29),2,3))
end;

function L40_V2_Q2()
	Say("T鑤 l緈! N� hi謕 c� bi誸 Cao t╪g t� Л阯g tri襲 n Thi猲 Tr骳 th豱h kinh l� ai kh玭g?", 4, "Bi謓 C� /f2", "Ki誱 Ch﹏ /f2", "Nh蕋 H祅h /f2", "Huy襫 Trang /L40_V2_Q3")
end;

function f2()
	Say("N� hi謕 c� nh� sai kh玭g?", 0)
	SetTask(29, SetByte(GetTask(29),2,5))
end;

function L40_V2_Q3()
	Say("Hay l緈! Qu� ph竔 � Nga mi s琻 l� m閠 trong b鑞 thi猲 h� t� i ph藅 s琻. N� hi謕 c� bi誸 l� m玭 ph竔 n祇 kh玭g thu閏 t� i Ph藅 s琻 kh玭g?", 4, "Ph� У s琻 /f3", "C鰑 Hoa s琻 /f3", "Tung s琻 /L40_V2_prise", "Ng� Уi s琻 /f3")
end;

function f3()
	Say("L� n祇 t玭 s� ch璦 d箉 qua cho c竎  t� sao?", 0)
	SetTask(29, SetByte(GetTask(29),2,7))
end;

function L40_V2_prise()
	Talk(1,"","Tr譶h  Ph藅 h鋍 c馻  t� Nga Mi kh玭g k衜 g� v� h鋍! L穙 t╪g b閕 ph鬰! N� hi謕 qu� kh玭g h� danh  t� Nga Mi. g T譶h H� Th﹏ ph� y! Xin nh薾 l蕐!")
	AddEventItem(167)
	SetTask(29, SetByte(GetTask(29),2,10))
	AddNote("L蕐 頲 g T譶h H� Th﹏ Ph� � ch� T� V﹏ ph竝 s� T輓 Tng t� t筰 Th祅h Й. ")
	Msg2Player("Л頲 g T譶h H� Th﹏ Ph�. ")
end;
