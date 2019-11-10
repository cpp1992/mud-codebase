{
/************************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;



Procedure _tianting;
Begin
   if This_Player.Level >= 8  then
   begin
      if compareText(This_Player.MapName, '1') = 0 then
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
     if compareText(This_Player.MapName, '1') = 0 then
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



Procedure _move;
Begin
   if compareText(This_Player.MapName, '1') = 0 then
   begin
      This_Player.Flyto('4',440,190);
   end;
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '��˵�е�<����ʯ/c=red>���ڱ������ˣ�\'+
   '������<����ɭ��/c=red>��ƽ������<����ʯ/c=red>�ĳ��ֶ����״��ơ�\ \'+
   '|{cmd}<������غ�ħ����/@gomo>\'+
   '|{cmd}<����ׯ԰/@baodian>\'+
   '|{cmd}<ȥ��ħ��/@move>\'+
   '|{cmd}<��������ȥ/@doexit>');
end.