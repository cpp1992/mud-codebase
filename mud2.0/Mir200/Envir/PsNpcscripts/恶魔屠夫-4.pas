{********************************************************************

*******************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;
procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '�߼�����Ʒ�ʺõ��⡣�ͼ�����ճ�����򱻻��յ��⡣\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;




procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //����stdmode  
  This_NPC.AddStdMode(1);
  This_NPC.AddStdMode(40);
end;




Begin
   This_Npc.NpcDialog(This_Player,
   '���ģ������Ի���Ҫ���⣿\����°ɡ���ѽ��������������������ɱ���ˡ�\ \'+
   '|{cmd}<����/@sell>\'+
   '|{cmd}<�˳�/@doexit>');
end.