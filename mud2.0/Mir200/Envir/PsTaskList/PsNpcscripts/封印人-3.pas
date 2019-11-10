{
/*******************************************************************************
}

program mir2;

var 
  items : array[1..18] of string;

procedure TimeOutProc;
begin
  if LowerCase(This_Player.MapName) = 'd2002~04' then
    This_Player.FlyTo('3', 333, 333)
  else if LowerCase(This_Player.MapName) = 'd2002~05' then
    This_Player.FlyTo('3', 333, 333)
  else if LowerCase(This_Player.MapName) = 'd2002~06' then
    This_Player.FlyTo('3', 333, 333)
  else if LowerCase(This_Player.MapName) = 'd2002~07' then
    This_Player.FlyTo('3', 333, 333)
  else if LowerCase(This_Player.MapName) = 'd2002~08' then
    This_Player.FlyTo('3', 333, 333)
  else if LowerCase(This_Player.MapName) = 'd2002~09' then
    This_Player.FlyTo('3', 333, 333)
  else if LowerCase(This_Player.MapName) = 'd2002~10' then
    This_Player.FlyTo('3', 333, 333);
               
end;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  if This_Player.GetV(30, 8) = 5 then
  begin
    This_Npc.NpcDialog(This_Player,
      'ף����ɹ�ͨ�����飬�����ھ͸�������Ʒ��\' +
      '��Ͱ���Ҫ����ͷ�������Ұɣ�һ��ֻ�ܽ��һ����\' +
      '|{cmd}<��Ҫ���������Ʒ�ķ�ӡ/@goToJF>\' +
      '|{cmd}<�⿪ͷ����ӡ/@opentou>                      ^<����ħ��ָ����/@mozu>\' +
      '|{cmd}<�����ƽ�ͷ��/@start>\' +
      '|{cmd}<��������ͷ��(��ӡ)/@heijin>')
  end
  else
  begin
    {$IFDEF Q106_goldhelm}
    This_Npc.NpcDialog(This_Player,
      'ÿ���Ҷ����泯ѩɽ����ѩɽ����ҵķ�������\'
      +'�������ħ��ָ���飬����Ҳֻ��ǧ����˿���ܽ�����\'
      +'��Щ��ȴ��֪Ϊ�Σ��ؼҵ�Ը����Ȼ���ǿ��������\'
      +'�����ɣ��������������ƾ֤�Ļ���\'
      +'��Ҳ���԰��㻻��һ��ħ��ָ���顣\'
      +'��ô���������ļ���Ʒ�����н����أ�\ \'
      +'|{cmd}<ʹ��ǧ����˿����/@zhusi>              ^<ʹ����ƾ֤����/@qifu>');
    {$ELSE}  
    This_Npc.NpcDialog(This_Player,
      '������������������Ѿ������˶������գ�\' +
      '���˽⿪ͷ���ķ�ӡ�������ƽ�ͷ���⣬\' +
      '������������˻���ʯ�Ĵ�����\' +
      '������������ʲô�£�\' +
      '|{cmd}<��Ҫ���������Ʒ�ķ�ӡ/@goToJF>\' +
      '|{cmd}<�����ƽ�ͷ��/@start>                  ^<����ħ��ָ����/@mozu>\' +
      '|{cmd}<��������ͷ��(��ӡ)/@heijin>\' +
      '|{cmd}<�⿪ͷ����ӡ/@jiefengtou>');
    {$ENDIF}    
  end;
end;

procedure _goToJF;
begin
  This_Npc.NpcDialog(This_Player,
    '�����ˣ���Ҫ������εķ�ӡ��\' +
    '�����ӵ��һ֧�����Ž����ӵ��ǿ�������Ķ��飬\' +
    '�ǽ��·�ϵ�����Σ����Ȼ���ܸ���Ķ���������ѡ�\' +
    '�����Ҫƾ��һ��֮������ǰ������Ҳ�ǳ�������������\' +
    '�Ǿ���������һ��֮����ף�����ɹ���\ \' +
    '|{cmd}<�˽��������Ϣ/@moreJFInfo>\' +
    '|{cmd}<�Һ�����һ��ȥ/@goWithTeam>                    ^<��Ҫ����ǰ��/@goAlone>'

  );
end;

function checkItems: Boolean;
var
  i : Integer;
begin
  Result := False;
  for i:=1 to 18 do
  begin
    if This_Player.GetBagItemCount(items[i]) > 0 then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

procedure CreateAloneCommonJFMon(roomName: string; roomIdx, x, y: Integer);
begin
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, '��Ұ��', 1);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, '��Ұ��', 1);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, 'Ы��', 1);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, 'Ш��', 1);
end; 
  
procedure CreateTeamCommonJFMon(roomName: string; roomIdx, x, y: Integer);
begin
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, '��Ұ��', 2);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, '��Ұ��', 2);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, '��ɫ����', 1);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, '��Ұ��0', 2);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 1, '��Ӭ', 1);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, 'Ы��', 2);
  This_Npc.CreateDynRoomMon(roomName, roomIdx, x, y, 3, 'Ш��', 2);
end; 

procedure callOutFlyBack;
begin
  if This_Player.DynRoomName = This_Player.CallOutParam then
    This_Player.Flyto('3', 323, 333);
end;

procedure flyToJFDungeon(bAlone: Boolean);
var
  roomIdx : Integer;
  roomName : string;
begin
  roomName := 'FengYin';
  roomIdx := This_Npc.GetAIdleDynRoomIndex(roomName);

  if bAlone then
  begin
    //****** ˢ�� ******//
    //270 264
    CreateAloneCommonJFMon(roomName, roomIdx, 270, 264);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 270, 264, 3, '��Ұ��0', 1);
    //250 244
    CreateAloneCommonJFMon(roomName, roomIdx, 250, 244);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 250, 244, 3, '��ɫ����', 1);
    //225 219
    CreateAloneCommonJFMon(roomName, roomIdx, 225, 219);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 225, 219, 3, '��Ұ��0', 1);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 225, 219, 1, '��Ӭ', 1);
    //189 213
    CreateAloneCommonJFMon(roomName, roomIdx, 189, 213);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 189, 213, 3, '��ɫ����', 1);
    //167 191
    CreateAloneCommonJFMon(roomName, roomIdx, 167, 191);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 167, 191, 3, '��Ұ��0', 1);
    //149 173
    CreateAloneCommonJFMon(roomName, roomIdx, 149, 173);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 149, 173, 3, '��ɫ����', 1);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 149, 173, 1, '��Ӭ', 1);
    //125 149
    CreateAloneCommonJFMon(roomName, roomIdx, 125, 149);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 125, 149, 3, '��Ұ��0', 1);
    //93 133
    CreateAloneCommonJFMon(roomName, roomIdx, 93, 133);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 93, 133, 3, '��ɫ����', 1);
    //75 129
    CreateAloneCommonJFMon(roomName, roomIdx, 75, 129);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 75, 129, 3, '��Ұ��0', 1);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 75, 129, 1, '��Ӭ', 1);
    //51 105
    CreateAloneCommonJFMon(roomName, roomIdx, 51, 105);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 51, 105, 3, '��ɫ����', 1);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 51, 105, 1, '��ħ����', 1);
        
    //���벢������ʱ�ɳ� 
    This_Player.FlyToDynEnvirWithIdx(roomName, roomIdx, 0, 0);
    This_Player.CallOutParam := roomName;
    This_Player.CallOut(This_Npc, 1800, 'callOutFlyBack'); 
  end
  else
  begin
    //****** ˢ�� ******//
    //270 264
    CreateTeamCommonJFMon(roomName, roomIdx, 270, 264);
    //250 244
    CreateTeamCommonJFMon(roomName, roomIdx, 250, 244);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 250, 244, 1, '��ħ����', 1);
    //225 219
    CreateTeamCommonJFMon(roomName, roomIdx, 225, 219);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 225, 219, 1, '�罩��', 1);
    //189 213
    CreateTeamCommonJFMon(roomName, roomIdx, 189, 213);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 250, 244, 1, '��ħ����', 1);
    //167 191
    CreateTeamCommonJFMon(roomName, roomIdx, 167, 191);
    //149 173
    CreateTeamCommonJFMon(roomName, roomIdx, 149, 173);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 149, 173, 1, '��ħ����', 1);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 149, 173, 1, '�罩��', 1);
    //125 149
    CreateTeamCommonJFMon(roomName, roomIdx, 125, 149);
    //93 133
    CreateTeamCommonJFMon(roomName, roomIdx, 93, 133);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 93, 133, 1, '��ħ����', 1);
    //75 129
    CreateTeamCommonJFMon(roomName, roomIdx, 75, 129);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 75, 129, 1, '�罩��', 1);
    //51 105
    CreateTeamCommonJFMon(roomName, roomIdx, 51, 105);
    This_Npc.CreateDynRoomMon(roomName, roomIdx, 93, 133, 1, '��ħ����', 1);
    
    //��ӷ��룬������callOut
    This_Player.GroupCallOut(This_Npc, 'callOutFlyBack', roomName, 1800);
    This_Player.GroupFlyToDynRoom(roomName, roomIdx);  
     
  end;
