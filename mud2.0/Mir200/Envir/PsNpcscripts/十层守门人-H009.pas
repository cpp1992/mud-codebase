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




procedure _talkwith;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ�����һ����Ҫ���  \'
   +'�����������ʹ�� \'
   +'�����֧��1000000��� \ '
   +'���뻨���Ǯ��? \ \'
   +'   '
   +'|{cmd}<�ƶ�/@pay1> \'
   +'|{cmd}<�˳�/@talkwith>'
   
   
   
   );

end;

procedure _pay1;
begin
    if This_Player.GoldNum >= 1000000 then
    begin
     
        This_Player.Flyto('H010',155,157);
        ServerSay('��ң�'+This_Player.Name+'�������Ŀ�������͵͵Ǳ���˻þ�ʮ��,��������ӡ���ɶ��� ��',3);
         This_Player.DecGold(1000000);
    end else
	  
   
    begin
    This_Player.NotifyClientCommitItem(0,'�������ȥ���ͱ������ȸ���100���ң��Ͽ���Ұɡ�');
      
    end ;
    

end;


begin
   This_NPC.NpcDialog(This_Player,
   '�Ǻǣ��þ����ڱ��˷����ˣ���Ҳû��Ҫ������ʲô�ˡ�\'
   +'ֻҪ��������ȥ�þ���ս�������ھͿ������㣡\ \'
   +'|{cmd}<ȥ��һ��/@talkwith>\'
   +'|{cmd}<ȷ��/@exit>'   
   );

end.