{********************************************************************

*******************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _Exit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ���Ķ������ң��һ����ü�Ǯ�ġ�\'+
   '���ǻ��չ�����ҩ��\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫʲô��Ʒ��\'+
   '�������е������Ѿ���һЩ�ɣ�\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;



Procedure _QUEST;
begin
   This_Npc.NpcDialog(This_Player,
   '��֪��������ʿ�� \'+
   '����һ����ͷ�� \'+
   '����������ħ... \�������ֹ����Ҫ���İ�\ \'+
   '|{cmd}<����/@main>');
end;

procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 200, 1); 
  This_NPC.FillGoods('�������Ѿ�', 1000, 1);
  //����stdmode  
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3);
  This_NPC.AddStdMode(42);
end;



Begin
    This_Npc.NpcDialog(This_Player,
    '��ӭ������Ϊ������ʲô��\ \'+
    '|{cmd}<����Ʒ/@buy>                         ^<����Ʒ/@sell> \'+
    '|{cmd}<�Ի�/@QUEST>\'+
    '|{cmd}<�˳�/@exit>');
end.           