{********************************************************************

*******************************************************************}


PROGRAM Mir2;


Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _goToMonMap;  
begin  
    if This_Player.MapName = 'T1343' then  
    This_Player.Flyto('10123',4 + random(3) - 1,9 + random(3) - 1);  
end;  

Procedure domain;
begin
   This_Npc.NpcDialog(This_Player,
   'ͨ��ǰ���ͨ���Ϳ��Ե�������������ˡ�\ \'+ 
   '|{cmd}<ǰ������/@goToMonMap>\'+ 
   '|{cmd}<�ر�/@doexit>'
   );
end;



Begin
  domain;
end.