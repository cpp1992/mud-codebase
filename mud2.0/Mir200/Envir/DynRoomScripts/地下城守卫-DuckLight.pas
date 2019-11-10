{
��� �����-DM002~1.pas);


}
program Mir2;

const
  CREATE_MON_INTERVAL = 20;  //��


procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;  
  
procedure TimeOutProc;
var
  nMonNum, nVar : Integer;
begin
  if LowerCase(This_Player.DynRoomName) = 'ducklight' then
  begin
    nVar := This_Player.GetV(26, 3);
    nMonNum := This_Npc.CheckCurrMapMon;
    if nVar >= 9 then
    begin            
      if nMonNum >= This_Player.GetV(26, 6) then
      begin
        This_Player.PlayerNotice('�㱾�εĳɼ���'+IntToStr(nMonNum)+'������,��ϲ�㴳�سɹ�', 0);
        This_Player.Give('ǧ����˿', 1);
      end
      else
      begin
        This_Player.PlayerNotice('�㱾�εĳɼ���'+IntToStr(nMonNum)+'������,�ܿ�ϧ������ʧ��', 0);
      end;
      This_Player.SetV(26, 3, 0);
      This_Player.SetV(26, 6, 0);
      This_Player.FlyTo('DM002~1', 0, 0);
    end
    else
    begin
      This_Player.SetV(26, 3, nVar+1);
      This_Npc.CreateMon('', 25, 25, 10, '��Ӱ֩��1029', 1);
      This_Player.CallOut(This_Npc, CREATE_MON_INTERVAL, 'TimeOutProc');
      This_Player.PlayerNotice('20������µĹ���ˢ�������ڵ�ͼ�Ϲ�����'+IntToStr(nMonNum)+'��', 0);
    end;  
  end;
end;

procedure _startDBL;
begin
  if LowerCase(This_Player.DynRoomName) = 'ducklight' then
  begin
    if This_Player.GetV(26, 2) = 1 then
    begin
      This_Player.SetV(26, 2, 0);  // ��ˢ�ű�
      This_Player.SetV(26, 3, 1);
      This_Npc.ClearMon('');
      This_Npc.CreateMon('', 25, 25, 10, '��Ӱ֩��1029', 1);
      This_Player.CallOut(This_Npc, CREATE_MON_INTERVAL, 'TimeOutProc');
      This_Npc.CloseDialog(This_Player);
    end
    else
      This_Npc.NpcDialog(This_Player, '���Ѿ���ʼ��ս�ˣ��������¿�ʼ��');
  end;
end;
  
begin
  This_Npc.NpcDialog(This_Player,
    '���������˿��,׼���õĻ����Ϳ�ʼ�ɣ�\'+
    '����3���ӵ�ʱ��,��Ҫ�ڱ�֤�����ǰ����,\'+
    '�õ�ͼ�ڵı���֩���������'+IntToStr(This_Player.GetV(26, 6))+'������\'+
    '3���Ӻ����������ɣ�ǧ����˿���������\'+
    '�����Ƿ�ɹ����Ҷ������㷵�ص��¹���\'+
    '|{cmd}<�õģ���Ҫ��ʼ����/@startDBL>\'+
    '|{cmd}<�뿪/@exit>');
end.
