{********************************************************************  

*******************************************************************}  
program mir2;  
   
{$I GoToMonMap.pas} 
{$I WarehouseAndMbind.pas} 
{$I ActiveValidateCom.pas}
  
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
        
    This_NPC.NpcDialog(This_Player,  
    '����ͨ�����ǿ��¹������������\������������Ĺ���������<�������/c=red>��<��Ӣ�ӳ�/c=red>��\��ע�ⰲȫ���������ǻ��÷��Ľ�����\ \'   
    +'|{cmd}<ǰ����������һ��/@goToMonMap_6>        ^<ǰ�������������/@goToMonMap_7>\'  
    +'|{cmd}<ǰ��������������/@goToMonMap_8>        ^<ǰ�����������Ĳ�/@goToMonMap_9>\'  
    +'|{cmd}<ǰ�������������/@goToMonMap>        ^<ǰ�������/@goToMonMap_11> \' 
    +'|{cmd}<������Ʒ/@buy>                ^<������Ʒ/@sell>\'
    +ActiveValidateStr  
    );  
end;  

function getXYstr(Num:integer) : string; 
var temp_xy,temp_xy1,temp_xy2 : integer; 
begin 
    temp_xy1 := This_Player.GetActivePoint; 
    temp_xy2 := This_Player.GetTmpActivePoint;
    temp_xy :=temp_xy1+temp_xy2;
    case Num of
    0: result := inttostr(temp_xy);
    1: result := inttostr(temp_xy1);
    2: result := inttostr(temp_xy2);
    end;   
end;  

procedure _goToMonMap;
begin
    if AutoOpen(2) then
    begin
    This_NPC.NpcDialog(This_Player,  
    'Ŀǰ�귨��½ħ��ɧ�ң�ħ���ɳ������µľ�Ӣ����ռ����<��������/c=red>\'+
    '<���/c=red>���˵�ͼ�����쳣���գ����û���㹻�Ĵ������÷����ǲ����\'+
    '���ȥ�����ġ�\'+
    '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
    '����˵�ͼ��Ҫ�ﵽ<30/c=red>�֡�\ \'+  
    '|{cmd}<���������������/@goToMonMap_10>\'  
    +ActiveValidateStr  
    );  
    end else
    This_NPC.NpcDialog(This_Player,  
    'Ŀǰ�귨��½ħ��ɧ�ң�ħ���ɳ������µľ�Ӣ����ռ����<��������/c=red>\'+
    '<���/c=red>���˵�ͼ�����쳣���գ����û���㹻�Ĵ������÷����ǲ����\'+
    '���ȥ�����ġ�\'+
    '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
    '����˵�ͼ��Ҫ�ﵽ<30/c=red>�֡�<����ǰ��ֱ�ӽ��룬'+inttostr(AutoOpenDay(2))+'�������֤��/c=red>\ \'+  
    '|{cmd}<���������������/@goToMonMap_10>\'  
    +ActiveValidateStr  
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