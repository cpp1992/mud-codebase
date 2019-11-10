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
   '��ӭ������Ҫ��ʲô��\ \'
   +'|{cmd}<���·�/@buy>' + addSpace('', 16) + '^<�޲��·�/@repair>\'
   +'|{cmd}<���·�/@sell>' + addSpace('', 16) + '^<��������/@s_repair>\'
   +'|{cmd}<��������/@moveout>\'
   +'|{cmd}<�˳�/@doexit>'
   );
end;

procedure _moveout;
begin  
    if This_Player.MapName = '0149' then 
    This_Player.Flyto('3',313 + random(3) - 1,303 + random(3) - 1); 
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
    '����Ҫ�����·����ҿ������һ��������ۡ�\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '�����ȥҪ�޲����·���\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�����޲��úܲ���\ \ \|{cmd}<����/@main>'
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
procedure OnInitialize;
begin
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.FillGoods('����(��)',50,1);
  This_Npc.FillGoods('����(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1); 
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1);
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('����ս��(��)',50,1);
  This_Npc.FillGoods('����ս��(Ů)',50,1);
  This_Npc.FillGoods('��ħ����(��)',30,1);
  This_Npc.FillGoods('��ħ����(Ů)',30,1);
  This_Npc.FillGoods('ս�����(��)',30,1);
  This_Npc.FillGoods('ս�����(Ů)',30,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.