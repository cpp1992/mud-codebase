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
  '�ӻ���Ķ�����ʲô?����ζ��ʲô��������.\�����ǰ������Ը�����Ҫ����Ʒ. \������Ǳ�����'+This_npc.GetCastleGuildName+'���������Ǹ��л��Ա���۵��Ż�..\\'
  +'|{cmd}<������Ʒ/@buy>\'
  +'|{cmd}<������Ʒ/@sell>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;



procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
  '���ǳ��ۻ���������ᣬ�޸��͵� .\���⣬�л�سǾ�����л��Աʹ��.\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
  '���ǳ��۸�����Ʒ...\ \�������Ѱ�, ����ѡ����Ҫ���۵���Ʒ��...\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;




//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(25);
  This_Npc.AddStdMode(30);
  This_Npc.FillGoods('�������Ѿ�',100,1);
  This_Npc.FillGoods('������;�',100,1);
  This_Npc.FillGoods('�л�سǾ�',100,1);
  This_Npc.FillGoods('�����',100,1); 
  This_Npc.FillGoods('�޸���',50,1);
  This_Npc.FillGoods('�������Ѿ��',100,1);
  This_Npc.FillGoods('������;��',100,1);
  This_Npc.FillGoods('�л�سǾ��',100,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.