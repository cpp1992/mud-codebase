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







//���±߽�ҩ��ԭ�й��ܣ� 
procedure _questionprize;
begin
  This_Npc.NpcDialog(This_Player,
  '����ֻ��Ӫ <�������Ѿ�/@teleport>��\��������˵�� <������;�/@teleport2>��|{cmd}<�سǾ�/@steleport>��<�޸���/@repairoil>֮��Ķ�����\���ǿ��Դ���������Ū����������ط��򵽡�\ \|{cmd}<����/@main>'
  );
end;

procedure _teleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�������Ѿ���һ�ֿ���\���㴫�������ȥ���ĳ��򸽽��ľ��ᡣ\�����������ܱȻسǾ�Ҫ��һЩ��\���ܹ��ܴ�Σ���о��������\ \|{cmd}<����/@questionprize>'
  );
end;

procedure _teleport2;
begin
  This_Npc.NpcDialog(This_Player,
  '������;���һ�ֿ���\���㴫����ǰ��ͼ���λ�õľ��ᡣ\���Σ�գ�������㻹ʣ�кܶ�ҩ�������������Զ�����ԣ�\��ʱ����Ƿǳ����õġ�\ \|{cmd}<����/@questionprize>'
  );
end;

procedure _steleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�سǾ��˵����Զ��\��һ�����淨���������ҵ��ǣ������Ѿ���ʧ�ˡ�\��������˵��Щ���ﻹ�����־��ᣬ\���ʹ������������̷��ش�ׯ��\ \|{cmd}<����/@questionprize>'
  ); 
end;

procedure _repairoil;
begin
  This_Npc.NpcDialog(This_Player,
  '�޸��Ϳ��Իָ����б������;�����\�Ⲣ���������޸�������������õĻ�\��Ҫ�����������;����ὥ���ļ��١�\�����������̫��Ļ���\�ڳ�ʱ�����Ե�ʱ���һƿ�������õġ�\���߸ɴ������ƿ��\ \|{cmd}<����/@questionprize>'
  );
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
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(42);
  This_Npc.FillGoods('��ҩ(С��)',200,1);
  This_Npc.FillGoods('ħ��ҩ(С��)',200,1);
  This_Npc.FillGoods('��ҩ(С)��',100,1); 
  This_Npc.FillGoods('ħ��ҩ(С)��',100,1);
  This_Npc.FillGoods('�������Ѿ�',1000,1);
  This_Npc.FillGoods('�������Ѿ��',100,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ������Ϊ������ʲô��\ \'
      +'|{cmd}<����Ʒ/@buy> \'
      +'|{cmd}<����Ʒ/@sell> \'
      +'|{cmd}<ѯ��/@questionprize> ��Ʒ��ϸ���\'
      +'|{cmd}<�˳�/@doexit>');
end.