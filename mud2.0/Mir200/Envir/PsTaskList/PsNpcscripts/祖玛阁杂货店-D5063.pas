{  
/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   'ѡ����Ҫ�����Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;

begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(200);

  //���ص���
  This_NPC.FillGoods('�������Ѿ�', 200, 1);
  This_NPC.FillGoods('������;�', 200, 1); 
  This_NPC.FillGoods('��ҩ(С��)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 100, 1);
  This_NPC.FillGoods('��ҩ(����)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 200, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);
  //����stdmode 
  This_NPC.AddStdMode(0);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '��������..... ��Ȼ�������....\'+
   '��Ҳ���ߵ�������·�ˣ�ֻ��������������...\'+
   '�Ҳ�֪�����ܲ��ܴ�������·��������ó̡�\ \'+
   '|{cmd}<������Ʒ/@buy> \'+
   '|{cmd}<�˳�/@doexit>');
end.