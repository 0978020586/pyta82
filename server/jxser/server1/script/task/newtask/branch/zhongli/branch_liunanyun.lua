-- 新任务系统中立支线管理npc
-- BY：XIAOYANG（2004-11-30）

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\branch\\branch_head.lua")
Include("\\script\\task\\newtask\\branch\\branch_prize.lua")
Include("\\script\\task\\newtask\\branch\\branch_problem.lua")
Include("\\script\\task\\newtask\\education_setnpcpos.lua")
Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")


function task_liunanyun()
	branchTask_BW1()
	branchTask_GainBW1()
	branchTask_JoinSJend1()
	local curCamp = nt_getCamp()
	Uworld1000 = nt_getTask(1000)
	Uworld1002 = nt_getTask(1002) --中立主线
	Uworld186 = nt_getTask(186)
	Uworld1054 = nt_getTask(1054) --中立20-30支线
	Uworld1055 = nt_getTask(1055) --中立30-40支线
	Uworld1056 = nt_getTask(1056) --中立40-50支线
	Uworld1057 = nt_getTask(1057) --中立50-60支线
	Uworld1012 = nt_getTask(1012) --中立支线的杀怪任务变量
	Uworld197 = nt_getTask(197) --中立全奖励
	local name = GetName()
----------------------------------------------------教育任务-----------------------------------------------------------------------------
	if (	Uworld1000 > 0 ) and ( Uworld1000 < 1000 ) then
		if (( Uworld1000 == 300 ) or ( Uworld1000 == 310 )) and ( curCamp == 1 ) then 
			nt_setTask(1000,310) --环节16start
			Talk(3,"Uworld1000_zhfz1",name..": Ng� Gia b秓 ta n, y l� th� c馻 Ng� Gia!","ng l� th� c馻 Ng� Ca. B筺 c馻 Ng� Ca t鴆 l� b筺 c馻 ta, sau n祔 c� l祄 ╪ ta s� chi誹 c� ngi, ha ha.","Ngi c� th� v祇 th祅h ch琲, d飊g ph輒 Tab m� b秐  xem b� c鬰 trong th祅h, xong r錳 n t譵 ta.")
		elseif (( Uworld1000 == 320 ) or ( Uworld1000 == 330 )) and ( curCamp == 1 )  then
			nt_setTask(1000,330) --环节17start
			Talk(2,"Uworld1000_zhfz2",name..": Ta  xem qua r錳..","B﹜ gi� h穣 甶 t譵 V� L﹎ Truy襫 Nh﹏ 甶.")
		elseif (( Uworld1000 == 420 ) or ( Uworld1000 == 430 )) and ( curCamp == 1 ) and ( Uworld1002 < 10 ) then
			nt_setTask(1000,430) --环节22start
			Talk(5,"Uworld1000_zhfz3","M鋓 vi謈  xong.Зy l� t骾 Ng� Ca a cho ngi, 玭g c╪ d苙 kh玭g c莕 v� g苝 玭g, t� m譶h phi猽 b箃 giang h� 甶, th� trong t骾 c莕 xem s韒!",name..":......Thay ta c竚 琻 Ng� Gia.","Sau n祔 m鏸 khi ho祅 th祅h m閠 nhi謒 v� Ch輓h tuy課 quay v� y g苝 ta. Ta c� v礽 nhi謒 v� nh� giao cho ngi, n誹 ho祅 th祅h s� c� gi秈 thng ngo礽 mong i. Coi nh� thay Ng� Ca gi髉  ngi.",name..": Л頲! Ta nh� r錳.","Nhi謒 v� phe kh竎 ngi c騨g c� th� l祄, c� th� 頲 kh玭g 輙 甶觤 kinh nghi謒, ch� l� h� c� th祅h ki課 v韎 ngi, n猲 c� v礽 m鉵 b秓 v藅 kh玭g th� a ngi 頲. Ngi c� th� v祇 th玭 tr蕁 t譵 Long Ng� h醝 th�.")
		elseif ( Uworld1000 == 420 ) and ( curCamp == 1 ) and ( Uworld1002 > 10 ) then
			Talk(1,"Uworld1000_finishzhongli","Ngi  ti誴 nh薾 nhi謒 v� c竎 phe, nh鱪g g� c莕 d箉 ta  d箉 xong, ngi 甶 甶.")
		elseif (( Uworld1000 == 430 ) or ( Uworld1000 == 440 )) and ( curCamp == 1 )  and ( HaveCommonItem(6,1,131) == 0 ) and ( Uworld1002 < 10 ) then 
			Say("T筰 sao quay l筰? Hay l�  qu猲 t骾 th� � ch� ta.",2,"Tu﹏ l謓h!/Uworld1000_zhfz4","Kh玭g ph秈! Ch� l� quay l筰 th╩ 玭g m� th玦!/Uworld1000_no2")
		else
			Talk(1,"","Tr猲 阯g h祅h t萿 giang h� c� g� kh玭g hi觰 nh蕁 <color=red>F12<color> xem c萴 nang. N誹 ngi 產ng ti誴 nh薾 <color=red>nhi謒 v� s� nh藀<color>, kh玭g th� ti誴 nh薾 nhi謒 v� kh竎..")
		end
