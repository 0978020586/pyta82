-- 新任务系统邪派支线管理npc
-- BY：XIAOYANG（2005-1-17）
 
 Include("\\script\\task\\newtask\\newtask_head.lua")
 Include("\\script\\task\\newtask\\branch\\branch_head.lua")
 Include("\\script\\task\\newtask\\branch\\branch_prize.lua")
 Include("\\script\\task\\newtask\\branch\\branch_problem.lua")
 Include("\\script\\task\\newtask\\education_setnpcpos.lua")
 Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")

function task_tuobahuaichuan()

	branchTask_BW1()
	branchTask_GainBW1()
	branchTask_JoinSJend1()

--------------------------------------------------------------------教学任务------------------------------------------------------------------
	local curCamp = nt_getCamp()
	Uworld1000 = nt_getTask(1000)   --教学任务变量
	Uworld1003 = nt_getTask(1003)	 --邪派主线任务变量
	Uworld189 = nt_getTask(189)
	Uworld1058 = nt_getTask(1058) --邪派20-30支线
	Uworld1059 = nt_getTask(1059) --邪派30-40支线
	Uworld1060 = nt_getTask(1060) --邪派40-50支线
	Uworld1061 = nt_getTask(1061) --邪派50-60支线
	Uworld1013 = nt_getTask(1013) --邪派支线的杀怪任务变量
	Uworld198 = nt_getTask(198) --邪派全奖励
	local name = GetName()  
	if (	Uworld1000 > 0 ) and ( Uworld1000 < 1000 ) then
		if (( Uworld1000 == 300 ) or ( Uworld1000 == 310 )) and ( curCamp == 2 ) then 
			nt_setTask(1000,310) --环节16start
			Talk(3,"Uworld1000_xfz1",name..": Ng� Gia b秓 ta n, y l� th� c馻 Ng� Gia!","Ngi c馻 Long Ng�? H鮩! H緉 c遪 nh� n Th竎 m� n祔 sao?","Ngi c� th� c� th� d筼 ch琲 trong th祅h, d飊g ph輒 Tab m� b秐  nh�  d� xem! Sau  h穣 n t譵 ta!")
		elseif (( Uworld1000 == 320 ) or ( Uworld1000 == 330 )) and ( curCamp == 2 ) then
			nt_setTask(1000,330) --环节17start
			Talk(2,"Uworld1000_xfz2",name..": Ta  xem qua r錳..","T鑤! B﹜ gi� h穣 甶 t譵 V� L﹎ truy襫 nh﹏!")
		elseif (( Uworld1000 == 420 ) or ( Uworld1000 == 430 )) and ( curCamp == 2 ) and ( Uworld1003 < 10 ) then
			nt_setTask(1000,430) --环节22start
			Talk(5,"Uworld1000_xfz3","V� r錳 �! Зy l� t骾 th� c馻 ngi! Xem xong ngi t� bi誸 ph秈 l祄 g�!",name..":......Thay ta c竚 琻 Ng� Gia.","H穣 t� 甶 c竚 琻! T� nay v� sau m鏸 khi ho祅 th祅h nhi謒 v� ch輓h tuy課 u quay v� ch� ta, ta c� v礽 nhi謒 v� nh� giao cho ngi, ho祅 th祅h xong s� c� nh鱪g m鉵 qu� b蕋 ng� t苙g ngi. Ta quy誸 kh玭g  g�  xem thng.",name..": Л頲! Ta nh� r錳.","Nhi謒 v� phe kh竎 ngi c騨g c� th� l祄, c� th� 頲 kh玭g 輙 甶觤 kinh nghi謒, ch� l� h� c� th祅h ki課 v韎 ngi, n猲 c� v礽 m鉵 b秓 v藅 kh玭g th� a ngi 頲. Ngi c� th� v祇 th玭 tr蕁 t譵 Long Ng� h醝 th�.")
		elseif ( Uworld1000 == 420 ) and ( curCamp == 2 ) and ( Uworld1003 > 10 ) then
			Talk(1,"Uworld1000_finishxiepai","Ngi   b総 u nh薾 nhi謒 v� c竎 phe, ch� ta kh玭g gi� 頲 ngi n鱝, ngi  h鋍 頲 kh�  nhi襲 r錳, h穣 t� m譶h 甶  甶!")
		elseif (( Uworld1000 == 430 ) or ( Uworld1000 == 440 )) and ( curCamp == 2 ) and ( HaveCommonItem(6,1,131) == 0 ) and ( Uworld1003 < 10 ) then 
			Say("T筰 sao quay l筰? Hay l�  qu猲 t骾 th� � ch� ta.",2,"Tu﹏ l謓h!/Uworld1000_xfz4","Kh玭g ph秈! Ch� l� quay l筰 th╩ 玭g m� th玦!/Uworld1000_no3")
		else 
			Talk(1,"","Quy襫 khuynh Nam S琻, Chng o B綾 H秈, ngi mu鑞 n Ti猽 c鬰 �? Nh綾 ngi m閠 c﹗, n誹 ngi 產ng l祄 <color=red>nhi謒 v� s� nh藀<color>, ngi s� kh玭g c� c竎h n祇 ti誴 t鬰 l祄 nhi謒 v� c馻 nh鱪g  ng c蕄 kh竎, h穣 l祄 h誸 nhi謒 v� s� nh藀 甶!")
		end
