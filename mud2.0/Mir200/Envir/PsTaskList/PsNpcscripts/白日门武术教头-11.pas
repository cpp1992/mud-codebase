{
/************************************************************************}

PROGRAM Mir2;


Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '�ҵĹ�����Ӧ�ò��ỳ�ɰɣ���Ⱥͽ����Ҳ����ѧ�������ˡ�\'+
   '����Ҫ��������Ϲ�ͷ����Ҳ����ͬ����һ��ȥ����������\ \'+
   '|{cmd}<�˳�/@doexit>');
end.