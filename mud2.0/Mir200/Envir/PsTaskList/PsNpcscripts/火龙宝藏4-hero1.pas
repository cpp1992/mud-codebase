program mir2;

procedure _openherobox;
begin
  This_Npc.OpenActionBox(This_Player);
end;

procedure OnInitialize;
begin
  This_Npc.AddNpcProp(13);
end;

begin
  if GetHour >= 23 then
    This_Npc.NpcDialog( This_Player,
      '���ڣ��������Ѱ����ı����ˡ�\' +
      'ע�⣺��Ԥ��6�����ϵİ����ռ䣬\' +
      '���򽫿��ܲ���������ȡ�\ \' +
      '|{cmd}<������������/@openherobox>'
    );
end.