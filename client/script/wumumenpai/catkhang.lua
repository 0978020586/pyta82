---------------------------------------------------------------
function main() 
	dofile("script/wumumenpai/catkhang.lua")
	if (GetTask(12) == 40*256) and GetLevel() >= 20  then
		Talk(13,"nv2x",""..GetName()..": Hai ng��i �ang tranh c�i v� vi�c g� v�y?","Th� Nhu�: Ta c� m�t thanh ki�m c�c k� s�c b�n v� c� th� ph� v� m�i th� tr�n ��i n�y.","C�t Khang: Ta c� m�t chi�c khi�n c�c k� hi�m c�, kh� n�ng ph�ng th� tuy�t v�i, c� th� ch�ng l�i m�i lo�i v� kh�.","Th� Nhu�: Thanh ki�m c�a ta l� m�t b�o v�t v� chi�c khi�n b� v� tr�ng th�t gi� t�o.","C�t Khang: V� v�n! Ki�m c�a ng��i �� r�ch n�t, l� ch�n c�a ta kh�ng s� ng��i.",""..GetName()..": Ta �� hi�u, kh�ng bi�t hai v� c� th� cho ta m��n 2 m�n binh kh� �� xem qua ���c kh�ng.","C�t Khang: T�t nhi�n.","Th� Nhu�: Ng��i h�y xem c�n th�n.","Sau khi ki�m tra, nh�n ra hai lo�i binh kh� n�y ��u l� v� kh� b�nh th��ng, ta kh�ng bi�t ai ch�u tr�ch nhi�m cho vi�c n�y.",""..GetName()..": T�t h�n h�t l� hai v� h�y c�ng ta ��n di�n v� tr��ng �� thi ��u, ai th�ng s� ch�ng t� ng��i �� ��ng.","C�t Khang: ���c, ch�ng ta �i.","Th� Nhu�: L��i ki�m c�a ta kh�ng c� m�t, ta kh�ng ch�u tr�ch nhi�m khi l�m t�n th��ng ng��i.") 
	elseif (GetTask(12) == 50*256) and GetLevel() >= 20 then
		Talk(1,"","C�t Khang: B�n ta ��i ng��i � s�n luy�n v�")
	elseif GetTask(12) == 70*256 and GetLevel() >= 20 then
		Talk(3,"nv2x4","C�t Khang: T�i sao l�i nh� v�y? T�i sao ki�m v� khi�n c�a ch�ng ta l�i kh�ng ch�ng ch�u n�i?","C�t Khang: Ng��i c� th� gi�p ch�ng ta t�m t�n th��ng gia �� b�n v� kh� �� h�i cho ra l� ���c kh�ng?")	
	elseif GetTask(12) == 100*256 and GetLevel() >= 20 then
		Talk(1,"nv2x6",""..GetName()..": Du T�u M�i H�a Lang �� b� ta d�y cho m�t b�i h�c, kh�ng d�m l�a huynh n�a ��u","C�t Khang: Th�t c�m �n c�c h�, ��y l� cu�n b� k�p v� c�ng m� ta �� h�c ���c, c�c h� �em v� luy�n t�p, sau n�y s� r�t c� �ch.")	
	else
		Talk(1,"","C�t Khang: H�y th��ng xuy�n t�i g�p ta.")
	end
end

function nv2x() 
	SetTask(12,50*256)
	Msg2Player("��n Di�n V� Tr��ng (194/191) t� th� v� c�ng.") 
end 

function nv2x4() 
	--NewWorld(179, 1871, 2634)
	--SetFightState(1) 
	SetTask(12,80*256)
	Msg2Player("��n La Ti�u S�n (233/164), t�m Th��ng gia.")
end 

function nv2x6()
	SetTask(12,110*256)
	AddMagic(1976)
	SetRank(92)
	Msg2Player("Ho�n th�nh nhi�m v� c�p 20. H�c ���c <color=yellow>C�ng Trung B�nh T�nh<color>")
end