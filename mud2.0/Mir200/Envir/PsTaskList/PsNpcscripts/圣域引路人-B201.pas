{********************************************************************

*******************************************************************}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;



procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   'û�뵽���������������Ϊ����Ƿ������Ľ�����\'
   +'�ҿ�������ȥʥ�򣬲��ظ�����Ǯ��������\'
   +'��������������ͣ����ö����ԣ�\'
   +'������ȥ��\ \'
   +'|{cmd}<��ȥ/@a1>\'
   +'|{cmd}<����ȥ/@exit>'
   
   
   
   
   );

end;

procedure _a1;
begin
    case random(2) of
        0 : This_Player.RandomFlyTo('B101');
        1 : This_Player.RandomFlyTo('B102');
    end;
end;

begin
    domain; 
end.