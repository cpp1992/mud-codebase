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
      '��ӭ.�ҿ���Ϊ����ʲô��\ \'
      +'|{cmd}<������Ʒ/@buy>  \'
      +'|{cmd}<������Ʒ/@sell>  \'
      +'|{cmd}<ѯ��/@questionprize> ��Ʒ��ϸ��� \'
      +'|{cmd}<�˳�/@doexit>');
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ������Ʒ��?\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '����ֻ�չ��������Ѿ�.\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _questionprize;
begin
  This_Npc.NpcDialog(This_Player,
  '����ֻ��Ӫ<�������Ѿ�/@teleport>,\��������˵��<������;�/@teleport2>,|{cmd}<�سǾ�/@steleport>֮��Ķ���\���Դ���������Ū����������ط��򵽡�\ \|{cmd}<����/@main>'
  );
end;


procedure _teleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�������Ѿ���һ�ֿ��԰��㴫�������\'+
  'ȥ���ĳ��򸽽��ľ��ᡣ\ '+
  '�����������ܱ��л�سǾ�Ҫ��һЩ��\'+
  '���ܹ��ܴ�Σ���о��������\ \'+
   '|{cmd}<����/@questionprize>'
  );
end;

procedure _teleport2;
begin
  This_Npc.NpcDialog(This_Player,
  '������;���һ�ֿ��԰��㴫����ǰ\'+
  '��ͼ���λ�õľ��ᡣ\'+
  '���Σ�գ���������������Զ�����ԣ�\'+
  '����Ƿǳ����õġ�\ \'+
  '|{cmd}<����/@questionprize>'
  );
end;

procedure _steleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�سǾ��˵����Զ�ŵ�һ��������ᡣ\'+
  '�����ҵ��ǣ������Ѿ���ʧ�ˡ�\'+
  '��������˵��Щ���ﻹ�����־��ᣬ\'+
  '���ʹ������������̷��ش�ׯ��\ \'+
  '|{cmd}<����/@questionprize>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.FillGoods('�������Ѿ�',1000,1);
  This_Npc.FillGoods('�������Ѿ��',100,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.