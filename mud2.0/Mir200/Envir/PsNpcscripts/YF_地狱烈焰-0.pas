{******************************************************************** 


*******************************************************************} 
program mir2; 
 
{$I common.pas} 
{$I ActiveValidateCom.pas}
{$I GoToMonMap.pas}
 
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
    This_Player.Flyto('T139',19,24); 
end; 
 
procedure domain; 
begin 
    if AutoClothersMapOpen then
    begin 
    This_NPC.NpcDialog(This_Player, 
    '����ͨ���������棬��Ҫ�Ұ������\ \'  
    +'|{cmd}<����ȥ��������/@goToMonMap>\' 
    ); 
    end; 
end; 
 
procedure OnInitialize; 
begin 
end; 
 
begin 
 domain; 
end. 