{
/*******************************************************************************
/*  �ű����� :
/*  ��ӦNPC  : �������(ˢ�ֺͽ�������) 
/*  �޶���¼ :
/*
/*******************************************************************************
}

{/**********************�ⲿ�ִ�������������ص�ˢ������**********************/}
//������ع���
const MONSTER_KIND = 50; //����һ���ж�����ˢ�ַ���
const MONSTER_NUM  = 3 ; //ÿ��ˢ�ַ�������ж����ֹ���
procedure CreateSkyGateMon(level: Integer);
var
  name  : array[1..MONSTER_KIND] of array[1..MONSTER_NUM] of string;
  num   : array[1..MONSTER_KIND] of array[1..MONSTER_NUM] of Integer;
  pos   : array[1..MONSTER_KIND] of Integer;
  total : Integer;
  i     : Integer;
  j     : Integer;
  rand  : Integer;    //���������
  temp  : Integer;    //
begin
  //��ֹNPC��ָ��,���߷Ƿ���
  if This_Npc = nil then
  begin
    Exit;
  end;

  //��ʼ��
  for i := 1 to MONSTER_KIND do
  begin
    for j := 1 to MONSTER_NUM do
    begin
      name[i][j] := '';
      num[i][j]  := 0;
    end;
    pos[i] := 0;
  end;

  //��ʼ����������ƺ�����
  //��һ�׹���
  name[1][1] := '��Ӭ';
  name[1][2] := '������';
  num[1][1] := 3;
  num[1][2] := 3;

  //�ڶ��׹���
  name[2][1] := '��ɫ����';
  name[2][2] := '������';
  num[2][1] := 2;
  num[2][2] := 8;

  //�����׹���
  name[3][1] := '���';
  name[3][2] := 'ǯ��';
  num[3][1] := 3;
  num[3][2] := 3;

  //�����׹���
  name[4][1] := '��Ұ��';
  name[4][2] := '��Ұ��';
  num[4][1] := 2;
  num[4][2] := 6;

  //�����׹���
  name[5][1] := '������ʿ';
  name[5][2] := '����սʿ';
  num[5][1] := 2;
  num[5][2] := 2;

  //�����׹���
  name[6][1] := 'ʬ��';
  name[6][2] := '��ʬ';
  num[6][1] := 2;
  num[6][2] := 4;

  //�����׹���
  name[7][1] := '���깭����';
  name[7][2] := '����֩��';
  num[7][1] := 3;
  num[7][2] := 2;

  //�ڰ��׹���
  name[8][1] := '������ʿ';
  name[8][2] := '�ڰ�սʿ';
  num[8][1] := 2;
  num[8][2] := 5;

  //�ھ��׹���
  name[9][1] := '���þ���';
  name[9][2] := 'ţͷħ';
  num[9][1] := 3;
  num[9][2] := 2;

  //��ʮ�׹���
  name[10][1] := 'ţħսʿ';
  name[10][2] := 'ţħ��ʿ';
  num[10][1] := 4;
  num[10][2] := 4;

  //��5�ص�СBOSS
  name[11][1] := 'ţħ��˾';
  name[11][2] := '';
  num[11][1] := 10;
  num[11][2] := 4;

  //��10�ص�СBOSS
  name[12][1] := '˫ͷѪħ500';
  name[12][2] := '˫ͷ���500';
  num[12][1] := 8;
  num[12][2] := 8;

  //��15�صĴ�BOSS
  name[13][1] := '��Ӱ����';
  name[13][2] := '��Ӱ����';
  num[13][1] := 10;
  num[13][2] := 10;



  //����ˢ�ֵĵĸ���
  total  := 100;   //total��ʾ�����õ��ĸ��ʶ���50��֮��

  //���ݹؿ�ˢ��

  if level = 5 then
  begin
    pos[11] := 100;
  end
  else if level = 10 then
  begin
    pos[12] := 100;
  end
  else if level = 15 then
  begin
    pos[13] := 100;
  end
  else if level <= 8 then
  begin
    for i := 1 to 5 do
    begin
      pos[i] := 20;
    end;
  end
  else
  begin
    for i := 6 to 10 do
    begin
      pos[i] := 20;
    end;
  end;



  //�������ˢ��(��NPC���ڵĵ�ǰ��ͼ��ˢ)
  rand := Random(total) + 1;
  temp := 0;
  for i := 1 to MONSTER_KIND do
  begin
    if (pos[i] < 0) then
    begin
      break;
    end;
    temp := temp + pos[i];
    if rand <= temp then
    begin
      //ˢ��i�����
      for j := 1 to MONSTER_NUM do
      begin
        if (name[i][j] <> '') and (num[i][j] > 0) then
        begin
          This_Npc.CreateMon('', This_Npc.My_X, This_Npc.My_Y, 5, name[i][j], num[i][j]);
        end;
      end;
      Exit;
    end;
  end;
end;



{/**********************�ⲿ�ִ�������������صĽ�������**********************/}
const REWARD_KIND = 15; //���影��������
const REWARD_NUM  = 5 ; //ÿ�ֽ�������ж��ټ���Ʒ
//����0��ʾ�����ɹ�����1��ʾ�ո񲻹��� ��2��ʾû�з���Ʒ
function GiveSkyGateReward(): Integer;
var
  name  : array[1..REWARD_KIND] of array[1..REWARD_NUM] of string;
  num   : array[1..REWARD_KIND] of array[1..REWARD_NUM] of Integer;
  pos   : array[1..REWARD_KIND] of Integer;
  total : Integer;
  i     : Integer;
  j     : Integer;
  rand  : Integer;    //���������
  temp  : Integer;    //
begin
  //������֮ǰ,�ж��Ƿ����㹻�Ŀո�
  if This_Player.FreeBagNum < REWARD_NUM then
  begin
    Result := -1;
    Exit;
  end;       

  //��ʼ��
  for i := 1 to REWARD_KIND do
  begin
    for j := 1 to REWARD_NUM do
    begin
      name[i][j] := '';
      num[i][j]  := 0;
    end;
    pos[i] := 0;
  end;

  //��ʼ����������Ʒ������
  //1�Ž�������
  name[1][1] := '����';
  name[1][2] := '����';
  name[1][3] := '���ħ��';
  num[1][1] := 1;
  num[1][2] := 1;
  num[1][3] := 1;

  //2�Ž�������
  name[2][1] := '����';
  name[2][2] := '����ս��(��)';
  name[2][3] := '�Ϲŵ���';
  num[2][1] := 1;
  num[2][2] := 0;
  num[2][3] := 0;
  //���ý����ĸ��ʣ������Ҫ���Կ�����ҵ��������أ�
  total  := 100;   //total��ʾ�����õ��ĸ��ʶ���50��֮��

  //�����������Կ��Ե�����ͬ����Ļ�ü���
  //0սʿ��1��ʦ��2��ʿ
  if This_Player.Job = 2 then
  begin
    pos[1] := 40;
    pos[2] := 10;
  end
  else
  begin
    pos[1] := 10;
    pos[2] := 40;
  end;

  //����������ɽ���
  rand := Random(total) + 1;
  temp := 0;
  for i := 1 to REWARD_KIND do
  begin
    temp := temp + pos[i];
    if rand <= temp then
    begin
      //����i�Ž���,
      for j := 1 to REWARD_NUM do
      begin
        if (name[i][j] <> '') and (num[i][j] > 0) then
        begin
          This_Player.Give(name[i][j], num[i][j]);
        end;
      end;
      Result := 0;
      Exit;
    end;
  end;
  Result := -2;  
end;

