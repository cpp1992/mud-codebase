{
*******************************************************************}

program Mir2;

var 
  items : array[1..18] of string;


procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _doexit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure PushDrinkItem_OK;
Begin
end;

//************************
//      ����������� 
//************************

procedure _chuangguan;
begin
  This_Npc.NpcDialog(This_Player,
    '��ͬ�ľ���ͨ��ͬ�ĵ��Σ�����Ҳ����������ͬ�Ķ�ħ��\' +
    '����������һ��������,������ֻ��ͣ�����5����\' +
    '���������У�ֻ��������Ա���ɽ�����һ��\' +
    '���ˣ��и�С���ܸ�����,\' +
    '�ڵ�����ײ�����û�Ķ�ħ���ϲ��вر�ͼ��ϡ���䱦��\' +
    '�������ҿ�������ʲô����ɣ��Ҵ�����ȥ������սȺħ��\' +
    '|{cmd}<ȥ����ӳ�ħ/@goKuangDong>         ^<ȥ�����ӳ�ħ/@goShenDian>\' +
    '|{cmd}<ȥа����ӳ�ħ/@goXieKu>         ^<ȥ��Ѩ��ӳ�ħ/@goDiXue>\' +
    '|{cmd}<ȥʯĹ��ӳ�ħ/@goShimu>         ^<�˳�/@exit>'
  );
end;

procedure createMon(dynRoomName: string; roomIdx: Integer);
begin
  if compareText(dynRoomName, 'KuangDong') = 0 then
  begin
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '��Ұ��', 5); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '��ʬ1', 30); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, 'ʬ��', 8); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '�罩��', 5); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 1, '��Ұ��', 1);
  end; 

  if compareText(dynRoomName, 'ShenDian') = 0 then
  begin
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '�������', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '������ʿ', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '���깭����', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '�������3', 5); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '������ʿ3', 5);
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '���깭����3', 5); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '�������0', 4); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '������ʿ0', 4); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '���깭����3', 4); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, '�罩��', 4);    
  end; 

  if compareText(dynRoomName, 'XieKu') = 0 then
  begin
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '���齩ʬ', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '��Ұ��', 5); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '��ʬ1', 20); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '����ʬ��', 20); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '�罩��', 4); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 1, '��Ұ��', 1);
  end;
 
  if compareText(dynRoomName, 'DiXue') = 0 then
  begin
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, 'ǯ��', 20); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 50, 'а��ǯ��2', 4); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 70, '���', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 70, '������', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 70, '��ɫ����', 10);
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 70, '����ʷ��ķ', 5); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 70, '������', 2); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 1, '��Ұ��', 1);    
  end;

  if compareText(dynRoomName, 'ShiMu') = 0 then
  begin
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, 'Ш��', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '��Ұ��3', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '��Ұ��3', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '��ɫ����', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, 'Ы��', 10);
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 40, '��Ұ��0', 10); 
    This_Npc.CreateDynRoomMon(dynRoomName, roomIdx, 50, 50, 1, '��Ұ��', 1);    
  end;         
end;

procedure goToDungeon(dynRoomName, scrollName : string);
var
  roomIdx : Integer;
begin
  if This_Player.MapName <> '3' then
    Exit;
   
  if This_Player.GetBagItemCount(scrollName) = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
      '��û����Ӧ��ͼ�ľ��ᣬ���ܽ���'
    );
    Exit;
  end;
  
  if not This_Player.IsGroupOwner then
  begin
    This_Npc.NpcDialog(This_Player,
      '���������ڶ���Ķӳ������ܽ���'
    );
    Exit;
  end;

  This_Player.Take(scrollName, 1);  
  //��ȡ��̬����� 
  roomIdx := This_Npc.GetAIdleDynRoomIndex(dynRoomName);
  //���´����Ķ�̬������ˢ�� 
  CreateMon(dynRoomName, roomIdx);
  
  //���ӷɵ���̬������ 
  This_Player.GroupCallOut(This_Npc, 'callOutFlyBack', dynRoomName, 2400);
  This_Player.GroupFlyToDynRoom(dynRoomName, roomIdx);
end;

procedure callOutFlyBack;
begin
  if This_Player.DynRoomName = This_Player.CallOutParam then
    This_Player.Flyto('3', 323, 333);
end;

procedure _goKuangDong;
begin
  goToDungeon('KuangDong', '����Ӿ���');
end;

procedure _goShenDian;
begin
  goToDungeon('ShenDian', '�����Ӿ���');
