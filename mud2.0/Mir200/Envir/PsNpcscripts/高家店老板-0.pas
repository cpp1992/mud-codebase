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
         +'��ӭ������Ҫ��ʲô��\ \'
         +'|{cmd}<���·�/@buy>  ' + addSpace('', 24) + '^<���·�/@sell>  \'
         +'|{cmd}<�޲��·�/@repair> ' + addSpace('', 24) + '^<��������/@s_repair>\'
         +'|{cmd}<�˳�/@doexit>');
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ʲô�����·���\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ�����·����ҿ������һ��������ۡ�\����Ҳ��Ӫͷ����ñ�ӣ���������㲻�ã�\������������������\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '�����޲��·���ͷ����ñ��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�������ȥ�Ѿ��޺���\ \ \|{cmd}<����/@main>'
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
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \|{cmd}<����/@main>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.AddStdMode(15);
  This_Npc.FillGoods('����(��)',50,1);
  This_Npc.FillGoods('����(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1); 
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1);
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.