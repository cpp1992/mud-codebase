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
  if CompareText(This_Player.MapName,'2') = 0 then
  begin
    This_Player.RandomFlyTo('D421');
  end
  else
    exit;
end;

begin
   This_Npc.NpcDialog(This_Player,
   '����ͨ�����ǽ�ʬ��ɽ�ȿ�����\'+
   '������������Ĺ���������<ʬ��/c=red>��\'+
   '��ǧ��ע���Լ��������ǿ����������޷����ĵ����ʡ�\ \'+
   '|{cmd}<��Ҫ����ɽ�ȿ���/@gofei>\ \'
   );
end. 