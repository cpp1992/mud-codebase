{********************************************************************

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

procedure _back;                         
begin
   if CompareText(This_Player.MapName,'F003') = 0 then
   begin
      This_Player.RandomFlyTo('2');
      This_NPC.CloseDialog(This_Player);
   end;
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '�����뿪�л���������ͼ��\ \'+
   '|{cmd}<ȷ��/@back>                       ^<����ս��/@exit>');
end.