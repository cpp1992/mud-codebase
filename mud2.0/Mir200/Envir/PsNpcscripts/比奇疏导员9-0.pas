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
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',290 + random(3) - 1,618 + random(3) - 1); 
end; 
 
procedure domain; 
begin 
    This_NPC.NpcDialog(This_Player, 
    '����������ĵ�·��Щӵ����Ҫ�Ұ�æ����һ����\ \'  
    +'|{cmd}<��Ҫ����/@goToMonMap>\' 
    ); 
end; 
 
procedure OnInitialize; 
begin 
end; 
 
begin 
 domain; 
end. 