end;

procedure _goXieKu;
begin
  goToDungeon('XieKu', 'а����Ӿ���');
end;

procedure _goDiXue;
begin
  goToDungeon('DiXue', '��Ѩ��Ӿ���'); 
end;

procedure _goshimu;
begin
  goToDungeon('ShiMu', 'ʯĹ��Ӿ���');
end;

//******************************
//        ���ӡ���� 
//******************************

procedure _goToJF;
begin
  This_Npc.NpcDialog(This_Player,
    '�����ˣ���Ҫ������εķ�ӡ��\' +
    '�����ӵ��һ֧�����Ž����ӵ��ǿ�������Ķ��飬\' +
    '�ǽ��·�ϵ�����Σ����Ȼ���ܸ���Ķ���������ѡ�\' +
    '�����Ҫƾ��һ��֮������ǰ������Ҳ�ǳ�������������\' +
    '�Ǿ���������һ��֮����ף�����ɹ���\ \' +
    '|{cmd}<�˽��������Ϣ/@moreJFInfo>\' +
    '|{cmd}<�Һ�����һ��ȥ/@goWithTeam>                   ^<��Ҫ����ǰ��/@goAlone>'

  );
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

//********************
//  �칤������� 
//********************

procedure _checkthing;
begin
  if This_Player.MapName = '3' then
  begin
    if This_Player.IsGroupOwner then
    begin
    if This_Player.GetBagItemCount('������Ӿ���') > 0 then
    begin
      if This_Player.Take('������Ӿ���', 1) then
        This_Player.GroupFly('T3063~01');
    end
    else if This_Player.GetBagItemCount('����Ӿ���') > 0 then
    begin
      if This_Player.Take('����Ӿ���', 1) then
        This_Player.GroupFly('T3063~01');
    end
    else if This_Player.GetBagItemCount('�����Ӿ���') > 0 then
    begin
      if This_Player.Take('�����Ӿ���', 1) then
        This_Player.GroupFly('T3063~01');
    end
    else if This_Player.GetBagItemCount('а����Ӿ���') > 0 then
    begin
      if This_Player.Take('а����Ӿ���', 1) then
        This_Player.GroupFly('T3063~01');
    end
    else if This_Player.GetBagItemCount('��Ѩ��Ӿ���') > 0 then
    begin
      if This_Player.Take('��Ѩ��Ӿ���', 1) then
        This_Player.GroupFly('T3063~01');
    end
    else if This_Player.GetBagItemCount('ʯĹ��Ӿ���') > 0 then
    begin
      if This_Player.Take('ʯĹ��Ӿ���', 1) then
        This_Player.GroupFly('T3063~01');
    end
    else
      This_Npc.NpcDialog(This_Player,
        '��û���κ���Ӿ��ᰡ���Ҳ�������ȥ');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
        '�㲻�����ڶ���Ķӳ������ܽ���');
    end;
  end;
end;


procedure _checkthing1;
begin
  if compareText(This_Player.MapName, '3') = 0 then
  begin
    if This_Player.GetBagItemCount('������Ӿ���') > 0 then
    begin
    if This_Player.Take('������Ӿ���', 1) then
        This_Player.Flyto('T3063~01', 0, 0);
    end
    else if This_Player.GetBagItemCount('����Ӿ���') > 0 then
    begin
    if This_Player.Take('����Ӿ���', 1) then
        This_Player.Flyto('T3063~01', 0, 0);
    end
    else if This_Player.GetBagItemCount('�����Ӿ���') > 0 then
    begin
      if This_Player.Take('�����Ӿ���', 1) then
        This_Player.Flyto('T3063~01', 0, 0);
    end
    else if This_Player.GetBagItemCount('а����Ӿ���') > 0 then
    begin
      if This_Player.Take('а����Ӿ���', 1) then
        This_Player.Flyto('T306~01', 0, 0);
    end
    else if This_Player.GetBagItemCount('��Ѩ��Ӿ���') > 0 then
    begin
      if This_Player.Take('��Ѩ��Ӿ���', 1) then
        This_Player.Flyto('T3063~01', 0, 0);
    end
    else if This_Player.GetBagItemCount('ʯĹ��Ӿ���') > 0 then
    begin
      if This_Player.Take('ʯĹ��Ӿ���', 1) then
        This_Player.Flyto('T3063~01', 0, 0);
    end
    else
      This_Npc.NpcDialog(This_Player,
        '��û���κ���Ӿ��ᰡ���Ҳ�������ȥ');
  end;

