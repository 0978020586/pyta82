-- 龙门镇-古阳洞-机关1(世界任务“救小娟”)
-- by：Dan_Deng(2004-03-03)

function main(sel)
	Uworld41 = GetTask(41)
	if (GetByte(Uworld41,1) == 30) and (HaveItem(352) == 1) then		-- 任务中，有“机关钥匙”，人未救出
		if (GetBit(Uworld41,9) == 0) then				-- 机关当前为关闭
			Say("Hi謓 gi� c� quan  b� kh鉧, b筺 c� mu鑞 m� n� ra kh玭g?",2,"M� ra /Turn_On","C� ti誴 t鬰 ng c鯽 /Turn_Off")
		else
			Say("Hi謓 gi� c� quan  m�, b筺 c� mu鑞 ng n� l筰 kh玭g?",2,"Ti誴 t鬰 m� c鯽 /Turn_On","сng/Turn_Off")
		end
	end
end

function Turn_On()
--	Talk(1,"","机关打开了。")
	Msg2Player("C� quan  m� ra")
	Cur_Switchs = SetBit(GetTask(41),9,1)
	SetTask(41,Cur_Switchs)
	Check_Switch()
end

function Turn_Off()
--	Talk(1,"","机关关闭了。")
	Msg2Player("C� quan  kh鉧 l筰")
	Cur_Switchs = SetBit(GetTask(41),9,0)
	SetTask(41,Cur_Switchs)
	Check_Switch()
end

function Check_Switch()
	Cur_Switchs = GetByte(GetTask(41),2)
	Set_Switchs = GetByte(GetTask(41),3)
	if (Cur_Switchs == Set_Switchs) then			-- 能够一致，救出小娟
		Uworld41 = SetByte(GetTask(41),1,100)
		SetTask(41,Uworld41)
		DelItem(352)						-- 成功后则删除钥匙
		Talk(1,"","M� 頲 c� quan! C鴘 th祅h c玭g Ti觰 Quy猲")
		Msg2Player("B筺 m� 頲 c� quan, c鴘 th祅h c玭g Ti觰 Quy猲 ")
		AddNote("B筺  ph� 頲 C� quan, c鴘 頲 Ti觰 Quy猲 ")
	else
		Msg2Player("Nh璶g khi b筺 tr� l筰 H綾 lao y c竛h c鯽 th� n� v蒼 kh玭g h� ng y ")
	end
end