end;


procedure _goWithTeam;
begin
  if This_Player.MapName <> '3' then
    Exit;
  
  if not This_Player.IsGroupOwner then
  begin
    This_Npc.NpcDialog(This_Player,
      '���������ڶ���Ķӳ�������ǰ��\ \' +
      '|{cmd}<����/@goToJF>'
    );
    Exit;
  end;  
  
  if checkItems then
     flyToJFDungeon(False)
  else
    This_Npc.NpcDialog(This_Player,
      '��û����Ҫ������Ʒ������������\ \' +
      '|{cmd}<����/@goToJF>'
    );
end;

procedure _goAlone;
begin
  {$IFDEF Q136_hero}
  exit;
  {$ELSE}
  if This_Player.MapName <> '3' then
    Exit;
    
  if This_Player.IsTeamMember then
  begin    
    This_Npc.NpcDialog(This_Player,
      '�����ں����Ѿ�����һ��ǰ���Ļ���ˣ�\' +
      '���Ǻ���Ļ��һ��ǰ���ɡ�\ \' +
      '|{cmd}<����/@goToJF>'
    );
    Exit;
  end;
  
  if This_Player.HaveValidHero then
  begin
    if checkItems then
      flyToJFDungeon(True)
    else
      This_Npc.NpcDialog(This_Player,
        '��û����Ҫ������Ʒ������������\ \' +
        '|{cmd}<����/@goToJF>'
      );
  end
  else
    This_Npc.NpcDialog(This_Player,
      '���ʵ�������������Ǻ����һͬǰ����'
    );
  {$ENDIF}
