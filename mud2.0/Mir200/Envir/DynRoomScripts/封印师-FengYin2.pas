//--------------------------------------------------
//�ű�Npc����ӡʦ
//���ڵ�ͼ����̬���� FengYin2��ʹ�õĵ�ͼ T140 
//���ݣ���������е��µĵڶ���NPC
//      ��Ҫ��������ҽ�����ս������Ʒ��ӡ 
//��ע��ʹ����0�������15��16��17����Ϊ��ʱ���� 
//      15 ������Ϊ���NPC����ò�Ķӳ�
//      16 ��ǽ��Ĵ���
//      17 ����ܽ��Ĵ�����3��5������ֵ��ʾ��û���ܿ��� 
//-------------------------------------------------- 


program mir2;

const
  roomName = 'FengYin2'; 
var
  items : array[1..18] of string; //������Ҫ�����Ʒ������ 
  itemsStr1 : string;      //���󡢻�ħ����Դ���Ի������ӵ��ַ���
  itemsStr2 : string;      //ʥս������������Ի������ӵ��ַ��� 
  
function IfBeginChall : Boolean;
var
  nc : Integer;
begin
  nc := This_Player.GetV(0, 17);
  if (nc = 5) or (nc = 3) then
    Result := True
  else
    Result := False;
end;
  
procedure _BackMeng;
var
  canJFCount : Integer;
begin
  canJFCount := This_Player.GetV(0, 17);
  if (canJFCount <> 3) and (canJFCount <> 5) then
  begin
    This_Npc.NpcDialog(This_Player,
      '�㻹û�н�����һ�صĿ��飬���ܷ�������'
    );
    Exit;
  end;  

  if This_Npc.CheckCurrMapMon <> 0 then
  begin
    This_Npc.NpcDialog(This_Player,
      '�㻹û�������һ�صĿ��飬���ܷ�������'
    );
    Exit;
  end;

  if This_Player.DynRoomName = roomName then
  begin
    This_Player.Flyto('3', 327, 330);
  end;
end;

procedure _beginChallenge;
begin
  This_Npc.NpcDialog(This_Player,
    '�����֧������100���ҿ��Ծ����������ɴ�������\' +
    '����㲻���ҵĻ�����Ҳ���Խ��ܿ���\' +
    '������һ���������ʲô�ҿɲ��ܱ�֤Ŷ��\ \' +
    '|{cmd}<֧��100�������ս/@chalByPay>\' +
    '|{cmd}<ֱ�ӽ��п���/@chalFree>'
  ); 
end;

procedure ChallengeAlone(beFree : Boolean);
begin  
  if beFree then
  begin
    //����Ѿ���ʼ����ս 
    This_Player.SetV(0, 17, 3);
    This_Player.SetV(0, 16, 0);
    //ˢ��
    This_Npc.CreateMon('', 14, 16, 10, '��ħ����', 2);
    This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 2);
    This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 4);
    This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 4);
    This_Npc.CreateMon('', 14, 16, 10, '��ɫ����', 2);
    This_Npc.CreateMon('', 14, 16, 10, 'Ы��', 4); 
    This_Npc.CreateMon('', 14, 16, 10, 'Ш��', 2);
  end
  else
  begin
    if This_Player.GoldNum >= 1000000 then
    begin
      This_Player.DecGold(1000000);
      //����Ѿ���ʼ����ս 
      This_Player.SetV(0, 17, 3);
      This_Player.SetV(0, 16, 0);
      //ˢ��
      This_Npc.CreateMon('', 14, 16, 10, '��ħ����', 1);
      This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 1);
      This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 3);
      This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 3);
      This_Npc.CreateMon('', 14, 16, 10, '��ɫ����', 2);
      This_Npc.CreateMon('', 14, 16, 10, 'Ы��', 2); 
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
        '��û���㹻�Ľ�Ǯ���ҿ��㻹��ֱ�Ӵ��ذ�'
      );
      Exit;
    end;
  end;  
  This_Npc.CloseDialog(This_Player);
end;

