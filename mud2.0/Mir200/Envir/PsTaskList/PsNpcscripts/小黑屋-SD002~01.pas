{
*******************************************************************}

program Mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _goback;
begin
  //if This_Player.Level >= 30 then
  if 1 = 1 then
  begin
    if CompareText(This_Player.MapName,'SD002~01')= 0 then
    begin
      This_Player.RandomFlyTo('3');
    end
    else
      exit; 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��δ�ﵽ30�������ܷ������ء�\ \' 
    );
  end;
end;

begin
  This_Npc.NpcDialog(This_Player,
 '�ҿ������㷵�����ء�\ \'+
 '|{cmd}<��������/@goback>\'
 );
end. 