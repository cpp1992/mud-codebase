{********************************************************************

*******************************************************************}

program Mir2;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '��ӭ����,��ʲô������Ҫ�Ұ�æ��\ \'
  +'|{cmd}<����/@buy>\'
  +'|{cmd}<����/@sell>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����ѡҪ�����ʳ�\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ʒ�ʺõ��⣬�������Ұɡ�\'
    +'�һ����ü�Ǯ��\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

//��ʼ������
procedure OnInitialize;
begin
  This_NPC.FillGoods('����', 1000, 60);
  This_Npc.AddStdMode(40);
  This_Npc.AddStdMode(1);
  This_Npc.SetRebate(100);
end;  

//�ű�ִ�е����
begin
  domain;
end.