-----------------------------------------------------------------中立支线-----------------------------------------------------------------------------
	else
		if (( Uworld1054 == 1000 ) and ( GetBit(GetTask(197),1) ~= 1)) or (( Uworld1055 == 1000 ) and ( GetBit(GetTask(197),2) ~= 1)) or (( Uworld1056 == 1000 ) and ( GetBit(GetTask(197),3) ~= 1)) or  (( Uworld1057 == 1000 ) and ( GetBit(GetTask(197),4) ~= 1)) then
			Describe(DescLink_LiuNanYun.."<#>:  Ta r蕋 h礽 l遪g v韎 bi觰 hi謓 c馻 ngi, t苙g ngi m鉵 b秓 v藅 n祔!",1,"Nh薾 l穘h b秓 v藅/allprize_zhongli")
		elseif ( Uworld1057 == 90 ) or ( Uworld1057 == 100 ) then
			nt_setTask(1057,100)
			Describe(DescLink_LiuNanYun.."<#>:  C竚 琻 玭g..........ta s� kh玭g qu猲 玭g.",1,"K誸 th骳 i tho筰/Uworld1057_zfz5")
		elseif ( Uworld1057 == 60 ) or ( Uworld1057 == 70 ) then
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1057,70)
				Describe(DescLink_LiuNanYun.."<#>:  Ngi  c� g緉g l祄 vi謈 ta giao, ta r蕋 c秏 k輈h.<enter>"
				..name.."<#>:  Li評 i gia! G莕 y 玭g h琲 kh竎 thng <enter> Kh竎 thng? Ha ha! C� th� l緈. C� l� v� ta ng魕 trang  l﹗.<enter>"
				..name.."<#>:  Li評 i gia! g c� t﹎ s� �? <enter>Kh玭g c� g�, ta n鉯 cho ngi m閠 b� m藅 ch璦 ai 頲 bi誸.<enter>"
				..name.."<#>:  Hay l� ng n鉯, ta kh玭g mu鑞 bi誸 t﹎ s� c馻 玭g, bi誸 r錳 ph秈 g竛h v竎 nhi襲 vi謈.<enter>Цng ti誧! Tr猲 i n祔 ch� c� ngi m韎 gi髉 頲 ta.<enter>"
				..name.."<#>:...... N誹  nh� th�, 玭g n鉯 甶.<enter> Ta l� m閠 k� ng thng.<enter>"
				..name.."<#>:  C竔 g�? <enter> Ta c騨g l� m閠 nh﹏ s� v� l﹎ b譶h thng, d鵤 v祇 b秐 th﹏ m� s鑞g. Nh璶g tu鎖 tr� b錸g b閠, c� m閠 l莕 t筰 t鰑 l莡 ta l� tay n猲 gi誸 m閠 tay c玭g t� gi� tr� tr猽 hoa gh裲 nguy謙. N祇 ng� k� n祔 l� con trai duy nh蕋 c馻 t猲 cp kh"
				..name.."<#>:  T猲 n祔 ng ch誸!<enter> Long Truy V� tinh th玭g d� dung thu藅 v� ngh� l筰 cao cng, tung ho祅h Trung Nguy猲 hai mi m蕐 n╩ ch璦 ai nh l筰 h緉.<enter>"
				..name.."<#>:  g y猲 t﹎, ta s� thay 玭g b竜 th� n祔.<enter> C騨g ch� c� ngi m韎 m 琻g 頲,   y thng gi� trang th祅h ph� n� v祇 Чi L�, tin t鴆 ta bi誸 ch� c� b蕐 nhi猽.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1057_zfz3")
			else
				Talk(1,"Uworld1000_zhfz7","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1057 == 40 ) or ( Uworld1057 == 50 ) then 
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1057,50)
				Describe(DescLink_LiuNanYun.."<#>:  Ti誴 theo chu萵 b� tr� l阨 v蕁  T鑞g Kim.",1,"K誸 th骳 i tho筰/branch_songjinproblem")				
			else
				Talk(1,"Uworld1000_zhfz7","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif (( Uworld1057 == 20 ) or ( Uworld1057 == 30 )) and ( Uworld1012 == 20 ) then --增加了判断是否在宋金pk了一场的变量Uworld1011
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1057,30)
				Describe(DescLink_LiuNanYun.."<#>:  L祄 t鑤 l緈.",1,"K誸 th骳 i tho筰/Uworld1057_zfz4")				
			else
				Talk(1,"Uworld1000_zhfz7","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1056 == 70 ) or ( Uworld1056 == 80 ) then
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1056,80)
				Describe(DescLink_LiuNanYun.."<#>:  L祄 t鑤 l緈! T� ch鴆 s� tr鋘g thng cho ngi.",
				1,"K誸 th骳 i tho筰/Uworld1056_zfz5")
			else
				Talk(1,"Uworld1000_zhfz7","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif (( Uworld1056 == 40 ) or ( Uworld1056 == 50 )) and ( Uworld1012 == 20 ) then --增加了判断是否在宋金pk了一场的变量Uworld1011
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1056,50)
				Describe(DescLink_LiuNanYun.."<#>:  � Dng Ch﹗ c�  Du Sng T﹏ th緉g tr╩ tr薾 t筰 t� v� trng, khi課 cho kh玭g ai d竚 n th竎h u. Cho n猲 玭g ta b� m閠 s� ti襫 l韓 b秓 ch髇g ta ti猽 di謙 h� Du kia. C� th� h緉 kh玭g ph秈 l� ngi x蕌 nh璶g bi誸 l祄 sao 頲 l頸 輈h trc m苩 m�. Ngi n鉯 c� ng kh玭g?<enter>"
				..name.."<#>:  ng v藋.<enter>"
				..name.."<#>:  Ta kh玭g m鑞 gi誸 h緉.<enter> Tr� phi ngi r髏 kh醝 giang h�, n誹 kh玭g gi誸 h緉, danh ti課g c馻 ch髇g ta coi nh� tan bi課, kh玭g ai thu� ch髇g ta n鱝. Giang h� r蕋 l� kh綾 nghi謙, ngi kh玭g c� quy襫 l鵤 ch鋘.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1056_zfz4")
			else
				Talk(1,"Uworld1000_zhfz7","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1056 == 27 ) or ( Uworld1056 == 30 ) then
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1056,30)
				Describe(DescLink_LiuNanYun.."<#>:  G莕 y t nhi猲 ti誴 nh薾 nhi謒 v� v� c飊g nguy hi觤, c� li猲 quan n Dng Ch﹗ t� v� trng. Ngi n  thi u l莕 n鱝, ph秈 th緉g m閠 tr薾 m韎 quay v� g苝 ta.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1056_zfz3")
			else
				Talk(1,"Uworld1000_zhfz7","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif (( Uworld1056 == 20 ) or ( Uworld1056 == 25 )) and ( Uworld1012 == 20 ) then --增加了判断是否在pk了一场的变量Uworld1011
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1056,25)
				Describe(DescLink_LiuNanYun.."<#>:  Th� n祇  bi誸 thi猲 ngo筰 h鱱 thi猲, nh﹏ ngo筰 h鱱 nh﹏?.<enter>",1,"K誸 th骳 i tho筰/Uworld1056_zfz6")
			else
				Talk(1,"Uworld1000_zhfz7","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end																			
		elseif ( Uworld1055 == 130 ) or ( Uworld1055 == 140 ) then
			if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
				nt_setTask(1055,140)
				Describe(name.."<#>:  Nam V﹏, chuy謓 ti猽 xa c馻 T﹜ B綾 ti猽 c鬰 ta  gi秈 quy誸 xong.<enter>"
				..DescLink_LiuNanYun.."<#>:  L� do ai l祄?<enter>"
				..name.."<#>:  M閠 m n� t芻 t� x璶g l� H� Hoa Чo.<enter> L� b鋘 h�? Ta t鮪g nghe qua. Trong l� v藅 n 琻 c馻 C� ch� c� m閠 vi猲 kho竛g th筩h thu閏 t輓h. Ngi 甧m B秓 th筩h t� l�, trang b� thu閏 t輓h 萵 t譵 Th� r蘮 th莕 b�  h頿 th祅h m閠 trang b�.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1055_zfz3")
			else
				Talk(1,"Uworld1000_zhfz7","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( GetLevel() >= 20)  then
			Say(" Ai c騨g kh玭g quan tr鋘g, ch� c莕 c� b秐 l躰h l� 頲!",3,"Ta mu鑞 l祄 m閠 v礽 nhi謒 v� Ch輓h tuy課./Uworld1000_zhfz6","Ta mu鑞 l祄 m閠 v礽 nhi謒 v� ph� tuy課/Uworld1000_zhfz7","Ph鉵g h�  產o, l藀 a th祅h Ph藅. Ta kh玭g mu鑞 gi誸 ngi!/Uworld1000_no2")
		else
			Talk(1,"","Sau n祔 tr猲 阯g h祅h t萿 giang h� c� g� kh玭g hi觰 nh蕁 <color=red>F12<color> xem c萴 nang ")
		end
	end
end

function Uworld1000_zhfz6()
	Uworld1000 = nt_getTask(1000)
	Uworld1002 = nt_getTask(1002)
	local name = GetName()
	if ( Uworld1002 < 10 ) and ( Uworld1000 == 0 ) then 
		Talk(1,"","Ngi h穣 甶 c竎 T﹏ Th� Th玭 t譵 Long Ng�. Nh� gi� k� th� c馻 h緉! N誹 m蕋 th� ti課 d蒼 th� s� kh玭g ai tin ngi u!")
		Msg2Player("Li評 Nam V﹏ b秓 b筺 甶 v祇 T﹏ Th� th玭 t譵 Long Ng�, s� c� nhi謒 v� m韎!")		
	elseif ( Uworld1000 ~= 0 ) and ( Uworld1000 ~= 1000 ) then
		Talk(1,"","Li評 Nam V﹏: Ngi c遪 nhi謒 v� S� nh藀, sau khi ho祅 th祅h Long Ng� s� giao cho ngi nhi謒 v� kh竎.")
	elseif ( Uworld1002 ~= 0 ) then
		Talk(1,"","Ngi  bc v祇 con 阯g s竧 th�, kh玭g th� quay u. Kh玭g ph秈 ngi  ti誴 nh薾 nhi謒 v� sao?.")
	else
		Talk(1,"","Nhi謒 v� Ch輓h tuy課 l� sau khi b筺 t n c蕄 nh蕋 nh m韎 c� th� ti誴 nh薾. Ch� c莕 ng c蕄 nh﹏ v藅 tr猲 20 l� c� th� ti誴 nh薾. N誹 ho祅 th祅h......s� c� gi秈 thng h琻 mong i.")
	end
end

function Uworld1000_zhfz7()
	Uworld1054 = nt_getTask(1054) --中立20-30支线
	Uworld1055 = nt_getTask(1055) --中立30-40支线
	Uworld1056 = nt_getTask(1056) --中立40-50支线
	Uworld1057 = nt_getTask(1057) --中立50-60支线
	local name = GetName()
	Describe(DescLink_LiuNanYun.."<#>:  Th� gi韎 n祔 ch� d祅h cho nh鱪g k� m筺h. B筺 ch� c� m閠 c竎h duy nh蕋  t錸 t筰  l�: chi課 u!",6,
	"Ta mu鑞 t譵 hi觰 c竎h l祄 nhi謒 v� Ph� tuy課/Uworld1000_zhfz8" ,
	"Ta mu鑞 l祄 nhi謒 v� t� c蕄 20 n 29/Uworld1054_zfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 30 n 39/Uworld1055_zfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 40 n 49/Uworld1056_zfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 50 n 59/Uworld1057_zfz1",
	"Hay l� sau n祔 h穣 l祄!/no")
end

function Uworld1000_zhfz8()
	Describe(DescLink_LiuNanYun.."<#>:  Nhi謒 v� Ph� tuy課 tr猲 c� b秐 l� nhi謒 v� Ch輓h tuy課, khi t n ng c蕄 nh蕋 nh m韎 c� th� ti誴 nh薾. V� d� l骳 ng c蕄 b筺 l� 32, b筺 ph秈 ti誴 nh薾 nhi謒 v� Ch輓h tuy課 c蕄 30 trc, sau  m韎 c� th� ti誴 nh薾 nhi謒 v� ph� tuy課.Trc khi",1,"K誸 th骳 i tho筰/no")
end

function Uworld1054_zfz1()
	Uworld1054 = nt_getTask(1054) --中立20-30级之间的支线任务变量
	Uworld1002 = nt_getTask(1002) --中立主线任务变量
	local name = GetName()
	if ( Uworld1002 >= 20 ) and ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) and (( Uworld1054 == 0 ) or ( Uworld1054 == 10 )) then
		nt_setTask(1054,10)
		Describe(DescLink_LiuNanYun.."<#>:  Hi謓 nay giang h�, cao th� s� d鬾g ki誱 c� th� t輓h n V� ng v� Nga Mi.<enter>"
		..name.."<#>:  H譶h nh� l� kh玭g c� nh﹏ t礽.<enter>Ngi sai r錳, ch輓h l� kh玭g c� binh kh� v鮝 tay. Thanh ki誱 t鑤 l� t輓h m筺g c馻 ngi s� d鬾g ki誱.<enter>"
		..name.."<#>:  D飊g m筺h hi誴 y誹 kh玭g ph秈 l� Ch輓h o.<enter>Li評 Nam V﹏: Ha ha, ngi n鉯 th� nh璶g ch璦 ch綾 b鬾g ngi ngh� th�!<enter>"
		..name.."<#>:  Ngi n鉯 c騨g c� l�. <enter>Mu鑞 l祄 s竧 th�, l頸 kh� r蕋 c莕 thi誸. Nghe n鉯 Ng� d﹏ Dng Ch﹗ trong 1 m m璦 gi� b穙 b飊g ph竧 hi謓 di y bi觧 xu蕋 hi謓 c秐h tng k� d�, c莕 ph秈 甶襲 tra.<enter>"
		..name.."<#>:  Л頲.<enter> Ta c� ngi b筺 t猲 Giang Nh蕋 Ti猽, ngi n t譵 h緉 gi髉 , y s� kh玭g ch鑙 t�.<enter>"
		..name.."<#>:  Nh� v藋 qu� t鑤, Giang Nh蕋 Ti猽 b譶h thng th輈h c竔 g�? T鑤 nh蕋 chu萵 b� qu� ra m総.<enter>Kh玭g c莕 u,   y nh薽 ch鴆 � T莕 L╪g, n琲  產ng b� n筺 gi芻 Nh輒 ph� ph竎h, trc ti猲 h穣 n T莕 L╪g nh 50 con Nh輒.<enter>"
		..name.."<#>:  Ch� l� chuy謓 nh�!<enter>",
		1,"K誸 th骳 i tho筰/Uworld1054_zfz2")
	elseif ( GetLevel() < 20 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 20, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 30 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1002 < 20 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄 nhi謒 v� Ch輓h tuy課 phe Trung tng 鴑g v韎 ng c蕄, h穣 n <color=red>Bi謓 Kinh<color>t譵 Ph� Nam B╪g.")
	else
		Talk(1,"","шi ngi c� r蕋 甶襲 k� di謚 m� ta n籱 m� c騨g ngh� kh玭g ra!")
	end
end

function Uworld1054_zfz2()
	Uworld1012 = nt_getTask(1012)
	AddOwnExp(5000)
	nt_setTask(1012,10)
	nt_setTask(1054,20)
	AddPlayerEvent(2) 
	Msg2Player("Li評 Nam V﹏ b秓 b筺 n Dng Ch﹗ t譵 Giang Nh蕋 Ti猽 h醝 th╩ tin t鴆 Th莕 binh xu蕋 th�, n T莕 L╪g nh 50 con nh輒.")
end

function Uworld1055_zfz1()
	Uworld1055 = nt_getTask(1055) --中立30-40级之间的支线任务变量
	Uworld1002 = nt_getTask(1002) --中立主线任务变量
	local name = GetName()
	if ( Uworld1002 >= 70 ) and ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) and (( Uworld1055 == 0 ) or ( Uworld1055 == 10 )) then
		nt_setTask(1055,10)
		Describe(DescLink_LiuNanYun.."<#>:  C� v� l祄 ╪ l韓 r錳.<enter>"
		..name.."<#>:  L祄 ╪?<enter> Ti猽 xa c馻 T﹜ B綾 ti猽 c鬰 li猲 ti誴 b� cp, Ti猽 s� h� t鑞g kh玭g ai tho竧 kh醝, c� 36 ti猽 c鬰 b� m閠 s� ti襫 l韓  b鋘 ta 甶襲 tra hung ph筸.<enter>"
		..name.."<#>:  Ngi T﹜ B綾 v鑞 r蕋 hi誹 chi課! <enter>Ngi c� th� n Phng Tng t譵 ch� nh﹏ c馻 Song g ti猽 c鬰, 玭g ta s� cho ngi bi誸 r� t譶h h譶h.<enter>",
		1,"K誸 th骳 i tho筰/Uworld1055_zfz2")
	elseif ( GetLevel() < 30 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 30, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 40 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1002 < 70 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄 nhi謒 v� Ch輓h tuy課 phe Trung tng 鴑g v韎 ng c蕄, h穣 n <color=red>Bi謓 Kinh<color>t譵 Ph� Nam B╪g.")
	else
		Talk(1,"","шi ngi c� r蕋 甶襲 k� di謚 m� ta n籱 m� c騨g ngh� kh玭g ra!")
	end
end

function Uworld1055_zfz2()
	AddOwnExp(15000)
	nt_setTask(1055,20)
	Msg2Player("G莕 y T﹜ B綾 x秠 ra 竛 l韓, Li評 Nam V﹏ b秓 b筺 n Phng Tng t譵 Ch� nh﹏ Song g ti猽 c鬰 h醝 r�.")
end

function Uworld1055_zfz3()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_zl_level30();
end

function Uworld1056_zfz1()
	Uworld1056 = nt_getTask(1056) --中立40-50级之间的支线任务变量
	Uworld1002 = nt_getTask(1002) --中立主线任务变量
	local name = GetName()
	if ( Uworld1002 >= 120 ) and ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) and (( Uworld1056 == 0 ) or ( Uworld1056 == 10 )) then
		nt_setTask(1056,10)
		Describe(DescLink_LiuNanYun.."<#>:  Ngi c秏 th蕐 l祄 cao th� d� kh玭g?.<enter>"
		..name.."<#>:  Ta kh玭g bi誸, ch� c秏 th蕐 d� ch辵.<enter> D� ch辵? с l� v� ngi ch璦 g苝 ph秈 cao th� tuy謙 th�! H穣 甶 Dng Ch﹗ u th� m閠 tr薾 甶! <enter>",
		1,"K誸 th骳 i tho筰/Uworld1056_zfz2")
	elseif ( GetLevel() < 40 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 40, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 50 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1002 < 120 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄 nhi謒 v� Ch輓h tuy課 phe Trung tng 鴑g v韎 ng c蕄, h穣 n <color=red>Bi謓 Kinh<color>t譵 Ph� Nam B╪g.")
	else
		Talk(1,"","шi ngi c� r蕋 甶襲 k� di謚 m� ta n籱 m� c騨g ngh� kh玭g ra!")
	end
end

function Uworld1056_zfz2()
	Uworld1012 = nt_getTask(1012)
	AddOwnExp(30000)
	nt_setTask(1012,10)
	nt_setTask(1056,20) 
	Msg2Player("Li評 Nam V﹏ b秓 b筺 n t� v� trng nh 1 tr薾,  ch鴑g t� b秐 l躰h")	
end

function Uworld1056_zfz3()
	Uworld1012 = nt_getTask(1012)
	AddOwnExp(30000)
	nt_setTask(1012,10)
	nt_setTask(1056,40)
end

function Uworld1056_zfz6()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1056_zfz4()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1056_zfz5()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_zl_level40();
end

function Uworld1057_zfz1()
	Uworld1057 = nt_getTask(1057) --正派50-60级之间的支线任务变量
	Uworld1002 = nt_getTask(1002) --正派主线任务变量
	local name = GetName()
	if ( Uworld1002 >= 190 ) and ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) and ((  Uworld1057 == 0 ) or ( Uworld1057 == 10 ))  then
			nt_setTask(1057,10)
			Describe(DescLink_LiuNanYun.."<#>:...Ng祔 ta v� ngi b猲 nhau s緋 h誸.<enter>"
			..name.."<#>:  T筰 sao t� nhi猲 l筰 n鉯 nh鱪g l阨 n祔?<enter> L祄 s竧 th� kh玭g th� l祄 c� i. Tr猲 tay nhu鑝 nhi襲 m竨 c騨g kh玭g ph秈 l� chuy謓 t鑤.<enter>"
			..name.."<#>:  g mu鑞 ta r鯽 tay g竎 ki誱?<enter> ng v藋! Ta  chu萵 b� m閠 s� ti襫   ngi s鑞g nh鱪g ng祔 c遪 l筰.<enter>"
			..name.."<#>:......C騨g t鑤.<enter>  Trc khi 甶, Ta mu鑞 ngi gi髉 ta l莕 cu鑙.<enter>"
			..name.."<#>:  Li評 Чi ca xin c� n鉯. <enter>Ngi h穣 n Chi課 trng T鑞g Kim, l蕐 200 甶觤 t輈h l騳. ng h醝 ta nguy猲 nh﹏.<enter>",
			1,"K誸 th骳 i tho筰/Uworld1057_zfz2")
	elseif ( GetLevel() < 50 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 50, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 60 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1002 < 190 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄 nhi謒 v� Ch輓h tuy課 phe Trung tng 鴑g v韎 ng c蕄, h穣 n <color=red>Bi謓 Kinh<color>t譵 Ph� Nam B╪g.")
	else
		Talk(1,"","шi ngi c� r蕋 甶襲 k� di謚 m� ta n籱 m� c騨g ngh� kh玭g ra!")
	end
end

function Uworld1057_zfz2()
	Uworld1012 = nt_getTask(1012)
	AddOwnExp(60000)
	nt_setTask(1012,10)
	nt_setTask(1057,20) 
	Msg2Player("Li評 Nam V﹏ b秓 b筺 tham gia Чi chi課 T鑞g Kim, l蕐 200 甶觤 thng v�, xem ra c� nhi謒 v� quan tr鋘g 產ng ch� b筺.")	
end

function Uworld1057_zfz3()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1057_zfz4()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1057_zfz5()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_zl_level50();
end

function Uworld1000_zhfz1()
	AddOwnExp(1000)
	nt_setTask(1000,320) --环节16end 
	Msg2Player("Li評 Nam V﹏ b秓 b筺 v祇 th祅h ngh� ng琲 r錳 h穣 n t譵 h緉.")	
end

function Uworld1000_zhfz2()
	AddOwnExp(1000)
	nt_setTask(1000,340) --环节17end 
	Msg2Player("Li評 Nam V﹏ b秓 b筺 甶 t譵 V� L﹎ Truy襫 Nh﹏.")	
	seteducationnpcpos()
end

function Uworld1000_zhfz3()
	AddItem(6,1,131,1,0,0,0)  --增加龙五的包袱
	AddOwnExp(20000)
	nt_setTask(186,10)
	nt_setTask(1000,440) --环节22end
	Msg2Player("B筺 頲1 t骾 th�, Li評 Nam V﹏ b秓 b筺 mau m� t骾 th�, l蕐 th� trong  t譵 ngi c莕 t譵.")	
end

function Uworld1000_zhfz4()
	AddItem(6,1,131,1,0,0,0)  --增加龙五的包袱
	nt_setTask(186,10)
	Msg2Player("B筺 頲1 t骾 th�, Li評 Nam V﹏ b秓 b筺 mau m� t骾 th�, l蕐 th� trong  t譵 ngi c莕 t譵.")	
end

function Uworld1000_zhfz5()
	Talk(1,"","Ngi h穣 甶 c竎 T﹏ Th� Th玭 t譵 Long Ng�. Nh� gi� k� th� c馻 h緉! N誹 m蕋 th� ti課 d蒼 th� s� kh玭g ai tin ngi u!")
	Msg2Player("Li評 Nam V﹏ b秓 b筺 甶 v祇 T﹏ Th� th玭 t譵 Long Ng�, s� c� nhi謒 v� m韎!")		
end

function Uworld1000_no2()
	Talk(1,"","Tr猲 giang h� ch糿g l骳 s鉵g y猲 gi� l苙g, ngi ph秈 b秓 tr鋘g. Sau s� quay l筰 y ta c� v礽 nhi謒 giao cho ngi.")
end

function allprize_zhongli()
	Uworld197 = nt_getTask(197) --正派全奖励
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
	if ( Uworld1054 == 1000 ) and ( GetBit(GetTask(197),1) ~= 1 ) then
		AddGoldItem(0,179)
		SetTask(197,SetBit(GetTask(197),1,1))
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1  Kim Phong Tr筩 Li猲 Quang")
	elseif ( Uworld1055 == 1000 ) and ( GetBit(GetTask(197),2) ~= 1) then
		AddGoldItem(0,180)
		SetTask(197,SetBit(GetTask(197),2,1))
	Msg2Player("Ch骳 m鮪g b筺 t 頲 1  Kim Phong C玭g C萵 Tam Th竛.")
	elseif ( Uworld1056 == 1000 ) and ( GetBit(GetTask(197),3) ~= 1 ) then
		AddGoldItem(0,183)
		SetTask(197,SetBit(GetTask(197),3,1))
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1  Kim Phong Lan ёnh Ng鋍")
	elseif ( Uworld1057 == 1000 ) and ( GetBit(GetTask(197),4) ~= 1 ) then
		AddGoldItem(0,185)
		SetTask(197,SetBit(GetTask(197),4,1))
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1 Kim Phong уng Tc Xu﹏ Th﹎.")
	end	
	Msg2Player("B筺  ho祅 th祅h nhi謒 v� c馻 ng c蕄 n祔.")
end

function Uworld1000_finishzhongli()
	Uworld1000 = nt_getTask(1000)
	nt_setTask(1000,1000)
	Msg2Player("B筺  ho祅 th祅h nhi謒 v� s� nh藀.")
end

function no()
end