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
    if This_Player.MapName = 'D701' then  
    This_Player.Flyto('T1341',31 + random(3) - 1,10 + random(3) - 1);  
end;  

Procedure _talk;
begin
   This_Npc.NpcDialog(This_Player,
   '�����Ǹ�����ˣ�̫��л���ˣ�\'+
   'ͨ��ǰ���ͨ���Ϳ��Ե���������ˣ�\'+ 
   '���ҪС�ģ�����������·��\ \'+
   '|{cmd}<ǰ������·/@goToMonMap>\'+ 
   '|{cmd}<֪���ˣ��ټ�/@doexit>');
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '��˵��������Ƽ���\��֪����û����Ը��ȥ�����Ű������ǡ�\ \'+
   '|{cmd}<����ȥ������/@talk>\'+
   '|{cmd}<�˳�/@doexit>');
end.