end;

procedure OnInitialize;
begin
  items[1] := '��������(��ӡ)';
  items[2] := '��ħ����(��ӡ)';
  items[3] := '��Դ����(��ӡ)';
  
  items[4] := '��������(��ӡ)';
  items[5] := '��ħ����(��ӡ)';
  items[6] := '��Դ����(��ӡ)';
  
  items[7] := '�����ָ(��ӡ)';
  items[8] := '��ħ��ָ(��ӡ)';
  items[9] := '��Դ��ָ(��ӡ)';
  
  items[10] := 'ʥս����(��ӡ)';
  items[11] := '��������(��ӡ)';
  items[12] := '��������(��ӡ)';
  
  items[13] := 'ʥս����(��ӡ)';
  items[14] := '��������(��ӡ)';
  items[15] := '��������(��ӡ)';
  
  items[16] := 'ʥս��ָ(��ӡ)';
  items[17] := '�����ָ(��ӡ)';
  items[18] := '�����ָ(��ӡ)';  
end;

procedure _moreJFInfo;
begin
  This_Npc.NpcDialog(This_Player,
    '��������(��ӡ)       ��ħ����(��ӡ)        ��Դ����(��ӡ)\' +
    '��������(��ӡ)       ��ħ����(��ӡ)        ��Դ����(��ӡ)\' +
    '�����ָ(��ӡ)       ��ħ��ָ(��ӡ)        ��Դ��ָ(��ӡ)\' +
    '                                                         \' +
    'ʥս����(��ӡ)       ��������(��ӡ)        ��������(��ӡ)\' +
    'ʥս����(��ӡ)       ��������(��ӡ)        ��������(��ӡ)\' +
    'ʥս��ָ(��ӡ)       �����ָ(��ӡ)        �����ָ(��ӡ)\\' +
    '|{cmd}<����/@goToJF>'
  );  
end;


procedure _jiefengtou;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ҫ���ͷ���𣿲�������Ҫ����һ������\' +
    '����������һ������Ȼ���ҲŸ�����\' +
    '�ҿ�������ȥһ�ţ�������ħ���ӡ֮��\' +
    '���кܶ���ܳ���,����֮�¾�����ٲ�����ħ��֮��\' +
    '�������������ܣ���Ϳ��Ե���������ͷ���ķ�ӡ\' +
    'ʱ���ܹ�6���ӣ�ʱ�䵽�󽫻��Զ��ͻ�����\' +
    '��û����˵����Ʒ����ͷ���ͻƽ�ͷ��������Щ���ǲ���������\' +
    '|{cmd}<ǰ������/@god2002>\' +
    '|{cmd}<����/@main>\');
