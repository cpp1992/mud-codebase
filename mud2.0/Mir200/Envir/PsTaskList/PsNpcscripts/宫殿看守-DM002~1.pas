{
*******************************************************************************}


program Mir2;

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _molongqude;
begin
  This_Npc.NpcDialog(This_Player,
    '������˿��ħ���ǡ�ħ���ǡ�ħ�������ǿ���������ϡ���䱦��\'+
    '����һ��֮�����޷������Щ����ı���������ӵ�ж��ѵ�Э����\'+
    '��������ħ�ؽ���ʹ������һ����Ӿ���ѡ�����ǰ�������Թ���\'+
    'ͨ����᫵ĵ����Թ�����ħ�����Ĺ���ȣ�������¹���,\'+
    '������ӵ��ǧ����˿,\'+
    '���¹����й��������Ż�͸¶��Щ���汦���Ļ�÷�����\'+
    '|{cmd}<����/@main>');

end;

procedure _zhusi;
begin
  This_Npc.NpcDialog(This_Player,
    'ֻ�������Ĺµ����ܻ�á���˿���������ص�ǧ����˿!\'+
    '��������ħ�ؽ���ʹ������һ����Ӿ���ѡ�񵥶�ǰ�������Թ�.\'+
    'ͨ����᫵ĵ����Թ�����ħ�����Ĺ���ȣ�������¹���,\'+
    '�ڵ��¹���Ĺ�����������������롰��˿�����ķ�����\'+
    '|{cmd}<����/@main>');

end;

procedure _cube;
begin
  This_Npc.NpcDialog(This_Player,
    '�����ڵ�����������'+IntToStr(This_Player.GetV(0, 1))+
    '����ٲ�Ļ����ܿ��ܾͻ�ת��Ŷ��\');

end;

procedure _jinbi;
var
  nDice : Integer;
begin
  if (compareText(This_Player.MapName, 'DM002~1') = 0) then
  begin
    if This_Player.GoldNum >= 2000 then
    begin
      This_Npc.NpcDialog(This_Player, '�ţ�������<��ʼ/@cube>��!');
      This_Player.DecGold(2000);
      nDice := Random(6)+1;
      This_Player.SetV(0, 1, nDice);
      This_Npc.PlayDice(This_Player, 1, '@cube');
    end
    else
      This_Npc.NpcDialog(This_Player, '��û���㹻�Ľ�ң����ǵ�����Ǯ���������Ұ�');
  end;

end;

procedure _next;
var
  nDice : integer;
begin
  nDice := This_Player.GetV(0, 1);
  if nDice = 6 then
  begin
    This_Player.SetV(0, 1, 1);  // �������clientˢ
    if This_Player.GoldNum > 100000 then
    begin
      if This_Player.DecGold(100000) then
      begin
        This_Npc.NpcDialog(This_Player,
          '��ϲ�㣬������������������ĵ�����6��\'+
          '�����ھ�����ȥ����˿������ֻ��Ҫ����֩���������100������,\'+
          '��Ϳ��Ի�ʤ������á�ǧ����˿����\');
        This_Player.SetV(26, 2, 1);
        This_Player.SetV(26, 6, 100);
        This_Player.FlyToDynRoom('DuckLight', 0, 0);
        This_Player.CallOutEx(This_Npc, 300, 'TimeOutProc');
      end;
    end
    else
      This_Npc.NpcDialog(This_Player,
        '�����û��100000��Ұ�������ô���أ�\' +
        '|{cmd}<�˳��Ի�/@exit>');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '�ܿ�ϧ���������ĵ�����'+inttostr(nDice)+'��\'+
      '������ֻ�ܴ�ͷ�������������Լ���������\ \'+
      '|{cmd}<����/@gohole>');
  end;
end;

procedure _startdu;
begin
  if (compareText(This_Player.MapName, 'DM002~1') = 0) then
  begin
    if This_Player.GoldNum >= 50000 then
    begin
      if This_Player.DecGold(50000) then
      begin
        This_Player.SetV(0, 1, Random(6)+1); 
        This_Npc.PlayDice(This_Player, 1, '@next');
      end;
    end
    else
      This_Npc.NpcDialog(This_Player,
        '��û���㹻�Ľ�ң����ǵ�����Ǯ���������Ұ�\ \'+
        '|{cmd}<����/@gohole>');
  end;
end;

procedure _touzi;
begin
  This_Npc.NpcDialog(This_Player,
    '�������и�����עħ�������ӣ�Ҳ���칤������ҵġ�\'+
    '����2000��ң��Ұ����һ���������\ \'+
    '|{cmd}<֧��2000���Ͷ����/@jinbi>\'+
    '|{cmd}<����/@main>');

end;

procedure CreateMonD411;
begin
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, 'ţħ��ʦ', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, 'ţħ����', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, 'ţħ����', 2);
  //This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, '�罩��', 1);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, '���þ���', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, '���ô���', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, '���ó�ǹ��', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, '���õ�����', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, '���ù�����', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 50, 50, 40, '������', 1);
end;

