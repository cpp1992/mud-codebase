{
/************************************************************************}

PROGRAM Mir2;


Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '���ɵ����ǳ�������ʦ���ľ���Ҫ���Ĵ�����\'+
   '�����ҵ�ͽ�ܶ�ʮ�ֿ̿��ѧ����ʱ��������ȥ����һ���ˡ�\ \'+
   '|{cmd}<�˳�/@doexit>');
end.