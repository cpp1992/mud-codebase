
{********************************************************************

  
*******************************************************************}
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
   '��ӭ? ���빺��ʲô?\'
   +'��Ҫ�����...\'
   +'����Ϊ�����ѡ��...\'
   +'|{cmd}<������Ʒ/@buy> \'
   +'|{cmd}<������Ʒ/@sell> \'
   +'|{cmd}<������Ʒ/@repair> \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;
 
procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '���е㰺��,����������������������.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;


procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�����ʲô������?\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����ֻ�޲��·�������\\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.FillGoods('��ҩ(С��)',1000,1);
  This_Npc.FillGoods('ħ��ҩ(С��)',1000,1);
  This_Npc.FillGoods('�������Ѿ�',1000,1);
  This_Npc.FillGoods('����',5,1);
  This_Npc.SetRebate(180);
end;

begin
    domain; 
end.