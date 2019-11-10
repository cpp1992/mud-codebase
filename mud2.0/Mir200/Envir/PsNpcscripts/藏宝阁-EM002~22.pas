{
/*******************************************************************************
}

program Mir2;

{$I common.pas}
const
  nextRoomIdxStr = '23';

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '���,' + This_Player.Name + '�����ǲر���22�ţ�����Ҫ5��<Ǭ����/c=red>��\'
  +'������ҵ�Ҫ��֮�������������ǰ����\5��Ǭ������������һ��Ǭ�����\'
  +'|{cmd}<����Ǭ����/@newskill21>\ \'
  +'|{cmd}<����Ǭ���ʼͶ����/@touzi>\ \'
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
    '���,' + This_Player.Name + '�����ǲر���22�ţ�����Ҫ5��<Ǭ����/c=red>��\'
    +'������ҵ�Ҫ��֮�������������ǰ����\5��Ǭ������������һ��Ǭ�����\'
    +'|{cmd}<����Ǭ����/@newskill21>\ \'
    +'|{cmd}<����Ǭ���ʼͶ����/@touzi>\ \'
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
  dianshu := This_Player.GetS(12, 3);
  if dianshu > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��Ͷ�������ӵĵ���Ϊ��'+IntToStr(dianshu) +'\�����ǰ��'+IntToStr(dianshu) +'������\'
    +'���⣬��Ҳ����ѡ��ͬʱ�ٻ��һ������������ƶ�\'
    +'����뱣��1�����ϵİ����ռ䣬������ȡ�����ɲ�Ҫ����Ŷ�� \ \'
    +'|{cmd}<ֱ���ƶ�/@next_cube>             ^<������ͣ���ʼ�ƶ�/@next_cube_2> \ \');
    //��յ���,��ֹˢ�ű�
    This_Player.SetV(0, 1, 0);   
  end;
end; 

procedure _touzi;
var
  last_point, dianshu : Integer;   //��ȡ��¼�ķ����ţ�ֱ����ת����÷��䣻
begin
  //ʹ������12�ı���3��¼Ͷ����������  
  last_point := This_Player.GetS(12, 3);
  if (last_point >= 1) and (last_point <= 6) then
  begin
    //��ֻ�����һ�������Ӻ�û�ƶ����˳��˵���� 
    This_Npc.NpcDialog(This_Player,
      '֮ǰ����Ͷ�������ӵĵ���Ϊ��' + IntToStr(last_point) + ' \�����ǰ��' 
      + IntToStr(last_point) + '������  \ \|{cmd}<�ƶ�/@next_cube>');
  end     
  else if This_Player.GetBagItemCount('Ǭ�����') >= 1 then 
  begin
    This_Player.Take('Ǭ�����',1);
    //��һ��Ͷ����
    dianshu := Random(6) + 1;
    This_Player.SetV(0, 1, dianshu); 
    This_Player.SetS(12,3, dianshu);    
    This_Npc.PlayDice(This_Player, 1,'@AfterPlayDice');
  end
  else if This_Player.GetBagItemCount('Ǭ����') >= 5 then 
  begin
    This_Player.Take('Ǭ����',5);
    //��һ��Ͷ����
    dianshu := Random(6) + 1;
    This_Player.SetV(0, 1, dianshu); 
    This_Player.SetS(12,3, dianshu);
    This_Npc.PlayDice(This_Player, 1,'@AfterPlayDice');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '5��Ǭ������������һ��Ǭ�������\������Ѿ������ˣ��ͽ����Ұɣ�');
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
  roomIdx : Integer;
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


procedure next_cube;
var
  desRoomId, diceNum : Integer;
begin
  desRoomId := This_Player.GetS(12, 2);  //����� 
  diceNum   := This_Player.GetS(12, 3);  //���������� 
  if diceNum > 6 then 
    Exit;
  
  //�ȱ�����ҵ�һ��������������ķ���
  if desRoomId < 0 then
  begin
    This_Player.SetS(12, 2, 0);
    desRoomId := 0;
  end;
  
  if not isCurMap(desRoomId) then
    Exit; 
    
  desRoomId := desRoomId + diceNum;
  This_Player.SetS(12, 2, desRoomId);
  This_Player.SetS(12, 3, 0);
  
  This_Player.RandomFlyTo('EM002~23');
  if diceNum > 1 then
  begin    
    This_Player.CallOut(This_Npc,1,'addroom');
    This_Player.callOutParam := nextRoomIdxStr;
  end;
end;

procedure _next_cube;
begin
  next_cube;
end;

procedure _next_cube_2;
begin
  This_Player.Give('�������',1);
  next_cube; 
end;


procedure _leave;
begin
  if compareText(This_Player.MapName, 'EM002~22') = 0 then
  begin
    This_Player.Flyto('3',330,330);
  end;
end; 

begin
  domain;
end.