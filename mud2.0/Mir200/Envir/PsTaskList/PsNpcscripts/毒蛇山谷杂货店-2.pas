{
*******************************************************************}

PROGRAM Mir2;


Procedure _doexit;
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
  This_NPC.FillGoods('�������Ѿ�', 1000, 1);
  This_NPC.FillGoods('������;�', 1000, 1); 
  This_NPC.FillGoods('�������Ѿ��', 100, 1);
  This_NPC.FillGoods('������;��', 100, 1);
  This_NPC.FillGoods('�޸���', 50, 1);
  //����stdmode  
  This_NPC.AddStdMode(3);
  This_NPC.AddStdMode(25);
end;




Begin
   This_Npc.NpcDialog(This_Player,
   '��л. �ҿ���Ϊ����ʲô��?\ \'+
   '|{cmd}<������Ʒ/@buy>                    ^<������Ʒ/@sell> \'+
   '|{cmd}<�˳�/@doexit>');
end.