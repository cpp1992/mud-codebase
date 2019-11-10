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
 
 
procedure _goToMonMap; 
begin 
    if This_Player.MapName = 'D10013' then 
    This_Player.Flyto('D1002',125 + random(3) - 1,185 + random(3) - 1); 
end; 
 
procedure domain; 
begin 
    This_NPC.NpcDialog(This_Player, 
    '����ҪȥѰ�Ҵ�˵�еĳ���װ��ô���Ǿ�ȥ����<���¶�ħ/c=red>��\�����µ�<˫ͷ��գ�˫ͷѪħ/c=red>�ɡ�\ \'  
    +'|{cmd}<ǰ��/@goToMonMap>\' 
    +'|{cmd}<������Ʒ/@buy>            ^<������Ʒ/@sell>' 
    ); 
end; 
 
procedure OnInitialize; 
begin 
 
  This_Npc.AddStdMode(22); 
  This_Npc.AddStdMode(23); 
  This_NPC.AddStdMode(0); 
  This_NPC.AddStdMode(25); 
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
 
   
    This_NPC.FillGoods('��ҩ(С��)', 200, 1); 
    This_NPC.FillGoods('ħ��ҩ(С��)', 200, 1);  
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