end;

procedure checkroom;
begin
  if CheckOtherMapHum('D2002~04') = 0 then
  begin
    This_Player.SetV(30, 8, 1);     // mov d8 1
    This_Npc.ClearMon('D2002~04');
    This_Player.CallOut(This_Npc, 600, 'TimeOutProc');
    This_Player.FlyTo('D2002~04', 0, 0);
  end
  else if CheckOtherMapHum('D2002~05') = 0 then
  begin
    This_Player.SetV(30, 8, 1);     // mov d8 1
    This_Npc.ClearMon('D2002~05');
    This_Player.CallOut(This_Npc, 600, 'TimeOutProc');
    This_Player.FlyTo('D2002~05', 0, 0);
  end
  else if CheckOtherMapHum('D2002~06') = 0 then
  begin
    This_Player.SetV(30, 8, 1);     // mov d8 1
    This_Npc.ClearMon('D2002~06');
    This_Player.CallOut(This_Npc, 600, 'TimeOutProc');
    This_Player.FlyTo('D2002~06', 0, 0);
  end
  else if CheckOtherMapHum('D2002~07') = 0 then
  begin
    This_Player.SetV(30, 8, 1);     // mov d8 1
    This_Npc.ClearMon('D2002~07');
    This_Player.CallOut(This_Npc, 600, 'TimeOutProc');
    This_Player.FlyTo('D2002~07', 0, 0);
  end
  else if CheckOtherMapHum('D2002~08') = 0 then
  begin
    This_Player.SetV(30, 8, 1);     // mov d8 1
    This_Npc.ClearMon('D2002~08');
    This_Player.CallOut(This_Npc, 600, 'TimeOutProc');
    This_Player.FlyTo('D2002~08', 0, 0);
  end
  else if CheckOtherMapHum('D2002~09') = 0 then
  begin
    This_Player.SetV(30, 8, 1);     // mov d8 1
    This_Npc.ClearMon('D2002~09');
    This_Player.CallOut(This_Npc, 600, 'TimeOutProc');
    This_Player.FlyTo('D2002~09', 0, 0);
  end
  else if CheckOtherMapHum('D2002~10') = 0 then
  begin
    This_Player.SetV(30, 8, 1);     // mov d8 1
    This_Npc.ClearMon('D2002~10');
    This_Player.CallOut(This_Npc, 600, 'TimeOutProc');
    This_Player.FlyTo('D2002~10', 0, 0);
  end
  else
    This_Npc.NpcDialog(This_Player,
      'Ŀǰ���еĿ��鳡�Ѿ���Ա,���Ժ�������');
end;

procedure _god2002;
begin
  if (This_Player.GetBagItemCount('ʥսͷ��(��ӡ)') > 0) or (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) or
    (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) or (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) then
  begin
    checkroom;
  end
  else
    This_Npc.NpcDialog(This_Player,
      '��û����Ӧ��ͷ����Ҫ���,���ǵ������ط�������');
end;

procedure _opentou;
begin
  if This_Player.GetV(30, 8) = 5 then    // equal D8 5
  begin
    This_Npc.NpcDialog(This_Player,
      '����⿪�ĸ�ͷ���ķ�ӡ�أ�\' +
      '���������ң����ҿ����ɡ�\ \' +
      '|{cmd}<���ʥսͷ��(��ӡ)/@warrtou>             ^<��ⷨ��ͷ��(��ӡ)/@fashitou>\' +
      '|{cmd}<�������ͷ��(��ӡ)/@taostou>             ^<������ͷ��(��ӡ)/@heitou>\' +
      '|{cmd}<����/@main>');
  end;
end;

procedure _warrtou;
begin
  if This_Player.GetV(30, 8) = 5 then    // equal D8 5
  begin
    This_Player.SetV(30, 8, 0);
    if This_Player.GetBagItemCount('ʥսͷ��(��ӡ)') > 0 then
    begin
      if Random(10) = 7 then
      begin
        This_Player.Take('ʥսͷ��(��ӡ)', 1);
        This_Player.Give('��֮ʥսͷ��', 1);
        This_Npc.NpcDialog(This_Player,
          '������������൱����,��֮ʥսͷ���Ѿ����ɹ�');
      end
      else
      begin
        This_Player.Take('ʥսͷ��(��ӡ)', 1);
        This_Player.Give('ʥսͷ��', 1);
        This_Npc.NpcDialog(This_Player,
          'ʥսͷ���Ѿ����ɹ�');
      end;
    end
    else
      This_Npc.NpcDialog(This_Player,
        '��û����Ӧ����Ʒ��Ҫ���');
  end;
