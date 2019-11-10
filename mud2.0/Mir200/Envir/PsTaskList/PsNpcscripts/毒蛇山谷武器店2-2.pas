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
   '��Ҫ����������?\'+
   '������Ҫ���������.\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�������޺��ˣ��´������ɡ�\ \' +
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
   '������Ҫ����������\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������Щʲô����?\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('ľ��', 50, 1);
  This_NPC.FillGoods('��ľ��', 50, 1);
  This_NPC.FillGoods('��ͭ��', 50, 1); 
  This_NPC.FillGoods('����', 50, 1);
  This_NPC.FillGoods('�̽�', 50, 1);
  This_NPC.FillGoods('ذ��', 50, 1);
  This_NPC.FillGoods('�����', 50, 1);
  This_NPC.FillGoods('��ͭ��', 50, 60);
  This_NPC.FillGoods('����', 50, 60);
  This_NPC.FillGoods('�˻�', 50, 60);
  This_NPC.FillGoods('����', 50, 60);
  This_NPC.FillGoods('���', 10, 60);  
  This_NPC.FillGoods('����', 10, 60);
  This_NPC.FillGoods('�ƻ�', 10, 60);
  This_NPC.FillGoods('��ħ', 10, 60);
  This_NPC.FillGoods('ն��', 10, 60);
  This_NPC.FillGoods('����', 10, 60);
  //����stdmode  
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(43);
end;




Begin
   This_Npc.NpcDialog(This_Player,
   'лл���١�\ \'+
   '|{cmd}<������/@buy>'+AddSpace(' ',20)+'|{cmd}<������/@sell>\'+
   '|{cmd}<��������/@repair>'+AddSpace(' ',18)+'|{cmd}<��������/@s_repair>\'+
   '|{cmd}<�˳�/@doexit>');
end.