procedure ChallengeWithTeam(beFree : Boolean);
begin
  if not ((This_Player.GetV(0, 15) = 45) and This_Player.IsGroupOwner) then
  begin
    This_Npc.NpcDialog(This_Player,
      '�㲻��֮ǰ���ڶ���Ķӳ������ܿ�ʼ��ս'
    );
    Exit; 
  end;
  
  if beFree then
  begin
    //����Ѿ���ʼ����ս 
    This_Player.GroupSetV(0, 17, 5);
    This_Player.GroupSetV(0, 16, 0);
    //ˢ��
    This_Npc.CreateMon('', 14, 16, 10, '��ħ����', 4);
    This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 4);
    This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 8);
    This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 8);
    This_Npc.CreateMon('', 14, 16, 10, '��ɫ����', 8);
    This_Npc.CreateMon('', 14, 16, 10, '��Ӭ', 4);
    This_Npc.CreateMon('', 14, 16, 10, 'Ы��', 8);
    This_Npc.CreateMon('', 14, 16, 10, 'Ш��', 8); 
    This_Npc.CreateMon('', 14, 16, 10, '�罩��', 3);    
  end
  else
  begin
    if This_Player.GoldNum >= 1000000 then
    begin
      This_Player.DecGold(1000000);
      //����Ѿ���ʼ����ս 
      This_Player.GroupSetV(0, 17, 5);
      This_Player.GroupSetV(0, 16, 0);
      //ˢ��
      This_Npc.CreateMon('', 14, 16, 10, '��ħ����', 2);
      This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 2);
      This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 5);
      This_Npc.CreateMon('', 14, 16, 10, '��Ұ��', 5);
      This_Npc.CreateMon('', 14, 16, 10, '��ɫ����', 5);
      This_Npc.CreateMon('', 14, 16, 10, '��Ӭ', 2);
      This_Npc.CreateMon('', 14, 16, 10, 'Ы��', 5);
      This_Npc.CreateMon('', 14, 16, 10, 'Ш��', 5); 
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
        '��û���㹻�Ľ�Ǯ���ҿ��㻹��ֱ�Ӵ��ذ�'
      );
      Exit;
    end;
  end;
  This_Npc.CloseDialog(This_Player);
end;

procedure _chalByPay;
begin
  if This_Player.DynRoomName <> roomName then
    Exit;
    
  if IfBeginChall then
  begin
    This_Npc.NpcDialog(This_Player,
      '�������Ѿ��ڽ��ܿ����˰�'
    );
    Exit;
  end;
  
  if This_Npc.CheckCurrMapHum > 1 then
    ChallengeWithTeam(False)
  else
    ChallengeAlone(False);
end;

procedure _chalFree;
begin
  if This_Player.DynRoomName <> roomName then
    Exit;
    
  if IfBeginChall then
  begin
    This_Npc.NpcDialog(This_Player,
      '�������Ѿ��ڽ��ܿ����˰�'
    );
    Exit;
  end;
  
  if This_Npc.CheckCurrMapHum > 1 then
    ChallengeWithTeam(True)
  else
    ChallengeAlone(True);
end;                                

procedure showDisOverDlg;
var
  count : Integer;
  countStr : string;
begin
  count := This_Player.GetV(0, 17);
  if count = 3 then
    countStr := '��'
  else if count = 5 then
    countStr := '��'
  else
    countStr := IntToStr(count);  //�����������ﵽ���������� 
     
  This_Npc.NpcDialog(This_Player,
    '���Ѿ��ɹ������' + countStr + '�η�ӡ�ˣ�\' + 
    '�����ڵ������Ѿ������ٰ������ˣ�\' +
    '�����㷵�����أ����һ���������Ұɡ�\ \' +
    '|{cmd}<���ھ����һ�����/@BackMeng>'
  );
end;

procedure showDisSealDlg(str : string);
begin
  This_Npc.NpcDialog(This_Player,
    str +
    itemsStr1 + //���ַ������ǽ��� ���󡢻�ħ����Դ������ 
    '|{cmd}<���ʥս,����,����ķ�ӡ/@disSeal2>\ \' +
    '|{cmd}<���ھ����һ�����/@BackMeng>'
  );
end;

procedure _disSeal1;
begin
  if This_Player.DynRoomName <> roomName then
    Exit;
    
  if This_Npc.CheckCurrMapMon <> 0 then
  begin
    This_Npc.NpcDialog(This_Player, 
      '�㻹û�������������ܽ����ӡ'
    );
    Exit;
  end;
  
  if not ifBeginChall then
  begin
    This_Npc.NpcDialog(This_Player,
      '����û��ͨ���ҵĿ��飬���ܽ����Ʒ'
    );
    Exit;
  end;
  
  if This_Player.GetV(0, 16) >= This_Player.GetV(0, 17) then
    showDisOverDlg
  else
  begin
    if This_Player.GetV(0, 16) > 0 then
      showDisSealDlg(
        'ף���㣬��ӡ�Ѿ��ɹ��������򿪰��������ɣ�\' +
        '�㻹�����ĸ���Ʒ�ķ�ӡ�أ�\ \'
      )
    else
      showDisSealDlg(
        'ף�����ɹ��������飬���ҿ�����������ӡ����Ʒ��\ \'
      );
  end;
