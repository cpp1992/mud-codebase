program mir2;

procedure _letgo;
begin
  if (GetHour <> 12) and (GetHour <> 19) and (GetHour <> 22) then
  begin
    This_Player.PlayerNotice('���Ҷ����û�п�ʼ��', 0);
    exit;
  end;
  if GetMin > 5 then
  begin
    This_Player.PlayerNotice('�Ѿ������˽���ʱ���ˣ����ڻ��ʼ5�����ڽ��룡', 0);
    exit;
  end;
  if GetMin > 20 then
  begin
    This_Player.PlayerNotice('��Ѿ���������ȴ��´λ��', 0);
    exit;
  end;
  This_Player.RandomFlyTo('0139~30');
  This_Player.PlayerNotice('���Ҷ������10��ʱ��ʼ�������ĵȴ���', 2);
  This_Player.CallOut(This_Npc, 1, 'luandou');
end;

procedure luandou;
begin
  if not(This_Player.MapName = '0139~30') then
    exit;
  if GetMin = 10 then
  begin
    This_Player.RandomFlyTo('0139~31');
    This_Player.CallOut(This_Npc, 10, 'jieshu');
    This_Player.PlayerNotice('���Ҷ���Ѿ���ʼ������������ң��������ʤ����', 2);
    exit;
  end;
  This_Player.CallOut(This_Npc, 1, 'luandou');
end;

procedure jieshu;
begin
  if not(This_Player.MapName = '0139~31') then
    exit;
  if GetMin > 20 then
  begin
    This_Player.RandomFlyTo('0159');
    This_Player.PlayerNotice('���Ҷ���Ѿ�������', 2);
    exit;
  end;
  This_Player.CallOut(This_Npc, 10, 'jieshu');
end;

begin
  This_Npc.NpcDialog(This_Player,
    'ÿ��12�㣬19�㣬22���������д��Ҷ��\|'
	+'|�����ʱ��ͼ�ڵ����һ����ҽ����<50���/c=red>��<200����/c=red>��\'
    +'|���ʼ���ǰ5������Ҫ�μӻ�����.\'
	+'|����ȴ���(��ʱ���޷�����)��10��ʱ�����˽����͵����Ҷ���ͼ.\'
	+'|��ͼ�����һ����һ�ý�����.\'
    +'|{cmd}<����ȴ���/@letgo>');

end.