end;

procedure _fashitou;
begin
  if This_Player.GetV(30, 8) = 5 then    // equal D8 5
  begin
    This_Player.SetV(30, 8, 0);
    if This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0 then
    begin
      if Random(10) = 7 then
      begin
        This_Player.Take('����ͷ��(��ӡ)', 1);
        This_Player.Give('��֮����ͷ��', 1);
        This_Npc.NpcDialog(This_Player,
          '������������൱����,��֮����ͷ���Ѿ����ɹ�');
      end
      else
      begin
        This_Player.Take('����ͷ��(��ӡ)', 1);
        This_Player.Give('����ͷ��', 1);
        This_Npc.NpcDialog(This_Player,
          '����ͷ���Ѿ����ɹ�');
      end;
    end
    else
      This_Npc.NpcDialog(This_Player,
        '��û����Ӧ����Ʒ��Ҫ���');
  end;
end;

procedure _taostou;
begin
  if This_Player.GetV(30, 8) = 5 then    // equal D8 5
  begin
    This_Player.SetV(30, 8, 0);
    if This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0 then
    begin
      if Random(10) = 7 then
      begin
        This_Player.Take('����ͷ��(��ӡ)', 1);
        This_Player.Give('��֮����ͷ��', 1);
        This_Npc.NpcDialog(This_Player,
          '������������൱����,��֮����ͷ���Ѿ����ɹ�');
      end
      else
      begin
        This_Player.Take('����ͷ��(��ӡ)', 1);
        This_Player.Give('����ͷ��', 1);
        This_Npc.NpcDialog(This_Player,
          '����ͷ���Ѿ����ɹ�');
      end;
    end
    else
      This_Npc.NpcDialog(This_Player,
        '��û����Ӧ����Ʒ��Ҫ���');
  end;
end;

procedure _heitou;
begin
  if This_Player.GetV(30, 8) = 5 then    // equal D8 5
  begin
    This_Player.SetV(30, 8, 0);
    if This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0 then
    begin
      if Random(10) = 7 then
      begin
        This_Player.Take('����ͷ��(��ӡ)', 1);
        This_Player.Give('��֮����ͷ��', 1);
        This_Npc.NpcDialog(This_Player,
          '������������൱����,��֮����ͷ���Ѿ����ɹ�');
      end
      else
      begin
        This_Player.Take('����ͷ��(��ӡ)', 1);
        This_Player.Give('����ͷ��', 1);
        This_Npc.NpcDialog(This_Player,
          '����ͷ���Ѿ����ɹ�');
      end;
    end
    else
      This_Npc.NpcDialog(This_Player,
        '��û����Ӧ����Ʒ��Ҫ���');
  end;
end;

procedure _mozu;
begin
  This_Npc.NpcDialog(This_Player,
    'ÿ���Ҷ����泯ѩɽ����ѩɽ����ҵķ�������\' +
    '�������ħ��ָ���飬����Ҳֻ��ǧ����˿���ܽ�����\' +
    '��Щ��ȴ��֪Ϊ�Σ��ؼҵ�Ը����Ȼ���ǿ��������\' +
    '�����ɣ��������������ƾ֤�Ļ���\' +
    '��Ҳ���԰��㻻��һ��ħ��ָ���顣\' +
    '��ô���������ļ���Ʒ�����н����أ�\' +
    '|{cmd}<ʹ��ǧ����˿����/@zhusi>\' +
    '|{cmd}<ʹ����ƾ֤����/@qifu>\' +
    '|{cmd}<����/@main>');
end;

procedure _zhusi;
begin
  if (This_Player.GetBagItemCount('ǧ����˿') > 0) then
  begin
    This_Player.Take('ǧ����˿', 1);
    This_Player.Give('ħ��ָ����', 1);
    This_Npc.NpcDialog(This_Player,
      '��ϲ������һ��ħ��ָ���顣\ \' +
      '|{cmd}<����/@mozu>                   ^<�ر�/@doexit>');
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�����û��ǧ����˿����');
end;

