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
  if CompareText(This_Player.MapName,'5') = 0 then
  begin
    This_Player.RandomFlyTo('D2051');
  end
  else
    exit;
end;

begin
   This_Npc.NpcDialog(This_Player,
   '����ͨ�����Ƕ��齩ʬ��ʬħ����\'+
   '������������Ĺ���������<����ʬ��/c=red>��\'+
   '��ǧ��ע���Լ���������ʬħ���������޷����ĵ����ʡ�\ \'+
   '|{cmd}<��Ҫ����ʬħ��/@gofei>\ \'
   );
end. 