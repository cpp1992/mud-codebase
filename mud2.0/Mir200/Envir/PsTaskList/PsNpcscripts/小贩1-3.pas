procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;



procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '��ӭ, �ҿ���Ϊ����ʲô��?\'
   +'��Ҫ�����...\'
   +'����Ϊ�����ѡ��...\ \'
   +'|{cmd}<������Ʒ/@buy> \'
   +'|{cmd}<������Ʒ/@sell> \ '
   +'|{cmd}<�˳�/@exit>'
   );

end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��Ȼ��㣬���ǳ������е�ʱ�����.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;


procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    'Ҫ��ʲô? �չ��·�,������ҩˮ.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.FillGoods('ǿЧ��ҩ',100,1);
  This_Npc.FillGoods('ǿЧħ��ҩ',100,1);
  This_Npc.SetRebate(100);
end;

begin
    domain; 
end.
