{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _gofei;
begin
  if CompareText(This_Player.MapName,'3') = 0 then
  begin
    This_Player.RandomFlyTo('D711');
  end
  else
    exit;
end;

begin
   This_Npc.NpcDialog(This_Player,
   '����ͨ�����ǿ���Ұ���ʯĹ��\'+
   '������������Ĺ���������<а���ߡ���Ұ��/c=red>��\'+
   '��ǧ��ע���Լ���������ʯĹ�������޷����ĵ����ʡ�\ \'+
   '|{cmd}<��Ҫ����ʯĹһ��/@gofei>\ \'
   );
end. 