procedure _qifu;
begin
  if (This_Player.GetBagItemCount('��ƾ֤') > 0) then
  begin
    This_Player.Take('��ƾ֤', 1);
    This_Player.Give('ħ��ָ����', 1);
    This_Npc.NpcDialog(This_Player,
      '��ϲ������һ��ħ��ָ���顣\ \' +
      '|{cmd}<����/@mozu>                   ^<�ر�/@doexit>')
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�����û����ƾ֤����');
end;

procedure _start;
begin
  This_Npc.NpcDialog(This_Player,
    'ֻ��<����ͷ��(��Ʒ)>���������ɻƽ�ͷ����\' +
    '����ͷ��(��Ʒ)�����ɻƽ�ͷ������Ҫ���ṩһЩ���ϣ�\' +
    '�칤֮���������ؼ����ؿ൨����Ҷ�κ��лƽ�ɷֵ����Ρ�\' +
    '���ںδ����Եõ���Щ���ϣ���Ҳ��һЩ���飬��������ο���\' +
    'һ����ʼ���������������������κͲ����Ҷ�����ȡ��Ϊԭ�ϡ�\' +
    '|{cmd}<��ȷ��ʹ��ԭ�в��������ƽ�ͷ��/@UpHelm>           ^<���ڲ��ϵĳ���/@about2>\' +
    '|{cmd}<ʹ���̱�ʯ����ˮ����/@other1>�����ƽ�ͷ��\' +
    '|{cmd}<ʹ��ѫ��֮�ġ�������/@other2>�����ƽ�ͷ��\' +
    '|{cmd}<����/@main>');
end;

procedure _UpHelm;
begin
  This_Npc.UpHelmet(This_Player);
end;

procedure _other1;
begin
  This_Npc.NpcDialog(This_Player,
    '��������̱�ʯ����ˮ����\' +
    'Ҳ���Ե������������ƽ�ͷ����\' +
    '���ʹ����Щ����������һ��ʧ�ܣ����еĲ��϶��������ա�\' +
    '��ȷ��Ҫ��ʼ�����ƽ�ͷ����\' +
    '|{cmd}<��ʼ/@shengji1>�����ƽ�ͷ��\ \' +
    '|{cmd}<����/@start>');
end;

procedure _other2;
begin
  This_Npc.NpcDialog(This_Player,
    '�������ѫ��֮�ġ���������\' +
    'Ҳ���Ե������������ƽ�ͷ����\' +
    '���ʹ����Щ����������һ��ʧ�ܣ����еĲ��϶��������ա�\' +
    '��ȷ��Ҫ��ʼ�����ƽ�ͷ����\' +
    '|{cmd}<��ʼ/@shengji2>�����ƽ�ͷ��\ \' +
    '|{cmd}<����/@start>');
end;

procedure _shengji1;
begin
  if (This_Player.GetBagItemCount('��ˮ����') > 0)
    and (This_Player.GetBagItemCount('�̱�ʯ��') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��Ʒ)') > 0) then
  begin
    This_Player.Take('��ˮ����', 1);
    This_Player.Take('�̱�ʯ��', 1);
    This_Player.Take('����ͷ��(��Ʒ)', 1);
    if Random(1000) = 888 then
    begin
      This_Player.Give('�ƽ�ͷ��', 1);
      This_Npc.NpcDialog(This_Player,
        '����������Ǻã��ƽ�ͷ���ϳɳɹ��ˣ�');
    end
    else
      This_Npc.NpcDialog(This_Player,
        '̫��ϧ�ˣ��ϳ�ʧ���ˣ�');
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�����û�б�Ҫ����Ʒ�����Ҳ��ܰ���ϳɡ�');
end;

procedure _shengji2;
begin
  if (This_Player.GetBagItemCount('ѫ��֮��') > 0)
    and (This_Player.GetBagItemCount('������') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��Ʒ)') > 0) then
  begin
    This_Player.Take('ѫ��֮��', 1);
    This_Player.Take('������', 1);
    This_Player.Take('����ͷ��(��Ʒ)', 1);
    if Random(1000) = 888 then
    begin
      This_Player.Give('�ƽ�ͷ��', 1);
      This_Npc.NpcDialog(This_Player,
        '����������Ǻã��ƽ�ͷ���ϳɳɹ��ˣ�');
    end
    else
      This_Npc.NpcDialog(This_Player,
        '̫��ϧ�ˣ��ϳ�ʧ���ˣ�');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '�����û�б�Ҫ����Ʒ�����Ҳ��ܰ���ϳɡ�');
  end;
end;

