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
 
 
 
procedure _goToMonMap; 
begin 
    if This_Player.MapName = 'D618' then 
    This_Player.Flyto('D606',12 + random(3) - 1,28 + random(3) - 1); 
end;

procedure _goToMonMap_1; 
begin 
    if This_Player.MapName = 'D618' then 
    This_Player.Flyto('D613',10 + random(3) - 1,55 + random(3) - 1); 
end;

procedure _goToMonMap_2; 
begin 
    if This_Player.MapName = 'D618' then 
    This_Player.Flyto('D614',65 + random(3) - 1,75 + random(3) - 1); 
end;

procedure _goToMonMap_3; 
begin 
    if This_Player.MapName = 'D618' then 
    This_Player.Flyto('D615',60 + random(3) - 1,85 + random(3) - 1); 
end;
procedure _goToMonMap_4; 
begin 
    if This_Player.MapName = 'D618' then 
    This_Player.Flyto('D616',25 + random(3) - 1,20 + random(3) - 1); 
end;

procedure _goToMonMap_5; 
begin 
    if This_Player.MapName = 'D618' then 
    This_Player.Flyto('D617',45 + random(3) - 1,45 + random(3) - 1); 
end; 
 
procedure domain; 
begin 
    This_NPC.NpcDialog(This_Player, 
    '����ͨ�����ǿ������ĵ��Σ�������������Ĺ���������<������/c=red>��\��С�ĶԴ���ħ�����ߵ����ɲ�����ô���׻��ܵġ�\ \'  
    +'|{cmd}<ǰ�������ײ�/@goToMonMap>            ^<ǰ������֮��/@goToMonMap_1>\'
    +'|{cmd}<ǰ�����沿��/@goToMonMap_2>            ^<ǰ��а������/@goToMonMap_3>\' 
    +'|{cmd}<ǰ����ڤʥ��/@goToMonMap_4>            ^<ǰ���ֲ��ռ�/@goToMonMap_5>\'  
    +'|{cmd}<������Ʒ/@buy>                ^<������Ʒ/@sell>'  
    ); 
end; 

procedure _buy; 
begin 
  This_Npc.NpcDialog(This_Player,  
    '��Ҫ����ʲô������\ \ \|{cmd}<����/@main>' 
  ); 
  This_Npc.Click_Buy(This_Player); 
end; 
 
procedure _Sell; 
begin 
  This_Npc.NpcDialog(This_Player,  
    '������ʲô������\ \ \|{cmd}<����/@main>' 
  ); 
  This_Npc.Click_Sell(This_Player); 
end; 

procedure OnInitialize; 
begin 
 
  This_Npc.AddStdMode(22); 
  This_Npc.AddStdMode(23); 
  This_NPC.AddStdMode(0); 
  This_NPC.AddStdMode(25); 
  This_NPC.AddStdMode(30);
  This_NPC.AddStdMode(42); 
  This_Npc.AddStdMode(3); 
  This_NPC.AddStdMode(5); 
  This_NPC.AddStdMode(6); 
  This_NPC.AddStdMode(43); 
  This_NPC.AddStdMode(4); 
  This_NPC.AddStdMode(10); 
  This_NPC.AddStdMode(11); 
  This_NPC.AddStdMode(15); 
  This_Npc.AddStdMode(24); 
  This_Npc.AddStdMode(26); 
  This_Npc.AddStdMode(19); 
  This_Npc.AddStdMode(20); 
  This_Npc.AddStdMode(21); 
 
   
  This_NPC.FillGoods('��ҩ(С��)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 100, 1); 
  This_NPC.FillGoods('��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);
  This_NPC.FillGoods('��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('��ҩ(��)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(��)��', 100, 1);  
  This_NPC.FillGoods('������ҩ', 100, 1);
  This_NPC.FillGoods('����ħ��ҩ', 100, 1);  
  This_Npc.FillGoods('�������Ѿ�',100,1); 
  This_Npc.FillGoods('������;�',100,1); 
  This_Npc.FillGoods('�����',100,1);  
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1); 
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
   
  This_NPC.FillGoods('ľ��', 50, 1); 
  This_NPC.FillGoods('��ͭ��', 50, 1);  
  This_NPC.FillGoods('����', 50, 1); 
  This_NPC.FillGoods('�̽�', 50, 1); 
  This_NPC.FillGoods('ذ��', 50, 1); 
  This_NPC.FillGoods('����', 50, 1);
  This_NPC.FillGoods('�˻�', 50, 1);
  This_NPC.FillGoods('����', 50, 1);
  This_NPC.FillGoods('���', 10, 1);  
  This_NPC.FillGoods('����', 10, 1);
  This_NPC.FillGoods('�ƻ�', 10, 1);
  This_NPC.FillGoods('��ħ', 10, 1);
  This_NPC.FillGoods('ն��', 10, 1);
  This_NPC.FillGoods('����', 50, 1);
  This_NPC.FillGoods('��˪', 50, 1);
   
  This_Npc.FillGoods('��ͭ��ָ',3,3); 
  This_Npc.FillGoods('���ǽ�ָ',3,3); 
  This_Npc.FillGoods('������ָ',3,3); 
  
  This_Npc.FillGoods('Ƥ������',5,1);
  This_Npc.FillGoods('С����',3,3);
  This_Npc.FillGoods('������',3,3);
  This_Npc.FillGoods('������',3,3);
  This_Npc.FillGoods('��������',3,3);
  This_Npc.FillGoods('ħ������',3,3); 
  
  This_Npc.FillGoods('��ͭͷ��',5,1);
  This_Npc.FillGoods('��ʿͷ��',5,1);
  This_Npc.FillGoods('����(��)',50,1);
  This_Npc.FillGoods('����(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1); 
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1);
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
 
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('��������', 100, 1);
  This_NPC.FillGoods('������ս��', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('ʩ����', 100, 1);
  This_NPC.FillGoods('���ܻ�', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('�׵���', 100, 1);
  This_NPC.FillGoods('�����Ӱ', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ʥս����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('��ħ��', 100, 1);
  This_NPC.FillGoods('�ٻ�����', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('����������', 100, 1);
  This_NPC.FillGoods('�ջ�֮��', 100, 1);
  This_NPC.FillGoods('˲Ϣ�ƶ�', 100, 1);
  This_NPC.FillGoods('��ǽ', 100, 1);
  This_NPC.FillGoods('���ѻ���', 100, 1);
  This_NPC.FillGoods('�����׹�', 100, 1);
  This_NPC.FillGoods('�����䵶', 100, 1);
  This_NPC.FillGoods('Ұ����ײ', 100, 1);
  This_NPC.FillGoods('������ʾ', 100, 1);
  This_NPC.FillGoods('Ⱥ��������', 100, 1);
  This_NPC.FillGoods('ħ����', 100, 1);
  This_NPC.FillGoods('ʥ����', 100, 1);
   
  This_Npc.SetRebate(100); 
end; 
 
begin 
 domain; 
end. 