program Mir2;

const
  THIS_MAP_NAME = 'D2002~07';


procedure checkmon2;
begin
  if CompareText(This_Player.MapName, THIS_MAP_NAME) = 0 then
    if This_Npc.CheckCurrMapMon > 0 then
    begin
      This_Player.SetV(30, 8, 0);
      This_Player.FlyTo('3', 333, 333);
      This_Npc.NpcDialog(This_Player,
        '�ܿ�ϧ,��û��ͨ������,����������������');
    end
    else
    begin
      This_Player.SetV(30, 8, 3);
      This_Npc.CreateMon('', 23, 24, 10, '����', 20);
      This_Player.CallOut(This_Npc, 120, 'TimeOutProc');
      This_Player.PlayerNotice('�ڶ������ܳ��֣��Ͽ��������ǰ�!', 0);
      This_Npc.NpcDialog(This_Player, '�ڶ������ܳ��֣��Ͽ��������ǰ�!');
    end;
end;

procedure checkmon3;
begin
  if CompareText(This_Player.MapName, THIS_MAP_NAME) = 0 then
    if This_Npc.CheckCurrMapMon > 0 then
    begin
      This_Player.SetV(30, 8, 0);
      This_Player.FlyTo('3', 333, 333);
      This_Npc.NpcDialog(This_Player,
        '�ܿ�ϧ,��û��ͨ������,����������������');
    end
    else
    begin
      This_Player.SetV(30, 8, 4);
      This_Npc.CreateMon('', 23, 24, 10, '����', 24);
      This_Player.CallOut(This_Npc, 120, 'TimeOutProc');
      This_Player.PlayerNotice('���������ܳ��֣��Ͽ��������ǰ�!', 0);
      This_Npc.NpcDialog(This_Player, '���������ܳ��֣��Ͽ��������ǰ�!');
    end;
end;

procedure checkmon4;
begin
  if CompareText(This_Player.MapName, THIS_MAP_NAME) = 0 then
    if This_Npc.CheckCurrMapMon > 0 then
    begin
      This_Player.SetV(30, 8, 0);
      This_Npc.NpcDialog(This_Player,
        '�ܿ�ϧ,��û��ͨ������,����������������');
      This_Player.PlayerNotice('�ܿ�ϧ, ��û��ͨ������, ���ܽ��ͷ��', 0);
    end
    else
    begin
      This_Player.SetV(30, 8, 5);    
      This_Player.PlayerNotice('��ϲ��ɹ�ͨ�����ؿ���, ���ڿ�������ȥ���ͷ����', 0);
    end;
  This_Player.FlyTo('3', 333, 333);
end;

procedure callout;
begin
  case This_Player.GetV(30, 8) of
    2: checkmon2;
    3: checkmon3;
    4: checkmon4;
  else
    ;
  end;
end;

procedure TimeOutProc;
begin
  case This_Player.GetV(30, 8) of
    2: checkmon2;
    3: checkmon3;
    4: checkmon4;
  else
    ;
  end;
end;

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _starttest;
begin
  if CompareText(This_Player.MapName, THIS_MAP_NAME) = 0 then
    if This_Player.GetV(30, 8) = 1 then
    begin
      This_Player.SetV(30, 8, 2);
      This_Npc.NpcDialog(This_Player,
        '��һ�����ܳ��֣��Ͽ��������ǰ�!');
      This_Player.PlayerNotice('��һ�����ܳ��֣��Ͽ��������ǰ�!', 0);
      This_Player.CallOut(This_Npc, 120, 'TimeOutProc');
      This_Npc.CreateMon('', 23, 24, 10, '����', 16);
    end
    else
      This_Player.FlyTo('3', 333, 333);
end;

begin
  if This_Player.GetV(30, 8) = 1 then   //equal d8 1
    This_Npc.NpcDialog(This_Player,
      '���������ܿ���İ�,�Ǻ�,�ǾͿ�ʼ��\' +
      'һ����3������,ÿ����ʱ3����,һ��ֻ��9����ʱ��\\' +
      '���޶�ʱ����������ȫ��3������,����͹�����\' +
      '�ҾͿ�������ȥ���ؽ����ķ�ӡͷ����\' +
      '|{cmd}<��ʼ����/@starttest>\' +
      '|{cmd}<���ٿ���һ��/@exit>')
  else
    This_Npc.NpcDialog(This_Player,
      '�����ڽ��ܿ����');
end.

