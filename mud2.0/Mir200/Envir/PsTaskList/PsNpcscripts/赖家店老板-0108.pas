{********************************************************************

*******************************************************************}

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
      '��ӭ���٣���ʲô������Ҫ�Ұ�æ��\ \'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<�˳�/@doexit>');
   
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