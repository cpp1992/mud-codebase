{
/*******************************************************************************
}

program Mir2;

{$I common.pas}
const
  nextRoomIdxStr = '54';
  preRoomIdxStr = '52';

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '��ã�' + This_Player.Name + '�����ǲر���53�ţ������ֱ�������ӣ�\'
  +'�����ӵ���Ϊ<����/c=red>ʱ���㽫��<ǰ��/c=red>���������\'
  +'�����ӵ���Ϊ<˫��/c=red>ʱ���㽫��<����/c=red>���������\'
  +'5��Ǭ������������һ��Ǭ�������\'
  +'|{cmd}<����Ǭ����/@newskill21>\ \'
  +'|{cmd}<Ͷ����/@touzi>\ \'
  +'|{cmd}<�뿪�ر���/@leave>'
  );
end;

procedure _newskill21;
begin
  if This_Player.GetBagItemCount('Ǭ����') >= 5 then
  begin
    This_Player.Take('Ǭ����',5);
    This_Player.Give('Ǭ�����',1);
    This_Npc.NpcDialog(This_Player,
    '��ã�' + This_Player.Name + '�����ǲر���53�ţ������ֱ�������ӣ�\'
    +'�����ӵ���Ϊ<����/c=red>ʱ���㽫��<ǰ��/c=red>���������\'
    +'�����ӵ���Ϊ<˫��/c=red>ʱ���㽫��<����/c=red>���������\'
    +'5��Ǭ������������һ��Ǭ�������\'
    +'|{cmd}<����Ǭ����/@newskill21>\ \'
    +'|{cmd}<Ͷ����/@touzi>\ \'
    +'|{cmd}<�뿪�ر���/@leave>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '5��Ǭ������������һ��Ǭ�������\������Ѿ������ˣ��ͽ����Ұɣ�');
  end;
end;

//Ͷ���ӽ�����Ĵ�����̣����������ͼ�¼Ͷ����������
//ע�⣺�����Ӻ�ص��ĺ�����Ҫ���»��� 
procedure _AfterPlayDice();
var 
dianshu:integer; //Ͷ���ӵĽ������ 
begin
  //���0�������1�ű�����ʾ�ո��ӵ�1�����ӵĵ��� 
  dianshu := This_Player.GetV(0,1);
  if dianshu > 0 then
  begin
    //����ǰ�����浽��11�Ż��3�ű����� 
    This_Player.SetS(12,3,dianshu);
    case dianshu of
    1,3,5:
      begin 
        This_Npc.NpcDialog(This_Player,
        '��Ͷ�������ӵĵ���Ϊ��' + IntToStr(dianshu) + ' \�����ǰ��' 
        + IntToStr(dianshu) + '������  \ \|{cmd}<�ƶ�/@next_cube>');
      end;
    2,4,6:
      begin
        This_Npc.NpcDialog(This_Player,
        '��Ͷ�������ӵĵ���Ϊ��' + IntToStr(dianshu) + ' \��������' 
        + IntToStr(dianshu) + '������  \ \|{cmd}<�ƶ�/@next_cube>');
      end;
    end;
    This_Player.SetV(0, 1, 0);   
  end;
end; 

procedure _touzi;
var
  last_point : Integer;   //��ȡ��¼�ķ����ţ�ֱ����ת����÷��䣻
begin
  //ʹ������12�ı���3��¼Ͷ����������  
  last_point := This_Player.GetS(12, 3);
  if (last_point >= 1) and (last_point <= 6) then
  begin
    //��ֻ�����һ�������Ӻ�û�ƶ����˳��˵����
    case last_point of
    1,3,5:
      begin 
        This_Npc.NpcDialog(This_Player,
        '֮ǰ����Ͷ�������ӵĵ���Ϊ��' + IntToStr(last_point) + ' \�����ǰ��' 
        + IntToStr(last_point) + '������  \ \|{cmd}<�ƶ�/@next_cube>');
      end;
    2,4,6:
      begin
        This_Npc.NpcDialog(This_Player,
        '֮ǰ����Ͷ�������ӵĵ���Ϊ��' + IntToStr(last_point) + ' \��������' 
        + IntToStr(last_point) + '������  \ \|{cmd}<�ƶ�/@next_cube>');
      end;
    end;
  end       
  else
  begin
    //��һ��Ͷ����
    This_Player.SetV(0, 1, Random(6)+1);
    This_Npc.PlayDice(This_Player, 1,'@AfterPlayDice');
  end;  
end;

function isCurMap(idx: Integer): Boolean;
var
  roomName : string;
begin
  //���㷿���Ƿ�Ϊ��ǰ���ڣ��������ˢ�ű� 
  if idx < 10 then
    roomName := 'EM002~0' + IntToStr(idx)
  else
    roomName := 'EM002~' + IntToStr(idx);  
    
  if compareText(This_Player.MapName, roomName) = 0 then
    Result := True
  else
    Result := False;      
end;

procedure addroom;
var
  roomIdx: Integer;
  roomName, idxStr, desRoom : string;
begin
  //���㵱ǰ����� 
  roomIdx := StrToIntDef(This_Player.CallOutParam, -1);
  
  if roomIdx = -1 then
    Exit;

  //Ŀ�귿��� 
  desRoom := IntToStr(This_Player.GetS(12, 2));
  
  //����Ŀ�귿�� 
  if ( compareText(This_Player.MapName, 'EM002~60') = 0 ) or 
     ( comPareText(This_Player.CallOutParam, desRoom) = 0 ) then
    Exit;  
  
  //����Ҫ�ɵĵ�ͼ
  roomIdx := roomIdx + 1;
  This_Player.callOutParam := IntToStr(roomIdx);

  if roomIdx < 10 then
    roomName := 'EM002~0' + This_Player.callOutParam
  else
    roomName := 'EM002~' + This_Player.callOutParam;
      
  //��ʼ�� 
  This_Player.RandomFlyTo(roomName);        
  This_Player.CallOut(This_Npc,1,'addroom');    
end;

procedure decRoom;
var
  roomIdx: Integer;
  roomName, idxStr, desRoom : string;
begin
  //���㵱ǰ����� 
  roomIdx := StrToIntDef(This_Player.CallOutParam, -1);
  if roomIdx = -1 then
    Exit;

  //Ŀ�귿��� 
  desRoom := IntToStr(This_Player.GetS(12, 2));
  
  //����Ŀ�귿�� 
  if comPareText(This_Player.CallOutParam, desRoom) = 0 then
    Exit;  
  
  //����Ҫ�ɵĵ�ͼ
  roomIdx := roomIdx - 1;
  This_Player.callOutParam := IntToStr(roomIdx);

  if roomIdx < 10 then
    roomName := 'EM002~0' + This_Player.callOutParam
  else
    roomName := 'EM002~' + This_Player.callOutParam;
      
  //��ʼ�� 
  This_Player.RandomFlyTo(roomName);        
  This_Player.CallOut(This_Npc,1,'decRoom');    
end;

procedure _next_cube;
var
  desRoomId, diceNum : Integer;
  bBack : Boolean;
begin
  if compareText(This_Player.MapName, 'EM002~53') <> 0 then
    Exit;

  desRoomId := This_Player.GetS(12, 2);  //����� 
  diceNum   := This_Player.GetS(12, 3);  //���������� 
  if (diceNum > 6) or (diceNum < 0) then 
    Exit;
  
  //�ȱ�����ҵ�һ��������������ķ���
  if desRoomId < 0 then
  begin
    This_Player.SetS(12, 2, 0);
    desRoomId := 0;
  end;
  
  if not isCurMap(desRoomId) then
    Exit;   

  //  ������������������һ����ǰ�����Ǻ��� 
  case diceNum of
  1,3,5:
    begin
      bBack := False;
      desRoomId := desRoomId + diceNum;                 
      This_Player.RandomFlyTo('EM002~54');
      This_Player.callOutParam := nextRoomIdxStr;
    end;
  2,4,6:
    begin
      bBack := True;
      desRoomId := desRoomId - diceNum;
      This_Player.RandomFlyTo('EM002~52');
      This_Player.callOutParam := preRoomIdxStr;
    end; 
  else
    Exit;
  end;
  
  This_Player.SetS(12, 2, desRoomId);
  This_Player.SetS(12, 3, 0);
  
  if bBack then
    This_Player.CallOut(This_Npc,1,'decRoom')
  else   
    This_Player.CallOut(This_Npc,1,'addroom');
  
end;


procedure _leave;
begin
  if compareText(This_Player.MapName, 'EM002~53') = 0 then
  begin
    This_Player.Flyto('3',330,330);
  end;
end; 

begin
  domain;
end.