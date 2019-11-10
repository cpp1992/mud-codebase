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
  '��л���١�������ʲô�����æ��\ \'
  +'|{cmd}<��������/@repair>\'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����������˾ƣ��һ�úø���ĥ�ġ�\ȫ���������ϡ�\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�޺��ˡ�\�������Ҫ����������������������ɡ�\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\����������ͨ��3����'
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
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.