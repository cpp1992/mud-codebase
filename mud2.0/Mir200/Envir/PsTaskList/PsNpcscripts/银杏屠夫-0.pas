{
/*******************************************************************************
}

program Mir2;

{$I common.pas}

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '��������������\ \'
  +'|{cmd}<����/@sell>\'
  +'|{cmd}<ѯ��/@meathelp>\' 
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�߼�����Ʒ�ʺõ��⡣\�ͼ�����ճ�����򱻻��յ��⡣\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _meathelp;
begin
  This_Npc.NpcDialog(This_Player,
  '����ԴӼ���¹�����ǵ����ϵõ��⡣ ���ȣ�ɱ�����ǣ���Ϊ����\����Ĺ����»ᷴ����Ȼ�����ߵ�ʬ���Աߵĵط���סALT��\ͬʱ�������������ʬ��Ȼ����ͻῴ���Լ������г���顣\����֮����İ�����ͻ����һ����ζ����顣���������ܵ�\�����и��������⡣���ǣ� ʹ��ħ����ʹ��������½���0��\ \|{cmd}<����/@main>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(40);
  This_Npc.AddStdMode(1);
  This_Npc.SetRebate(100);
end;  

//�ű�ִ�е����
begin
  domain;
end.