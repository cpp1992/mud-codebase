    {
*******************************************************************}
Program Mir2;

Procedure _l1;
begin
   if This_Player.Level < 20 then
   begin
     if compareText(This_Player.MapName, '0') = 0 then
     begin
        This_Player.Flyto('G003', 43 + random(3) - 1, 36 + random(3) - 1);
        This_Npc.CloseDialog(This_Player);
     end; 
   end else
     begin
      This_Npc.NpcDialog(This_Player,
      '��ȼ�����20������ǰ�����߼�����!');
     end; 
   ;    
end;







Begin
   This_NPC.NpcDialog(This_Player,
   '��ӭ��ҵ�½�����棬���������������ݣ����λ����������飿\ \ \'+
   '��Ҫǰ�����ֵ�ͼ�����𣿣�\ \ \'+

   '|{cmd}<ǰ������������ͼһ/@l1>                      \');
end.