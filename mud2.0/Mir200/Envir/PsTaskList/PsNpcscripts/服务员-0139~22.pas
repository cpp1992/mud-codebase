{
  ******************************************************************* }

program mir2;

procedure _letgo;
var
  i: integer;
begin
  if (GetHour >= 16) or (GetDay <> 19) then
  begin
    i := Random(1);
    if i = 1 then
      This_Player.Flyto('0', 650, 626)
    else
      This_Player.Flyto('0', 290, 617);
  end
  else
    This_Player.PlayerNotice('���뵽16��ſ����뿪��', 0);
end;

procedure Execute;
begin
  if GetHour >= 11 then
  This_Npc.NPCSay('��������ʽ�������������뿪�ȴ��䣡')
  else
  This_Npc.NPCSay('������19��16����ʽ�����������ڴ�����㣡����');
end;

begin
  This_Npc.NpcDialog(This_Player, '������17��16����ʽ��������ʱ��ſ����뿪�ȴ��䡣\ \' +
    '|{cmd}<��Ҫ��ȥ/@letgo>\');
end.