procedure _about2;
begin
  This_Npc.NpcDialog(This_Player,
    '|{cmd}<�칤֮��>�������ħ����Եõ���Ϊ�˷�ֹʧ�֣��������2�����ϡ�\' +
    '|{cmd}<�����ؼ�>�ڴ��������п��Եõ������������Ҹ��õ����ջ��\' +
    '|{cmd}<�ؿ൨����Ҷ��>�ֱ����������������������Ͽ��Եõ���\' +
    '����Ҫ����һЩ<���лƽ�ɷֵ��������������>��\' +
    'ͨ����<�����ħ>��<��֮����>���ϣ����Եõ���Щ���Ρ�\' +
    '��Щ���ε��������������ĳɹ��ʣ�����������Ҳ���Ǻ��а��ա�\' +
    '��������֮ʱ���һ��õ���<���������е�������Ϊ����>��\' +
    '�������������ҿ������۵�ͷ���Ļ����Ҿ���ȥ��Ϊ������Ŷ��\' +
    '|{cmd}<����/@start>');
end;

procedure _heijin;
begin
  This_Npc.NpcDialog(This_Player,
    '�ҿ��Ժܸ����˵��ֻ��<����ͷ��(��Ʒ)>���������ɻƽ�ͷ����\' +
    '|{cmd}<����ͷ��(��ӡ)>�У��в���<����ͷ��(��Ʒ)>����ϧ����֪����\' +
    '����<����ͷ��(��ӡ)>��<����������>���ҾͿ��԰��������\' +
    '�������<��ˮ����>��<�̱�ʯ��>������<ѫ��֮��>��<������>��\' +
    '��Ҳ����ͬʱ�������������һ��ʧ�ܣ�ԭ�Ͼͽ����ջء�\' +
    '|{cmd}<ʹ����Ӿ���������/@teamjian>\' +
    '|{cmd}<ʹ����ˮ������̱�ʯ��������/@kuangjian>\' +
    '|{cmd}<ʹ��ѫ��֮�ĺ�������������/@thingjian>\' +
    '|{cmd}<����/@main>');
end;

procedure _heitou1;
begin
  if Random(10) < 3 then
  begin
    This_Player.Give('����ͷ��(��Ʒ)', 1);
    This_Npc.NpcDialog(This_Player,
      '�����������������Ȼ�Ǹ�����ͷ��(��Ʒ)����\' +
      '����ͷ��(��Ʒ)�����ɻƽ�ͷ������Ҫ���ṩһЩ���ϣ�\' +
      '�칤֮���������ؼ����ؿ൨����Ҷ�κ��лƽ�ɷֵ����Ρ�\' +
      '���ںδ����Եõ���Щ���ϣ���Ҳ��һЩ���飬��������ο���\' +
      '|{cmd}<���ڲ��ϵĳ���/@about2>\' +
      '|{cmd}<����/@heijin>\');
  end
  else
  begin
    This_Player.Give('����ͷ��', 1);
    This_Npc.NpcDialog(This_Player,
      '��ϧ���������ͨͨ��ֻ�Ǹ�����ͷ����\  \' +
      '|{cmd}<����/@heijin>');
  end;
end;

procedure _kuang;
begin
  if (This_Player.GetBagItemCount('����Ӿ���') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) then
  begin
    This_Player.Take('����Ӿ���', 1);
    This_Player.Take('����ͷ��(��ӡ)', 1);
    _heitou1;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '�����û�к���ͷ��(��ӡ)����Ӿ���ѽ��\' +
      '�ǲ��ǿ����ˣ�\' +
      '|{cmd}<����/@heijin>');
  end;
end;

procedure _sheng;
begin
  if (This_Player.GetBagItemCount('�����Ӿ���') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) then
  begin
    This_Player.Take('�����Ӿ���', 1);
    This_Player.Take('����ͷ��(��ӡ)', 1);
    _heitou1;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '�����û�к���ͷ��(��ӡ)����Ӿ���ѽ��\' +
      '�ǲ��ǿ����ˣ�\' +
      '|{cmd}<����/@heijin>');
  end;
end;

procedure _xieku;
begin
  if (This_Player.GetBagItemCount('а����Ӿ���') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) then
  begin
    This_Player.Take('а����Ӿ���', 1);
    This_Player.Take('����ͷ��(��ӡ)', 1);
    _heitou1;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '�����û�к���ͷ��(��ӡ)����Ӿ���ѽ��\' +
      '�ǲ��ǿ����ˣ�\' +
      '|{cmd}<����/@heijin>');
  end;
end;

