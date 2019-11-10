{
/***********************************************************************
 
/************************************************************************}

PROGRAM Mir2;

{$I WarehouseAndMbind.pas}
{$I ActiveValidateCom.pas}
{$I GoToMonMap.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;                         
begin
  This_Npc.CloseDialog(This_Player);
end;


Procedure _askmen;
begin
   This_Npc.NpcDialog(This_Player,
   '���ص���ħ�ؽ�����֪��һЩ�й���ħ�޵����飬\'+
   'Ҫô��ȥ�������ʿ��ɡ�\ \'+
   '|{cmd}<�ر�/@doexit>');
end;

Procedure _askbi1;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ϱ�����֪��һЩ�й���ħ�޵����飬\'+
   'Ҫô��ȥ�������ʿ��ɡ�\ \'+
   '|{cmd}<�ر�/@doexit>');
end;


Procedure _qita;
begin
   This_Npc.NpcDialog(This_Player,
   '�������ѯ����Ķ�ħ��Ϣ��\'+
   '��Ȼ���������ޣ�����֪��˭���Ը��������е����ܣ�\'+
   'ֻҪ�����������֪���Ķ�ħ��Ѩ�Ϳ����ˡ�\ \'+
   '|{cmd}<�������/@askmen>      ^<�������/@askbi1>      ^<��������/@askbi1>\'+
   '|{cmd}<����س�/@askbi1>      ^<��Ԩħ��/@askbi1>^\ \'+
   '|{cmd}<����/@main>');
end;


Procedure _qianch;
begin
   if This_Player.GoldNum >=50000 then
   begin
      This_Player.DecGold(50000);
      if CheckOtherMapMon('T132') >= 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '������ָ���㣬\'+
         '����ħ�޾��غ���ǰ������ʱ��ȥ��������ʱ��\ \'+
         '|{cmd}<��5�Ž��ʯ��ǰ����ħ/@paydiamond>');
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '������ָ���㣬��ϧ��ħ�޻�û�г��֡�');
      end;
   end else
   begin
   This_Npc.NpcDialog(This_Player,
   '������û��50000��Ұ�����Ҳ�ﲻ�����ˣ�\');
   end;
end;



Procedure _paymoney;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ѯ�ĸ�ħ��Ķ�ħ��Ϣ�أ�\ \'+
   '|{cmd}<ǯ�泲Ѩ/@qianch>                ^<��ѯ�����Ķ�ħ��Ϣ/@qita>\'+
   '|{cmd}<����/@main>');
end;


Procedure _paydiamond;
begin
   if compareText(This_Player.MapName, '11') = 0  then
   begin
      if This_Player.GetBagItemCount('���ʯ') >= 5 then
      begin
         This_Player.Take('���ʯ',5);
         This_Player.Flyto('11', 320,350);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '����ô��5�Ž��ʯҲû�а���\ \'+
         '|{cmd}<�˳�/@doexit>');
      end;   
   end;   
end;

Procedure _paydia;
begin
   This_Npc.NpcDialog(This_Player,
   '��ֻ������ȥǯ�泲Ѩ��ŵķ�λ������Ҫ����5�Ž��ʯ��\'+
   '�ܲ����ҵ�ǰ��ħѨ��·����Ҫ�����Լ��������ˡ�\ \'+
   '|{cmd}<��5�Ž��ʯ��ǰ����ħ/@paydiamond>\ \'+
   '|{cmd}<����/@main>');
end;


Procedure _dongcha;
begin
  if AutoClothersMapOpen then
  begin
   This_Npc.NpcDialog(This_Player,
   '�ഫ���귨��½��ĳЩ���䣬��һ����ħ������������װ��\'+
   '��Ҫ�����Щ����ͱ�������Ҫɱ����Щ��ħ��������Ӣ\'+
   '��Ϊ�˻����Щ�����ϧ���Լ���������Ϊ���ۣ���Щ��\'+
   '�ɹ��ˣ��������ʿ�����˶�ħ�Ľ��£���λ������\'+
   '��Ҳ��ȥ������Щħ�޵��ټ�������5���ң��Ҿ��ܰ���ȥ\'+
   '�鿴���ǵ���Ӱ������5�Ž��ʯ���Ҿ�������ȥ����ħѨ��\'+
   '|{cmd}<��5���ң�̽��ħ����Ӱ/@paymoney>\'+
   '|{cmd}<��5�Ž��ʯ��ǰ����ħ/@paydia>\'+
   '|{cmd}<����/@main>');
  end ;  
end;


Procedure _tianting;
Begin
   if This_Player.Level >= 8  then
   begin
      if compareText(This_Player.MapName, '11') = 0 then
      begin
         This_Player.RandomFlyTo('0122~1');
      end;
   end else
   begin
       This_Npc.NpcDialog(This_Player,
      '���ĵȼ���δ�ﵽ8������\ \'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;




Procedure _gomo;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ȥ��ͥ��\ \'+
   '|{cmd}<ǰ����ͥ/@tianting>\ \'+
   '|{cmd}<����/@main>                  ^<�ر�/@doexit>');
end;

Procedure _zhuangyuan;
var
f : integer;
Begin
   if This_Player.Level >= 8  then
   begin
     if compareText(This_Player.MapName, '11') = 0 then
     begin
      f := random(5);
      if  f = 4 then
      begin
      This_Player.Flyto('SLDG',323,401);
      end;
      if  f = 3 then
      begin
      This_Player.Flyto('SLDG',319,399);
      end;
      if  f = 2 then
      begin
      This_Player.Flyto('SLDG',321,393);
      end;
      if  f = 1 then
      begin
      This_Player.Flyto('SLDG',325,405);
      end;  
      if  f = 0 then
      begin
      This_Player.Flyto('SLDG',328,404);
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
   '�ڱ߽�����ҡ�Ԫ��ʹ�ߡ�������������ҽ���Ԫ�����ס�\ \'+
   '������Ҫȥ�߽����?\ \'+
   '|{cmd}<ǰ���߽��/@zhuangyuan>');
end;


Procedure _talkwith;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����Ÿ�����Σ�գ��������ص���ȫ�ĵط���\'+
   '�ҿ��԰��㡣\ \'+
   '|{cmd}<�ص�����/@move1>\'+
   '|{cmd}<����/@main>');
end;


Procedure _move1;
Begin
   This_Npc.NpcDialog(This_Player,
   '�ƶ���������Ҫ��ң������������ʹ�� \'+
   '�����֧��2000��ң����뻨���Ǯ��? \ \'+  
   '|{cmd}<�ƶ�/@pay1> \'+ 
   '|{cmd}<�˳�/@doexit>');
end;

Procedure _pay1;
Begin
   if compareText(This_Player.MapName, '11') = 0 then
   begin
      if This_Player.GoldNum >= 2000 then
      begin
         This_Player.DecGold(2000);
         This_Player.Flyto('0',333,274);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '���ڿ���Ц��???���ǮҲû��...\'+
         '�����ƶ�?? �Ҳ����ټ�����... \ \'+ 
         '|{cmd}<����/@main>');
      end;
   end;
end;


procedure _GoldToMonMap_2;
begin
    This_Npc.NpcDialog(This_Player,  
    '����ͨ��ֲ��Ĵ����Թ����������õ���˵�е���ʥװ����\�Ǿ�ȥ��ս<���¶�ħ��˫ͷ��ա�˫ͷѪħ/c=red>\ \'
    +'|{cmd}<ǰ�������Թ�/@GoldToMonMap_2_1>\ \'
    +'|{cmd}<����/@main>' 
  );
end;

procedure _GoldToMonMap_2_1;
begin
      if compareText(This_Player.MapName,'11') = 0 then
      begin
         This_Player.Flyto('11',360 + random(3) - 1,250 + random(3) - 1);
      end;
end; 

procedure _GoToDrug;
begin
  if This_Player.MapName = '11' then
  This_Player.RandomFlyTo('1006'); 
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '�����ˣ���Ҳ����һ��������������һ���ܻؼ���\'+
   'ֻҪ������������ս���������˻���ѩɽ������������\'+
   '����ȥʲô�ط����ܴ����أ��ҿ�������һ�̣�\ \'+
   '|{cmd}<����ħ����Ϣ/@dongcha>\'+
   '|{cmd}<����߽��/@baodian>                ^<ǰ�������Թ�/@GoldToMonMap_2>\'+
   '|{cmd}<����ҩ��/@GoToDrug>                ^<����ȥ/@talkwith>\');
end.