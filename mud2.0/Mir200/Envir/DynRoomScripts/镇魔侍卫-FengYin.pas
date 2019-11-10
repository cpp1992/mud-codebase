//--------------------------------------------------
//�ű�Npc����ħ����
//���ڵ�ͼ����̬���� FengYin��ʹ�õĵ�ͼ M100 
//���ݣ���������е��µĵ�һ��NPC
//      ��Ҫ����������������һ��ֺ�С�Ӵ�����һ�� 
//��ע��ʹ����0�������15����Ϊ��ʱ������ ֵΪ45 
//      ����������Ϊ���NPC�����²�Ķӳ� 
//-------------------------------------------------- 

program mir2;

const
  roomName = 'FengYin';
  roomNameNext = 'FengYin2'; 
  
procedure _BackMeng;
begin
  if This_Player.DynRoomName = roomName then
  begin
    This_Player.Flyto('3', 327, 330);
  end;
end;

procedure flyToNext(beAlone: Boolean);
var
  roomIdx : Integer;
begin
  if beAlone then
  begin
    This_Player.FlyToDynRoom(roomNameNext, 0, 0);
    This_Player.CallOutParam := roomNameNext;
    This_Player.CallOut(This_Npc, 1800, 'callOutFlyBack');
  end
  else
  begin
    if not This_Player.IsGroupOwner then
    begin
      This_Npc.NpcDialog(This_Player,
        '�㲻�����ڶ���Ķӳ������ܽ�����һ��'
      );
      Exit;
    end; 
    
    This_Player.SetV(0, 15, 45);
    roomIdx := This_Npc.GetAIdleDynRoomIndex(roomNameNext);
    This_Player.GroupFlyToDynRoom(roomNameNext, roomIdx);
    This_Player.GroupCallOut(This_Npc, 'callOutFlyBack', roomNameNext, 1800);  
  end;
end;

procedure _next;
var
  roomIdx : Integer;
begin
  if not (This_Player.DynRoomName = roomName) then
    Exit;
  
  if This_Npc.CheckCurrMapMon > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
      '��һ��Ĺ��ﻹû�б����𣬲��ܽ�����һ��'
    );
    Exit; 
  end;
  
  if This_Npc.CheckCurrMapHum > 1 then
    flyToNext(False)
  else
    flyToNext(True);  
end;

procedure callOutFlyBack;
begin
  if This_Player.DynRoomName = This_Player.CallOutParam then
    This_Player.Flyto('3', 323, 333);  
end;
 
begin
  This_Npc.NpcDialog(This_Player,
    '�����ҵ���˵�����Ѿ����൱��ʵ����\' +
    'ֻҪ���еĹ��ﶼ�������ˣ����Ϳ��Խ�����һ��\' +
    '�ҵ���һ�����ħ��������Ϳ��Խ��ܿ���\' +
    '�ɹ����ܿ��飬�����������Ϳ�������ȥ�����Ʒ\' +
    '�ڶ�����ֻ��20����ʱ��,����ʱ�仹û�����������\' +
    '���ͽ����Զ��ͻ�����\' +
    '|{cmd}<��ս��һ��/@next>\' + 
    '|{cmd}<��������/@BackMeng>'
  );
end.