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
      if This_Player.Level >= 50 then               
    begin
  
         This_Player.Flyto('H301',22,36);
    end else
     begin
      This_Npc.NpcDialog(This_Player,
      '���ʵ�����㣬��Ҫ50������ǰȥ�鿴!'   );
      
       end;
    
     
  
end;

Begin
   This_Npc.NpcDialog(This_Player,
   'ǰ�������˹��������������λ����һ��ҪС�ġ�\ \'+
  
   '|{cmd}<ǰ���鿴δ֪��Ѩ/@golone>');
end.