end;

procedure _gohuan7;
begin
  This_Npc.NpcDialog(This_Player,
    'ֻҪ��ӵ�п���Ӿ��ᡢ�����Ӿ��ᡢа����Ӿ��ᡢ\' +
    '��Ѩ��Ӿ��ᡢʯĹ��Ӿ��������־����е�����һ��\' +
    '�ҾͿ�������ǰ�������Թ�������Ҳ��һ�����³�����\' +
    '����������ȥ����ȣ�ǰȥ����칤���\' +
    '|{cmd}<���ǰ�������Թ�/@checkthing>\' +
    '|{cmd}<����ǰ�������Թ�/@checkthing1>\' +
    '|{cmd}<����/@main>');

end;

Procedure DoNext;
begin
   if (compareText(This_Player.MapName, 'R001~01') = 0) or (compareText(This_Player.MapName, 'R001~02') = 0) or (compareText(This_Player.MapName, 'R001~03') = 0) or 
      (compareText(This_Player.MapName, 'R001~04') = 0) or (compareText(This_Player.MapName, 'R001~05') = 0) or (compareText(This_Player.MapName, 'D2013~01') = 0) or  
      (compareText(This_Player.MapName, 'D2013~02') = 0) or (compareText(This_Player.MapName, 'D2013~06') = 0) or (compareText(This_Player.MapName, 'D2013~04') = 0) or 
      (compareText(This_Player.MapName, 'D2013~05') = 0) or (compareText(This_Player.MapName, 'D717~01') = 0) or (compareText(This_Player.MapName, 'D717~02') = 0) or 
      (compareText(This_Player.MapName, 'D717~06') = 0) or (compareText(This_Player.MapName, 'D717~04') = 0) or (compareText(This_Player.MapName, 'D717~05') = 0) or 
      (compareText(This_Player.MapName, 'D024~01') = 0) or (compareText(This_Player.MapName, 'D024~02') = 0) or (compareText(This_Player.MapName, 'D024~06') = 0) or 
      (compareText(This_Player.MapName, 'D024~07') = 0) or (compareText(This_Player.MapName, 'D024~05') = 0) or (compareText(This_Player.MapName, 'D2079~01') = 0) or 
      (compareText(This_Player.MapName, 'D2079~02') = 0) or (compareText(This_Player.MapName, 'D2079~03') = 0) or (compareText(This_Player.MapName, 'D2079~04') = 0) or 
      (compareText(This_Player.MapName, 'D2079~05') = 0) or (compareText(This_Player.MapName, 'D5071~17') = 0) or (compareText(This_Player.MapName, 'D5071~18') = 0) or 
      (compareText(This_Player.MapName, 'D5071~19') = 0) or (compareText(This_Player.MapName, 'D5071~20') = 0) or (compareText(This_Player.MapName, 'D5071~21') = 0) or 
      (compareText(This_Player.MapName, 'D5071~22') = 0) or (compareText(This_Player.MapName, 'D5071~23') = 0) or (compareText(This_Player.MapName, 'D5071~24') = 0) or 
      (compareText(This_Player.MapName, 'D5071~25') = 0) or (compareText(This_Player.MapName, 'D5071~26') = 0) then  
   begin
      This_Player.Flyto('3',333,333);
   end;
end; 

//�����ħ����3��XX����ģ�壻 
Procedure YanHuoTuMo_01(BaoZi : String; YHMap : String; XPoint : integer ; YPoint : integer; SecGuai : String);
var
temp : integer;
begin
   if compareText(This_Player.MapName, '3') = 0 then
   begin
      if This_Player.MyLFnum >= 1 then
      begin
         This_Player.DecLF(10001, 1, false); 
         This_Npc.CreateMon(YHMap,XPoint,YPoint,1,SecGuai,10);
         This_Player.RandomFlyTo(YHMap);
         This_Player.CallOut(This_Npc,1800,'DoNext');
         if GetG(11,1) >= 499 then             //SetG()��GetG()Ϊȫ�ֱ�������NPC��Player�޹أ�                                  
         begin
            SetG(11,1,0);
            This_Npc.CreateMon(YHMap,XPoint,YPoint,1,'��֮ħӰ����',1);
            This_Npc.NpcDialog(This_Player,'����Ȼ�����˶�ħ�Ļ��أ����Լ�Ҫ���İ���');            
         end else if GetG(11,1) = -1 then
         begin
            SetG(11,1,1);
         end else
         begin
            temp := GetG(11,1)+1;
            SetG(11,1,temp);
         end;
      end else 
      begin
         This_Npc.NpcDialog(This_Player,
         '������û���㹻���������');
         Exit;
      end;
   end;
