{********************************************************************

*******************************************************************}
PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   'Ҫ����������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�Ѿ��޺��ˡ�\ \' +
    '|{cmd}<����/@main>'
  );
end;

Procedure _s_repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����һ� !���̫������...������������Ĳ����������޲�����\'+
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
   '�����ȥҪ����������\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '����ѡҪ�������Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('ľ��', 50, 1);
  This_NPC.FillGoods('��ͭ��', 50, 1); 
  This_NPC.FillGoods('����', 50, 1);
  This_NPC.FillGoods('ذ��', 50, 1);
  This_NPC.FillGoods('����', 50, 1);
  This_NPC.FillGoods('��˪', 50, 1);
  //����stdmode  
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(43);
end;


Begin
      This_Npc.NpcDialog(This_Player,
      'Ҳ�����Ѿ�����ʶ���ˣ���û�й�ϵ�������ջ��ڡ�\'+
      'ֻҪ���Ǯ���һ����������������Ҫ��\ \'+
      '|{cmd}<������/@buy> ' + addSpace(' ',26) + '^<������/@sell> \'+
      '|{cmd}<��������/@repair> ' + addSpace(' ',24) + '^<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
end.