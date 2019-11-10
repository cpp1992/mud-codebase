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

procedure _Normal;
begin
  This_Npc.NpcDialog(This_Player,
  '��ӭ..   ����Ҫ��������������\��������Ǳ�������'+This_npc.GetCastleGuildName+'����� \�����ر��'+This_npc.GetCastleGuildName+'��Ա�ṩ20%���ۿۡ�\'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@doexit>'
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
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.SetRebate(100);
end;


//�ű�ִ�е����
begin
      _Normal;
end.