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
  '��ӭ�������и��ָ������·� �����������������һ�֣�\����'+This_npc.GetCastleGuildName+'�ĳ�Ա��Ҫ��20%���ۿ۵ġ�\��Ϊ����Ǳ�����'+This_npc.GetCastleGuildName+'��\' 
   +'|{cmd}<���·�/@buy>' + addSpace('', 18) + '^<���·�/@sell>\'
   +'|{cmd}<�޸��·�/@repair>' + addSpace('', 16) + '^<��������/@s_repair>\'
   +'|{cmd}<�˳�/@doexit>'
   );
end;
   


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫʲô������·���ô����\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ���ĸ��ҿ������һ����һ�����ۡ�\ͷ����ñ�����Ա��̵꣬ \�����Ե�����ȥ������\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����·�����ȥ�ܾ��ˣ��������޲�һ�£�\ \|{cmd}<����/@main>'
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
    '����һ� !���̫������...������������Ĳ����������޲���\���۸������ͨ����������\ \ \|{cmd}<����/@main>' +
    '\ \|{cmd}<����/@main>'
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
  This_Npc.FillGoods('����(��)',50,1);
  This_Npc.FillGoods('����(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1); 
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1);
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('����ս��(��)',50,1);
  This_Npc.FillGoods('����ս��(Ů)',50,1);
  This_Npc.FillGoods('��ħ����(��)',50,1);
  This_Npc.FillGoods('��ħ����(Ů)',50,1);
  This_Npc.FillGoods('ս�����(��)',50,1);
  This_Npc.FillGoods('ս�����(Ů)',50,1);
  This_Npc.SetRebate(100);
end;


//�ű�ִ�е����
begin
     _Normal;
end.