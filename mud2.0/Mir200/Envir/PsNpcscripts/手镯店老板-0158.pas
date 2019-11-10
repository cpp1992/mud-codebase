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
  '��ӭ. �ҿ��԰���ʲô��\ \'
  +'|{cmd}<��������/@buy>' + addSpace('', 22) + '^<��������/@sell>\'
  +'|{cmd}<��������/@repair>' + addSpace('', 22) + '^<��������/@s_repair>\'
  +'|{cmd}<��������/@moveout>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _moveout;
begin  
    if This_Player.MapName = '0158' then 
    This_Player.Flyto('3',300 + random(3) - 1,300 + random(3) - 1); 
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

procedure _molongqude;
begin
  This_Npc.NpcDialog(This_Player,
  '������˿��ħ���ǡ�ħ���ǡ�ħ�������ǿ���������ϡ���䱦��\����һ��֮�����޷������Щ����ı���������ӵ�ж��ѵ�Э����\��������ħ�ؽ���ʹ������һ����Ӿ���ѡ�����ǰ�������Թ���\ͨ����᫵ĵ����Թ�����ħ�����Ĺ���ȣ�������¹���,\������ӵ��ǧ����˿,\���¹����й��������Ż�͸¶��Щ���汦���Ļ�÷�����|{cmd}<����/@main>'
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