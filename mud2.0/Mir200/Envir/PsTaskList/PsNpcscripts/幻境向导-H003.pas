{********************************************************************

*******************************************************************}
program mir2;

{$I common.pas}

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '���������˵�������㹻��ʵ��������һ�㡣\'
   +'�����ھ�ȥ��\ \'
   +'|<ȥ/@a1>\'
   +'|<��ȥ/@exit>'
   );

end;

procedure _a1;
begin
This_Player.Flyto('H004',12, 27);
end;

begin
  domain;
end. 