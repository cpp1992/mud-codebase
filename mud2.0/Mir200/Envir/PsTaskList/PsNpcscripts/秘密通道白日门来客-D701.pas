{
/************************************************************************}


PROGRAM Mir2;




Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _talk;
begin
   This_Npc.NpcDialog(This_Player,
   '�����Ǹ�����ˣ�̫��л���ˣ�\'+
   'ͨ��ǰ���ͨ���Ϳ��Ե���������ˣ�\'+ 
   '���ҪС�ģ�����������·��\ \'+
   '|{cmd}<֪���ˣ��ټ�/@doexit>');
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '��˵��������Ƽ�����֪����û����Ը��ȥ�����Ű������ǡ�\ \'+
   '|{cmd}<����ȥ������/@talk>\'+
   '|{cmd}<�˳�/@doexit>');
end.