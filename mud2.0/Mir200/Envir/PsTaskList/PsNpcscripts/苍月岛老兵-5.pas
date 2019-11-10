{
/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _goshop;
begin
   This_Npc.NpcDialog(This_Player,
   '����ȥ���\ \'+
   '|{cmd}<��װ��/@goshop3>\'+
   '|{cmd}<������/@goshop1>\'+
   '|{cmd}<���ε�/@goshop2>\'+
   '|{cmd}<����/@main>');
end;

procedure _goshop1;
begin
   if compareText(This_Player.MapName, '5') = 0 then
   begin
      This_Player.RandomFlyTo('b351');
   end;
end;

procedure _goshop2;
begin
   if compareText(This_Player.MapName, '5') = 0 then
   begin
      This_Player.RandomFlyTo('b352');
   end;
end;

procedure _goshop3;
begin
   if compareText(This_Player.MapName, '5') = 0 then
   begin
      This_Player.RandomFlyTo('B353');
   end;
end;


procedure _move04;
begin
   if compareText(This_Player.MapName, '5') = 0 then
   begin
      This_Player.RandomFlyTo('b343');
   end;
end;



Procedure _tianting;
Begin
   if This_Player.Level >= 8  then
   begin
      if compareText(This_Player.MapName, '5') = 0 then
      begin
         This_Player.RandomFlyTo('0122~1');
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����Ȼ�Ǹ��̲ر���ĵط�����ͬ��������Σ�ա�\'+
      '���ĵȼ���δ�ﵽ8�����ϣ������ڵ�ʵ����������\'+
      '���������Ѱ�ұ���\ \'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;




Procedure _gomo;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ȥ����ػ�ȥħ������ɱ��ص�����\'+
   '��ͥ��ġ���ͥ������֪����ô��ȥ����ȥ�����ɡ�\ \'+
   '|{cmd}<ǰ����ͥ/@tianting>\ \'+
   '|{cmd}<����/@main>                  ^<�ر�/@doexit>');
end;

Procedure _zhuangyuan;
var
f : integer;
Begin
   if This_Player.Level >= 8  then
   begin
     if compareText(This_Player.MapName, '5') = 0 then
     begin
      f := random(5);
      if  f = 4 then
      begin
      This_Player.Flyto('GA0',70,71);
      end;
      if  f = 3 then
      begin
      This_Player.Flyto('GA0',73,64);
      end;
      if  f = 2 then
      begin
      This_Player.Flyto('GA0',73,69);
      end;
      if  f = 1 then
      begin
      This_Player.Flyto('GA0',62,72);
      end;  
      if  f = 0 then
      begin
      This_Player.Flyto('GA0',61,64);
      end;
     end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��������������һ���������ȥ���\'+
      '�����ﵽ8����ʱ���������Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;



Procedure _baodian;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ׯ԰����������ӣ�����ʹ��Ԫ���һ����ȥ����غ�ħ����\'+
   '����ͨ��ׯ԰�ڵġ�Ԫ��ʹ�ߡ���������������ҽ���Ԫ�����ף�\'+
   'ͬʱ�ڴ��桰���̡���Ҳ�Ѿ���ͨʹ��Ԫ�����ٶһ�������ܣ�\'+
   '������Ҫȥׯ԰��?\ \'+
   '|{cmd}<ǰ��ׯ԰/@zhuangyuan>');
end;



Procedure _back;
Begin
   if compareText(This_Player.MapName, '5') = 0 then
   begin
      This_Player.Flyto('3',330,330);
   end;
end;

Procedure _swz;
begin
   This_Npc.NpcDialog(This_Player,
   '�ҿ��԰���ʹ������ֵ������PKֵ��\'+
   'ÿһ������ֵ���԰�������100��PKֵ��\ \'+
   '|{cmd}<����100��PKֵ/@decpkdecsw>\'+
   '|{cmd}<����/@main>');
end;

Procedure _decpkdecsw;
begin
   if This_Player.MyPkpoint >=100 then
   begin
      if This_Player.MyShengwan >= 1 then
      begin
         This_Player.MyShengwan := This_Player.MyShengwan-1;
         This_Player.DecPkPoint(100);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��û���㹻����������PKֵ��\ \'+
         '|{cmd}<�˳�/@doexit>');
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '���PKֵ����100��������ʹ������������\ \'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;

procedure _gobiqi;
var
  temp : integer;
begin
  if This_Player.GetS(11,10) = 888 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ��������ﴫ�ͻر���һ�Σ������ٴδ��ͣ�'); 
  end
  else
  begin
    This_Player.SetS(11,10,888);
    temp := random(3) + 1;
    if temp = 1 then
    begin
      This_Player.Flyto('0',334,273);
    end
    else if temp = 2 then
    begin
      This_Player.Flyto('0',650,630);
    end
    else
    begin
      This_Player.Flyto('0',289,616);
    end;
  end;
end;


procedure _goMonMap;
begin
    This_NPC.NpcDialog(This_Player,
    '����ȥ����ҿ�������һ�̡�\ \'
    +'|{cmd}<ǰ��ʬħ��Ѩ/@goToMonMap_1>              ^<ǰ����ħ��Ѩ/@goToMonMap_2>\'
    +'|{cmd}<ǰ��ţħ��Ѩ/@goToMonMap_3>\'
    +'|{cmd}<����/@main>\ '
    );
end;

procedure _goToMonMap_1; 
begin 
    if This_Player.MapName = '5' then 
    This_Player.Flyto('5',520 + random(3) - 1,617 + random(3) - 1); 
end;

procedure _goToMonMap_2; 
begin 
    if This_Player.MapName = '5' then 
    This_Player.Flyto('5',543 + random(3) - 1,133 + random(3) - 1); 
end;

procedure _goToMonMap_3; 
begin 
    if This_Player.MapName = '5' then 
    This_Player.Flyto('5',660 + random(3) - 1,465 + random(3) - 1); 
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '��Ȼ����֤ʵ�Ӻ�·���ܻؼң���������������������ҵĺ�����\'+
   'ֻҪ������������ս������һ�����ˡ�ѩɽ�������谭���ǻؼң�\'+
   '����ȥʲô�ط����ܴ����أ��ҿ�������һ�̣�\ \'+
   
   '|{cmd}<����ׯ԰/@baodian>                        ^<��ȥ�̵�/@goshop>\'+
   '|{cmd}<��Ѩ����/@goMonMap>\'+
   '|{cmd}<������/@back>                          ^<���ر���/@gobiqi>\' 
   );
end.