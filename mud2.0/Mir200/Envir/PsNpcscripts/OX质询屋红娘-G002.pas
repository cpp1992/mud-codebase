{
/************************************************************************}


PROGRAM Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _mengzhong;
begin
   if compareText(This_Player.MapName, 'G002') = 0 then
   begin
      This_Player.RandomFlyTo('3');
   end;
end;

Procedure _biqi;
begin
   if compareText(This_Player.MapName, 'G002') = 0 then
   begin
      This_Player.RandomFlyTo('0');
   end;
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '�����ǡ�������ѯ�ݡ�������˭��\'+
   '����Һ���ɡ����ˣ������㣺\'+
   '������ǧ��Ҫ˵�ѻ����������˵��һ�ж������Ļ��Ļ���\'+
   'Ҳ�������������Ŷ��\ \'+
   '|{cmd}<������/@mengzhong>                        ^<�ر���/@biqi>\'+
   '|{cmd}<ȷ��/@doexit>');
end.