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
  This_NPC.NpcDialog(This_Player,
   '��ӭ���٣�������һ�����������\'
   +'����û���н�����Ҳ������\'
   +'�����ͬ�⣬����齱�ɡ�����һ�����޶ȣ����Ǯ��������ϣ�\'
   +'��ע�Ⱑ!\ \'
   +'|{cmd}<���Ʊ/@buy>\'
   +'|{cmd}<�˽�/@Bingo>��Ʊ\'
   +'|{cmd}<�˳�/@exit>'
   
   
   );
end;

   



procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����ѡҪ�������Ʒ��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;


procedure _Bingo;
begin
   This_NPC.NpcDialog(This_Player,
   '|  1��    1,000,000���\'
   +'|  2��      200,000���\'
   +'|  3��      100,000���\'
   +'|  4��       10,000���\'
   +'|  5��        1,000���\'
   +'|  6��          500���\ \'
   +'|{cmd}<����/@main>'
   );

end;


//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.FillGoods('��Ʊ',10000,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.