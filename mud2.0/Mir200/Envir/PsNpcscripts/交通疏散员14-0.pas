{
*******************************************************************}

PROGRAM Mir2;


Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _chuans01;
begin
   if compareText(This_Player.MapName, '0') = 0 then
   begin
      This_Player.Flyto('0',251 + random(10) - 5,353 + random(10) - 5);
   end;
end;

Procedure _chuans02;
begin
   if compareText(This_Player.MapName, '0') = 0 then
   begin
      This_Player.Flyto('0',256 + random(10) - 5,170 + random(10) - 5);
   end;
end;

Procedure _chuans03;
begin
   if compareText(This_Player.MapName, '0') = 0 then
   begin
      This_Player.Flyto('0',426 + random(10) - 5,353 + random(10) - 5);
   end;
end;

Procedure _chuans04;
begin
   if compareText(This_Player.MapName, '0') = 0 then
   begin
      This_Player.Flyto('0',436 + random(10) - 5,151 + random(10) - 5);
   end;
end;

Begin
   This_NPC.NpcDialog(This_Player,
   '������Ա̫�࣬��ͨӵ�£��ҿ�����Ѱ��㴫�ͳ�ȥ��\ \'+
   '|{cmd}<���͵��������/@chuans01>\'+
   '|{cmd}<���͵��������/@chuans02>\'+
   '|{cmd}<���͵�����Ƕ�/@chuans03>\'+
   '|{cmd}<���͵�����Ǳ�/@chuans04>');
end.