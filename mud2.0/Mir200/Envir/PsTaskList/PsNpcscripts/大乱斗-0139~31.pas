program mir2;

procedure _letgo;
begin
  if This_Npc.CheckCurrMapHum = 1 then
  begin
    This_Player.Give('����', 2000000);
    This_Player.AddLF(0, 50);
    This_Player.RandomFlyTo('0159');
    ServerSay('��ϲ���<' + This_Player.Name + '>����˴��Ҷ����ʤ���������50�����200���飡', 5);
  end;
end;

procedure Execute;
var
  hum: integer;
begin
  hum := This_Npc.CheckCurrMapHum;
  if hum = 1 then
    This_Npc.NpcSay('��ϲ������ʤ���������������ȡ�����ˣ�')
  else
    This_Npc.NpcSay('��ǰʣ���������' + inttostr(hum) + '�ˣ�')
end;

begin
  if (GetHour <> 12) and (GetHour <> 19) and (GetHour <> 22) then
  begin
    This_Player.PlayerNotice('���Ҷ����û�п�ʼ��', 0);
    exit;
  end;
  if GetMin <= 10 then
  begin
    This_Player.PlayerNotice('��ʱ��������ȡ���������Եȣ�', 0);
    exit;
  end;
  if This_Npc.CheckCurrMapHum > 1 then
  begin
    This_Player.PlayerNotice('��ͼ�ڻ��������ˣ�������������ý�����', 0);
    exit;
  end;
  This_Npc.NpcDialog(This_Player, '��ϲ���������յ�ʤ�����������ȡ��Ľ����ˣ�' +
    '|{cmd}<��ȡ����/@letgo>');

end.