procedure CreateMonD607;
begin
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, '��Ұ��', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, '��ɫ����', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, '��Ұ��', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, '���', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, 'Ш��', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, '�����', 1);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, '��Ұ��', 1);
 // This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, 'Ш����', 1);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, '������', 1);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 15, 'а��ǯ��2', 2);
  This_Npc.CreateDynRoomMon(This_Player.DynRoomName, This_Player.DynRoomIdx, 25, 16, 10, '����ʷ��ķ', 2);
end;

procedure TimeOutProc;
var
  nStep : Integer;
  sMapName : string;
begin
  if CompareText(This_Player.DynRoomName, 'ducklight') = 0 then
  begin
    This_Player.FlyTo('DM002~1', 0, 0)  // ����Ǿ�̬����

  end
  else if CompareText(This_Player.DynRoomName, 'underground1') = 0 then  // D411
  begin
    if (not This_Player.IsGroupOwner) or (This_Player.GetV(26, 4) <> 1) then    // ����Ƿ�ӳ����Ƿ�յ�npc������
      Exit;
    nStep := This_Player.GetV(26, 5);
    case nStep of
      0:
      begin
        This_Player.SetV(26, 5, 1);
        This_Player.CallOut(This_Npc, 180, 'TimeOutProc');
        sMapName := This_Player.DynRoomName + IntToStr(This_Player.DynRoomIdx); 
        if CheckOtherMapMon(sMapName) < 70 then
          CreateMonD411;
      end;
      1:
      begin
        This_Player.SetV(26, 5, 2);
        This_Player.CallOut(This_Npc, 180, 'TimeOutProc');
        sMapName := This_Player.DynRoomName + IntToStr(This_Player.DynRoomIdx); 
        if CheckOtherMapMon(sMapName) < 70 then
          CreateMonD411;
      end;
      2:
      begin
        This_Player.SetV(26, 5, 3);
        This_Player.CallOut(This_Npc, 180, 'TimeOutProc');
        sMapName := This_Player.DynRoomName + IntToStr(This_Player.DynRoomIdx); 
        if CheckOtherMapMon(sMapName) < 70 then
          CreateMonD411;
      end;
    else ;
    end;
  end
  else if CompareText(This_Player.DynRoomName, 'underground2') = 0 then  //D607
  begin
    if (not This_Player.IsGroupOwner) or (This_Player.GetV(26, 4) <> 1) then    // ����Ƿ�ӳ����Ƿ�յ�npc������
      Exit;
    nStep := This_Player.GetV(26, 5);
    case nStep of
      0:
      begin
        This_Player.SetV(26, 5, 1);
        This_Player.CallOut(This_Npc, 180, 'TimeOutProc');
        sMapName := This_Player.DynRoomName + IntToStr(This_Player.DynRoomIdx); 
        if CheckOtherMapMon(sMapName) < 70 then
          CreateMonD607;
      end;
      1:
      begin
        This_Player.SetV(26, 5, 2);
        This_Player.CallOut(This_Npc, 180, 'TimeOutProc');
        sMapName := This_Player.DynRoomName + IntToStr(This_Player.DynRoomIdx); 
        if CheckOtherMapMon(sMapName) < 70 then
          CreateMonD607;
      end;
      2:
      begin
        This_Player.SetV(26, 5, 3);
        This_Player.CallOut(This_Npc, 180, 'TimeOutProc');
        sMapName := This_Player.DynRoomName + IntToStr(This_Player.DynRoomIdx); 
        if CheckOtherMapMon(sMapName) < 70 then
          CreateMonD607;
      end;
    else ;
    end;
  end;

end;

procedure _starttest;
begin
  if (compareText(This_Player.MapName, 'DM002~1') = 0) then
  begin
    if This_Player.GoldNum > 100000 then
    begin
      if This_Player.DecGold(100000) then
      begin
        This_Player.SetV(26, 2, 1);
        This_Player.SetV(26, 6, 120);
        This_Player.FlyToDynRoom('DuckLight', 0, 0);
        This_Player.CallOutEx(This_Npc, 300, 'TimeOutProc');
      end;
    end
    else
      This_Npc.NpcDialog(This_Player,
        '�����û���㹻�Ľ�Ұ�������ô���أ�\' +
        '|{cmd}<�˳��Ի�/@exit>');
  end;
end;


procedure _gohole;
begin
  This_Npc.NpcDialog(This_Player,
    '��˿���Ƿǳ�Σ�յĵط�,������10���ң��ҿ��Դ���ȥ����\' +
    '��Ҫ�ڱ�֤�����ǰ����,�ñ���֩���������120������,\' +
    '��ֻ��3���ӵ�ʱ��,������Ҫ��Ϳ��Եõ�һ����ǧ����˿����\' +
    '|{cmd}<�ҵ���˿����ĵ��³������Ϳɿ�ʼ��ս>��\' +
    '��������Ѷ�̫�ߣ�Ҳ���Ը���5���ң��Ҹ���һ�������ӵĻ���\' +
    'ֻҪ�������ĵ���Ϊ6,�Ϳ��Խ���Ҫ��ֻ��Ҫ100������\' +
    '��������ĵ�����Ϊ6,����ֻ��������������\' +
    '|{cmd}<ǰ����˿��/@starttest>            ^<�����ӣ�������/@startdu>\' +
    '|{cmd}<����/@main>');