----------------------------------------------------------------------邪派支线---------------------------------------------------------------	
	else
		if (( Uworld1058 == 1000 ) and ( GetBit(GetTask(198),1) ~= 1)) or (( Uworld1059 == 1000 ) and ( GetBit(GetTask(198),2) ~= 1)) or (( Uworld1060 == 1000 ) and ( GetBit(GetTask(198),3) ~= 1)) or  (( Uworld1061 == 1000 ) and ( GetBit(GetTask(198),4) ~= 1)) then
			Describe(DescLink_TuoBaHuaiChuan.."<#>:  Ta r蕋 h礽 l遪g v韎 bi觰 hi謓 c馻 ngi, t苙g ngi m鉵 b秓 v藅 n祔!",1,"Nh薾 l穘h b秓 v藅/allprize_xiepai")
		elseif ( Uworld1061 == 110 ) or ( Uworld1061 == 120 ) then
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1061,120)
				Describe(
				DescLink_TuoBaHuaiChuan.."<#>: T鑤! Th辬h Do穘  ch誸! Чi Kim kh玭g c遪 g� ph秈 lo l緉g! L祄 r蕋 hay! L骳 n祔, ngi c� th� 甶 ngao du s琻 th駓, l竛h xa th� s� nhi評 nhng <enter>",
				1,"K誸 th骳 i tho筰/Uworld1061_xfz6")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1061 == 80 ) or ( Uworld1061 == 90 ) then
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1061,90)
				Describe(
				DescLink_TuoBaHuaiChuan.."<#>: Th藅 phi襫 to竔厖<enter>"
				..name.."<#>: Tng qu﹏! Chuy謓 g� m� 璾 s莡 th�?<enter>Tng Dng th祅h l騳 v鱪g v祅g, binh h飊g tng m筺h. Th辬h Do穘 l筰 tr� d騨g song to祅, chi課 s� k衞 d礽 c祅g l﹗, qu﹏ ta chi vi謓 c祅g kh�. N誹 tr阨 v祇 ng, c祅g c� nhi襲 kh� n╪g b蕋 l頸.<enter>"
				..name.."<#>: � tng qu﹏ l�?<enter> Di謙 頲 S� Th辬h Do穘, Tng Dng kh玭g nh m� th緉g!<enter>",
				1,"K誸 th骳 i tho筰/Uworld1061_xfz5")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1061 == 60 ) or ( Uworld1061 ==70 ) then
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1061,70)
				Describe(
				DescLink_TuoBaHuaiChuan.."<#>: B筺 tr� l阨 r蕋 t鑤!",1,"K誸 th骳 i tho筰/Uworld1061_xfz4")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1061 == 40 ) or ( Uworld1061 == 50 ) then
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1061,50)
				Describe(
				DescLink_TuoBaHuaiChuan.."<#>: Ngi  s絥 s祅g ch璦?",2,"B総 u th玦!/branch_songjinproblem","в ta suy ngh� l筰!/no")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif (( Uworld1061 == 20 ) or ( Uworld1061 == 30 )) and ( Uworld1013 == 20 ) then
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1061,30)
				Describe(
				name.."<#>: Tng qu﹏! 觤 t輈h l騳 T筰 h�  l蕐 nhi襲 r錳!<enter>"
				..DescLink_TuoBaHuaiChuan.."<#>: Kh� kh�! Qu� nhi猲 l頸 h筰! Ho祅g Thng 產ng mu鑞 g苝 ngi  h醝 v� ki課 th鴆 qu﹏ s�! Ta th� h醝 ngi trc!<enter>",
				1,"K誸 th骳 i tho筰/Uworld1061_xfz3")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1060 == 110 ) or ( Uworld1060 == 120 )then
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1060,120)
				Describe(
				DescLink_TuoBaHuaiChuan.."<#>: Tr猲 i n祔 e r籲g kh玭g c遪 chuy謓 g� c� th� c秐 bc ch﹏ ngi!",
				1,"K誸 th骳 i tho筰/Uworld1060_xfz5")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif (( Uworld1060 == 80 ) or ( Uworld1060 == 90 )) and ( Uworld1013 == 20 ) then
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1060,90)
				Describe(
				DescLink_TuoBaHuaiChuan.."<#>:Ha ha! Gi醝 l緈! Qu� nhi猲 ta kh玭g nh譶 l莔 ngi! <enter>"
				..name.."<#>: Ch� th緉g m閠 tr薾 n祇 c� ng g�!<enter>Ngi c� bi誸 c� b鋘 Nam T鑞g hoang mang th� n祇 ch璦!?<enter>"
				..name.."<#>:Kh玭g bi誸.<enter>Chi課 tranh g莕 k�, l遪g ngi ho秐g lo筺, a ngi ra n琲 u s鉵g ng鋘 gi�, l遪g ta c秏 th蕐 竬 n竬!<enter>"
				..name.."<#>: L� t筰 h� mu鑞 x� th﹏ v� nc.<enter>T鑤! Ngi  ngh� m� L玦 Уi kh玭g ai kh竎 h琻 l� Чi h祇 Nguy詎 Minh Vi詎, h緉 v鑞 l�  t� t鬰 gia Thi誹 L﹎ t�. Khi h緉 ra ngo礽 th祅h Tng Dng l� c� h閕 t鑤  ti猽 di謙. N誹 gi誸 頲 h緉 s� h� th蕄 � ch� u tranh c馻 qu﹏ d﹏ T鑞g Qu鑓. Ta  suy t輓h k�, ch� c� ngi m鉯 c� th� m nh薾 tr鋘g tr竎h n祔.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1060_xfz4")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1060 == 60 ) or ( Uworld1060 == 70 ) then
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1060,70)
				Describe(name.."<#>: Tng qu﹏, t筰 h� ch th﹏ tham gia 1 tr薾 l玦 i! Th藅 nguy hi觤! May m� t筰 h� chi課 th緉g!<enter>"
				..DescLink_TuoBaHuaiChuan.."<#>: Th藅 kh玭g? V藋 danh hi謚  Thi猲 h� v� d騨g c馻 Чi Kim ta  � u? H穣 nh th緉g m閠 tr薾 cho ta, quy誸 ph秈 gi祅h chi課 th緉g  m鋓 ngi bi誸 r籲g thi猲 h� n祔 l� c馻 ai!<enter>",
				1,"K誸 th骳 i tho筰/Uworld1060_xfz3")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1059 == 110 ) or ( Uworld1059 == 120 ) then
			if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then 
				nt_setTask(1059,120)
				Describe(
				DescLink_TuoBaHuaiChuan.."<#>: Ngi  b総 頲 r錳, gi醝 l緈! Ngi  l苝 頲 i c玭g, ta s� tng thng x鴑g ng!<enter>",
				1,"K誸 th骳 i tho筰/Uworld1059_xfz5")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1059 == 60 ) or ( Uworld1059 == 70 ) then
			if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then 
				nt_setTask(1059,70)
				Describe(
				name.."<#>: Th竎 B箃 Tng qu﹏, qu� kh玭g ngo礽 d� 畂竛! Thi Nghi Sinh 產ng c� ﹎ m璾 l祄 n閕 gi竛!<enter>"
				..DescLink_TuoBaHuaiChuan.."<#>: у ph秐 qu鑓!<enter>"
				..name.."<#>: Tng qu﹏ gi薾 d�.<enter>匔鉩竎h  r錳! Ngi 甶 L﹎ An m閠 chuy課, b� m藅 b総 h緉 v� y cho ta x� l�.<enter>"
				..name.."<#>:Tu﹏ l謓h.<enter>L﹎ An th� th祅h nghi猰 ng苩, kh玭g ph秈 nh� nh鱪g n琲 ngi  t鮪g 甶 qua, l莕 h祅h ng n祔 e r籲g s� g苝 kh� kh╪ kh玭g 輙!<enter>"
				..name.."<#>: Kh� kh╪ th� l遪g ngi, kh玭g th祅h c玭g c騨g th祅h nh﹏.<enter>Chuy謓 n祔 th祅h b筰 kh玭g quan tr鋘g. Ta  c礽 s絥 m藅 th竚 � L﹎ An, h穣 甶 T鰑 甶誱 t譵 T髖 H竛! K� n祔 ng祔 ng祔 m ch譵 men ru, nh璶g kh玭g ai ng� r籲g h緉 l� ngi c馻 ta.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1059_xfz4")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif (( Uworld1059 == 20 ) or ( Uworld1059 == 30 )) and ( Uworld1013 == 20 ) then
			if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then 
				nt_setTask(1059,30)
				Describe(name.."<#>: Y猽 c莡 c馻 Tng qu﹏, t筰 h� l祄 頲 nh璶g c遪 c� ch髏 nghi ho芻, xin gi秈 p c苙 k�!<enter>"
				..DescLink_TuoBaHuaiChuan.."<#>:Ha ha ha! Doanh Thi猲 H� ch輓h l� ta y!<enter>"
				..name.."<#>: C竎 h� x鴑g ng l� m閠 Tng qu﹏.<enter>N誹 mu鑞 頲 nh� ta hi謓 gi� i v韎 ngi m� n鉯 d� nh� tr� b祅 tay, ch� c莕 l祄 t鑤 chuy謓 ta giao, ta nh蕋 nh ti課 c� ngi v韎 Ho祅g thng!<enter>"
				..name.."<#>: L祄 t鑤 l緈!.<enter>Hi謓 ta c� m閠 nhi謒 v� tr鋘g i giao cho ngi, kh緋 phng b綾 ch� c� 5 ngi n祔 bi誸 頲 chuy謓 n祔.<enter>"
				..name.."<#>: L� chuy謓 g�?<enter>Theo tin th竚 b竜, g莕 y S� gi� Thi Nghi Sinh do Чi Kim ph竔 t韎 Nam T鑞g c� nhi襲 h祅h ng kh� nghi, kh� n╪g c� m璾  ph秐 qu鑓, h緉 bi誸 qu� nhi襲 甶襲 c� m藅 c馻 Чi Kim ta. H穣 甶 Tng Dng t譵  L璾 U萵 C� b祅 c竎h th� ti"
				..name.."<#>: Л頲! Ng祔 mai ta h祅h ng. <enter>Kh玭g! L藀 t鴆 h祅h ng, t譶h h譶h d莡 s玦 l鯽 b醤g, t蕋 c� tr玭g ch� v祇 ngi!<enter>",
				1,"K誸 th骳 i tho筰/Uworld1059_xfz3")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1058 == 90 ) or ( Uworld1058 == 100 ) then
			if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then 
				nt_setTask(1058,100)
				Describe(DescLink_TuoBaHuaiChuan.."<#>:C� k� gi� d筺g Th萴 Phong? Ta c莕 ph秈 甶 xem th鵦 h�, t筸 th阨 nhi謒 v� c馻 ngi  ho祅 th祅h!<enter>",1,"K誸 th骳 i tho筰/Uworld1058_xfz4")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end																																			
		elseif (( Uworld1058 == 20 ) or ( Uworld1058 == 30 ))  and ( Uworld1013 == 20 ) then 
			if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then 
				nt_setTask(1058,30)
				Describe(DescLink_TuoBaHuaiChuan.."<#>: Ngi th藅 l頸 h筰! X鴑g danh nam t� Чi Kim!<enter>V韎 t礽 n╪g nh� ngi, ta s� giao ph� cho ngi m閠 chuy謓 tr鋘g i.<enter>"
				..name.."<#>: Xin ti猲 sinh c� n鉯.<enter>Ngi  甶 Ba Th鬰, ch綾 kh玭g c遪 l� g� v韎 Th祅h Й. Mau mang l謓h b礽 c馻 ta x﹎ nh藀 Th祅h Й t譵 Tr﹗ Trng C鰑, l� m藅 th竚 do Чi Kim ta ph竔 t韎. T譵 頲 h緉, l藀 t鴆 c莔 v礽 m鉵  ra kh醝 th祅h, ch薽 tr� e r籲g kh",
				1,"K誸 th骳 i tho筰/Uworld1058_xfz3")
			else 
				Talk(1,"Uworld1000_xfz88","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!");
			end
		elseif ( GetLevel() >= 20) then
			Say("Mu鑞 t譵 m閠 c玭g vi謈 v鮝 � �? Chuy謓 nh� th玦 m�!",3,"T筰 h� mu鑞 l祄 nhi謒 v� ch輓h tuy課 T� ph竔 trc!/Uworld1000_xfz8","T筰 h� mu鑞 nh薾 nhi謒 v� ph� tuy課 T� ph竔!/Uworld1000_xfz88","K� nh� ngi ai m� kh玭g bi誸, ai th蘭 m祅g t韎 nhi謒 v� c馻 ngi?/Uworld1000_no3")
		else
			Talk(1,"","L祄 g� ? Mau 甶 甶! Ta kh玭g c� th阨 gian m�  m総 t韎 ngi! C� 甶襲 g� ch璦 hi觰, 蕁 ph輒 <color=red>F12<color> xem.")
		end
	end
