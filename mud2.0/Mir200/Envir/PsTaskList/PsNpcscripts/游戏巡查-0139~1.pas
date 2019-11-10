{********************************************************************

*******************************************************************}

program mir2;

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
  '���������ս��ͼ�ͽ�ֹ�һ��ĵ�ͼ�һ�(�����Ƿ�ʹ����\'
  +'��)����������Ϸ���������ˣ�������ҡ��Ĳ�����Ϣ����\'
  +'�ᱻ�ƶ�������ͼ���ڱ���ͼ����ܵ�һЩ���ơ���һ��\'
  +'������ҿ��԰��㴫�ͻ����أ�������۳���30������\'
  +'�֣��ڶ��εĻ����һ�۹�������÷ֺͽ�ң��Ż����\'
  +'�ͻ����أ������εĻ�����Ҳ���������ˡ�\ \'
  +'|{cmd}<�鿴��ֹ�һ��ĵ�ͼ/@lookformap>\'
  +'|{cmd}<��Ҫ������/@outhere>'
  );
end;

procedure _lookformap;
begin
  This_Npc.NpcDialog(This_Player,
  'ʹ������������������ͼ��ֹ�һ���\'
  +'��Ҫ���÷���֤����ս��ͼ��ֹ�һ�������������������\'
  +'��������������߲����������������㡢����֮�䡢ħ��\'
  +'������ţħ���������ʯĹ�߲㡢�����\'
  +'�����ϵ�ͼ�һ��Ľ�ɫ�ᱻ�ƶ�������ҡ�\ \'
  +'|{cmd}<����/@main>'
  );
end;

procedure _outhere;
var
time_out:integer;
begin
  if This_Player.GetS(80,35) < 0 then This_Player.SetS(80,35,0);
  time_out:= This_Player.GetS(80,35);
  if time_out = 0 then
  begin
  This_Npc.NpcDialog(This_Player,
  '�������ǵ�һ�εĻ����һ�۳���30�����÷֣����ܰ���\'
  +'�ͻ����ء�������Ҫע�⣬�Ժ����ڽ�ֹ�һ��ĵ�ͼ��\'
  +'����Ҳ��Ҫʹ����ҡ�������Ϸ�еĶĲ����������ˡ���\'
  +'�ɲ�ϣ���ټ������ˡ�\ \'
  +'|{cmd}<ȷ������Ҫ�ص�����/@outhere_1>'
  );
  end else
  if time_out = 1 then
  begin
  This_Npc.NpcDialog(This_Player,
  '���Ѿ��ǵڶ����������ˣ��һ�۹�������÷ֺͽ�ң�\'
  +'���ܰ����ͻ����ء�������Ҫע�⣬�Ժ����ڽ�ֹ�һ�\'
  +'�ĵ�ͼ�һ���Ҳ��Ҫʹ����ҡ�������Ϸ�еĶĲ�������\'
  +'���ˡ��ҿɲ�ϣ���ټ������ˡ�\ \'
  +'|{cmd}<ȷ������Ҫ�ص�����/@outhere_1>'
  );
  end else
  This_Npc.NpcDialog(This_Player,
  '���Ѿ����߹����ˣ������ڽ�ֹ�һ��ĵ�ͼ�һ���Ҳ��Ҫ\'
  +'ʹ����ҡ�������Ϸ�еĶĲ����������ˡ�\'
  );
end;

procedure _outhere_1;
var
time_out,temp,temp1:integer;
begin
  if This_Player.MapName <> '0139~1' then exit;
  if This_Player.GetS(80,35) < 0 then This_Player.SetS(80,35,0);
  time_out:= This_Player.GetS(80,35);
  if time_out = 0 then
  begin
  This_Player.SetS(80,35,1);
  temp:= This_Player.GetActivePoint;
  if temp >= 30 then temp := 30;
  This_Player.DecActivePoint(temp);
  This_Player.RandomFlyTo('3'); 
  end else
  if time_out = 1 then
  begin
  This_Player.SetS(80,35,2);
  temp:= This_Player.GetActivePoint;
  temp1:= This_Player.GoldNum;
  This_Player.DecActivePoint(temp);
  This_Player.DecGold(temp1);
  This_Player.RandomFlyTo('3'); 
  end else
  This_Npc.NpcDialog(This_Player,
  '���Ѿ����߹����ˣ������ڽ�ֹ�һ��ĵ�ͼ�һ���Ҳ��Ҫ\'
  +'ʹ����ҡ�������Ϸ�еĶĲ����������ˡ�\'
  );
end;


//�ű�ִ�е����
begin
  domain;
end.   