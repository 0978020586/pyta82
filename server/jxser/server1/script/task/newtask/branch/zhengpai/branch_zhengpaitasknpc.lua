-- 正派支线任务脚本
-- by xiaoyang(2005\1\4)

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\branch\\branch_head.lua")
Include("\\script\\task\\newtask\\branch\\branch_prize.lua")
Include("\\script\\task\\newtask\\branch\\branch_problem.lua")
Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")

----------------------------------------------------------------------痴僧-----------------------------------------------------------------------
function branch_chiseng()
	Uworld1050 = nt_getTask(1050)
	local name = GetName()  
	if ( Uworld1050 == 20) or ( Uworld1050 == 30 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1050,30)
			Describe(DescLink_ChiSeng.."<#>: Ha ha ha! Vui qu�!  Vui qu�!<enter>"
			..name.."<#>:......T猲 n祔 ch綾 u 鉩 c� v蕁 .<enter>Si T╪g: A! u h�! Th辴 ch�...<enter>"
			..name.."<#>:  H遖 Thng l祄 g� v藋? <enter>A Di У Ph藅! Xin ch祇 Th� ch�.<enter>"
			..name.."<#>:  Ha! Ha!.<enter>Si T╪g: Ta 產ng t豱h hay m�?<enter>"
			..name.."<#>:  Th玦 ng gi� v� n鱝! G莕 y � Чi L� c� ngi b� m藅 phao tin....<enter>B莕 T╪g lu玭 � Thi猲 Long t� ni謒 kinh b竔 Ph藅, l祄 sao bi誸 c� tin n n祇.<enter>"
			..name.."<#>:  Чi h遖 thng! g kh玭g th祅h th藅.<enter>B莕 t╪g 30 n╩ trc ph竝 hi謚 l� Th祅h th藅 H遖 Thng.<enter>"
			..name.."<#>:  Th藅 kh玭g ch辵 n鎖 玭g! Ta ch� mu鑞 h醝 v� Thi猲 Ho祅g Long Kh�.<enter> Thi猲 Kh� g�?<enter>"
			..name.."<#>:  Thi猲 Ho祅g Long Kh�.<enter> �! Mu鑞 h醝 th╩ tin t鴆 c騨g 頲, nh璶g mu鑞 bi誸 tin ph秈 tr� c玭g 1 K� ph� <enter>"
			..name.."<#>:  K� ph� g�? <enter>Ngo礽 Thi猲 Long t� c� v礽 T祅g B祇 Kh竎h, nghe n鉯 b鋘 ch髇g v鮝 m韎 cp 頲 5 quy觧 k� ph� Thi猲 T祅 мa Khuy誸, ngi l蕐 頲 th� h穣 quay l筰 t譵 ta<enter>"
			..name.."<#>:  Л頲!",
			1,"K誸 th骳 i tho筰/chiseng1")	
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1050 == 40 ) or ( Uworld1050 == 50 ) and ( GetItemCount(504) >= 5 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1050,50)
			Describe(DescLink_ChiSeng.."<#>:  L祄 xong ch璦 v藋?<enter>"
			..name.."<#>:  Зy l� 5 quy觧 K� ph� 玭g c莕.<enter>Hay l緈! B莕 t╪g s� cho Th� ch� bi誸 tung t輈h c馻 Thi猲 Ho祅g Long Kh�.<enter>"
			..name.."<#>:  T鑤 qu�.<enter> Thi猲 Ho祅g Long Kh� th藅 ra ch輓h l� Thi猲 Ho祅g Long Kh�.<enter>"
			..name.."<#>:  C竔 g�?<enter> Th� ra l� m閠 n玭g d﹏ trong th玭 gi� d筺g Si T╪g. Th藅 ra, th藅 ra......Ngi c馻 Thi猲 Long t� u  h� s琻 h鉧 duy猲, s� s韒 quay l筰.<enter>"
			..name.."<#>:  Ngi h穣 nh� n誹 bi誸 quay u ta s� tha cho.<enter> Ta c� ng錳 � y, ngi c� gi醝 th� c� n th� 甶!",
			1,"K誸 th骳 i tho筰/chiseng2")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1050 == 40 ) or ( Uworld1050 == 50 ) and ( GetItemCount(504) < 5 ) then
		Describe(DescLink_ChiSeng.."<#>:  Ngi ch璦 l蕐  K� ph� c遪 d竚 n?<enter>",1,"K誸 th骳 i tho筰/no")
	else
		Describe(DescLink_ChiSeng.."<#>:  B竨 v藅 tr猲 i v� s�, b秓 b鑙 kh緋 n琲, c� g� qu� hay kh玭g qu�.Thi謓 tai! Thi謓 tai!",1,"K誸 th骳 i tho筰/no")
	end
