program mir2;

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _mount;
begin
  This_Npc.NpcDialog(This_Player,
    '������ӵ��ʥ�������' + IntToStr(This_Player.NickLinFu) + '\ \' +
    '|{cmd}<����/@chaxun>'
  )  
end;

procedure _dating;
begin
  This_Npc.NpcDialog( This_Player,
    '��˵���֮�г��˴��������֪�������챦֮�⣬\' +
    '��ʵ��������ʥ�����Ҳ�����ű��ء�\' +
    'ֻ��ʹ��ʥ������ſ��Խ�������е�ʥ�\' +
    'Ѱ���������صı��ء�\ \' +
    '|{cmd}<����/@chaxun>'
  );
end;

procedure _chaxun;
begin
  This_Npc.NpcDialog( This_Player,
    '|{cmd}<��ѯʥ���������/@mount>\ \'  +
    '|{cmd}<����ʥ���/@dating>\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _jinruguan;
begin
  This_Npc.EnterGuan(This_Player);
end;

begin
  This_Npc.NpcDialog(This_Player,
    This_Player.Name + ',�������Ѿ������˽������Ѱ����׼��\'+
    '������������������ս�Լ������������Լ��ı���\'+
    '����һ�����������е�ȡ�������ħ��������\'+
    'ħ���뻤������������ʿǰȥ���ص����Ĺ���\'+
    'ɱ�������Ĺ������п��ܻ��ħ������������ĳ�л\'+
    'ע�⣺����غ�ħ�����κ�һ���ص���С��������������������ͥ\'+
    '|{cmd}<�������Ѱ��/@jinruguan>\ \'+
    '|{cmd}<�رնԻ�/@exit>                        ^<��ѯʥ�����/@chaxun>\');

end.
