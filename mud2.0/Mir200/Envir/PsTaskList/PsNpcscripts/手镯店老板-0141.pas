{********************************************************************

*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '��ӭ. �ҿ��԰���ʲô��?\ \'
  +'|{cmd}<��������/@buy> \' 
  +'|{cmd}<��������/@sell> \'
  +'|{cmd}<��������/@repair> \'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��ѡ����Ҫ�������Ʒ.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '��������������?\����Ҳ��������.\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����������������,����. \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ǻõ�.\ \|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ� !���̫������...������������Ĳ����������޲���\���۸������ͨ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|{cmd}<����/@main>'
  );
end;


//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(24);
  This_Npc.AddStdMode(26);
  This_Npc.FillGoods('С����',3,3);
  This_Npc.FillGoods('������',3,3);
  This_Npc.FillGoods('������',3,3);
  This_Npc.FillGoods('��������',3,3);
  This_Npc.FillGoods('ħ������',3,3);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.  