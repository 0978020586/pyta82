Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
function main(sel)
	if (GetTask(69) == 13) or GetLastFactionNumber() == 12 then
		Say("C�m ��ng: H�nh t�u giang h�, trang b� t�t kh�ng th� thi�u.", 2,"Giao d�ch/yes", "Kh�ng giao d�ch/no");
	else 
		Talk(1,"","C�m ��ng: Ch��ng m�n c� l�nh, trang b� b�n ph�i ch� b�n cho ��ng m�n.")	
	end
end;


function yes()
	Sale(2);  			
end;


function no()
end;
