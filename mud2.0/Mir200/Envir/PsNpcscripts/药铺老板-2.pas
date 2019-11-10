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

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '���ҿ�����Ķ�����\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '�������ʲôҩƷ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;

Procedure _news;
Begin
   This_Npc.NpcDialog(This_Player,
   'ûʲô�ر��������������PK�Ļ�������Ҳ��ͷ����Ŷ��\ \'+
   '|{cmd}<����/@main>');
end;



procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 200, 1); 
  This_NPC.FillGoods('��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);  
  This_NPC.FillGoods('������ҩ', 100, 1);
  This_NPC.FillGoods('����ħ��ҩ', 100, 1);
  //����stdmode  
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(25);
  This_NPC.AddStdMode(42);
end;




Begin
   This_Npc.NpcDialog(This_Player,
   '��ӭ������Ҫ��ʲô��\ \'+
   'Ҫ�ڿ�Ļ����㻹�Ƕ����Ҵ���һЩ��Ϣ�ĺ�\ \'+
   '|{cmd}<��ҩƷ/@buy> ' + addspace(' ',20) + '^<��ҩƷ/@sell> \'+
   '|{cmd}<������Ϣ/@news>\ \'+
   '|{cmd}<�˳�/@doexit>');
end.