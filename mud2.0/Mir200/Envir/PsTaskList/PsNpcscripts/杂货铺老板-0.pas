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
    //if (random(10) = 0) and (This_Player.GetV(9,19) = 1)then
    if (random(10) = 0) and ((This_Player.GetV(11,1) = 3) or (This_Player.GetV(11,1) = 4))then
    begin
       //This_Player.SetV(9,20,1);
       This_Player.SetV(11,1,4);
       This_NPC.NpcDialog(This_Player,
       '�����ҳ�ʦ�� \ '
       +'�ҶԳ�ʦҲ���Ǻ��˽⡣ \ '
       +'���Ǿ�˵����ɽ�ȵ��׼ҷ�װ�ϰ�֪�����£�\'
       +'�����ȥ����һ�¡�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end
      else
      This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���ʲô������\ \'
      +'|{cmd}<����/@buy>  \'
      +'|{cmd}<������/@sell>  \'
      +'|{cmd}<ѯ��/@questionprize> �йض��� \'
      +'|{cmd}<�˳�/@doexit>');
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��Ҫ����ʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _questionprize;
begin
  This_Npc.NpcDialog(This_Player,
  '���ǵ���<�������Ѿ�/@teleport>��|{cmd}<������;�/@teleport2>��<�޸���/@repairoil> �ȵȡ�\��˵���д����������õ���<�سǾ�/@steleport>��\ \|{cmd}<����/@main>'
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

procedure _teleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�������Ѿ��ǽ��Լ�˲���ƶ�����󾭹��Ĵ�ׯ�������飬\��Ȼ����ȣ�����������������\���Ǿ��Լ�һ�������Ѿ��㹻�ˡ�\ \|{cmd}<����/@main>'
  );
end;

procedure _teleport2;
begin
  This_Npc.NpcDialog(This_Player,
  '������;����Լ�Ŀǰ���ڵĵ�ͼ��Ҳ�����ڻ��ڵ����棬\�����ƶ����κεط��������顣\���ܱȽ�Σ�գ����ǻ�ʣ�ܶ�ҩ�Ļ���\ʹ����������������а����ġ�\ \|{cmd}<����/@main>'
  );
end;

procedure _repairoil;
begin
  This_Npc.NpcDialog(This_Player,
  '�޸���������Լ����ŵ��������;������͡�\������Ϊû�����������Ч����\��������������������;�����Խ��ԽС��\������Ǻܹ������������һ������������\����㳤��ʱ������а�����\ \|{cmd}<����/@main>'
  );
end; 

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(25);
  This_NPC.AddStdMode(30);
  This_Npc.FillGoods('�������Ѿ�',100,1);
  This_Npc.FillGoods('������;�',100,1);
  This_NPC.FillGoods('�����', 10, 1);
  This_NPC.FillGoods('�����(��)', 10, 1);
  This_NPC.FillGoods('���������', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1); 
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_Npc.FillGoods('�޸���',50,17);
  This_Npc.FillGoods('�������Ѿ��',100,1);
  This_Npc.FillGoods('������;��',100,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.