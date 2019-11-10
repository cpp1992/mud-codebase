//--------------------------------------------------
//�ű�Npc����ħ����
//���ڵ�ͼ����̬���� XieKu2��ʹ�õĵ�ͼ E404 
//���ݣ����������а�ߵ��µĵڶ���NPC
//      ��Ҫ�����ڿ�ʼ��սʱ���������������ˢ�� 
//��ע��ʹ����0�������15��16����Ϊ��ʱ���� 
//-------------------------------------------------- 

program mir2;

const
  roomName = 'XieKu2';

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _BackMeng;
begin
  if This_Player.DynRoomName = roomName then
  begin
    This_Player.Flyto('3', 327, 330);
  end; 
end;

procedure DoCreateMon;
var
  i, PlayerCount, CirCount, rd : Integer;
begin
  CirCount := 0;
  PlayerCount := This_Npc.CheckCurrMapHum;
  if PlayerCount < 4 then
    CirCount := 3 
  else if PlayerCount < 6 then
    CirCount := 5
  else if PlayerCount < 8 then
    CirCount := 7
  else if PlayerCount < 10 then
    CirCount := 9
  else if PlayerCount < 13 then
    CirCount := 11;
  
  for i:=1 to CirCount do
  begin
    rd := Random(35);
    case rd of
    0:  
      This_Npc.CreateMon('', 20, 75, 10, 'ħ������120', 1);
    1:  
      This_Npc.CreateMon('', 20, 75, 10, 'ħ����ʿ120', 1);
    2:  
      This_Npc.CreateMon('', 20, 75, 10, 'ħ��ս��120', 1);
    3:  
      This_Npc.CreateMon('', 20, 75, 10, 'ʬ��', 3);
    4:  
      begin
        This_Npc.CreateMon('', 20, 75, 10, '���õ�����', 2);
        This_Npc.CreateMon('', 20, 75, 10, 'а����', 1);
      end;
    5:  
      This_Npc.CreateMon('', 20, 75, 10, '����ʬ��', 3);
    6:  
      This_Npc.CreateMon('', 20, 75, 10, '�罩��', 1);
    7:  
      begin
        This_Npc.CreateMon('', 20, 75, 10, 'ħ��Ѫ��', 2);
        This_Npc.CreateMon('', 20, 75, 10, 'ħ������', 2);
      end;
    8:
      begin 
        This_Npc.CreateMon('', 20, 75, 10, '��Ӱ֩��', 1);
        This_Npc.CreateMon('', 20, 75, 10, '��ħ֩��', 2);
      end;
    9:
      begin  
        This_Npc.CreateMon('', 20, 75, 10, 'Ш��', 2);
        This_Npc.CreateMon('', 20, 75, 10, '��Ұ��', 2);
      end;
    10: 
      This_Npc.CreateMon('', 20, 75, 10, '�������120', 1);
    11: 
      This_Npc.CreateMon('', 20, 75, 10, '��Ұ��', 1);
    12: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, '��Ұ��', 2);
        This_Npc.CreateMon('', 20, 75, 10, 'ţħ��ʦ', 2);
      end;
    13: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, '��Ȫ����', 1);
        This_Npc.CreateMon('', 20, 75, 10, '���ù�����', 2);
      end;
    14: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, 'Ш��', 4);
        This_Npc.CreateMon('', 20, 75, 10, '������ʿ', 2);
      end;
    15:
      begin 
        This_Npc.CreateMon('', 20, 75, 10, 'Ш��', 4);
        This_Npc.CreateMon('', 20, 75, 10, '��ħ֩��', 4);
      end; 
    16: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, '��Ұ��', 3);
        This_Npc.CreateMon('', 20, 75, 10, '��ɫ����', 3);
      end;
    17: 
      This_Npc.CreateMon('', 20, 75, 10, '��ħ����', 1);
    18:
      begin 
        This_Npc.CreateMon('', 20, 75, 10, 'ţħ��120', 1); 
        This_Npc.CreateMon('', 20, 75, 10, 'ţħ��ʦ', 2);
      end;
    19: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, 'ţͷħ', 2);
        This_Npc.CreateMon('', 20, 75, 10, '���þ���', 3);
      end;
    20: 
      This_Npc.CreateMon('', 20, 75, 10, '��Ұ��', 3);
    21: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, '˫ͷѪħ120', 1);  
        This_Npc.CreateMon('', 20, 75, 10, '���ó�ǹ��', 3);
      end;       
    22: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, '���齩ʬ', 3);  
        This_Npc.CreateMon('', 20, 75, 10, '����ʬ��', 2);
      end;
    23: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, '���ô���', 2);
        This_Npc.CreateMon('', 20, 75, 10, '˫ͷ���', 1);
      end;
    24: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, '��������', 4);
        This_Npc.CreateMon('', 20, 75, 10, 'а����', 1);
      end;
    25: 
      This_Npc.CreateMon('', 20, 75, 10, 'ħ���Ƽױ�', 2);
    26: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, 'ţħսʿ', 2);
        This_Npc.CreateMon('', 20, 75, 10, 'ţħ��ʿ', 2);
      end;
    27: 
      begin
        This_Npc.CreateMon('', 20, 75, 10, 'ţħ����', 3);
        This_Npc.CreateMon('', 20, 75, 10, 'ţħ����', 2);
      end;
    28: 
      This_Npc.CreateMon('', 20, 75, 10, 'Ѫ��ʬ', 1);    
    29: 
      This_Npc.CreateMon('', 20, 75, 10, 'Ѫ����', 1);  
    30: 
      This_Npc.CreateMon('', 20, 75, 10, 'ħ������', 2);  
    31: 
      This_Npc.CreateMon('', 20, 75, 10, '��ħ����', 1);
    32: 
      This_Npc.CreateMon('', 20, 75, 10, '��ħЫ��', 1);
    33: 
      This_Npc.CreateMon('', 20, 75, 10, '������', 1);  
    34: 
      This_Npc.CreateMon('', 20, 75, 10, '��Ұ��', 2);       
    end;            
  end;  
end;

procedure _Challenge;
begin
  if not (This_Player.DynRoomName = roomName) then
    Exit;
    
  if not ((This_Player.GetV(0, 15) = 75) and (This_Player.IsGroupOwner)) then
  begin
    This_Npc.NpcDialog(This_Player,
      '������ԭ�����ڶ���Ķӳ������ܿ�ʼ��\' +
      '|{cmd}<�ر�/@exit>'
    );       
    Exit;
  end;
  
  if This_Player.GetV(0, 16) <> 50 then
  begin
    This_Npc.NpcDialog(This_Player,
      '���Ѿ���ʼ��ս�ˣ������ٴν�����ս \' +
      '|{cmd}<�ر�/@exit>'
    );
    Exit;
  end;
  
  DoCreateMon;
  This_Player.SetV(0, 16, 0);
  _exit;
end;

begin
  This_Npc.NpcDialog(This_Player,
    '��λӢ�ۣ���������ն����ħ�����ΰ���\' +
    '�õģ�һ�о����������Լ��������ˣ�\' +
    '|{cmd}<��ʼ��ս/@Challenge>\' +
    '|{cmd}<��������/@BackMeng>'
  );
end.