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
 
 
 
procedure _goToMonMap1; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',426 + random(3) - 1,160 + random(3) - 1); 
end; 

procedure _goToMonMap2; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',251 + random(3) - 1,172 + random(3) - 1); 
end; 

procedure _goToMonMap3; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',414 + random(3) - 1,348 + random(3) - 1); 
end; 

procedure _goToMonMap4; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',256 + random(3) - 1,341 + random(3) - 1); 
end; 
 
procedure domain; 
begin 
    This_NPC.NpcDialog(This_Player, 
    '����������ĵ�·��Щӵ����Ҫ�Ұ�æ����һ����\ \'  
    +'|{cmd}<��Ҫȥ��������/@goToMonMap1>\' 
    +'|{cmd}<��Ҫȥ��������/@goToMonMap2>\'
    +'|{cmd}<��Ҫȥ���ϳ���/@goToMonMap3>\'
    +'|{cmd}<��Ҫȥ���ϳ���/@goToMonMap4>\'
    ); 
end; 
 
procedure OnInitialize; 
begin 
end; 
 
begin 
 domain; 
end. 