 {
*******************************************************************}
Program Mir2;

Procedure _Buy;
begin
   if This_Player.Level >= 45 then
   begin
     if compareText(This_Player.MapName, 'GA0') = 0 then
     begin
        This_Player.Flyto('0122~1', 13, 40);
        This_Npc.CloseDialog(This_Player);
     end; 
   end else
     begin
      This_Npc.NpcDialog(This_Player,
      '�ȼ�����45����45���Ժ�����!');
     end; 
   ;    
end;







Begin
   This_NPC.NpcDialog(This_Player,
   '��ã�����ׯ԰�ܼң�����ҪЩʲô����\ \ \'+
    '�ȼ�45�����ϵ���ҿ��Դ�������ǰ����ͥ\ \ \'+

   '|{cmd}<����45��������ȥ��ͥ/@Buy>                      \');
end.