      {
*******************************************************************}

procedure JHTZ_XH_ZS();
var wuqi, xianglian, toukui , shouzhuo1 , shouzhuo2 , jiezhi1 , jiezhi2  : string;
begin
wuqi := This_Player.GetItemNameOnBody(1);
xianglian := This_Player.GetItemNameOnBody(3);
toukui := This_Player.GetItemNameOnBody(4);
shouzhuo1 := This_Player.GetItemNameOnBody(5);
shouzhuo2 := This_Player.GetItemNameOnBody(6);
jiezhi1 := This_Player.GetItemNameOnBody(7);
jiezhi2 := This_Player.GetItemNameOnBody(8);
//////////��֤�ɹ���ü��ܲ���ѭ����֤
if (wuqi = '�þ�֮��') or (wuqi = 'ŭն') or (wuqi = '����') or (wuqi = '����֮��') then 
begin
  if (xianglian = 'ʥս����') and (toukui = 'ʥսͷ��') then 
  begin
  if (shouzhuo1 = 'ʥս����') or (shouzhuo2 = 'ʥս����') then 
    begin
	  if (jiezhi1 = 'ʥս��ָ') or (jiezhi2 = 'ʥս��ָ') then 
	  begin
	  if This_Player.GetSkillLevelExt('��ɱ����',false) < 4 then
	  begin
      This_Player.ChgSkillLv('��ɱ����',4,0);
      This_Player.PlayerNotice('������װ����ɹ�,������4����ɱ������',2);
	  end;
	  end else
begin
if This_Player.GetSkillLevelExt('��ɱ����',false) = 4 then
begin
This_Player.ChgSkillLv('��ɱ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ����ָ,��װЧ����ʧ��',2);
end;
end;
	end else
begin
if This_Player.GetSkillLevelExt('��ɱ����',false) = 4 then
begin
This_Player.ChgSkillLv('��ɱ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ�������,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('��ɱ����',false) = 4 then
begin
This_Player.ChgSkillLv('��ɱ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ���������ͷ��,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('��ɱ����',false) = 4 then
begin
This_Player.ChgSkillLv('��ɱ����',3,0);
This_Player.PlayerNotice('ȱ��սʿ����,��װЧ����ʧ��',2);
end;
end;
    This_Player.CallOut(This_Npc, 5, 'JHTZ_XH_ZS');
end;


procedure JHTZ_XH_FS();
var wuqi, xianglian, toukui , shouzhuo1 , shouzhuo2 , jiezhi1 , jiezhi2  : string;
begin
wuqi := This_Player.GetItemNameOnBody(1);
xianglian := This_Player.GetItemNameOnBody(3);
toukui := This_Player.GetItemNameOnBody(4);
shouzhuo1 := This_Player.GetItemNameOnBody(5);
shouzhuo2 := This_Player.GetItemNameOnBody(6);
jiezhi1 := This_Player.GetItemNameOnBody(7);
jiezhi2 := This_Player.GetItemNameOnBody(8);
//////////��֤�ɹ���ü��ܲ���ѭ����֤
if (wuqi = '����Ȩ��') or (wuqi = '����') or (wuqi = '�Ȼ귨��') or (wuqi = 'Ѫ��') or (wuqi = '����֮��') then 
begin
  if (xianglian = '��������') and (toukui = '����ͷ��') then 
  begin
  if (shouzhuo1 = '��������') or (shouzhuo2 = '��������') then 
    begin
	  if (jiezhi1 = '�����ָ') or (jiezhi2 = '�����ָ') then 
	  begin
	  if This_Player.GetSkillLevelExt('ħ����',false) < 4 then
	  begin
      This_Player.ChgSkillLv('ħ����',4,0);
      This_Player.PlayerNotice('������װ����ɹ�,������4��ħ���ܣ�',2);
	  end;
	  end else
begin
if This_Player.GetSkillLevelExt('ħ����',false) = 4 then
begin
This_Player.ChgSkillLv('ħ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ����ָ,��װЧ����ʧ��',2);
end;
end;
	end else
begin
if This_Player.GetSkillLevelExt('ħ����',false) = 4 then
begin
This_Player.ChgSkillLv('ħ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ�������,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('ħ����',false) = 4 then
begin
This_Player.ChgSkillLv('ħ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ���������ͷ��,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('ħ����',false) = 4 then
begin
This_Player.ChgSkillLv('ħ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ�ʦ����,��װЧ����ʧ��',2);
end;
end;
    This_Player.CallOut(This_Npc, 5, 'JHTZ_XH_FS');
end;



procedure JHTZ_XH_DS();
var wuqi, xianglian, toukui , shouzhuo1 , shouzhuo2 , jiezhi1 , jiezhi2  : string;
begin
wuqi := This_Player.GetItemNameOnBody(1);
xianglian := This_Player.GetItemNameOnBody(3);
toukui := This_Player.GetItemNameOnBody(4);
shouzhuo1 := This_Player.GetItemNameOnBody(5);
shouzhuo2 := This_Player.GetItemNameOnBody(6);
jiezhi1 := This_Player.GetItemNameOnBody(7);
jiezhi2 := This_Player.GetItemNameOnBody(8);
//////////��֤�ɹ���ü��ܲ���ѭ����֤
if (wuqi = '���ƽ�') or (wuqi = '��ң��') or (wuqi = '�޼���') or (wuqi = '����֮��') then 
begin
  if (xianglian = '��������') and (toukui = '����ͷ��') then 
  begin
  if (shouzhuo1 = '��������') or (shouzhuo2 = '��������') then 
    begin
	  if (jiezhi1 = '�����ָ') or (jiezhi2 = '�����ָ') then 
	  begin
	  if This_Player.GetSkillLevelExt('ʩ����',false) < 4 then
	  begin
      This_Player.ChgSkillLv('ʩ����',4,0);
	  This_Player.PlayerNotice('������װ����ɹ�,������4��ʩ������',2);
	  end;
	  end else
begin
if This_Player.GetSkillLevelExt('ʩ����',false) = 4 then
begin
This_Player.ChgSkillLv('ʩ����',3,0);
This_Player.PlayerNotice('ȱ�������ָ,��װЧ����ʧ��',2);
end;
end;
	end else
begin
if This_Player.GetSkillLevelExt('ʩ����',false) = 4 then
begin
This_Player.ChgSkillLv('ʩ����',3,0);
This_Player.PlayerNotice('ȱ����������,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('ʩ����',false) = 4 then
begin
This_Player.ChgSkillLv('ʩ����',3,0);
This_Player.PlayerNotice('ȱ������������ͷ��,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('ʩ����',false) = 4 then
begin
This_Player.ChgSkillLv('ʩ����',3,0);
This_Player.PlayerNotice('ȱ�ٵ�ʿ����,��װЧ����ʧ��',2);
end;
end;
    This_Player.CallOut(This_Npc, 5, 'JHTZ_XH_DS');
end;


procedure JHTZ_KS(); 
begin      
//This_Player.PlayerNotice('�ɹ�����2',2);      
  case This_Player.Job of
       0: 
	   JHTZ_XH_ZS();
       1: 
	   JHTZ_XH_FS();
       2: 
	   JHTZ_XH_DS();
  end;
end; 

function TZJH_NPC:string; 
begin
//This_Player.PlayerNotice('�ɹ�����1',2);   
  JHTZ_KS();
end;  




