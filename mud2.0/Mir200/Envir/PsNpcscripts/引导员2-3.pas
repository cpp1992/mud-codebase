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
    This_Player.RandomFlyTo('D601');
  end
  else
    exit;
end;

begin
   This_Npc.NpcDialog(This_Player,
   '����ͨ�����ǿ������ĵ��Σ�\'+
   '������������Ĺ���������<а��ǯ��/c=red>��\'+
   '��ǧ��ע���Լ��������ǵ����������޷����ĵ����ʡ�\ \'+
   '|{cmd}<��Ҫ�������һ��/@gofei>\ \'
   );
end. 