end



function Uworld1000_xfz8()
	Uworld1000 = nt_getTask(1000)
	Uworld1003 = nt_getTask(1003)
	if ( Uworld1003 < 10 ) and ( Uworld1000 == 0 ) then 
		Talk(1,"","H穣 n T﹏ Th� th玭 t譵 Long Ng� ")
		Msg2Player("Ng筼 V﹏ T玭g b秓 b筺 v祇 T﹏ Th� Th玭 t譵 Long Ng�, Y s� giao v礽 nhi謒 v� cho b筺.")		
	elseif ( Uworld1000 ~= 0 ) and ( Uworld1000 ~= 1000 ) then
		Talk(1,"","Ngi v蒼 c遪 l祄 nhi謒 v� s� nh藀, l祄 xong 甶! Long Ng� s� giao cho ngi nhi謒 v� kh竎, ng n鉵g v閕!")
	elseif ( Uworld1003 ~= 0 ) then
		Talk(1,"","N祔 b籲g h鱱, ch糿g ph秈 ngi 產ng l祄 nhi謒 v� T� ph竔 ch輓h tuy課  sao? Kh玭g ph秈 tr猽 gh裲 ta ch�! Ta l� ngi th藅 th�, ng g箃 ta! Th藅 l祬.")
	else
		Talk(1,"","Nhi謒 v� Ch輓h tuy課 l� sau khi b筺 t n c蕄 nh蕋 nh m韎 c� th� ti誴 nh薾. Ch� c莕 ng c蕄 nh﹏ v藅 tr猲 20 l� c� th� ti誴 nh薾. N誹 ho祅 th祅h......s� c� gi秈 thng h琻 mong i.")
	end
