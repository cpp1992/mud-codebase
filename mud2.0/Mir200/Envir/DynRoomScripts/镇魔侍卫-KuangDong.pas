//--------------------------------------------------
//�ű�Npc����ħ����
//���ڵ�ͼ����̬���� KuangDong��ʹ�õĵ�ͼ D411 
//���ݣ���������п󶴵��µĵ�һ��NPC
//      ��Ҫ����������������һ��ֺ�С�Ӵ�����һ�� 
//��ע��ʹ����0�������15��16����Ϊ��ʱ���� 
//-------------------------------------------------- 


program mir2;

const
  roomName = 'KuangDong';
  roomNameNext = 'KuangDong2'; 
  
procedure _BackMeng;
begin
  if This_Player.DynRoomName = roomName then
  begin
    This_Player.Flyto('3', 327, 330);
  end;
end;

procedure _next;
var
  roomIdx : Integer;
begin
  
  if not (This_Player.DynRoomName = roomName) then
    Exit;
 
  if not This_Player.IsGroupOwner then
  begin
    This_Npc.NpcDialog(This_Player,
      '�㲻�����ڶ���Ķӳ�,���ܽ�����һ��'
    );
    Exit;
  end; 
  
  if This_Npc.CheckCurrMapMon <> 0 then
  begin
    This_Npc.NpcDialog(This_Player,
      '��һ��Ĺ��ﻹû�б����𣬲��ܽ�����һ��'
    );
    Exit; 
  end;
  //�����˭���NPC
  This_Player.SetV(0, 15, 75);  
  This_Player.SetV(0, 16, 50);   
  //���ӷɵ��ڶ��� 
  This_Player.GroupCallOut(This_Npc, 'callOutFlyBack', roomNameNext, 1200);
  roomIdx := This_Npc.GetAIdleDynRoomIndex(roomNameNext);
  This_Player.GroupFlyToDynRoom(roomNameNext, roomIdx);
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
    '|{cmd}<�Ҷ������ħ�ؽ����Ϳ��Կ�ʼ��һ�ص���ս>��\' +
    '�ڶ���������20���ӵ�ʱ�������ս��\' +
    'ʱ������һ�����������Ƿ������ء�\' +
    '|{cmd}<��ս��һ��/@next>\' +
    '|{cmd}<��������/@BackMeng>'
  );
end.