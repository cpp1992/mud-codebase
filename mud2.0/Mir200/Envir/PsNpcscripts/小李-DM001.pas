{********************************************************************

*******************************************************************}

PROGRAM Mir2;


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
   '������������Ʒ�����·���������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \' +
    '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   'Ҫ��ʲô������\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ȼ�е�󣬵��ǳ������п���ɡ�\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;

procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(180);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 1000, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 1000, 1);
  This_NPC.FillGoods('�������Ѿ�', 1000, 1);
  This_NPC.FillGoods('����', 5, 1); 
  //����stdmode  
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3);
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(28);
  This_NPC.AddStdMode(45);
end;

Begin
   This_Npc.NpcDialog(This_Player,
   'һ·�ϻ��ðɣ�Ҫ��ʲô��\'+
   '���Ǳ��뽲��Ǯ����֪�������ܲ��ܻص��ҡ���\ \'+
   '|{cmd}<����/@buy>\'+
   '|{cmd}<������/@sell>\'+
   '|{cmd}<������/@repair>\'+
   '|{cmd}<�˳�/@doexit>');
end.