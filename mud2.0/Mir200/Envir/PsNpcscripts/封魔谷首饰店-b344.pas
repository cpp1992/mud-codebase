{
/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����������������. \ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ�޺���.\ \' +
    '|{cmd}<����/@main>'
  );
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
   '�Ѿ�������ˣ��������ܲ����\' +
   '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '��������������?\'+
   '����Ҳ��������.\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ���������.\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;

var
i : integer;

begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(200);
  //���ص���
  This_NPC.FillGoods('С����', 3, 3);
  This_NPC.FillGoods('������', 3, 3); 
  This_NPC.FillGoods('������', 3, 3);
  This_NPC.FillGoods('������', 3, 3);
  This_NPC.FillGoods('��ͳ����', 3, 3);
  This_NPC.FillGoods('��ͭ��ָ', 3, 3);
  This_NPC.FillGoods('���ǽ�ָ', 3, 3);
  This_NPC.FillGoods('������ָ', 3, 3);
  //����stdmode 
  This_NPC.AddStdMode(26);
  for i := 19 to 24 do 
  This_NPC.AddStdMode(i);
end;


var
j : integer;

Begin
   j := random(2);
   if j = 1 then 
   begin
      This_Npc.NpcDialog(This_Player,
      '�������ǵ�ù��ǰ����һ���͹ٷ���������\'+
      '��������滤��֪����˭͵����......\'+
      '��˵���ǵ����ε��ϰ�����������������桢��âϵ�����Σ�\'+
      'Ҫô��ȥ�������������ɣ������ܶ����а�����\ \'+
      '|{cmd}<��������/@buy> '+addspace(' ',20)+'|{cmd}<��������/@sell> \'+
      '|{cmd}<��������/@repair> '+addspace(' ',20)+'|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
   end;
   if j = 0 then 
   begin
      This_Npc.NpcDialog(This_Player,
      '�͹٣��ҵ��¶����ÿ�����������������еĿ�ʽ��~~\'+ 
      '��˵���ǵ����ε��ϰ�����������������桢��âϵ�����Σ�\'+
      'Ҫô��ȥ�������������ɣ������ܶ����а�����\ \'+
      '|{cmd}<��������/@buy> '+addspace(' ',20)+'|{cmd}<��������/@sell> \'+
      '|{cmd}<��������/@repair> '+addspace(' ',20)+'|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
   end;
end.