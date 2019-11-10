{********************************************************************

*******************************************************************}

Program Mir2;


{$I common.pas}




Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����޸��·���ͷ����ñ�ӡ�\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '�����޲��úܲ���\ \ \' +
  '|{cmd}<����/@main>');
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
   '�����ȥҪ�����·����Ҹ����ۡ�\'+
   'ͷ����ñ��Ҳ�չ���\'+
   '��������һ�����ɡ�\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������ʲô�����·���\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


Procedure _duihua1;
Begin
   This_Npc.NpcDialog(This_Player,
   '����Ĳ��������ɷֶ��ܸ߰���\ \'+
   '|{cmd}<�ж�߰���/@duihua2>\');
end;


Procedure _duihua2;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����ɳ�Ϳ˳�¥��ô�߰ɣ�\ \'+
   '|{cmd}<����/@main>                         ^<�뿪/@doexit>');
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('����(��)', 50, 1);
  This_NPC.FillGoods('����(Ů)', 50, 1); 
  This_NPC.FillGoods('���Ϳ���(��)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(Ů)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(��)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(Ů)', 50, 1);
  This_NPC.FillGoods('�ؿ���(��)', 50, 3);
  This_NPC.FillGoods('�ؿ���(Ů)', 50, 3);
  This_NPC.FillGoods('ħ������(��)', 50, 3);
  This_NPC.FillGoods('ħ������(Ů)', 50, 3);  
  This_NPC.FillGoods('���ս��(��)', 50, 3);
  This_NPC.FillGoods('���ս��(Ů)', 50, 3);
  This_NPC.FillGoods('����ս��(��)', 50, 1);
  This_NPC.FillGoods('����ս��(Ů)', 50, 1);
  This_NPC.FillGoods('��ħ����(��)', 50, 1);
  This_NPC.FillGoods('��ħ����(Ů)', 50, 1);
  This_NPC.FillGoods('ս�����(��)', 50, 1);
  This_NPC.FillGoods('ս�����(Ů)', 50, 1);  
  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
end;


Begin
      This_Npc.NpcDialog(This_Player,
      '��Ȼ�Ҵ����ƣ������Ծ��Ǹ��ò÷죬\'+
      'ֻ�ǲ�̫ϲ��ϴ�·����ѡ�\'+
      '���������·��أ����������·���\ \'+
      '|{cmd}<���·�/@buy>' + addspace(' ',26) + '^<���·�/@sell>\'+
      '|{cmd}<�޸��·�/@repair>' + addspace(' ',24) + '^<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
end.