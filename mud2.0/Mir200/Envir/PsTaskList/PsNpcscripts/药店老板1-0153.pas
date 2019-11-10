{
/*******************************************************************************

/*******************************************************************************
}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_Npc.NpcDialog(This_Player,
    '��������ҩ��... ʲô�����Ѿ�֪���ˣ�\�ߣ��ðɣ���ô���˶����Ͻ��߰ɣ����߶����߶��\����'+This_npc.GetCastleGuildName+'�ĳ�Ա�� \��ô�һ�����20%���ۿۣ� ����ʲô����ֵģ� \'
    +'|{cmd}<��ҩƷ/@buy>\'
    +'|{cmd}<��ҩƷ/@sell>\'
    +'|{cmd}<�˳�/@doexit>'
    );
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '�ҵ�����Ҫ������\��ô��ô������������ѡ��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '��������������̫�����ˣ��ҵ������������á�����\�����Ժ�Ͻ��ø�ɶ��ɶȥ�ɣ�\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;


//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(42);
  This_Npc.FillGoods('��ҩ(С��)',100,1);
  This_Npc.FillGoods('ħ��ҩ(С��)',100,1);
  This_Npc.FillGoods('��ҩ(����)',200,1); 
  This_Npc.FillGoods('ħ��ҩ(����)',200,1);
  This_Npc.FillGoods('ǿЧ��ҩ',100,1);
  This_Npc.FillGoods('ǿЧħ��ҩ',100,1);
  This_Npc.FillGoods('��ҩ(С)��',100,1);
  This_Npc.FillGoods('ħ��ҩ(С)��',100,1);
  This_Npc.FillGoods('��ҩ(��)��',100,1);
  This_Npc.FillGoods('ħ��ҩ(��)��',100,1);
  This_Npc.FillGoods('������ҩ',100,1); 
  This_Npc.FillGoods('����ħ��ҩ',100,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.