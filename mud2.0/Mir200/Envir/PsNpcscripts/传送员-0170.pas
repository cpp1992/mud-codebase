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
  if This_Player.Level >= 20 then
  begin
    if CompareText(This_Player.MapName,'0170') = 0 then
    begin
      This_Player.RandomFlyTo('3');
    end
    else
    begin
      exit;
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��ĵȼ���δ�ﵽ20�����ϣ�����ǰ�����ء�'); 
  end;
end;

begin
   This_Npc.NpcDialog(This_Player,
   'ֻҪ��ȼ��ﵽ20�����ϣ��ҾͿ�������ǰ�����ء�\ \'+
   '|{cmd}<ǰ������/@give755757>\'); 
end.