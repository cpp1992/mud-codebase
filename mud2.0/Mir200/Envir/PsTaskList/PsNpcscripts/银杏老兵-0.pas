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
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',335 + random(3) - 1,270 + random(3) - 1); 
end;

procedure _goToMonMap_1; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',610 + random(3) - 1,585 + random(3) - 1); 
end;  
 
procedure domain; 
begin 
    
    This_NPC.NpcDialog(This_Player, 
    '��ȥ��������ҿ�������һ�̡�\ \'  
    +'|{cmd}<ǰ�����氲ȫ��/@goToMonMap>             ^<ȥ��Χ����/@goToMonMap_1>\' 
    +ActiveValidateStr
    ); 
end; 
 
procedure OnInitialize; 
begin 
end; 


begin 
 domain; 
end. 