end;

//�����ħ����6��XX������1��XX����ģ�壻   ���ջ���6  һ��һ��3 
Procedure YanHuoTuMo_02(BaoZii : String; YHMapp : String; XPointt : integer ; YPointt : integer; SecGuaii : String);
var
temp : integer;
ts   : string;
begin
   if compareText(This_Player.MapName, '3') = 0 then
   begin
      if This_Player.MyLFnum >= 1 then
      begin
         This_Player.DecLF(10001, 1, false); 
         
         This_Player.RandomFlyTo(YHMapp);
         This_Npc.CreateMon(YHMapp,XPointt,YPointt,1,SecGuaii,10);
         This_Player.CallOut(This_Npc,1800,'DoNext');
         if GetG(11,1) >= 499 then                                 //SetG()��GetG()Ϊȫ�ֱ�������NPC��Player�޹أ� 
         begin            
            SetG(11,1,0);
            This_Npc.CreateMon(YHMapp,XPointt,YPointt,1,'��֮ħӰ����',1);
            This_Npc.NpcDialog(This_Player,'����Ȼ�����˶�ħ�Ļ��أ����Լ�Ҫ���İ���');
         end else if GetG(11,1) = -1 then 
         begin
            SetG(11,1,1);
         end else
         begin
            temp := GetG(11,1)+1;
            SetG(11,1,temp); 
         end;
      end else 
      begin
         This_Npc.NpcDialog(This_Player,
         '������û���㹻���������');
         Exit;
      end;
      
      
   end;
end;







Procedure _god5071;
begin
   This_Npc.NpcDialog(This_Player,
   'ʹ���������ѡ�����5����ħս���е�����һ����\ \'+
   '|{cmd}<���ջ���(ս��һ)/@god50711>    ^<���ջ���(ս����)/@god50712>    |<���ջ���(ս����)/@god50713>\ \'+
   '^<���ջ���(ս����)/@god50714>    |<���ջ���(ս����)/@god50715>');
end;

Procedure _god50711;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~17',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~17',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;

Procedure _god50712;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~18',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~18',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;

Procedure _god50713;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~19',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~19',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;

Procedure _god50714;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~20',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~20',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;

Procedure _god50715;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~21',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~21',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;



Procedure _god5071_1;
begin
   This_Npc.NpcDialog(This_Player,
   'ʹ���������ѡ�����5����ħս���е�����һ����\ \'+
   '|{cmd}<��������(ս��һ)/@god50711_1>    ^<��������(ս����)/@god50712_1>    |<��������(ս����)/@god50713_1>\ \'+
   '^<��������(ս����)/@god50714_1>    |<��������(ս����)/@god50715_1>');
end;

Procedure _god50711_1;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~22',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~22',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;

Procedure _god50712_1;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~23',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~23',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;

Procedure _god50713_1;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~24',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~24',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;

Procedure _god50714_1;
begin
  if (This_Player.GetBagItemCount('���ջ���') >= -1) or (This_Player.GetBagItemCount('���ջ����') > 0) then
  begin
    YanHuoTuMo_02('���ջ���','D5071~25',24,66,'��֮������ʿ72');
  end
  else if (This_Player.GetBagItemCount('��������') >= 6) or (This_Player.GetBagItemCount('�������ΰ�') > 0) then
  begin
    YanHuoTuMo_02('��������','D5071~25',24,66,'��֮������ʿ72');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,
     '������û�б������𰡣�');
     Exit;
  end;
end;

procedure _tumo_Dlg;
begin
   This_Npc.NpcDialog(This_Player,
   '��ħս������ھ����ҵ����ֻ��ͨ������������\'+
   '������������Ķ������Ҷ�����η���������������������ڣ�\'+
   '����������Ҿ��ܰ�����һ����ħս������ڡ���\'+
   'ͬ�������������ȥ����ͬ����ħս��\'+
   '���������Ƕ������ûὥȾħ�ԣ���ÿ�ν�����ֻ��30����ʱ�䣬\'+
   '|{cmd}<���ջ���/@god5071>         ^<��������/@god5071_1>  ');
end;

