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

Procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '����æ���أ����������ң�\ \'
   +'|<��/@a1>1000�����̽\'
   +'|<�뿪/@exit>'
   );

end;

procedure _a1;
begin
    if This_Player.GoldNum >= 1000 then
    begin
    This_Player.DecGold(1000);
   This_NPC.NpcDialog(This_Player,
   '������лл��Ľ�ң�\'
   +'�������о�һ���µ�������������Ը���æ��\ \'
   +'|<����/@a2>2000����о���\'
   +'|<һë����/@exit>'
   );
    end else
   This_NPC.NpcDialog(This_Player,
   '������ô��Ǯ��û�У��ҿ�ֻΪ��Ǯ�˷���\ \'
   +'|<�뿪/@exit>'
   );

end;

procedure _a2;
begin
    if This_Player.GoldNum >= 2000 then
    begin
        This_Player.DecGold(2000);
       This_NPC.NpcDialog(This_Player,
       '�Ǻǣ�̫��л�ˣ�\'
       +'�����о��ɹ�֮������������ң�\ \'
       +'|<�뿪/@exit>'
       )
    end  else
   This_NPC.NpcDialog(This_Player,
   '������ô��Ǯ��û�У��ҿ�ֻΪ��Ǯ�˷���\ \'
   +'|<�뿪/@exit>'
   );

end;
//�ű�ִ�е����
begin
  domain;
end.