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
  '��л���̵�. ����ר������.��Ҫ������������?\����Ϊ'+This_npc.GetCastleGuildName+'�л��Ա�ṩ20%���Ż�.\��˵���ǵ����ε��ϰ�����������������桢��âϵ�����Σ�\Ҫô��ȥ�������������ɣ������ܶ����а�����\'
  +'|{cmd}<����/@buy>����\'
  +'|{cmd}<����/@sell>����\'
  +'|{cmd}<��������/@repair>\'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Ϊ����ѡ���ʵ�����.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '������������� ?\����Ҳ��������.\ \|{cmd}<����/@main>'
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
    '����ȥ�޺���.\ \|{cmd}<����/@main>'
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