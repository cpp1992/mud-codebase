{
/*******************************************************************************
}

program Mir2;

{$I common.pas}
const
  nextRoomIdxStr = '51';

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '��ϲ�������<50��/c=red>�����ر���������ҵ�Ҫ��֮��\�㻹���Եõ�����Ľ�������ǵ��ڰ����������������ռ䣬\'
  +'���򽫵ò���������\5��Ǭ������������һ��Ǭ�������\'
  +'|{cmd}<����Ǭ����/@newskill21>\ \'
  +'|{cmd}<��ʼͶ����/@touzi>\ \'
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
    '��ϲ�������<50��/c=red>�����ر���������ҵ�Ҫ��֮��\�㻹���Եõ�����Ľ�������ǵ��ڰ����������������ռ䣬\'
    +'���򽫵ò���������\5��Ǭ������������һ��Ǭ�������\'
    +'|{cmd}<����Ǭ����/@newskill21>\ \'
    +'|{cmd}<��ʼͶ����/@touzi>\ \'
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
  //��ʾ�ո��ӵ�1�����ӵĵ��� 
  dianshu := This_Player.GetS(12, 3);
  if dianshu > 0 then
  begin
    //��յ���,��ֹˢ�ű�
    This_Player.SetV(0, 1, 0);
    if dianshu = 1 then
    begin
      This_Npc.NpcDialog(This_Player,
      '��ϲ�㣬�㽫�����ƾ֤2����\���ڰ����б����㹻�Ŀռ䡣\'
      +'��Ͷ�������ӵĵ���Ϊ��'+IntToStr(dianshu) +'\�����ǰ��'+IntToStr(dianshu) +'������\'
      +'|{cmd}<�ƶ�/@next_cube>');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '��ϲ�㣬�㽫���Ǭ�����' + inttostr(dianshu-1) +'����\���ڰ����б����㹻�Ŀռ䡣\'
      +'��Ͷ�������ӵĵ���Ϊ��'+IntToStr(dianshu) +'\�����ǰ��'+IntToStr(dianshu) +'������\'
      +'|{cmd}<�ƶ�/@next_cube>');
    end;   
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
  else if This_Player.FreeBagNum >= 5 then     
  begin
    //��һ��Ͷ����
    dianshu := Random(6) + 1;
    This_Player.SetV(0, 1, dianshu); 
    This_Player.SetS(12,3, dianshu);
    This_Npc.PlayDice(This_Player, 1,'@AfterPlayDice');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�����������������ռ������ȡ����,\����ȥ����һ����İ�����');
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

//������������������Ʒ���� 
procedure prizegive(Dice:integer);
begin
  if This_Player.GetS(12,4) <> 500 then
  begin
    This_Player.SetS(12,4,500);  
    case dice of
    1:
      begin
        This_Player.Give('��Ѫ����',1);
        This_Npc.NpcNotice('��ϲ��' + This_Player.Name + '���ڲر���50�Ż�ã���Ѫ����1����');
      end;
    2,3,4,5,6:
      begin
        This_Player.Give('Ǭ�����',dice-1);
        This_Npc.NpcNotice('��ϲ��' + This_Player.Name + '���ڲر���50�Ż�ã�Ǭ�����' + inttostr(dice-1) +'����'); 
      end;
    end;
  end;  
end;
 

procedure _next_cube;
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
  
  This_Player.RandomFlyTo('EM002~51');
  if diceNum > 1 then
  begin
    prizegive(diceNum);   //���ý�������     
    This_Player.CallOut(This_Npc,1,'addroom');
    This_Player.callOutParam := nextRoomIdxStr;
    This_Player.SetS(12,4,0);
  end
  else if diceNum = 1 then
  begin
    prizegive(diceNum);  //���ý�������
    This_Player.SetS(12,4,0);
  end;
end;

procedure _leave;
begin
  if compareText(This_Player.MapName, 'EM002~50') = 0 then
  begin
    This_Player.Flyto('3',330,330);
  end;
end; 

begin
  domain;
end.