
{********************************************************************

*******************************************************************}
{$I common.pas}

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '�㾹Ȼ���ܵ���������\'
   +'��������ô�����ķ��ϣ��ҾͰ�����һ�¡�\'
   +'˳�������һ�£�һ������þ��Թ�������Ҳ���ܻ�ͷ�ˣ�\ \'
   +'|<��/@buy>\'
   +'|<��/@sell>\'
   +'|<����/@repair>\'
   +'|<��������/@s_repair>\'
   +'|<�˳�/@exit>'
   );
end;

procedure _Repair;
begin
   This_NPC.NpcDialog(This_Player,
   '��Ҫ������?\'
   +'�ҿ��Ǹ����ܹ���Ŷ��\\'
   );

  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \|<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ� !���̫������...������������Ĳ����������޲���\���۸������ͨ����������\ \ \|<����/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|<����/@main>'
  );
end;




procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Щʲô?\ \ \|<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Ҫ������Ʒ.\ \ \|<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;


//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.AddStdMode(43);
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.AddStdMode(15);
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(42);
  This_Npc.AddStdMode(25);
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(19);
  This_Npc.AddStdMode(20);
  This_Npc.AddStdMode(21);
  This_Npc.AddStdMode(22);
  This_Npc.AddStdMode(23);
  This_Npc.AddStdMode(24);
  This_Npc.AddStdMode(26);
  This_Npc.FillGoods('��ҩ(С��)',100,1);
  This_Npc.FillGoods('ħ��ҩ(С��)',100,1);
  This_Npc.FillGoods('��ҩ(����)',100,1);
  This_Npc.FillGoods('ħ��ҩ(����)',100,1);
  This_Npc.FillGoods('ǿЧ��ҩ',100,1);
  This_Npc.FillGoods('ǿЧħ��ҩ',100,1);
  This_Npc.FillGoods('��ҩ��С����',100,1);
  This_Npc.FillGoods('ħ��ҩ��С����',100,1);
  This_Npc.FillGoods('��ҩ���У���',100,1);
  This_Npc.FillGoods('ħ��ҩ���У���',100,1);
  This_Npc.FillGoods('������ҩ',100,1);
  This_Npc.FillGoods('����ħ��ҩ',100,1);
  This_Npc.FillGoods('�������Ѿ�',100,1);
  This_Npc.FillGoods('������;�',100,1);
  This_Npc.FillGoods('�����',10,1);
  This_Npc.FillGoods('���������',10,1);
  This_Npc.FillGoods('��ɫҩ��(����)',10,1);
  This_Npc.FillGoods('��ɫҩ��(����)',10,1);

end;

//�ű�ִ�е����
begin
  domain;
end.