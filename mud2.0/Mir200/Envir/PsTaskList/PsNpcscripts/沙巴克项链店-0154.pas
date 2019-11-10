{
/*******************************************************************************
}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  'ร��Ǻ�~��ˬ��ع�������. ��ʱ�һ���һ���ܵ͵ļ�\���Ҵ���ʱ. ร��Ǻ�~. �����ֵ��л�ĳ�Ա��\�Ҹ�����ػݼ���ô��? �����?  ร��Ǻ�~ \��˵���ǵ����ε��ϰ�����������������桢��âϵ�����Σ�\Ҫô��ȥ�������������ɣ������ܶ����а�����\'
  +'|{cmd}<����/@buy>����'+ addSpace('', 24) + '|{cmd}<����/@sell>����\'
  +'|{cmd}<��������/@repair>\'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;



procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '�����и�������. \���˲����ڵ�������ร��Ǻ�. \ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�������������������� ?ร��Ǻ�.������... \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '������������?Ϊʲô������µ�....\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥȫ�޺���.  \ \|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\����������ͨ��3����\ \|{cmd}<����/@main>'
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
  This_Npc.AddStdMode(19);
  This_Npc.AddStdMode(20);
  This_Npc.AddStdMode(21);
  This_Npc.FillGoods('������',3,3);
  This_Npc.FillGoods('��ͳ����',3,3);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.  