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


Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '�����չ�����������ᣬ����Һ��.\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������ʲô����\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�����(��)', 100, 1);
  This_NPC.FillGoods('���������', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1); 
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_NPC.FillGoods('�������Ѿ�', 1000, 1);
  This_NPC.FillGoods('������;�', 1000, 1); 
  This_NPC.FillGoods('�������Ѿ��', 100, 1);
  This_NPC.FillGoods('������;��', 100, 1);
  This_NPC.FillGoods('�޸���', 50, 1);
  //����stdmode  
  This_NPC.AddStdMode(3);
  This_NPC.AddStdMode(25);
  This_NPC.AddStdMode(30);
end;




Begin
   This_Npc.NpcDialog(This_Player,
   '��ð���������㶫��������������õĺܣ�\'+
   '��������򲻵��ˣ� \ \'+
   '|{cmd}<������Ʒ/@buy>                    ^<������Ʒ/@sell> \'+
   '|{cmd}<�˳�/@doexit>');
end.