end

function Uworld1000_xfz88()
	Uworld1058 = nt_getTask(1058)
	Uworld1059 = nt_getTask(1059)
	Uworld1060 = nt_getTask(1060)
	Uworld1061 = nt_getTask(1061)
	Describe(DescLink_TuoBaHuaiChuan.."<#>: шi ngi c� m蕐 ai an ph薾 m� 頲 gi祏 c�? Ngh� k� 甶, h穣 theo ta h祅h s�!",6,
	"Ta mu鑞 t譵 hi觰 c竎h l祄 nhi謒 v� Ph� tuy課/Uworld1000_xfz7" ,
	"Ta mu鑞 l祄 nhi謒 v� t� c蕄 20 n 29/Uworld1058_xfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 30 n 39/Uworld1059_xfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 40 n 49/Uworld1060_xfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 50 n 59/Uworld1061_xfz1",
	"Hay l� sau n祔 h穣 l祄!/no")
end

function Uworld1000_xfz7()
	Describe(DescLink_TuoBaHuaiChuan.."<#>:  Nhi謒 v� Ph� tuy課 tr猲 c� b秐 l� nhi謒 v� Ch輓h tuy課, khi t n ng c蕄 nh蕋 nh m韎 c� th� ti誴 nh薾. V� d� l骳 ng c蕄 b筺 l� 32, b筺 ph秈 ti誴 nh薾 nhi謒 v� Ch輓h tuy課 c蕄 30 trc, sau  m韎 c� th� ti誴 nh薾 nhi謒 v� ph� tuy課.Trc khi",1,"K誸 th骳 i tho筰/no")
