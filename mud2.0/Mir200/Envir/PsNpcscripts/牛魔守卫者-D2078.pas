{******************************************************************** 

*******************************************************************} 
program mir2;  
  
{$I common.pas} 
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
  
  
  
procedure _goToMonMap;  
begin  
    if This_Player.MapName = 'D2078' then  
    This_Player.RandomFlyTo('D2079');  
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
   
procedure domain;  
begin
    if AutoOpen(2) then
    begin
    This_NPC.NpcDialog(This_Player,  
    'Ŀǰ�귨��½ħ��ɧ�ң�ħ���ɳ������µľ�Ӣ����ռ����<ţħ����/c=red>\'+
    '<����/c=red>���˵�ͼ�����쳣���գ����û���㹻�Ĵ������÷����ǲ����\'+
    '���ȥ�����ġ�\'+
    '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
    '����˵�ͼ��Ҫ�ﵽ<30/c=red>�֡�\ \'+    
    '|{cmd}<����ţħ�������/@goToMonMap>\'  
    +ActiveValidateStr  
    );
    end else
    This_NPC.NpcDialog(This_Player,  
    'Ŀǰ�귨��½ħ��ɧ�ң�ħ���ɳ������µľ�Ӣ����ռ����<ţħ����/c=red>\'+
    '<����/c=red>���˵�ͼ�����쳣���գ����û���㹻�Ĵ������÷����ǲ����\'+
    '���ȥ�����ġ�\'+
    '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
    '����˵�ͼ��Ҫ�ﵽ<30/c=red>�֡�<����ǰ��ֱ�ӽ��룬'+inttostr(AutoOpenDay(2))+'�������֤��/c=red>\ \'+    
    '|{cmd}<����ţħ�������/@goToMonMap>\'  
    +ActiveValidateStr  
    );  
end;  
 
  
begin  
 domain;  
end.  