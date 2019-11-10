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
      '��ӭ.  ��л��������.\ \'
      +'|{cmd}<������/@buy>  \'
      +'|{cmd}<������/@sell>  \'
      +'|{cmd}<��������/@repair> \'
      +'|{cmd}<ѯ��/@qweapon>����\'
      +'|{cmd}<��������/@s_repair>\'
      +'|{cmd}<�˳�/@doexit>');
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Щʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Ҫ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ҫ����������\������Ҫ�����������\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�������޺��ˣ���ӭ�´�������\ \|{cmd}<����/@main>'
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

procedure _qweapon;
begin
  This_Npc.NpcDialog(This_Player,
  '������������������ֵ�Ƕ�ֵ��\������ħ���ϵ���������ʱ���ݲ�ͬ�����\�������⹦�ܡ�\���������õ��������������ü�Ǯ��\���ˣ������ļ۸����಻ͬ����۸�Ҳ��ͬ��\���Ǵ����ϣ�����Խ��Խ����\ \'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.AddStdMode(43);
  This_Npc.FillGoods('ľ��',50,1);
  This_Npc.FillGoods('��ͭ��',50,1);
  This_Npc.FillGoods('����',50,1); 
  This_Npc.FillGoods('ذ��',50,1);
  This_Npc.FillGoods('�̽�',50,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.