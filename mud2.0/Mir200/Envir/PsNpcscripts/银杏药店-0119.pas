{
/*******************************************************************************
}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    {$IFDEF Q136_hero}
    This_Npc.NpcDialog(This_Player,
    '��л���٣���ʲô������Ҫ�Ұ�æ��\ \'
    +'|{cmd}<��ҩ/@buy>\'
    +'|{cmd}<��ҩ/@sell>\'
    +'|{cmd}<�˳�/@doexit>'
    );
    {$ELSE}
    This_Npc.NpcDialog(This_Player,
    '��л���٣���ʲô������Ҫ�Ұ�æ��\ \'
    +'|{cmd}<�ϳɻ�����Ʒ/@hecheng>'+ addSpace('', 16) + '|{cmd}<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'
    +'|{cmd}<����������֮�ġ�������/@huolong>\'
    +'|{cmd}<��ҩ/@buy>\'
    +'|{cmd}<��ҩ/@sell>\'
    +'|{cmd}<�˳�/@doexit>'
    );
    {$ENDIF}
end;

procedure _hecheng;
begin
  This_Npc.NpcDialog(This_Player,
  '�һ�û����ȫ��͸���е����ܣ����Ժϳɵ���Ʒ�������ޣ�\��͸���������ϳ�ʲôҩƷ�ɡ�\ \'
  +'|{cmd}<�Ż���¶/@yulu>'+ addSpace('', 16) + '|{cmd}<�Ż�ѩ¶/@xuelu>\'
  +'|{cmd}<Ԫ��/@qidan>'+ addSpace('', 16) + '|{cmd}<������/@qigao>\'
  +'|{cmd}<�鿴�ϳ��䷽/@lookfor>\'
  +'|{cmd}<�ر�/@doexit>'
  );
end;

procedure _yulu;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɾŻ���¶��Ҫ�ϱ�������������������ɲݸ�1��\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<��ʼ�ϳ�/@yulu1>\ \'
  +'|{cmd}<����/@hecheng>'+ addSpace('', 16) + '|{cmd}<�˳�/@doexit>'
  );
end;

procedure _yulu1;
begin
  if This_Player.GetBagItemCount('�ϱ����') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('������') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('�����ɲ�') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else
  begin
    This_Player.Take('�ϱ����',1);
    This_Player.Take('������',1);
    This_Player.Take('�����ɲ�',1);
    This_Player.Give('�Ż���¶',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ�����Ż���¶�Ѿ��ϳɺ��ˣ�'
     ); 
  end;
end;

procedure _xuelu;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɾŻ���¶��Ҫ��ɫ��֦�����޲���Ҷ��\�ؿ൨, ��Ҷ�������ֲ�ҩ��1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<��ʼ�ϳ�/@xuelu1>\ \'
  +'|{cmd}<����/@hecheng>'+ addSpace('', 16) + '|{cmd}<�˳�/@doexit>'
  );
end;

procedure _xuelu1;
begin
  if This_Player.GetBagItemCount('��ɫ��֦��') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('�޲���Ҷ') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('�ؿ൨') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('��Ҷ��') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else
  begin
    This_Player.Take('��ɫ��֦��',1);
    This_Player.Take('�޲���Ҷ',1);
    This_Player.Take('�ؿ൨',1);
    This_Player.Take('��Ҷ��',1);
    This_Player.Give('�Ż�ѩ¶',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ�����Ż�ѩ¶�Ѿ��ϳɺ��ˣ�'
     ); 
  end;
end;

procedure _qidan;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳ�Ԫ����Ҫ��֩�����ݡ����ѡ�Ы�ӵ�β�͸�4����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<��ʼ�ϳ�/@qidan1>\ \'
  +'|{cmd}<����/@hecheng>'+ addSpace('', 16) + '|{cmd}<�˳�/@doexit>'
  );
end;

procedure _qidan1;
begin
  if This_Player.GetBagItemCount('��֩������') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('����') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('Ы�ӵ�β��') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else
  begin
    This_Player.Take('��֩������',4);
    This_Player.Take('����',4);
    This_Player.Take('Ы�ӵ�β��',4);
    This_Player.Give('Ԫ��',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ����Ԫ���Ѿ��ϳɺ��ˣ�'
     ); 
  end;
end;

procedure _qigao;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɻ�������Ҫ��Ҫ���⡢�⡢ʳ����Ҷ��4����\ͬʱ����Ҫʳ�����Ĺ�ʵ1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<��ʼ�ϳ�/@qigao1>\ \'
  +'|{cmd}<����/@hecheng>'+ addSpace('', 16) + '|{cmd}<�˳�/@doexit>'
  );
end;

procedure _qigao1;
begin
  if This_Player.GetBagItemCount('����') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('��') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('ʳ����Ҷ') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('ʳ�����Ĺ�ʵ') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else
  begin
    This_Player.Take('����',4);
    This_Player.Take('��',4);
    This_Player.Take('ʳ����Ҷ',4);
    This_Player.Take('ʳ�����Ĺ�ʵ',1);
    This_Player.Give('������',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ�����������Ѿ��ϳɺ��ˣ�'
     ); 
  end;
end;

procedure _lookfor;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϻ�����ǿ�󣬵�ʹ����������Ҫӵ�С�����֮�ġ�\��֪������˵��������֮�ġ������Ҷ϶���֪��һ��֪���\������֮�ġ�����������ŭ���ģ���������ʹ�úϻ�\�ڡ�����֮�ġ��з��������Ʒ��ŭ�����������\��Ʒ��ʵ�кܶ��֣���ͬ���䷽�ܺϳɳ���ͬ�Ļ�����Ʒ\�һ������ܶ��֡�����֮�ġ�����������������Ҫ���ְɡ�\'
  +'|{cmd}<�Ż���¶/@yulu2>'+ addSpace('', 16) + '|{cmd}<�Ż�ѩ¶/@xuelu2>\'
  +'|{cmd}<Ԫ��/@qidan2>'+ addSpace('', 16) + '|{cmd}<������/@qigao2>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _yulu2;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɾŻ���¶��Ҫ�ϱ�������������������ɲݸ�1��\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<����/@main>'+ addSpace('', 16) +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _xuelu2;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɾŻ�ѩ¶��Ҫ��ɫ��֦�����޲���Ҷ��\�ؿ൨, ��Ҷ�������ֲ�ҩ��1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<����/@main>'+ addSpace('', 16) +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _qidan2;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳ�Ԫ����Ҫ��֩�����ݡ����ѡ�Ы�ӵ�β�͸�4����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<����/@main>'+ addSpace('', 16) +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _qigao2;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɻ�������Ҫ��Ҫ���⡢�⡢ʳ����Ҷ��4����\ͬʱ����Ҫʳ�����Ĺ�ʵ1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<����/@main>'+ addSpace('', 16) +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _huolong;
begin
  This_Npc.NpcDialog(This_Player,
  '������֮�ġ�����������ŭ���ģ���������ʹ�úϻ���\�ڡ�����֮�ġ��з��������Ʒ��ŭ����������ӣ�\�ܶ���Ʒ����������ŭ��ֵ�������ż�����ɴ�������ŭ����\���⡢ʳ����Ҷ���ؿ൨����ҳ�ȶ��ɲ�ͬ�̶�����ŭ����\�Ż�ѩ¶���Ż���¶��Ԫ�񵤡������ࡢ��������Щ��Ʒ��\���ԴӶ����ٲ�ͬ��������ŭ��ֵ��\'
  +'|{cmd}<�ϳɻ�����Ʒ/@hecheng>'+ addSpace('', 16) +'|{cmd}<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _talk;
begin
  This_Npc.NpcDialog(This_Player,
  '��Щҩˮ����������Ĺ������ٶȣ�����ֵ�ȵȣ�\��˵�������������ǻ�ȡһ��ħ����\��ô�õĶ�����Ȼ�������׾Ϳ��Եõ��ģ�\��������Ͽ�Ⱥ��񾭳�����֡�\\ <����/@main>'
  );
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��Ҫʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�����Ҫ���Ķ������һ���ü�Ǯ�ġ�\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;


//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(42);
  This_Npc.FillGoods('��ҩ(С��)',200,1);
  This_Npc.FillGoods('ħ��ҩ(С��)',200,1);
  This_Npc.FillGoods('��ҩ(����)',100,1); 
  This_Npc.FillGoods('ħ��ҩ(����)',100,1);
  This_Npc.FillGoods('ǿЧ��ҩ',100,1);
  This_Npc.FillGoods('ǿЧħ��ҩ',100,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.