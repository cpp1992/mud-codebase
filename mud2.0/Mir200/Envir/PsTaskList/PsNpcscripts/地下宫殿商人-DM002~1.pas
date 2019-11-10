{
/************************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _getback;
Begin
   This_Npc.NpcDialog(This_Player,
   '�뿴Ŀ¼������ʲô������\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_GetBack(This_Player);
end;


Procedure _storage;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ����ʲô������\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_GetBack(This_Player);
end;



Procedure _DoInputDialog1;
begin
   This_Npc.InputDialog(This_Player,'�����룺', 0 , 100);
end;


Procedure P100;
begin
   If This_Npc.InputOK then
   begin
      This_Player.ReqOpenStorage(This_Npc.InputStr);
   end;
end;


Procedure _mbind;
begin
  This_Npc.NpcDialog(This_Player,
  '��֪������ʲô����������������������... \' +
  '��Ҫ��һ������ʲôҪ���еľ�˵�ɣ� \ \' +
  '|{cmd}<��һ�����./@chgtobar>'+addspace(' ',18)+'|{cmd}<���������./@bartogold>\' +
  '|{cmd}<��������ש./@chgtobrick>'+addspace(' ',18)+'|{cmd}<��ש������./@bricktobar>\'+
  '|{cmd}<��ҩƿ�;���/@bind>\'+ 
  '|{cmd}<ȡ��/@doexit>');
end;

Procedure _chgtobar;
begin
   This_Npc.Click_GoldChgBar(This_Player);
end;

Procedure _bartogold;
begin
   This_Npc.Click_BartoGold(This_Player);
end;

Procedure _chgtobrick;
begin
   This_Npc.Click_BartoBrick(This_Player);
end;


Procedure _bricktobar;
begin
   This_Npc.Click_BricktoBar(This_Player);
end;


Procedure _bind;
begin
  This_Npc.NpcDialog(This_Player,
  'Ŀǰ��������ֻ�о����ҩˮ��\'+
  '��Ҫ���� \'+ 
  'Ҫ��������Ҫ100��ҡ� \ \'+
  '|{cmd}<��ҩˮ/@P_bind>'+addspace(' ',20)+'|{cmd}<������/@Z_bind> \ \'+
  '|{cmd}<����/@main>');
end;

Procedure _P_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<ǿЧ��ҩ��/@ch_bind1>  \'+
  '|{cmd}<��ǿЧħ��ҩ/@ma_bind1> \'+ 
  '|{cmd}<����ҩ���У�/@ch_bind2> \'+
  '|{cmd}<��ħ��ҩ���У�/@ma_bind2> \'+
  '|{cmd}<����ҩ/@ch_bind3> \'+
  '|{cmd}<��ħ��ҩ/@ma_bind3> \'+
  '|{cmd}<����/@bind>');
end;

Procedure _ma_bind3;
begin
  if This_Player.GetBagItemCount('ħ��ҩ(С��)') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('ħ��ҩ(С��)') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('ħ��ҩ(С��)',6);
        This_Player.Give('ħ��ҩ(С)��',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@P_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û��Ҫ����ҩˮ������ʲô? \'+
     '��׼����ҩˮ֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;


Procedure _ch_bind3;
begin
  if This_Player.GetBagItemCount('��ҩ(С��)') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('��ҩ(С��)') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('��ҩ(С��)',6);
        This_Player.Give('��ҩ(С)��',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@P_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û��Ҫ����ҩˮ������ʲô? \'+
     '��׼����ҩˮ֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;


Procedure _ma_bind2;
begin
  if This_Player.GetBagItemCount('ħ��ҩ(����)') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('ħ��ҩ(����)') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('ħ��ҩ(����)',6);
        This_Player.Give('ħ��ҩ(��)��',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@P_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û��Ҫ����ҩˮ������ʲô? \'+
     '��׼����ҩˮ֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;



Procedure _ch_bind2;
begin
  if This_Player.GetBagItemCount('��ҩ(����)') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('��ҩ(����)') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('��ҩ(����)',6);
        This_Player.Give('��ҩ(��)��',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@P_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û��Ҫ����ҩˮ������ʲô? \'+
     '��׼����ҩˮ֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;



Procedure _ma_bind1;
begin
  if This_Player.GetBagItemCount('ǿЧħ��ҩ') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('ǿЧħ��ҩ') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('ǿЧħ��ҩ',6);
        This_Player.Give('����ħ��ҩ',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@P_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û��Ҫ����ҩˮ������ʲô? \'+
     '��׼����ҩˮ֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;


Procedure _ch_bind1;
begin
  if This_Player.GetBagItemCount('ǿЧ��ҩ') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('ǿЧ��ҩ') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('ǿЧ��ҩ',6);
        This_Player.Give('������ҩ',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@P_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û��Ҫ����ҩˮ������ʲô? \'+
     '��׼����ҩˮ֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;



Procedure _Z_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<���������Ѿ�/@zum_bind1> \' +
  '|{cmd}<��������;�/@zum_bind2> \' +
  '|{cmd}<���سǾ�/@zum_bind3>  \' +
  '|{cmd}<���л�سǾ�/@zum_bind4>  \' +
  '|{cmd}<����/@bind>');
end;

Procedure _zum_bind4;
begin
  if This_Player.GetBagItemCount('�л�سǾ�') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('�л�سǾ�') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('�л�سǾ�',6);
        This_Player.Give('�л�سǾ��',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@Z_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û�п������ľ��飬����ʲô? \'+
     '��׼����֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;

Procedure _zum_bind3;
begin
  if This_Player.GetBagItemCount('�سǾ�') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('�سǾ�') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('�سǾ�',6);
        This_Player.Give('�سǾ��',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@Z_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û�п������ľ��飬����ʲô? \'+
     '��׼����֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;

Procedure _zum_bind2;
begin
  if This_Player.GetBagItemCount('������;�') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('������;�') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('������;�',6);
        This_Player.Give('������;��',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@Z_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û�п������ľ��飬����ʲô? \'+
     '��׼����֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;

Procedure _zum_bind1;
begin
  if This_Player.GetBagItemCount('�������Ѿ�') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('�������Ѿ�') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('�������Ѿ�',6);
        This_Player.Give('�������Ѿ��',1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@Z_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û�п������ľ��飬����ʲô? \'+
     '��׼����֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ�������ҿ��Ǹ����ܹ���Ŷ��\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \' +
  '|{cmd}<����/@main>');
end;

Procedure _s_repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����һ���̫�����ˣ��������в����������޲���\'+
   '����������ͨ��������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_SRepair(This_Player);
end;


procedure SRepairDone;
begin
   This_Npc.NpcDialog(This_Player,
   '�Ѿ�������ˣ��������ܲ����\ \' +
   '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '������Ҫ������Ʒ��\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������Щʲô��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;

procedure OnInitialize;
var
  i : integer;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 100, 1); 
  This_NPC.FillGoods('��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);
  This_NPC.FillGoods('��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('��ҩ(��)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(��)��', 100, 1);  
  This_NPC.FillGoods('������ҩ', 100, 1);
  This_NPC.FillGoods('����ħ��ҩ', 100, 1);
    This_NPC.FillGoods('�������Ѿ�', 100, 1);
  This_NPC.FillGoods('������;�', 100, 1);
  This_NPC.FillGoods('�����', 10, 1);
  This_NPC.FillGoods('�����(��)', 10, 1);  
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  //����stdmode 
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3); 
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(42);
  This_NPC.AddStdMode(43);
  for i := 19 to 28 do
  This_NPC.AddStdMode(i);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '�㾹Ȼ���ܵ���������\'+
   '��������ôŬ���ķ��ϣ��ҾͰ�����һ�¡�\ \'+
   '|{cmd}<��/@buy>'+addspace(' ',26)+'|{cmd}<��/@sell>\'+
   '|{cmd}<����/@repair>'+addspace(' ',24)+'|{cmd}<��������/@s_repair>\'+ 
   //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
   '|{cmd}<�ֿ����/@storage>'+addspace(' ',20)+//'|{cmd}<�һض���/@getback>\'+
   '|{cmd}<�����־����ҩˮ/@mbind>'+addspace(' ',12)+'|{cmd}<�˳�/@doexit>');
end.