end;

procedure _god411_607;
var
  nRoomIdx : integer;
begin
  if compareText(This_Player.MapName, 'DM002~1') = 0 then
  begin
    if This_Player.GetBagItemCount('ǧ����˿') > 0 then
    begin
      if This_Player.IsGroupOwner then
      begin
        if Random(2) = 0 then
        begin
          if This_Player.Take('ǧ����˿', 1) then
          begin
            nRoomIdx := This_Npc.GetAIdleDynRoomIndex('UnderGround1');
            if nRoomIdx <> -1 then
            begin
              This_Player.GroupFlyToDynRoom('UnderGround1', nRoomIdx);
  //            This_Player.GroupFly('UnderGround1');  // groupmove D411~4
              This_Player.GroupSetV(26, 4, 0);         // �����Ա��ӱ�־
              This_Player.SetV(26, 4, 1);              // ���ӳ����ϱ�־
              This_Player.SetV(26, 5, 0);
              This_Player.CallOut(This_Npc, 10, 'TimeOutProc');
            end;
          end;  
        end
        else
        begin
          if This_Player.Take('ǧ����˿', 1) then
          begin
            nRoomIdx := This_Npc.GetAIdleDynRoomIndex('UnderGround2');
            if nRoomIdx <> -1 then
            begin
              This_Player.GroupFlyToDynRoom('UnderGround2', nRoomIdx);
//            This_Player.GroupFly('UnderGround2');  // groupmove D411~4
              This_Player.SetV(26, 4, 1);
              This_Player.SetV(26, 5, 0);
              This_Player.CallOut(This_Npc, 10, 'TimeOutProc');
            end;
          end;  
        end;  
      end
      else
      This_Npc.NpcDialog(This_Player, '�㲻�����ڶ���Ķӳ������ܽ���');
    end
    else
      This_Npc.NpcDialog(This_Player, '��û�д���ǧ����˿��');
  end;

end;

procedure _gofloor1;
begin
  if (compareText(This_Player.MapName, 'DM002~1') = 0) then
  begin
    This_Npc.NpcDialog(This_Player,
      '���ǽ�������¹���һ�㣬ǰ�潫��Σ�����ء�\'+
      '���۷���ʲô����Ҫ�����Լ��ľ�����\'+
      '������һ����ȥ�ģ���ϣ�����Կ�������һ���˻�����\'+
      '���������������һ��Ŭ��������ʲô��η����أ�\'+
      '�ڹ���һ�㣬������20����ʱ��ȥ������ȫ�����\'+
      '|{cmd}<һ�����빬��һ��>���ͻᴥ����ħ�Ļ��أ�\'+
      '20���Ӻ����û�������������ǽ��Զ����ع��\'+
      '|{cmd}<��ӽ��빬��һ��/@god411_607>');   // ������god607
  end;

end;

procedure _goh007;
begin
  if This_Player.GetBagItemCount('ǧ����˿') > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
      '�������Ѿ�ȡ������Ҫ�Ķ������Ǻðɡ�\' +
      '�����ھ�������ȥ���¹�����ǵ��¹���ǳ����գ�\' +
      '�Ҳ�������һ����ȥ����������ǰ����\' +
      '���˼����칤������ڵ��¹����\' +
      '|{cmd}<������˿��ħ���ǡ�ħ���ǡ�ħ������ȡ��/@molongqude>\' +
      '|{cmd}<ǰ�����¹���һ��/@gofloor1> \' +
      '|{cmd}<ȥ����˿����/@gohole>             ^<����ǧ����˿������/@zhusi>\' +
      '|{cmd}<�رնԻ�/@exit>');
    This_Player.SetV(26, 4, 0);         //mov d8 0
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�칤�����������뿪�����ˡ���Ϊ�������ճ��ڣ�\' +
      '����ħ����������ʶ�������������ɳ�������ĵ��³ǣ�\' +
      'ֻ����֪����������������������һ�һ��ǧ����˿��\' +
      '����10���ң��Ҿ�����ȥ��˿����\' +
      '|{cmd}<������˿��ħ���ǡ�ħ���ǡ�ħ������ȡ��/@molongqude>\' +
      '|{cmd}<ȥ����˿����/@gohole>             ^<����ǧ����˿������/@zhusi>\' +
      '|{cmd}<�鿴���������/@touzi> \' +
      '|{cmd}<����׼��׼��/@exit>');
end;

begin
  This_Npc.NpcDialog(This_Player,
    '��Ҳ��Ҫ���������ˣ������Ѿ���ΪһƬ������\' +
    'ħ��Ϊ�ˡ��칤��������£���ħ�޶���ȥ�˵��¹���\' +
    'ͬʱҲ��ȥ�����еĲƱ�\' +
    '���¹������ھ��ڹ���ȵ��м�\' +
    '������������ȥ����Ȱ�\' +
    '|{cmd}<ȥ�����/@goh007>\');
end.