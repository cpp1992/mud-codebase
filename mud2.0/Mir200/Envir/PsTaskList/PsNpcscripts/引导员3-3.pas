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
    This_Player.RandomFlyTo('D501');
  end
  else
    exit;
end;

begin
   This_Npc.NpcDialog(This_Player,
   '����ͨ�����ǿ��¹������������\'+
   '������������Ĺ���������<���������������ʿ/c=red>��\'+
   '��ǧ��ע���Լ������������������������޷����ĵ����ʡ�\ \'+
   '|{cmd}<��Ҫ������������/@gofei>\ \'
   );
end. 