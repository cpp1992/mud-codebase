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
  This_Npc.NpcDialog(This_Player,
  '��������ʲôҩ��\ \'
  +'|{cmd}<��/@makedrug>ҩ\'
  +'�йض�ҩ<��˵��./@helpmakedrug>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _makedrug;
begin
  This_Npc.Click_Makedrug(This_Player);
end;

procedure _helpmakedrug;
begin
  This_Npc.NpcDialog(This_Player,
  '�����������ҩֻ�����֡�\ \'
  +'|{cmd}<��ɫ����/@helpdrug1>�Ĺ���\'
  +'|{cmd}<��ɫ����/@helpdrug2>�Ĺ���\'
  +'|{cmd}<��ɫ����/@helpmakedrug1>��ԭ��\'
  +'|{cmd}<��ɫ����/@helpmakedrug2>��ԭ��\'
  +'|{cmd}<����/@main>'
  );
end;

procedure _helpdrug1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ������ʹʩ����ʱ���û�ɫ���ۣ�\�ж������������\ \|{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpdrug2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ������ʹʩ����ʱ���û�ɫ���ۣ�\�ж����������������\ \|{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpmakedrug1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ɫ���۵�ԭ���� <ʳ�����Ĺ�ʵ/@helpitem_1> 1����\��֩������ 2��,\ʳ����Ҷ 4����\ \ |{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpmakedrug2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ɫ���۵�ԭ���� <����/@helpitem_2> 1��, Ы�ӵ�β��\1��, ʳ����Ҷ 4����\ \ |{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpitem_1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʳ�˲ݿ��Եõ�ʳ�����Ĺ�ʵ��\����5��ʳ�˲��п��Եõ���ʵ�ģ�\ֻ��1����\ \ |{cmd}<����/@helpmakedrug1>'
  );
end;

procedure _helpitem_2;
begin
  This_Npc.NpcDialog(This_Player,
  'ץ����Ѩ��Ķ������Ϳ��Եõ����ѡ�\������ԲԲ�ļ롣\ \ |{cmd}<����/@helpmakedrug2>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(42);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.