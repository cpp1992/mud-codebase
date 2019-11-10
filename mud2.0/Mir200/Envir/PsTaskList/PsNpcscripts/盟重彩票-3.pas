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
  '��˵��ħ�����ĸ�����������ط�ħ��Ҳ���ִ�½�ˣ�\��ħ�ȵ����������ɭ�ָ�����\�����һ���Ȱ�㲻Ҫȥ��Ƚϰ�ȫһ�㡭��\ \'
  +'|{cmd}<���Ʊ/@buy>\'
  +'���� <��ѯ/@Bingo>\'
  +'|{cmd}<�Ի�./@talkwith>\'
  );
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����ѡ���������Ʒ.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _bingo;
begin
  This_Npc.NpcDialog(This_Player, 
    '������˼���������о��µĲ�Ʊ��\�������������˲�Ʊ���ɾͲ��ܳ齱�ˡ�\�����������µĲ�Ʊϵͳ�Ժ����������Ұɡ�\ \|{cmd}<����/@main>'
    );
end;

procedure _talkwith;
begin
  This_Npc.NpcDialog(This_Player, 
  '��������һ��ͨ����\ͨ�����ͨ��, �������ϵ��������.. \������ٵ���������?? \ \'
  +'|{cmd}<��ͨ���ƶ�/@move1> \'
  +'|{cmd}<����ɽ���ƶ�/@move2> \'
  +'|{cmd}<����/@main>'
  );
end;

procedure _move1;
begin
  This_Npc.NpcDialog(This_Player, 
  '�ƶ���ͨ����Ҫ���  \�����������ʹ�� \�����֧��1000��� \���뻨���Ǯ��? \ \'
  +'|{cmd}<�ƶ�./@pay1> \' 
  +'|{cmd}<�˳�./@talkwith>'
  );
end;

procedure _pay1;
begin
  if This_Player.GoldNum >= 1000 then
  begin
    if compareText(This_Player.MapName, '3') = 0 then
    begin
       This_Player.DecGold(1000);
       This_Player.Flyto('D701',108,155);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player, 
    '���ڿ���Ц��???���ǮҲû��.. \�����ƶ�?? �Ҳ����ټ�����.. \|{cmd}<����/@main>'
    );
  end;
end;

procedure _move2;
begin
  This_Npc.NpcDialog(This_Player, 
  '�ƶ�������ɽ����Ҫ���  \�����������ʹ��? \�����֧��1000��� \���뻨���Ǯ��? \ \ \ \'
  +'|{cmd}<�ƶ�./@pay2> \' 
  +'|{cmd}<�˳�./@talkwith>'
  );
end;

procedure _pay2;
begin
  if This_Player.GoldNum >= 1000 then
  begin
    if compareText(This_Player.MapName, '3') = 0 then
    begin
       This_Player.DecGold(1000);
       This_Player.Flyto('3',521,764);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player, 
    '���ڿ���Ц��???���ǮҲû��.. \�����ƶ�?? �Ҳ����ټ�����.. \|{cmd}<����/@main>'
    );
  end;
end; 
    
//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3); 
  This_Npc.FillGoods('��Ʊ',100,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.