end;
  
procedure _disSeal2;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ҳ���԰������ӡ��ʥս����������ϵ�е���Ʒ\' +
    '���ڽ���,�����Ϊʲô,��Ҳ�޷�Ԥ֪,һ�ж����㱾���й�\' +
    '���ھ����ҿ���������ʲô�� \' +
    '���ɹ����п��ܻ�����Ը��ߵ���֮ϵ����Ʒ\' +
    '��ʹ���ʧ�ܣ���ӡ����ƷҲ��������𣬲�����ʧ\' +
    itemsStr2
  );
end;

function CanDisSeal(id : Integer) : Boolean;
begin
  Result := False;
  if This_Player.DynRoomName <> roomName then
    Exit;
    
  if This_Npc.CheckCurrMapMon <> 0 then
  begin
    This_Npc.NpcDialog(This_Player, 
      '�㻹û�������������ܽ����ӡ'
    );
    Exit;
  end;
  
  if not ifBeginChall then
  begin
    This_Npc.NpcDialog(This_Player,
      '����û��ͨ���ҵĿ��飬���ܽ����Ʒ'
    );
    Exit;
  end; 
  
  if This_Player.GetBagItemCount(items[id]+'(��ӡ)') > 0 then
    Result := True
  else
    This_Npc.NpcDialog(This_Player,
      '������İ�����û��' + items[id] + '(��ӡ)'
    );
end;

function GetAbilStr(itemType, abilId : Integer) : string;  
begin
  Result := '';
  //����ϵ�� 
  if itemType = 1 then
  begin
    case abilId of
      1: Result := '(��Ӳ)';
      2: Result := '(����)';
      3: Result := '(����)';
      4: Result := '(����)';
      5: Result := '(����)';      
    end; 
  end;
  
  //��ħϵ��
  if itemType = 2 then
  begin
    case abilId of 
      1: Result := '(�Ұ�)';
      2: Result := '(����)';
      3: Result := '(����)';
      4: Result := '(����)';
      5: Result := '(��ȸ)'; 
    end;
  end; 
  
  //��Դϵ��
  if itemType = 3 then
  begin
    case abilId of 
      1: Result := '(����)';
      2: Result := '(����)';
      3: Result := '(����)';
      4: Result := '(��ҫ)';
      5: Result := '(���)'; 
    end;
  end;   
end;

//���󡢻�ħ����Դϵ�� 
procedure DoDisSealItem1(id : Integer);
var
  abilId, randomVar  : Integer;
  abilStr : string;
begin
  This_Player.Take(items[id] + '(��ӡ)', 1);
  randomVar := random(1000);
  
  if randomVar < 200 then       //���� 1/5 
    abilId := 1
  else if randomVar < 300 then  //���� 1/10 
    abilId := 2
  else if randomVar < 385 then  //���� 7/80 
    abilId := 3
  else if randomVar < 405 then  //���� 1/50 
    abilId := 4
  else if randomVar < 417 then  //���� 3/250 
    abilId := 5
  else                          //���� 583/1000
  begin 
    showDisSealDlg(
      '|{cmd}<�����ӡ������ǿ�����������' + items[id] + '�����ˣ�>\' +
      '�㻹�����ĸ���Ʒ�ķ�ӡ�أ�\\'
    );    
  end;      
  
  case id of
  1, 4, 7:
    abilStr := getAbilStr(1, abilId);
  2, 5, 8:
    abilStr := getAbilStr(2, abilId);
  3, 6, 9:
    abilStr := getAbilStr(3, abilId);
  else
    abilStr := '';
  end;
  
  if abilStr = '' then
    Exit;
  This_Player.SetV( 0, 16, This_Player.GetV(0, 16)+1 );
  This_Player.Give(items[id]+abilStr, 1);  
  This_Player.PlayerNotice('ף���㣬��ӡ�Ѿ��ɹ����', 0);
  
  if This_Player.GetV(0, 16) >= This_Player.GetV(0, 17) then
  begin
    showDisOverDlg;
  end
  else
    showDisSealDlg(
      'ף���㣬��ӡ�Ѿ��ɹ��������򿪰��������ɣ�\' +
      '�㻹�����ĸ���Ʒ�ķ�ӡ�أ�\ \'
    );
end;

