{********************************************************************

*******************************************************************}

program Mir2;

{$I common.pas}

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '����������\ \'
  +'|{cmd}<����/@sell>\ \'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�߼�����Ʒ�ʺõ��⡣\�ͼ�����ճ�����򱻻��յ��⡣\ \'
    +'|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
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