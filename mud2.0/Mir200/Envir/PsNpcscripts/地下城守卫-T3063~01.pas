program Mir2;

procedure _goh007;
var
  nPos : Integer;
begin
  if compareText(This_Player.MapName, 'T3063~01') = 0 then
  begin
    if random(2) = 1 then
    begin
      nPos := Random(5);
      case nPos of
         0: This_Player.Flyto('H007~01', 112, 18);
         1: This_Player.Flyto('H007~01', 115, 23);
         2: This_Player.Flyto('H007~01', 115, 25);
         3: This_Player.Flyto('H007~01', 109, 20);
         4: This_Player.Flyto('H007~01', 113, 22);
      end;
    end
    else
    begin
      nPos := Random(4);
      case nPos of
         0: This_Player.Flyto('H007~01', 119, 9);
         1: This_Player.Flyto('H007~01', 115, 13);
         2: This_Player.Flyto('H007~01', 118, 16);
         3: This_Player.Flyto('H007~01', 121, 12);
      end;
    end;
  end;
end;

begin
  This_Npc.NpcDialog(This_Player,
    '��Ҳ��Ҫ���������ˣ������Ѿ���ΪһƬ������\'+
    'ħ��Ϊ�ˡ��칤��������£���ħ�޶���ȥ�˵��¹���\'+
    'ͬʱҲ��ȥ�����еĲƱ�\'+
    '���¹������ھ��ڹ���ȵ��м�\'+
    '������������ȥ����Ȱ�\'+
    '|{cmd}<ȥ�����/@goh007>\');
end.