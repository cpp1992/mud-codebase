// ħ����npc

program Mir2;

procedure OnInitialize;
begin
  This_Npc.AddNpcProp(12);

end;

procedure _EngageAch1;
begin
  This_Npc.EngageArcher(This_Player, 1);
end;

procedure _EngageAch2;
begin
  This_Npc.EngageArcher(This_Player, 2);
end;

procedure _EngageAch3;
begin
  This_Npc.EngageArcher(This_Player, 3);
end;

procedure _EngageAch4;
begin
  This_Npc.EngageArcher(This_Player, 4);
end;

procedure _EngageAch5;
begin
  This_Npc.EngageArcher(This_Player, 5);
end;

procedure _EngageAch6;
begin
  This_Npc.EngageArcher(This_Player, 6);
end;

procedure _EngageAch7;
begin
  This_Npc.EngageArcher(This_Player, 7);
end;

procedure _EngageAch8;
begin
  This_Npc.EngageArcher(This_Player, 8);
end;

procedure _EngageAch9;
begin
  This_Npc.EngageArcher(This_Player, 9);
end;

procedure _EngageAch10;
begin
  This_Npc.EngageArcher(This_Player, 10);
end;

procedure _EnAch;
begin
  This_Npc.NpcDialog(This_Player, '��ѡ����ù����ֵ�λ��\\' +
    '|{cmd}<��1��/@EngageAch1>                                 ^<��10��/@EngageAch10>\' +
    '                                            \' +
    '|{cmd}<��2��/@EngageAch2>                                 ^<��09��/@EngageAch9>\' +
    '                                            \' +
    '|{cmd}<��3��/@EngageAch3> ^<��4��/@EngageAch4> ^<��5��/@EngageAch5> ^<��6��/@EngageAch6> ^<��7��/@EngageAch7> ^<��08��/@EngageAch8>\'
    );
end;

procedure _GetMoving1;
begin
  This_Npc.GetMoveChance(This_Player, 1);
end;

procedure _GetMoving2;
begin
  This_Npc.GetMoveChance(This_Player, 2);
end;

procedure _GetMoving3;
begin
  This_Npc.GetMoveChance(This_Player, 3);
end;

procedure _GetMoving4;
begin
  This_Npc.GetMoveChance(This_Player, 4);
end;

procedure _GetMoving5;
begin
  This_Npc.GetMoveChance(This_Player, 5);
end;

procedure _GetMoving6;
begin
  This_Npc.GetMoveChance(This_Player, 6);
end;

procedure _GetMoving7;
begin
  This_Npc.GetMoveChance(This_Player, 7);
end;

procedure _GetMoving8;
begin
  This_Npc.GetMoveChance(This_Player, 8);
end;

procedure _GetMoving9;
begin
  This_Npc.GetMoveChance(This_Player, 9);
end;

procedure _GetMoving10;
begin
  This_Npc.GetMoveChance(This_Player, 10);
end;


procedure _MovAch;
begin
  This_Npc.NpcDialog(This_Player,
    '��ѡ��Ҫ�ƶ��Ĺ�����\\' +
    '|{cmd}<��1��/@GetMoving1>                                 ^<��10��/@GetMoving10>\' +
    '                \' +
    '|{cmd}<��2��/@GetMoving2>                                 ^<��09��/@GetMoving9>\' +
    '                \' +
    '|{cmd}<��3��/@GetMoving3> ^<��4��/@GetMoving4> ^<��5��/@GetMoving5> ^<��6��/@GetMoving6> ^<��7��/@GetMoving7> ^<��8��/@GetMoving8>\' +
    '\');
end;

procedure _OnStart;
begin
  //This_Npc.NewSkyStart(This_Player);

end;

procedure _GetEngage;
begin
  This_Npc.GetEngageChance(This_Player);

end;

begin
  This_Npc.NpcDialog(This_Player,
    '�Ͽ��ٻ��������֣�������ر���Ĺ����Ҫ�����ˣ�\' +
    '��������Ĺ����ر����ı��\' +
    'ÿ�ΰڷŹ����֣�����Ҫ����һ�����Ŷ\' +
    '��<ѡ��ڷŹ�����λ��/@EnAch>�ڷŵ�һ�������֣�\' +
    '����ƶ������ֵ�λ�ô���Ҳ�������������·���\ \' +
    '|{cmd}<ʹ��5�����ƻ�ȡ������/@GetEngage>    |<ʹ��1�������ƶ�������/@MovAch>\  \' +
    '|{cmd}<��ȡ��ر���/@lingqu>                        ^<�鿴����/@rule>\');

//  This_Npc.NpcDialog(This_Player,
//    '|{cmd}<��ʼ/@OnStart>'
//  );
end.
