{
/************************************************************************}

Program Mir2;




Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '��֮ħ������ʹ���Լ�а�������\'+
   '��ħ�����ؽ����˷��  ��Ӵ�,������Ҳ���ܽ���ħ�����ء�\ \' +
   '|{cmd}<�뿪/@doexit>');
end.