end

function Uworld1058_xfz1()
	Uworld1058 = nt_getTask(1058) --邪派20-30级之间的支线任务变量
	Uworld1003 = nt_getTask(1003) --邪派主线任务变量
	local name = GetName()  
	if ( Uworld1003 >= 20 ) and ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) and (( Uworld1058 == 0 ) or ( Uworld1058 == 10 )) then
		nt_setTask(1058,10) 
		Describe(
		DescLink_TuoBaHuaiChuan.."<#>:  V� L﹎ Nh﹏ s� Trung Nguy猲 lu玭 xem thng Чi Kim, cho r籲g ch髇g ta kh玭g  s鴆 chi課 th緉g.<enter>"
		..name.."<#>:  N誹 kh玭g ph秈 n閕 b� T鑞g tri襲 chia r�, ch髇g ta mu鑞 th緉g kh玭g ph秈 l� chuy謓 d�.<enter> T鑞g tri襲 v蒼 c遪 nhi襲 tng gi醝, cho n猲 ch髇g ta ch璦 y猲 t﹎ 頲. Mu鑞 hng phc e r籲g ph秈 ch� sau khi 畂箃 頲 s琻 h� c馻 Чi T鑞g.<enter>"
		..name.."<#>:  Ta v蒼 c遪 tr�, Th竎 B箃 ti猲 sinh c� g� xin ch� gi竜.<enter>Чi Kim s緋 tri觧 khai qu﹏ v韎 quy m� l韓, ta mu鑞 ngi gi醝 h琻 n鱝, hay l� 甶 Л阯g M玭 m閠 chuy課, nh b筰 50 con H綾 Di謕 H莡.<enter>",
		1,"K誸 th骳 i tho筰/Uworld1058_xfz2")
	elseif ( GetLevel() < 20 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 20, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 30 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1003 < 20 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄  nhi謒 v� Ch輓h tuy課 T� ph竔 tng 鴑g v韎 ng c蕄, h穣 n <color=red>Chu Ti猲 Tr蕁<color> t譵 V﹏ Nhi")
	else
		Talk(1,"","V薾 m謓h t nc n籱 trong tay ch髇g ta, ch� c莕 ngi m閠 l遪g ph鬾g s� ")
	end
end

function Uworld1058_xfz2()
	Uworld1013 = nt_getTask(1013)
	AddOwnExp(5000)
	nt_setTask(1058,20)
	nt_setTask(1013,10)
	AddPlayerEvent(4) 
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 甶 Л阯g M玭 Th祅h Й nh 50 con H綾 Di謕 H莡.")
end

function Uworld1058_xfz3()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1058_xfz4()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_xp_level20();
end

function Uworld1059_xfz1()
	Uworld1059 = nt_getTask(1059) --邪派30-40级之间的支线任务变量
	Uworld1003 = nt_getTask(1003) --邪派主线任务变量
	local name = GetName()  
	if ( Uworld1003 >= 110 ) and ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) and (( Uworld1059 == 0 ) or ( Uworld1059 == 10 )) then
		nt_setTask(1059,10) 
		Describe(
		name.."<#>:  Th竎 B箃 ti猲 sinh, cu鑙 c飊g l� chuy謓 g� v藋, ta t� ch� Tr﹗ Trng C鰑 l蕐 頲 M藅 t辌h da d�,   h緉 b秓 ta 甶 Dng Ch﹗ t譵 Th萴 Phong, tr猲 阯g n  b� Binh s� Nam T鑞g 竚 to竛.<enter>"
		..DescLink_TuoBaHuaiChuan.."<#>:  �? Th萴 Phong   ngi ph竧 hi謓, h緉 ta sao l筰 b蕋 c萵 th�. T鑤 chuy謓 n祔 n鉯 ra d礽 d遪g l緈 c騨g kh玭g th�  ngi kh竎 bi誸, ngi ph秈 甶 V� Di S琻 nh 50 con S鉯 v祅g, n誹 kh玭g ngi kh玭g ng 頲 ta giao cho nhi謒 v�.<enter>",
		1,"K誸 th骳 i tho筰/Uworld1059_xfz2")
	elseif ( GetLevel() < 30 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 30, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 40 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1003 < 100 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄  nhi謒 v� Ch輓h tuy課 T� ph竔 tng 鴑g v韎 ng c蕄, h穣 n <color=red>Chu Ti猲 Tr蕁<color> t譵 V﹏ Nhi")
	else
		Talk(1,"","V薾 m謓h t nc n籱 trong tay ch髇g ta, ch� c莕 ngi m閠 l遪g ph鬾g s� ")
	end
end

function Uworld1059_xfz2()
	Uworld1013 = nt_getTask(1013)
	AddOwnExp(15000)
	nt_setTask(1059,20)
	nt_setTask(1013,10)
	AddPlayerEvent(5) 
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 甶 V� Di S琻 nh 10 con S鉯 v祅g.")
end

function Uworld1059_xfz3()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1059_xfz4()
	AddOwnExp(15000)
	nt_setTask(1059,80) 
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 甶 L﹎ An t譵 t猲 M藅 th竚 萵 n蕄  l﹗, ngi n祔 thng gi� d筺g say x豱 b猲 t鰑 l莡.")	
end

function Uworld1059_xfz5()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_xp_level30();
end

function Uworld1060_xfz1()
	Uworld1060 = nt_getTask(1060) --邪派40-50级之间的支线任务变量
	Uworld1003 = nt_getTask(1003) --邪派主线任务变量
	if ( Uworld1003 >= 210 ) and ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) and (( Uworld1060 == 0 ) or ( Uworld1060 == 10 )) then
		nt_setTask(1060,10) 
		Describe(
		DescLink_TuoBaHuaiChuan.."<#>:  Nghe n鉯 g莕 y Nam T鑞g t� ch鴆 thi u l玦 i, 頲 bi誸 c� nhi襲 cao th� 萵 c�  l﹗ nay l筰 xu蕋 hi謓, b猲 trong  ch綾 c� 萵 t譶h, ngi 甶 Tng Dng t譵 L璾 U萵 C� h醝 th╩ t譶h h譶h.<enter>",
		1,"K誸 th骳 i tho筰/Uworld1060_xfz2")
	elseif ( GetLevel() < 40 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 40, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 50 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1003 < 200 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄  nhi謒 v� Ch輓h tuy課 T� ph竔 tng 鴑g v韎 ng c蕄, h穣 n <color=red>Chu Ti猲 Tr蕁<color> t譵 V﹏ Nhi")
	else
		Talk(1,"","V薾 m謓h t nc n籱 trong tay ch髇g ta, ch� c莕 ngi m閠 l遪g ph鬾g s� ")
	end
end

function Uworld1060_xfz2()
	AddOwnExp(30000)
	nt_setTask(1060,20) 
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 甶 t譵 L璾 U萵 C� 甶襲 tra t譶h h譶h T鑞g tri襲 Di詎 v� trng.")	
end

function Uworld1060_xfz3()
	Uworld1013 = nt_getTask(1013)
	AddOwnExp(30000)
	nt_setTask(1013,10)
	nt_setTask(1060,80) 
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 甶 Di詎 v� trng nh m閠 tr薾 v� uy danh c馻 Чi Kim.")	
end

function Uworld1060_xfz4()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1060_xfz5()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_xp_level40();
end

function Uworld1061_xfz1()
	Uworld1061 = nt_getTask(1061) --邪派50-60级之间的支线任务变量
	Uworld1003 = nt_getTask(1003) --邪派主线任务变量
	local name = GetName()  
	if ( Uworld1003 >= 300 ) and ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) and (( Uworld1061 == 0 ) or ( Uworld1061 == 10 )) then
		nt_setTask(1061,10) 
		Describe(
		DescLink_TuoBaHuaiChuan.."<#>:  Ta kh玭g bi誸 c遪 g� c� th� l祄 kh� ngi 頲.<enter>"
		..name.."<#>:  g qu�  cao ta r錳.<enter> Ta 琻g nhi猲 gi� l阨 h鴄 n╩ x璦, Ho祅 Nhan Kh竛h Hy  v祇 tri襲 t﹗ v韎 Ho祅g Thng phong ngi l祄 B譶h Nam Qu﹏ Й Th竔 Hi謚 U�.<enter>"
		..name.."<#>:  T� ch� long ﹏.<enter>V韎 c玭g lao m� ngi l藀 頲 bao nhi猽 y c� l� g�. Kh竛h Hy i nh﹏ chu萵 b� v祇 tri襲 b萴 Ho祅g Thng phong ngi l祄 Qu� Ngh� Й U�. Nh璶g v� ngi ch璦 l藀 c玭g e r籲g m鋓 ngi b祅 t竛. H穣 n chi課 trng T鑞g Kim nh m閠 tr薾, l蕐 200 甶觤 t輈h l騳, cho m鋓 ngi bi誸 b秐 l躰h c馻 ngi.<enter>",
		1,"K誸 th骳 i tho筰/Uworld1061_xfz2")
	elseif ( GetLevel() < 50 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 50, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 60 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1003 < 300 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄  nhi謒 v� Ch輓h tuy課 T� ph竔 tng 鴑g v韎 ng c蕄, h穣 n <color=red>Chu Ti猲 Tr蕁<color> t譵 V﹏ Nhi")
	else
		Talk(1,"","V薾 m謓h t nc n籱 trong tay ch髇g ta, ch� c莕 ngi m閠 l遪g ph鬾g s� ")
	end
end

function Uworld1061_xfz2()
	Uworld1013 = nt_getTask(1013)
	AddOwnExp(60000)
	nt_setTask(1013,10)
	nt_setTask(1061,20)  
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲  ti課 c� b筺 l祄 Qu� Ngh� Й U�, nh璶g b筺 c遪 thi誹 c玭g lao, b秓 b筺 tham gia i chi課 T鑞g Kim, t 200 甶觤 t輈h l騳.")	
end

function Uworld1061_xfz3()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1061_xfz4()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1061_xfz5()
	AddOwnExp(30000)
	nt_setTask(1061,100)  
	Msg2Player("Qu﹏ Чi Kim Nam h�, Tng Dng l﹎ nguy, b筺 ph鬾g m謓h 甶 gi誸 S� Th辬h Do穘.")	
end

function Uworld1061_xfz6()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_xp_level50();
end

function Uworld1000_xfz1()
	AddOwnExp(1000)
	nt_setTask(1000,320) --环节16end 
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 v祇 th祅h ngh� ng琲!")	
end

function Uworld1000_xfz2()
	AddOwnExp(1000)
	nt_setTask(1000,340) --环节17end
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 甶 t譵 V� L﹎ Truy襫 Nh﹏.")
	seteducationnpcpos()	
end

function Uworld1000_xfz3()
	AddItem(6,1,131,1,0,0,0)  --增加龙五的包袱
	nt_setTask(189,10)
	AddOwnExp(20000)
	nt_setTask(1000,440) --环节22end
	Msg2Player("B筺 nh薾 頲 1 t骾 th�, Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 mau t譵 ngi c莕 t譵.")	
end

function Uworld1000_xfz4()
  
	AddItem(6,1,131,1,0,0,0)  --增加龙五的包袱
	nt_setTask(189,10)
	Msg2Player("B筺 nh薾 頲 1 t骾 th�, Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 mau t譵 ngi c莕 t譵.")	
end

function Uworld1000_xfz5()
	Talk(1,"","H穣 n T﹏ Th� th玭 t譵 Long Ng� ")
	Msg2Player("Th竎 B箃 Ho礽 Xuy猲 b秓 b筺 n T﹏ Th� th玭 t譵 Long Ng�, y s� giao nhi謒 v� cho b筺.")	
end

function Uworld1000_no3()
	Talk(1,"","Giang h� ch糿g khi s鉵g y猲 gi� l苙g. Ngi h祅h t萿 giang h� ph秈 c萵 th薾. Sau s� quay l筰 y, ta c� nhi謒 v� giao cho ngi.")
end

function allprize_xiepai()
	Uworld198 = nt_getTask(198) --正派全奖励
	local i=random(1,1200)
	if ( i >= 1 ) and ( i <= 99) then
		AddEventItem(490)
	elseif ( i >= 100 ) and ( i <= 199) then
		AddEventItem(491)
	elseif ( i >= 200 ) and ( i <= 299) then
		AddEventItem(492)
	elseif ( i >= 300 ) and ( i <= 399) then
		AddEventItem(493)
	elseif ( i >= 400 ) and ( i <= 499) then
		AddEventItem(494)
	elseif ( i >= 500 ) and ( i <= 599) then
		AddEventItem(495)
	elseif ( i >= 600 ) and ( i <= 699) then
		AddEventItem(496)
	elseif ( i >= 700 ) and ( i <= 799) then
		AddEventItem(497)
	elseif ( i >= 800 ) and ( i <= 899) then
		AddEventItem(498)
	elseif ( i >= 900 ) and ( i <= 999) then
		AddEventItem(499)
	elseif ( i >= 1000 ) and ( i <= 1099) then
		AddEventItem(500)
	elseif ( i >= 1100 ) and ( i <= 1200) then
		AddEventItem(501)
	end
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1 m秐h T祅g B秓 .")
	if ( Uworld1058 == 1000 ) and ( GetBit(GetTask(198),1) ~= 1 ) then
		AddGoldItem(0,179)
		SetTask(198,SetBit(GetTask(198),1,1))
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1  Kim Phong Tr筩 Li猲 Quang")
	elseif ( Uworld1059 == 1000 ) and ( GetBit(GetTask(198),2) ~= 1) then
		AddGoldItem(0,180)
		SetTask(198,SetBit(GetTask(198),2,1))
	Msg2Player("Ch骳 m鮪g b筺 t 頲 1  Kim Phong C玭g C萵 Tam Th竛.")
	elseif ( Uworld1060 == 1000 ) and ( GetBit(GetTask(198),3) ~= 1 ) then
		AddGoldItem(0,183)
		SetTask(198,SetBit(GetTask(198),3,1))
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1  Kim Phong Lan ёnh Ng鋍")
	elseif ( Uworld1061 == 1000 ) and ( GetBit(GetTask(198),4) ~= 1 ) then
		AddGoldItem(0,185)
		SetTask(198,SetBit(GetTask(198),4,1))
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1 Kim Phong уng Tc Xu﹏ Th﹎.")
	end	
	Msg2Player("B筺  ho祅 th祅h nhi謒 v� c馻 ng c蕄 n祔.")
end

function Uworld1000_finishxiepai()
	Uworld1000 = nt_getTask(1000)
	nt_setTask(1000,1000)
	Msg2Player("B筺  ho祅 th祅h nhi謒 v� s� nh藀.")
end

function no()
end