{
*******************************************************************}

PROGRAM Mir2;


Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _Chuansong;
begin
   if compareText(This_Player.MapName, '0') = 0 then
   begin
      This_Player.Flyto('0',652 + random(10) - 5,630 + random(10) - 5);
   end;
end;

Begin
   This_NPC.NpcDialog(This_Player,
   '������Ա̫�࣬��ͨӵ�£��ҿ�����Ѱ��㴫�ͳ�ȥ��\ \'+
   '|{cmd}<��Ҫ����/@Chuansong>');
end.