{
  ******************************************************************* }

program mir2;

procedure _letgo;
var
  i: integer;
begin
  if (GetHour >= 20) or (GetDay <> 22) then
  begin
    i := Random(1);
    if i = 1 then
      This_Player.Flyto('0', 650, 626)
    else
      This_Player.Flyto('0', 290, 617);
  end
  else
    This_Player.PlayerNotice('���뵽20��ſ����뿪��', 0);
end;

procedure Execute;
begin
  if GetHour >= 20 then
  This_Npc.NPCSay('��������ʽ�������������뿪�ȴ��䣡')
  else
  This_Npc.NPCSay('������22��20����ʽ�����������ڴ�����㣡����');
end;

begin
  This_Npc.NpcDialog(This_Player, '������22��20����ʽ��������ʱ��ſ����뿪�ȴ��䡣\ \' +
    '|{cmd}<��Ҫ��ȥ/@letgo>\');
end.