Procedure _dongcha;
begin
   This_Npc.NpcDialog(This_Player,
   '�ഫ���귨��½��ĳЩ���䣬��һ����ħ������������װ����\'+
   'Ҫ�����Щ����ͱ�������Ҫɱ����Щ��ħ��������Ϊ\'+
   '�˻����Щ�����ϧ���Լ���������Ϊ���ۣ���Щ�˳ɹ��ˣ�\'+
   '�������ʿ�����˶�ħ�Ľ��£���λ�����Ƿ�Ҳ��ȥ��\'+
   '����Щħ�޵��ټ������� 5���ң��Ҿ��ܰ���ȥ�鿴���ǵ�\'+
   '��Ӱ������ 5�Ž��ʯ���Ҿ�������ȥ����ħѨ��\ \'+
   '|{cmd}<��5���ң�̽��ħ����Ӱ/@paymoney>          |<��5�Ž��ʯ��ǰ����ħ/@paydia>\'+
   '|{cmd}<����/@main>');
end;

Procedure _paymoney;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ѯ�ĸ�ħ��Ķ�ħ��Ϣ�أ�\ \'+
   '|{cmd}<�������/@kunhuo>                      ^<��ѯ�����Ķ�ħ��Ϣ/@qita>\ \'+
   '|{cmd}<����/@main>');
end;

Procedure _qita;
begin
   This_Npc.NpcDialog(This_Player,
   '�������ѯ����Ķ�ħ��Ϣ����Ȼ���������ޣ�����֪��˭����\'+
   '���������е����ܣ�ֻҪ�����������֪���Ķ�ħ��Ѩ�Ϳ����ˡ�\ \'+
   '|{cmd}<ǯ�泲Ѩ/@askbai>              ^<�������/@askbi1>              ^<��������/@askbi1>\ \'+
   '|{cmd}<����س�/@askbi1>              ^<��Ԩħ��/@askbi1>              ^<����/@main>');
end;

Procedure _askbai;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ŵ��򵼺���֪��һЩ�й���ħ�޵����飬Ҫô��ȥ��\'+
   '�����ʿ��ɡ�\ \'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _askbi1;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ϱ�����֪��һЩ�й���ħ�޵����飬Ҫô��ȥ��\'+
   '�����ʿ��ɡ�\ \'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _kunhuo;
begin
   if This_Player.GoldNum >=50000 then
   begin
      This_Player.DecGold(50000);
      if CheckOtherMapMon('T140') >= 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '������ָ���㣬\'+
         '����ħ�޾��غ���ǰ������ʱ��ȥ��������ʱ��\ \'+
         '|{cmd}<��5�Ž��ʯ��ǰ����ħ/@paydiamond>');
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '������ָ���㣬��ϧ��ħ�޻�û�г��֡�');
      end;
   end else
   begin
   This_Npc.NpcDialog(This_Player,
   '������û��50000��Ұ�����Ҳ�ﲻ�����ˣ�\');
   end;
end;

Procedure _paydiamond;
begin
   if compareText(This_Player.MapName, '3') = 0  then
   begin
      if This_Player.MyDiamondnum >= 5 then
      begin
         This_Player.TakeDiamond(5,This_NPC);
         This_Player.Flyto('R001',60,98);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '����ô��5�Ž��ʯҲû�а���\ \'+
         '|{cmd}<�˳�/@exit>');
      end;   
   end;   
end;

Procedure _paydia;
begin
   This_Npc.NpcDialog(This_Player,
   '��ֻ������ȥ��Դ֮�ţ�����Ҫ����5�Ž��ʯ��\ \'+
   '|{cmd}<��5�Ž��ʯ��ǰ����ħ/@paydiamond>\ \'+
   '|{cmd}<����/@main>');
end;





begin
   This_Npc.NpcDialog(This_Player,
   'ǰ�����ǳ���Σ�յĶ�ħ֮�أ������������Ψһ����ڡ�\' +
   'ֻҪ�㽻����һ�����ᣬ�Ҿ��ܴ������Ķ���ȥն����ħ��\' +
   'ǰ·�����쳣���գ����û���Ŷӵ�֧�֣����ǲ�ȥΪ�á���\ \' +
  
   '|{cmd}<����칤���/@gohuan7>\'+
   '|{cmd}<�����ħ/@tumo_Dlg>          \'+                 //^<ʹ���񻨽��жһ�/@lihua> 
   '|{cmd}<����ħ����Ϣ/@dongcha>\ \');
end.