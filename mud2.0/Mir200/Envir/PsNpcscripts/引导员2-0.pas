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
  if CompareText(This_Player.MapName,'0') = 0 then
  begin
    This_Player.RandomFlyTo('D001');
  end
  else
    exit;
end;

begin
   This_Npc.NpcDialog(This_Player,
   '����ͨ���������õ����˹�Ĺ��\'+
   '������������Ĺ���������<���þ���/c=red>��\'+
   '��ǧ��ע���Լ��������ǹ�Ĺ�������޷����ĵ����ʡ�\ \'+
   '|{cmd}<��Ҫ�������˹�Ĺ/@gofei>\ \'
   );
end. 