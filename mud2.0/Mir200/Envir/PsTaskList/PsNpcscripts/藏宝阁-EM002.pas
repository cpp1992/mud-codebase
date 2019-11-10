{
/*******************************************************************************
}

program Mir2;

{$I common.pas}
const
  nextRoomIdxStr = '1';

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '���,' + This_Player.Name + '�����ǲر���0�ţ�\�㽫���һ��ǰ���Ļ��ᡣ\'
  +'���⣬������ж����Ǭ�������������������\5��Ǭ������������һ��Ǭ�������\'
  +'|{cmd}<��ʼͶ����/@touzi_1>            ^<����Ǭ����/@newskill21>\ \'
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
    '���ǲر���0�ţ������ֱ��ͨ������ǰ����\5��Ǭ������������һ��Ǭ�������\'
    +'|{cmd}<����Ǭ����/@newskill21>\ \'
    +'|{cmd}<��ʼͶ����/@touzi_1>\ \'
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
       //����ǰ�����浽��12�Ż��3�ű����� 
       This_Player.SetS(12,3,dianshu);
       This_Npc.NpcDialog(This_Player,
         '��Ͷ�������ӵĵ���Ϊ��'+IntToStr(dianshu) +'\�����ǰ��'+IntToStr(dianshu) +'������ \ \|{cmd}<�ƶ�/@next_cube>');
          //��յ���,��ֹˢ�ű�
       This_Player.SetV(0, 1, 0);   
  end;
end; 


procedure _touzi_1;
begin
  This_Npc.NpcDialog(This_Player,
  '�����֮ǰû����ɿ������;�뿪��\����㽫ֱ�ӵ����ϴ����뿪ʱ���ڵĲر���\ \|{cmd}<����ر���/@touzi>');
end;

procedure _touzi;
var
  room_id : Integer;    //�ϴ����ڵķ�����
  last_point : Integer; //
  //��ȡ��¼�ķ����ţ�ֱ����ת����÷��䣻
  //����12��2�ű�����¼�ϴ�Ͷ���Ӿ����ķ����� 
begin
  room_id := This_Player.GetS(12, 2);
  
  //�жϵ�һ��Ͷ����û�н������뿪�����½���ԭ���Ӿ����ķ���
  //ʹ������12�ı���3��¼Ͷ����������  
  last_point := This_Player.GetS(12, 3);
  if This_Player.Level < 35 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����ﵽ35�����ϣ����ɽ���ر���');
  end
  else if (room_id >= 1) and (room_id <= 65)then
  begin
    //����ָ����ĳ����ŵķ����ͼ
    if room_id >= 60 then
    begin
      This_Player.RandomFlyTo('EM002~60');
    end
    else if room_id < 10 then
    begin     
      This_Player.RandomFlyTo('EM002~0' + IntToStr(room_id));
    end
    else
    begin
      This_Player.RandomFlyTo('EM002~' + IntToStr(room_id));
    end;
  end 
  else if (last_point >= 1) and (last_point <= 6) then
  begin
    //��ֻ�����һ�������Ӻ�û�ƶ����˳��˵���� 
    This_Npc.NpcDialog(This_Player,
      '֮ǰ����Ͷ�������ӵĵ���Ϊ��' + IntToStr(last_point) + ' \�����ǰ��' 
      + IntToStr(last_point) + '������  \ \|{cmd}<�ƶ�/@next_cube>');
  end     
  else
  begin
    //��һ��Ͷ����
    This_Player.SetV(0, 1, Random(6)+1);
    This_Player.SetS(12,2,0);
    This_Player.SetS(12,3,0);
    This_Player.SetS(12,4,0);
    This_Player.SetS(12,5,0);
    This_Player.SetS(12,6,0);
    This_Player.SetS(12,7,0);
    This_Npc.PlayDice(This_Player, 1,'@AfterPlayDice');
  end;
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
    
  //���㵱ǰ��ͼ 
  if roomIdx < 10 then
    roomName := 'EM002~0' + This_Player.callOutParam
  else
    roomName := 'EM002~' + This_Player.callOutParam;
  //�����⣬������ˢ�ű� 
  if compareText(This_Player.MapName, roomName) <> 0 then
    Exit;

  //Ŀ�귿��� 
  desRoom := IntToStr(This_Player.GetS(12, 2));
  
  //����Ŀ�귿�� 
  if ( compareText(This_Player.MapName, 'EM002~60') = 0 ) or 
     ( comPareText(This_Player.CallOutParam, desRoom) = 0 ) then
    Exit;  
  
  //����Ҫ�ɵĵ�ͼ 
  roomIdx := roomIdx + 1 
  This_Player.callOutParam := IntToStr(roomIdx);
  if roomIdx < 10 then
    roomName := 'EM002~0' + This_Player.callOutParam
  else
    roomName := 'EM002~' + This_Player.callOutParam;
      
  //��ʼ�� 
  This_Player.RandomFlyTo(roomName);        
  This_Player.CallOut(This_Npc,1,'addroom');    
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
  
  //��������Ǵ�12�Ż��3�ű����ж�ȡ��
  //����ֱ�Ӷ�ȡ���ӵ�����0�������1�ű��� 
  desRoomId := desRoomId + diceNum;
  This_Player.SetS(12, 2, desRoomId);
  This_Player.SetS(12, 3, 0);
  
  This_Player.RandomFlyTo('EM002~01');
  if diceNum > 1 then
  begin    
    This_Player.CallOut(This_Npc,1,'addroom');
    This_Player.callOutParam := nextRoomIdxStr;
  end;
end;

procedure _leave;
begin
  if compareText(This_Player.MapName, 'EM002') = 0 then
  begin
    This_Player.Flyto('3',330,330);
  end;
end; 

begin
  domain;
end.   
    