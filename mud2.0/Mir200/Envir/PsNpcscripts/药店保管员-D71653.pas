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


Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������������Ҫ�Ķ�����\ \ \'+
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
  This_NPC.FillGoods('��ҩ(����)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 200, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);
  //����stdmode 
  This_NPC.AddStdMode(0);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҳ���������������һ��׷Ѱ������¥��\'+
   '��ꡣ���� ��Ŀ��ǰ��Ҳ�Ǽ����£����Ǽ�ס��\'+
   '��ֻ��һ�����������ӳ���һ����������Ҫʲô��\ \'+
   '|{cmd}<��ҩ/@buy> \'+
   '|{cmd}<�˳�/@doexit>');
end.