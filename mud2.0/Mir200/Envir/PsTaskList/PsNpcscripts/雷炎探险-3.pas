                                                                                                     {
*******************************************************************}

Program Mir2;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;                         
begin
  This_Npc.CloseDialog(This_Player);
end;
                                                                                                                             
                     


procedure _golone;
                     
begin
  
         This_Player.Flyto('H301',22,36);
      
    
     
  
end;

Begin
   This_Npc.NpcDialog(This_Player,
   'ǰ�������˹��������������λ����һ��ҪС�ġ�\ \'+
  
   '|{cmd}<ǰ��δ֪��Ѩ/@golone>');
end.