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
    This_Player.RandomFlyTo('D2061');
  end
  else
    exit;
end;

begin
   This_Npc.NpcDialog(This_Player,
   '����ͨ���������ñ��Ĺ�ħ����\'+
   '������������Ĺ���������<��Ȫ����/c=red>��\'+
   '��ǧ��ע���Լ��������ǹ�ħ���������޷����ĵ����ʡ�\ \'+
   '|{cmd}<��Ҫ�����ħ��/@gofei>\ \'
   );
end. 