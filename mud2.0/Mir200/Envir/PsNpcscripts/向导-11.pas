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

procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '�Ǻǣ��þ����ڱ��˷����ˣ���Ҳû��Ҫ������ʲô�ˡ�\'
   +'ֻҪ��������ȥ�þ���ս�������ھͿ������㣡\ \'
   +'|{cmd}<����ȥ/@talkwith>\'
   +'|{cmd}<ȷ��/@exit>'   
   );

end;



procedure _talkwith;
begin
   This_NPC.NpcDialog(This_Player,
   '�����Ÿ�����Σ�գ�\'
   +'�������ص���ȫ�ĵط���\'
   +'�ҿ��԰��㡣\ \'
   +'|{cmd}<�ص�����/@move1>\'
   +'|{cmd}<����/@main>'
   );

end;

procedure _move1;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ���������Ҫ���  \'
   +'�����������ʹ�� \'
   +'�����֧��2000��� \ '
   +'���뻨���Ǯ��? \ \'
   +'   '
   +'|{cmd}<�ƶ�/@pay1> \'
   +'|{cmd}<�˳�/@talkwith>'
   
   
   
   );

end;

procedure _pay1;
begin
    IF This_Player.GoldNum >= 2000 then
    begin
        This_Player.DecGold(2000);
        This_Player.Flyto('0',333,274);
    end else
   This_NPC.NpcDialog(This_Player,
   '���ڿ���Ц��???���ǮҲû��.. \'
   +'�����ƶ�?? �Ҳ����ټ�����.. \ \'
   +'|{cmd}<����/@main>'
   );

end;

begin
    domain;
end.