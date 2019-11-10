{
/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _move0;
begin
   This_Npc.NpcDialog(This_Player,
   '���뵽�ĸ��̵ꣿ��������������񰡣�\ \'+
   '|{cmd}<��װ��/@move01>\'+
   '|{cmd}<������/@move02>\'+
   '|{cmd}<���ε�/@move03>\'+
   '|{cmd}<ҩ���/@move04>\ \'+
   '|{cmd}<����/@main>');
end;

procedure _move01;
begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      This_Player.RandomFlyTo('b345');
   end;
end;

procedure _move02;
begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      This_Player.RandomFlyTo('b342');
   end;
end;

procedure _move03;
begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      This_Player.RandomFlyTo('b344');
   end;
end;


procedure _move04;
begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      This_Player.RandomFlyTo('b343');
   end;
end;



Procedure _tianting;
Begin
   if This_Player.Level >= 8  then
   begin
      This_Player.RandomFlyTo('0122~1');
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
     if compareText(This_Player.MapName, '6') = 0 then
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


Procedure _move3;
Begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      This_Player.Flyto('3',330,330);
   end;
end;


Procedure _dongguan;
Begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      This_Player.Flyto('63',252,42);
   end;
end;


Procedure _move61;
Begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      This_Player.Flyto('6',472,376);
   end;
end;


Procedure _move62;
Begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      This_Player.Flyto('6',461,67);
   end;
end;


Procedure _xueyu;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����ӵ��ħ��ͨ��֤���ҾͿ���ֱ�Ӵ�����ȥħ��Ѫ��\'+
   '������һ���˶���ħ��Ѫ�򣬻������ǰ����\ \'+
   '|{cmd}<һ����ǰ��/@xueyu1>                     ^<���ǰ��/@xueyu2>');
end;

Procedure _xueyu1;
Begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      if This_Player.GetBagItemCount('ħ��ͨ��֤') >= 1 then
      begin
         This_Player.Take('ħ��ͨ��֤',1);
         This_Player.Flyto('66',252,209);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�Բ�����û��ħ��ͨ��֤���Ҳ��ܴ������ȥ��\ \'+
         '|{cmd}<�뿪/@doexit>\');
      end;
   end;
end;


Procedure _xueyu2;
Begin
   if compareText(This_Player.MapName, '6') = 0 then
   begin
      if This_Player.GetBagItemCount('ħ��ͨ��֤') >= 1 then
      begin
         if This_Player.IsGroupOwner then
         begin
            This_Player.Take('ħ��ͨ��֤',1);
            This_Player.GroupFly('66');
         end else
         begin
            This_Npc.NpcDialog(This_Player,
            '�Բ�������Ҫ����Ҳ��ܴ������ǹ�ȥ��');
         end;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�Բ�����û��ħ��ͨ��֤���Ҳ��ܴ������ȥ��\ \'+
         '|{cmd}<�뿪/@doexit>\');
      end;
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


Begin
   This_Npc.NpcDialog(This_Player,
   '�����ˣ���Ҳ����һ��������������һ���ܻؼ���\'+
   'ֻҪ������������ս���������˻���ѩɽ������������\'+
   '����ȥʲô�ط����ܴ����أ��ҿ�������һ�̣�\ \'+
  
   '|{cmd}<����ׯ԰/@baodian>              ^<��ȥ����/@move3>            <ʹ������ֵ/@swz>\'+
   '|{cmd}<��ȥħ����/@dongguan>          ^<��ȥħ������/@move61>        ^<��ȥħ������/@move62>\');
end.