//ʥս����������ϵ�� 
procedure DoDisSealItem2(id : Integer);
begin
  This_Player.Take(items[id] + '(��ӡ)', 1);
  This_Player.SetV( 0, 16, This_Player.GetV(0, 16)+1 );
  if random(10) = 1 then
  begin
    This_Player.Give('��֮' + items[id], 1);
    This_Player.PlayerNotice('ף���㣬��ӡ�Ѿ��ɹ��������������֮ϵ�е���Ʒ', 0); 
  end else
  begin
    This_Player.Give(items[id], 1);
    This_Player.PlayerNotice('ף���㣬��ӡ�Ѿ��ɹ����', 0);
  end;
  
  if This_Player.GetV(0, 16) >= This_Player.GetV(0, 17) then
  begin
    showDisOverDlg;
  end
  else
    showDisSealDlg(
      'ף���㣬��ӡ�Ѿ��ɹ��������򿪰��������ɣ�\' +
      '�㻹�����ĸ���Ʒ�ķ�ӡ�أ�\ \'
    );  
end;

procedure _disSealItem(idStr : string);
var
  id : Integer;
begin
  id := StrToIntDef(idStr, -1);
  if id = -1 then
    Exit;
    
  if CanDisSeal(id) then
  begin
    if (id <= 9) and (id >= 1) then
      DoDisSealItem1(id)
    else if (id <= 18) and (id >= 10) then
      DoDisSealItem2(id);
  end;  
end;
  
//��ʼ��Ҫ�����Ʒ���ַ���������������Ĵ���      
procedure OnInitialize;
var
  i : Integer;
  abilStr : string;
begin
  abilStr := '(��ӡ)'
  items[1] := '��������';
  items[2] := '��ħ����';
  items[3] := '��Դ����';
  
  items[4] := '��������';
  items[5] := '��ħ����';
  items[6] := '��Դ����';
  
  items[7] := '�����ָ';
  items[8] := '��ħ��ָ';
  items[9] := '��Դ��ָ';
  
  items[10] := 'ʥս����';
  items[11] := '��������';
  items[12] := '��������';
  
  items[13] := 'ʥս����';
  items[14] := '��������';
  items[15] := '��������';
  
  items[16] := 'ʥս��ָ';
  items[17] := '�����ָ';
  items[18] := '�����ָ'; 
  
  itemsStr1 := '';
  for i:=1 to 9 do
  begin
    itemsStr1 := itemsStr1 + '|{cmd}<' + items[i] + abilStr + 
                           '/@disSealItem~' + IntToStr(i) + '>';
    if (i > 2) and (i mod 3 = 0) then 
      itemsStr1 := itemsStr1 + '\'
    else
      itemsStr1 := itemsStr1 + '      ';
  end; 
  
  itemsStr2 := '';
  for i:=10 to 18 do
  begin
    itemsStr2 := itemsStr2 + '|{cmd}<' + items[i] + abilStr +
                           '/@disSealItem~' + IntToStr(i) + '>';
    if (i > 2) and (i mod 3 = 0) then 
      itemsStr2 := itemsStr2 + '\'
    else
      itemsStr2 := itemsStr2 + '      ';
  end;   
end;        
       
begin
  if IfBeginChall and (This_Npc.CheckCurrMapMon <= 0) then
  begin
    if This_Player.GetV(0, 16) >= This_Player.GetV(0, 17) then
    begin
      showDisOverDlg;
      Exit;
    end
    else if This_Player.GetV(0, 16) >= 0 then
    begin
      showDisSealDlg('�㻹�����ĸ���Ʒ�ķ�ӡ�أ�\ \');
    end;
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�������Ǳ�������ҵĿ��飬����ʱ��Ϊ20���ӡ�\' +
      '20�������������й���Ϳ���ͨ���ҵĿ��飬\' +
      '�ҾͿ��԰����ǽ����Ʒ�ķ�ӡ��\' +
      '������Щ��ӡ������ǿ�������ڽ������п��ܻ����顣\' +
      '�����Ҫ�ķ��Ҵ���ħ��������һ��������ֻ�ܳɹ�������Σ�\' +
      '����������ǰ�����������ǵ��������ҿ��Գɹ������Σ�\' +
      '��ʱ���Ҿ���Ҫ��Ϣһ�»ظ��ҵ��������һ�����ͻ����ء�\' +
      '|{cmd}<���ܿ���/@BeginChallenge>                     ^<��Ҫ�����ӡ/@disSeal1>\' +
      '|{cmd}<���ھ����һ�����/@BackMeng>'
    );
end.