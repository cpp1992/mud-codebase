{

*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _give755757;
begin
  if This_Player.Level >= 45 then
  begin
    if CompareText(This_Player.MapName,'3') = 0 then
    begin
      This_Player.RandomFlyTo('D5071~88');
    end
    else
    begin
      exit;
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��ĵȼ���δ�ﵽ45�����ϣ�����ǰ�����֮�ء�'); 
  end;
end;

begin
   This_Npc.NpcDialog(This_Player,
   '������翵Ŀռ�\'+
   'ɱ������Ĺ�����õ��Ϲű��أ�Ҳ��\'+
   '������ɥ����������\|'+
   '|{cmd}<ǰ�����֮��/@give755757>\'); 
end.