end

----------------------------------------------------------------箭头----------------------------------------------------------------------
function branch_jiantou()
	Uworld1050 = nt_getTask(1050)
	local name = GetName()  
	if ( Uworld1050 == 80 ) or ( Uworld1050 == 90 ) then
		if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
			nt_setTask(1050,90)
			Describe(name.."<#>:  Xin h醝 c� ph秈 Ti詎 u i ca kh玭g?.<enter>"
			..DescLink_JianTou.."<#>:  Ti詎 u, ngi n祔  kh玭g c遪 tr猲 i.<enter>"
			..name.."<#>:  Ng筼 V﹏ T玭g b秓 ta n.<enter> G莕 y 玭g ta kh醗 kh玭g?<enter>"
			..name.."<#>:  g ta v蒼 kh醗, 玭g ta b秓 ta n h醝 ng礽 tin t鴆 c馻 Thi猲 Ho祅g Long Kh�.<enter> Thi猲 Ho祅g Long Kh�? Vi謈 n祔  l﹗ l緈 r錳, mu鑞 n鉯 ra ph秈 b総 u t� chuy謓 Nh筩 tng qu﹏ b� s竧 h筰<enter>"
			..name.."<#>:  T筰 sao Nh筩 tng qu﹏ b� h筰?<enter> Ti詎 u: N╩  Nh筩 tng qu﹏ ch鑞g l筰 gi芻 Kim, i ph� Thi誸 Ph� у, gi誸 頲 Ch� tng nc Kim l祄 an l遪g thi猲 h�. Kim C萿 琻g nhi猲 mu鑞 gi誸 Tng qu﹏.<enter>"
			..name.."<#>:  Nh璶g ta ch璦 t鮪g nghe qua chuy謓 Tng qu﹏ b� 竚 s竧.<enter>Chuy謓 n祔 r蕋 輙 ngi bi誸.<enter>"
			..name.."<#>:  V藋 Tng qu﹏ b� th輈h s竧 nh� th� n祇?<enter> N╩  c� l謓h ti詎 tri謚 Nh筩 Phi t� tuy襫 tuy課 tr� v�. M鋓 ngi u tng l� ng礽 b� 竚 s竧 t筰 Phong Ba nh, k� th鵦  頲 c竎 hi謕 kh竎h a 甶 萵 n蕄 <enter>"
			..name.."<#>:  C鴘 tho竧? V藋 Tng qu﹏ � u.<enter> Ti詎 u: � Hoa S琻 ph竔, Tng qu﹏ 萵 c� kh玭g l﹗  b� s竧 h筰.<enter>"
			..name.."<#>:  C竔 g�!<enter> B� 竜 gi竝 n╩ x璦 c馻 Tng qu﹏ th莕 quang ch鉯 s竛g, m鋓 ngi u n鉯  l� Thi猲 Ho祅g Long Kh�. Nh璶g c� th� th� n祇 th� ta kh玭g r�, nh璶g ngi c� th� 甶 h醝 m閠 ngi.<enter>"
			..name.."<#>: L� ai?<enter> S莔 H飊g! H緉 l� h� s� b猲 c筺h Nh筩 Tng qu﹏ hi謓 產ng � Phng Tng <enter>"
			..name.."<#>:  C竚 琻 玭g.<enter>Ngi 甶 甶! L莕 n祔 coi nh� ta  tr� 琻 c鴘 m筺g c馻 Li評 V﹏ T玭g ng祔 x璦.<enter>",
			1,"K誸 th骳 i tho筰/jiantou1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
		Describe(DescLink_JianTou.."<#>:  Hoa S琻 hi觤 h鋋.<enter>",1,"K誸 th骳 i tho筰/no")
	end
end

----------------------------------------------------------------岑雄---------------------------------------------------------------------------
function branch_cenxiong()
	Uworld1050 = nt_getTask(1050)
	local name = GetName()  
		if ( Uworld1050 == 100 ) or ( Uworld1050 == 110 ) then
			if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
				nt_setTask(1050,110)
				Describe(name.."<#>:  S莔 H飊g i ca!<enter>"
				..DescLink_CenXiong.."<#>:  V� B籲g h鱱 n祔, Ta kh玭g quen! Hai ti課g Чi ca ta kh玭g d竚 nh薾.<enter>"
				..name.."<#>:  Ti詎 u i ca b秓 ta n.<enter> Ti詎 u? g ta d筼 n祔 kh醗 kh玭g?<enter>"
				..name.."<#>:  C騨g t鑤. g ta sai ta n t譵 huynh.<enter>A! T譵 ta c� vi謈 g�?<enter>"
				..name.."<#>:  N╩ x璦 l骳 Nh筩 Phi tng qu﹏ B綾 chinh,  t鮪g m芻 b� gi竝 n祔.<enter>S莔 H飊g: ng v藋! Ph� th﹏ ta t鮪g n鉯, Nh筩 Gia anh d騨g c竔 th�, kho竧 l猲 m譶h b� 竜 gi竝  tr玭g nh� Th莕 ti猲.<enter>"
				..name.."<#>:  B� 竜 gi竝  l� Thi猲 Ho祅g Long Kh�?<enter>ng v藋!<enter>"
				..name.."<#>:  V藋 b﹜ gi� n� � u?<enter> M蕋 t輈h r錳. T� l骳 Nh筩 Gia Gia b� th輈h s竧 � Hoa S琻 kh玭g ai bi誸 tung t輈h c馻 b� gi竝 n祔.<enter>"
				..name.."<#>:  S莔 i ca  t鮪g 甶襲 tra qua ch璦?<enter>Цng ti誧 v蒼 ch璦 t譵 ra tung t輈h c馻 Th莕 binh, nh璶g ta  ph竧 hi謓 s竧 th� n╩ x璦 th輈h s竧 Nh筩 Gia!<enter>"
				..name.."<#>:  Ngi n祔 t猲 g�, hi謓 產ng � u?<enter> H緉 t猲 Phan Nh� Long 產ng � ngo礽 th祅h Phng Tng.<enter>",
				1,"K誸 th骳 i tho筰/cenxiong1")
			else
				Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
			end
		else
			Describe(DescLink_CenXiong.."<#>:  Ph薾 trai v� nghi謕 nc! D� c� v飅 th﹜ n琲 sa trng c騨g ng ti課g 'Anh h飊g'",1,"K誸 th骳 i tho筰/no")
		end
end

----------------------------------------------------------------贺兰芝---------------------------------------------------------------------------
function branch_helanzhi()
	Uworld1051 = nt_getTask(1051)
	local name = GetName()  
	if ( Uworld1051 == 20 ) or ( Uworld1051 == 30 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1051,30)
			Describe(name.."<#>:  Ch祇 H� t� t�.<enter>"
			..DescLink_HeLanZhi.."<#>:  Ngi l�...?<enter>"
			..name.."<#>:  M� Dung s� ph� b秓 ta n, 玭g ta hi謓 � L﹎ An c 竜 gi竝, thi誹 Kho竛g th筩h thu閏 t輓h, t� t鮪g c� 2 vi猲, cho n猲 玭g ta b秓 ta n th╩ c�, nh﹏ ti謓 xem c� c遪 gi� B秓 th筩h kh玭g.<enter>�! B秓 v藅 c馻 S� ph� ta ta lu玭 gi� b猲 m譶h Ch� c� 甶襲 n╩ x璦 khi ta k誸 h玭  b� th蕋 l筩 n�.<enter>"
			..name.."<#>:  �, Tr飊g h頿 v藋!.<enter>H� Lan Chi: Th� n祔 v藋, ngi h穣 n Giang T﹏ th玭 g苝 Ng� L穙 th竔甶.<enter>"
			..name.."<#>: T鑤 l緈! <enter> Khoan ! Ngi h穣 gi� l蕐 b� trang b� n祔! Ng祔 sau c� l骳 h鱱 d鬾g! <enter>",
			1,"K誸 th骳 i tho筰/helanzhi1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
			Describe(DescLink_HeLanZhi.."<#>:  Th阨 tr� c� nhi襲 m� c, gi� ch� c莕 Phu qu﹏ ta kh醗 m筺h kh玭g g� quan tr鋘g b籲g.<enter>",1,"K誸 th骳 i tho筰/no")	
	end
end

----------------------------------------------------------------吴老太太-------------------------------------------------------------------
function branch_wulaotai()
	Uworld1051 = nt_getTask(1051)
	local name = GetName()  
	if ( Uworld1051 == 40 ) or ( Uworld1051 == 50 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1051,50)
			Describe(name.."<#>:  Ng� L穙 th竔.<enter>"
			..DescLink_WuLaoTai.."<#>:厖<enter>"
			..name.."<#>:  L穙 Th竔 th竔?<enter>Ng� L穙 th竔:......<enter>"
			..name.."<#>:  L穙 Th竔 th竔 m綾 b謓h l�, kh玭g n鉯 chuy謓 頲, hay l� quay v� t譵 Ng筼 V﹏ T玭g trc .<enter>",
			1,"K誸 th骳 i tho筰/wulaotai1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1051 == 150 ) or ( Uworld1051 == 160 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1051,160)
			Describe(DescLink_WuLaoTai.."<#>:厖<enter>",
			1,"L蕐 dc t鰑 a cho Ng� L穙 th竔 u鑞g/wulaotai2")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
			Describe(DescLink_WuLaoTai.."<#>:  L穙 th﹏  n tu鎖 n祔, s� r籲g kh玭g th� tr� l筰 Kinh th祅h.<enter>",1,"K誸 th骳 i tho筰/no")	
	end
end
--------------------------------------------------------------龚阿牛-------------------------------------------------------------------------
function branch_taokan()
	Uworld1051 = nt_getTask(1051)
	local name = GetName()  
	if ( Uworld1051 == 100 ) or ( Uworld1051 == 110 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1051,110)
			Describe(DescLink_TaoKan.."<#>:  T鴆 th藅! Цm ch� s鉯 n祔 ng l� mu鑞 l蕐 m筺g ngi! Х h筰 l蕐 m筺g mi huynh  r錳.<enter>"
			..name.."<#>:  Ngi c� kh� kh╪ g�?<enter>Ngi l� ai? T譵 ta c� vi謈 g�? Ta 產ng b薾 kh玭g r秐h ti誴 ngi.<enter>"
			..name.."<#>:  Trong tay ta c� 1 輙 xng s鉯, xin 玭g gi髉 ta b祇 ch� dc t鰑.<enter>Kh玭g ph秈 ta kh玭g l祄! Ch� v� d筼 n祔 b鋘 竎 lang tr猲 n骾 ho祅h h祅h d� qu� khi課 ta kh玭g r秐h tay <enter>"
			..name.."<#>:  Vi謈 n祔 n gi秐, Ta c� th� gi髉 huynh ti猽 di謙 竎 lang.<enter>Cung A Ng璾: Th藅 t鑤 qu�!M韎 xem qua phong th竔 c馻 ngi, ta bi誸 ngi kh玭g ph秈 l� ngi thng. Ch� ngi ti猽 di謙 竎 lang ta s� b祇 ch� thu鑓.<enter>",
			1,"K誸 th骳 i tho筰/taokan1")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	elseif ( Uworld1051 == 130 ) or ( Uworld1051 == 140 ) then
		if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
			nt_setTask(1051,140)
			Describe(name.."<#>:  Cung i ca, ta  gi髉 huynh di謙 tr� 竎 lang.<enter>"
			..DescLink_TaoKan.."<#>:  T鑤 qu�, dc t鰑 � y, ngi l蕐 甶! <enter>",
			1,"K誸 th骳 i tho筰/taokan2")
		else
			Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
		end
	else
			Describe(DescLink_TaoKan.."<#>:  Qu﹏ t� l� ngi bi誸 gi髉 ngi kh竎 ng l骳 m� kh玭g m祅g danh l頸!<enter>",1,"K誸 th骳 i tho筰/no")	
	end
end

----------------------------------------------------------混混---------------------------------------------------------------------------
function branch_hunhun()
	branchTask_BW1()
	branchTask_GainBW1()
	branchTask_JoinSJend1()
	Uworld1052 = nt_getTask(1052)
	Uworld1053 = nt_getTask(1053)
	Uworld1011 = nt_getTask(1011) --正派支线杀怪变量
	Uworld1001 = nt_getTask(1001)
	local name = GetName()  
		if ( Uworld1001 >= 210 ) and ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) and (( Uworld1053 == 0 ) or ( Uworld1053 == 10))  then
				nt_setTask(1053,10)
				Describe(DescLink_HunHun.."<#> Ta cho ngi bi誸 m閠 b� m藅. Х c� ngi trong t� ch鴆 nghe 頲 chuy謓 Nh筩 Phi b� th輈h s竧. M鑙 th� gi鱝 L﹎ Uy猲 Nhai v� Nh筩 Phi ai c騨g bi誸, n╩  b猲 c筺h Nh筩 Phi kh玭g 輙 cao th� b秓 v�. Ta c騨g kh玭g bi誸 c� ph秈 ngi c馻 ta gi誸 h緉 kh� "
				..name.."<#>:  T筰 sao ngi l筰 n鉯 v韎 ta b� m藅 n祔? <enter>Nhi襲 l阨! Ngi tng ta mu鑞 sao? G莕 y ngi  t nhi猲 m蕋 l猲 l筩 v韎 ta. Nghe n鉯 h緉  n chi課 trng T鑞g Kim. Ta kh玭g tin h緉 chi課 u v� nc, hay l� phi襫 ngi n Chi課 trng T鑞g Kim m閠 chuy課 t譵 tung t輈h ngi n祔 ti謓 th� l蕐 200 甶觤 t輈h l騳<enter>",
				1,"K誸 th骳 i tho筰/hunhun3")
		elseif (( Uworld1053 == 20 ) or ( Uworld1053 == 25 )) and ( Uworld1011 == 20 ) then 
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then
				nt_setTask(1053,25)
				Describe(DescLink_HunHun.."<#>:  L祄 t鑤 l緈, 甶觤 thng  l蕐 .",
				1,"K誸 th骳 i tho筰/hunhun5")
			else
				Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
			end
		elseif ( Uworld1053 == 27 ) or ( Uworld1053 == 30 ) then 
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then
				nt_setTask(1053,30)
				Describe(DescLink_HunHun.."<#>:  Tr� l阨 ta v礽 v蕁  li猲 quan n T鑞g Kim. S絥 s祅g ch璦?.<enter>",
				2,"C� th� b総 u!/branch_songjinproblem","K誸 th骳 i tho筰/no")
			else
				Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
			end
		elseif ( Uworld1053 == 40 ) or ( Uworld1053 == 50 ) then
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then
				nt_setTask(1053,50)
				Describe(DescLink_HunHun.."<#>:  Tr� l阨 ng h誸, kh� l緈. G莕 y, ta 頲 tin t猲  tr鑞 trong Chi課 trng T鑞g Kim nh 竚 s竧 ch� tng hai nc T鑞g Kim.<enter>"
				..name.."<#>:  Th輈h s竧 ch� tng hai nc?<enter>Kh玭g sai, ch髇g ta kh玭g c� 蕁 tng t鑤 v� T鑞g tri襲, v韎 Kim C萿 c騨g v藋! Ch� c莕 c� ti襫 l� l祄! Ngi n ngo礽 th祅h L﹎ An t譵 h緉, y t猲 l� T� T鴆 Phong, sau  ta v� ngi c飊g h祅h ng. Chuy謓 n祔 n誹",
				1,"K誸 th骳 i tho筰/hunhun4")
			else
				Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
			end
		elseif ( Uworld1052 == 40 ) or ( Uworld1052 == 50 ) then
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then
				nt_setTask(1052,50)
				Describe(name.."<#>:  Ch祇 玭g, ta l� "
				..name..".<enter>"
				..DescLink_HunHun.."<#>:  L� ngi �, t筰 sao tr� nh� v藋 m韎 n? M鋓 ngi  v祇 v� trng. Ngi v祇 v� trng nh m閠 tr薾 甶, ta mu鑞 xem th鵦 l鵦 c馻 ngi.<enter>",
				1,"K誸 th骳 i tho筰/hunhun1")
			else
				Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
			end
		elseif ( Uworld1052 == 60 ) and ( Uworld1011 == 10 ) then
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then
				Describe(DescLink_HunHun.."<#>:  Цnh m閠 tr薾 pk c騨g kh玭g xong c遪 d竚 n g苝 ta? Mau 甶 nh th緉g m閠 tr薾.<enter>",1,"K誸 th骳 i tho筰/no")
			else
				Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
			end
		elseif (( Uworld1052 == 60 ) or ( Uworld1052 == 70 )) and ( Uworld1011 == 20 ) then --扬州演武场战胜了一场
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then
				nt_setTask(1052,70)
				Describe(DescLink_HunHun.."<#>:  Hay l緈! Ngi qu� nhi猲 r蕋 gi醝.<enter>"
				..name.."<#>:  Qu� khen!<enter> M蕐 n╩ nay ta c� nh鴆 u, chuy謓 l祄 ╪ � Di詎 v� trng v鑞 r蕋 thu薾 l頸, t� nhi猲 xu蕋 hi謓 t猲 qu竔 v藅 nh tr╩ tr薾 tr╩ th緉g, l祄 cho ch糿g ai d竚 n khi猽 chi課. T猲 n祔 khi課 ta 產u u qu�.<enter>"
				..name.."<#>:  � ngi l�?<enter>H鏽 H鏽: � c馻 ta ngi hi觰 m�.<enter>"
				..name.."<#>:  H緉 � u?<enter> T猲 h緉 l� Du Sng T﹏, t猲 n祔 萵 n緋 r蕋 k�. Ta hi謓 v蒼 ch璦 甶襲 tra ra tung t輈h h緉. N誹 ngi c� th� ti猽 di謙 h緉 coi nh�  l藀 i c玭g cho t� ch鴆.<enter>",
				1,"K誸 th骳 i tho筰/hunhun2")
			else
				Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� ng c蕄 nhi謒 v� y猽 c莡, kh玭g th� ti誴 nh薾 n鱝! Th藅 ng筰 qu�! ")
			end
		elseif ( Uworld1052 == 1000 )  then 
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then
				Describe(DescLink_HunHun.."<#>:  Huynh ! Sau n祔 ch� hy v鋘g � ngi th玦.<enter>",
				1,"K誸 th骳 i tho筰/no")
			else
				Talk(1,"","Huynh , c� g緉g nha.")
			end
	else
			Describe(DescLink_HunHun.."<#>:  S� c竔 g�? C祅g s� c祅g b� ngi ta ╪ hi誴.<enter>",1,"K誸 th骳 i tho筰/no")	
		end
end



function chiseng1()
	AddOwnExp(5000)
	nt_setTask(1050,40)
	Msg2Player("Si T╪g b秓 b筺 t譵 5 quy觧 K� ph� 'Thi猲 T祅 мa Khuy誸', T祅g B秓 Kh竎h hi謓 產ng gi� n�.")
end



function chiseng2()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function jiantou1()
	AddOwnExp(5000)
	nt_setTask(1050,100)
	Msg2Player("Ti詎 u b秓 b筺 n Phng Tng t譵 S莔 H飊g h醝 th╩ tin t鴆.")
end

function cenxiong1()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function helanzhi1()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function wulaotai1()
	AddOwnExp(15000)
	nt_setTask(1051,60)
	Msg2Player("Ng� L穙 th竔 h譶h nh� m綾 b謓h l�, b筺 quy誸 nh t譵 Ng筼 V﹏ T玭g thng lng bc ti誴 theo.")
end

function taokan1()
	AddOwnExp(15000)
	nt_setTask(1051,120)
	Msg2Player("дn Tng Dng t譵 Cung A Ng璾. g ta 產ng g苝 r綾 r鑙 v� 竎 lang tr猲 Ph鬰 Ng璾 S琻, b筺 quy誸 nh gi髉 anh ta gi秈 quy誸 kh� kh╪ n祔.")
end

function taokan2()
	AddOwnExp(15000)
	nt_setTask(1051,150)
	Msg2Player("Cung A Ng璾 a cho b筺 dc t鰑 b祇 ch� t� xng s鉯, b筺 mang n ch� Ng� L穙 th竔")
end

function wulaotai2()
	local name = GetName()  
	Describe(DescLink_WuLaoTai.."<#>:  ......玦,......B筺 tr�! C竚 琻 dc t鰑 c馻 ngi. Ta c騨g kh玭g bi誸 n鉯 g� h琻.<enter>"
	..name.."<#>:  L穙 Th竔 th竔! N╩  H� Lan Chi khi theo ch錸g c� th蕋 l筩 2 vi猲 B秓 th筩h. B� th蕐 qua ch璦? <enter> Th蕐 qua r錳. Ta lu玭 gi髉 Lan Chi gi� n�, ng ti誧 n� ch璦 bao gi� v� y, b﹜ gi� ngi n  r蕋 ng l骳.<enter>"
	..name.."<#>:  B� 產ng gi� �? Th� th� t鑤 qu�. <enter>Ng� L穙 th竔: C莔 l蕐 甶, ti觰 t� sau n祔 h穣 b秓 tr鋘g.<enter>",
	1,"K誸 th骳 i tho筰/wulaotai3")
end

function wulaotai3()
	AddOwnExp(15000)
	nt_setTask(1051,170)
	Msg2Player("B筺 nh薾 頲 1 vi猲 B秓 th筩h thu閏 t輓h 萵. B筺 c� th� quay v� g苝 Ng筼 V﹏ T玭g ph鬰 m謓h.")
end

function hunhun1()
	Uworld1011 = nt_getTask(1011)
	AddOwnExp(30000)
	nt_setTask(1011,10) --杀怪变量置为10，
	nt_setTask(1052,60)
	Msg2Player("H鏽 H鏽 b秓 b筺 n t� v� trng nh th緉g m閠 tr薾.")
end

function hunhun2()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function hunhun3()
	Uworld1011 = nt_getTask(1011)
	AddOwnExp(60000)
	nt_setTask(1011,10) --设置变量为10，记录参加宋金的参数
	nt_setTask(1053,20)
	Msg2Player("H鏽 H鏽 b秓 b筺 甶 Chi課 trng T鑞g Kim, ng th阨 ph秈 t 200 甶觤 t輈h l騳. Xem ra m閠 nhi謒 v� kh� kh╪ 產ng ch� b筺.")
end

function hunhun4()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function hunhun5()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function no()
end