procedure _dixue;
begin
  if (This_Player.GetBagItemCount('��Ѩ��Ӿ���') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) then
  begin
    This_Player.Take('��Ѩ��Ӿ���', 1);
    This_Player.Take('����ͷ��(��ӡ)', 1);
    _heitou1;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '�����û�к���ͷ��(��ӡ)����Ӿ���ѽ��\' +
      '�ǲ��ǿ����ˣ�\' +
      '|{cmd}<����/@heijin>');
  end;
end;

procedure _shimu;
begin
  if (This_Player.GetBagItemCount('ʯĹ��Ӿ���') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) then
  begin
    This_Player.Take('ʯĹ��Ӿ���', 1);
    This_Player.Take('����ͷ��(��ӡ)', 1);
    _heitou1;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '�����û�к���ͷ��(��ӡ)����Ӿ���ѽ��\' +
      '�ǲ��ǿ����ˣ�\' +
      '|{cmd}<����/@heijin>');
  end;
end;

procedure _kuangjian;
begin
  if (This_Player.GetBagItemCount('��ˮ����') > 0)
    and (This_Player.GetBagItemCount('�̱�ʯ��') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) then
  begin
    This_Player.Take('��ˮ����', 1);
    This_Player.Take('�̱�ʯ��', 1);
    This_Player.Take('����ͷ��(��ӡ)', 1);
    if Random(2) = 1 then
    begin
      This_Player.Give('����ͷ��(��Ʒ)', 1);
      This_Npc.NpcDialog(This_Player,
        '�����������������Ȼ�Ǹ�����ͷ��(��Ʒ)����\' +
        '����ͷ��(��Ʒ)�����ɻƽ�ͷ������Ҫ���ṩһЩ���ϣ�\' +
        '�칤֮���������ؼ����ؿ൨����Ҷ�κ��лƽ�ɷֵ����Ρ�\' +
        '���ںδ����Եõ���Щ���ϣ���Ҳ��һЩ���飬��������ο���\' +
        '|{cmd}<���ڲ��ϵĳ���/@about2>\' +
        '|{cmd}<����/@heijin>\');
    end
    else
      This_Npc.NpcDialog(This_Player,
        '�ܿ�ϧ��ʧ���ˣ�������Ǻ���ͷ��(��Ʒ)��\  \' +
        '|{cmd}<����/@heijin>');
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�����û���㹻����Ʒ�����Ҳ��ܰ��������');
end;

procedure _thingjian;
begin
  if (This_Player.GetBagItemCount('ѫ��֮��') > 0)
    and (This_Player.GetBagItemCount('������') > 0)
    and (This_Player.GetBagItemCount('����ͷ��(��ӡ)') > 0) then
  begin
    This_Player.Take('ѫ��֮��', 1);
    This_Player.Take('������', 1);
    This_Player.Take('����ͷ��(��ӡ)', 1);
    if Random(2) = 1 then
    begin
      This_Player.Give('����ͷ��(��Ʒ)', 1);
      This_Npc.NpcDialog(This_Player,
        '�����������������Ȼ�Ǹ�����ͷ��(��Ʒ)����\' +
        '����ͷ��(��Ʒ)�����ɻƽ�ͷ������Ҫ���ṩһЩ���ϣ�\' +
        '�칤֮���������ؼ����ؿ൨����Ҷ�κ��лƽ�ɷֵ����Ρ�\' +
        '���ںδ����Եõ���Щ���ϣ���Ҳ��һЩ���飬��������ο���\' +
        '|{cmd}<���ڲ��ϵĳ���/@about2>\' +
        '|{cmd}<����/@heijin>\');
    end
    else
      This_Npc.NpcDialog(This_Player,
        '�ܿ�ϧ��ʧ���ˣ�������Ǻ���ͷ��(��Ʒ)��\  \' +
        '|{cmd}<����/@heijin>');
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�����û���㹻����Ʒ�����Ҳ��ܰ��������');
end;

procedure _teamjian;
begin
  This_Npc.NpcDialog(This_Player,
    '����Ҫʹ���ĸ���Ӿ����������أ�\ \' +
    '|{cmd}<����Ӿ���/@kuang>           ^<�����Ӿ���/@sheng>           ^<а����Ӿ���/@xieku>\' +
    '|{cmd}<��Ѩ��Ӿ���/@dixue>           ^<ʯĹ��Ӿ���/@shimu>\' +
    '|{cmd}<����/@heijin>');
end;

//�ű�ִ�е����
begin
  domain;
end.