{
���³�һ��



}
program Mir2;

procedure TimeOutProc;
begin
  if LowerCase(This_Player.DynRoomName) = 'godforfex' then
    This_Player.FlyTo('DM002~1', 0, 0)  // ����Ǿ�̬����
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _goh006;
begin
  if LowerCase(This_Player.DynRoomName) = 'underground1' then
  begin
    This_Player.FlyTo('DM002~1', 0, 0);
//mov d8 0
//mov d7 0
  end;
end;

procedure _gonext;
var
  nRoomIdx : integer;
begin
  if LowerCase(This_Player.DynRoomName) = 'underground1' then
  begin
    if This_Player.IsGroupOwner and (This_Player.GetV(26, 4)=1) then
    begin
      if This_Npc.CheckCurrMapMon > 0 then
      begin
        This_Npc.NpcDialog(This_Player,
          '���ﻹû��ȫ��������ʿ�ǣ�����Ŭ����\'+
          '|{cmd}<���ع���/@goh006>\ \'+
          '|{cmd}<�ر�/@exit>');

      end
      else
      begin
        if This_Player.GetV(26, 5) = 3 then
        begin
          This_Player.SetV(26, 5, 0);
          nRoomIdx := This_Npc.GetAIdleDynRoomIndex('GodForfex');
          if nRoomIdx <> -1 then
          begin
            This_Npc.NpcDialog(This_Player,
              'ף������ħ��Ļ��ض���ֹ��������\'+
              '���ھ�����������һ�㣬����һ������30���ӵ�ʱ�䡣');
            This_Player.GroupCallOut(This_Npc, 'TimeOutProc', '', 1800);            
            This_Player.GroupFlyToDynRoom('GodForfex', nRoomIdx);
            This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 15, 16, 3, 'ħ��ʥ��', 1);
          end;
        end
        else
          This_Npc.NpcDialog(This_Player,
            '�����ڽ�����ս�������ܶ��ɣ���ʿ�ǣ�\');
      end;
    end
    else
      This_Npc.NpcDialog(This_Player,
        '������ԭ�����ڶ���Ķӳ������ܽ�����һ�㣡\'+
        '|{cmd}<�ر�/@exit>');
  end;
end;

begin
  This_Npc.NpcDialog(This_Player,
    'Ӣ�ۣ��������˵�����Ѿ�����ʵ���ˣ�\'+
    '���ǣ����������һ����սħ��ʥ�޵Ļ���\'+
    '���Ⱦ�Ҫ����������Ļ��أ�����20���ӵ�ʱ�䣬\'+
    '��20����������ȫ��������Ϳ��Խ�����һ�㣬\'+
    '������ֻ���������ع���������´�������ս��\'+
    '����һ�㣬������30���ӵ�ʱ�䡣\'+
    '|{cmd}<������һ��/@gonext>\'+
    '|{cmd}<���ع���/@goh006>');
end.
