program Mir2;

var
  diceNum, diceCount : Integer;
  diceStr : string;

function isInFuMoRoom: Boolean;
begin
  if compareText(This_Player.DynRoomName, 'qifuRoom') = 0 then 
    Result := True
  else
    Result := False;
end;

function ifKillAllMon: Boolean;
begin
  if This_Npc.CheckCurrMapMon = 0 then
    Result := True
  else
    Result := False;
end;

function calcMaxRandom(dn, dc: Integer) : Integer;
begin
  Result := -1;
  if dc = 1 then
  begin
    case dn of
    1, 2:
      Result := 5;
    3, 4:
      Result := 10;
    5:
      Result := 20;
    6:
      Result := 30;
    end;
  end;
  
  if dc = 2 then
  begin
    case dn of
    2:
      Result := 5;
    3, 4:
      Result := 10;
    5:   
      Result := 15;
    6:   
      Result := 20;
    7, 8:
      Result := 30;
    9:   
      Result := 35;
    10:  
      Result := 45;
    11:  
      Result := 50;
    12:  
      Result := 60;  
    end;
  end;
  
  if dc = 3 then
  begin
    case dn of
    3, 4:
      Result := 10;
    5:
      Result := 15;
    6:
      Result := 20;
    7, 8:
      Result := 30;
    9, 10:
      Result := 35;
    11, 12:
      Result := 40;
    13, 14:
      Result := 45;
    15:
      Result := 55;
    16:
      Result := 60;
    17:
      Result := 70;
    18:
      Result := 90;     
    end;
  end;
end;

procedure _AfterDice;
var
  maxValue, randomValue : Integer;
begin
  if not (isInFuMoRoom and (diceNum>0))then
    Exit;
  
  maxValue := calcMaxRandom(diceNum, diceCount);
  randomValue := random(100);
  
  This_Npc.NpcDialog(This_Player,
    '���ӵ�����'+ diceStr + ' ף������!'
  );
  
  if randomValue < maxValue then
  begin
    This_Npc.CreateMon('', 14, 16, 3, 'ħ����ʿ10', 4);
    This_Npc.CreateMon('', 14, 16, 3, 'ħ����ʿ101', 1);
  end else
    This_Npc.CreateMon('', 14, 16, 3, 'ħ����ʿ10', 5);     
  
  diceNum := 0; //��������Ϊ0����ֹˢ�ű�@AfterDice  
  diceCount := 0;
end;

procedure DoPlayDice(n: Integer);
var
  i : Integer;
  diceArr : array[1..3] of Integer;  
begin
  if (n > 3) or (n < 1) then
    Exit;
  diceStr := '';  
  for i:=1 to n do
  begin
    diceArr[i] := random(6) + 1;
    This_Player.SetV(0, i, diceArr[i]);
    diceNum := diceNum + diceArr[i];
    diceStr := diceStr + IntToStr(diceArr[i]) + ', ';
  end;
  
  This_Npc.NpcDialog(This_Player,
    '�ţ������ǿ�ʼ��!'
  );

  This_Npc.PlayDice(This_Player, n, '@AfterDice');  
end;

procedure giveQifu(n: Integer);
var
  diceNum : Integer;
begin
  if not isInFuMoRoom then
    Exit;
  
  if ifKillAllMon then
  begin
    if This_Player.GetBagItemCount('��ƾ֤') >= n then
    begin
      case n of
        1: diceCount := 1;
        3: diceCount := 2;
        5: diceCount := 3;
      else
        Exit;
      end;      
      This_Player.Take('��ƾ֤', n);
    end else
      This_Npc.NpcDialog(This_Player,
        '������û���㹻����ƾ֤��!'
      );
    DoPlayDice(diceCount);
  end
  else
    This_Npc.NpcDialog(This_Player,
      '���ﻹû����ȫ���𣬻��ǵ������������������Ұɡ�\' +
      '|{cmd}<�ر�/@exit>'
    );  
end;

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _goback;
begin
  if isInFuMoRoom then   
    This_Player.Flyto('3', 327, 333);
end;

procedure _onlyone;
begin
  giveQifu(1);
end;

procedure _giveThree;
begin
  giveQifu(3);
end;

procedure _giveFive;
begin
  giveQifu(5);
end;

procedure OnInitialize;
begin
  DiceNum := 0;
  DiceCount := 0;
end;

begin
  This_Npc.NpcDialog(This_Player,
    '��Ȼ��ӵ������ƾ֤���Ϳ��Ե���������ܿ��飬\' +
    '���������������ӣ�ʹ�ò�ͬ������ƾ֤����ʹ�ò�ͬ���������ӣ�\' +
    '1��ƾ֤����ʹ��1�����ӣ�3��ƾ֤������2�����ӣ�\' +
    '5��ƾ֤����ʹ��3�����ӣ�����Խ�࣬����Խ�п���Я����ħ�\' +
    'һ�е����˾Ͷ����������Լ������ˣ��úð��հɣ�Ӣ�ۣ�\' +
    '��ֻ��20���ӵ�ʱ�䣬ʱ�䵽�������Զ��������ء�\' +
    '|{cmd}<��һ��ƾ֤/@onlyone>    ^<������ƾ֤/@giveThree>     ^<������ƾ֤/@giveFive>\ \' +
    '|{cmd}<��������/@goback>                       ^<�ر�/@exit>'
  );
end.
