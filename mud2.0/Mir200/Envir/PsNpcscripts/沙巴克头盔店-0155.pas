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
  '��~����Щ��̱��˵Ŀ��ף�����������\������̴������ɣ�����'+This_npc.GetCastleGuildName+'�ĳ�Ա\��20%�����⡣��Ϊ����Ǳ�����'+This_npc.GetCastleGuildName+'.\'
  +'|{cmd}<��ͷ��/@buy> \'
  +'|{cmd}<��ͷ��/@sell> \'
  +'|{cmd}<�޲�ͷ��/@repair> \'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@DoExit>'
  );
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ��ʲô�����ͷ����ô����\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Ҫ���Ķ������ҽ�������ۡ�\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '������������޲����ͷ���� \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '���ˣ��������ȥ�Ѿ������ˡ�\ \|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\' +
    '����������ͨ��3����\ \' +
    '|{cmd}<����/@main>'
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
  This_Npc.AddStdMode(15);
  This_Npc.FillGoods('��ͭͷ��',5,1);
  This_Npc.FillGoods('��ʿͷ��',5,1);
  This_Npc.FillGoods('����ͷ��',5,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.  