{
/************************************************************************}

Program Mir2;




Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '�Ը��µ�ʵ��Ŀǰ�����ܽ���˵أ���ذɣ� \ \' +
   '|{cmd}<�뿪/@doexit>');
end.