{
/************************************************************************}

PROGRAM Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _goh007;
var
r : integer;
begin
  if compareText(This_Player.MapName, 'T3063') = 0 then
  begin
   r := random(4);
   if r = 3 then
   begin
      This_Player.FlyTo('H007',119,9);
   end;
   if r = 2 then
   begin
      This_Player.FlyTo('H007',115,13);
   end;
   if r = 1 then
   begin
      This_Player.FlyTo('H007',118,16);
   end;
   if r = 0 then
   begin
      This_Player.FlyTo('H007',121,12);
   end;
  end;  
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '�㲻Ҫ���������ˣ������Ѿ���ΪһƬ�����ˡ�ħ��Ϊ��\'+
   '���칤��������£���ħ�޶���ȥ�˵��¹��ͬʱҲ��\'+
   'ȥ�����еĲƱ���\'+
   '���¹������ھ��ڹ���ȵ��м䣬������������ȥ��\'+
   '��Ȱɡ�\ \'+
   '       ^<ȥ�����/@goh007>                   ^<�뿪/@doexit>');
end.