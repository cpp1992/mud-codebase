{********************************************************************

*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _GoBJC;
begin
    This_Player.Flyto('SLDG',308 + random(6) - 3,423 + random(6) - 3);
end;

procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
    '�߽���������ô���֣����ǰ��������������������ĸ�������\'
    +'�߽������Ļĵ���Ƭ���ɼ��У������˶������ǰ�̯��\'
    +'ʲôϡ��ŹֵĶ������У����ߵĿ죬Ǯ����Ҳ�죬\'
    +'˭�����ƳγεĽ����ţ���Ҫ������Ȥ���ҿ�������һ�̡�\ \'
   +'|{cmd}<����ȥ����/@GoBJC>              ^<�´���˵��/@exit>'
   );

end;


//�ű�ִ�е����
begin
  domain;
end.