{
*******************************************************************}

program Mir2;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end; 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _move;
begin
   This_NPC.NpcDialog(This_Player,
   '�����ƶ�������ȥ�أ�\'+
   '|{cmd}<��ս�þ�һ��/@move1> \'+
   '|{cmd}<����Ǯ,ֱ����ս�þ�7��/@move2> \'+

   '|{cmd}<����/@main>');
end;



procedure _move2;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ����þ��߲㡣\'+ 
   '�����������ʹ�ã������֧��3000000��ң�\'+ 
   '���뻨���Ǯ��\ \'+  
   '|{cmd}<�ƶ�/@pay2>\');

end;


procedure _pay2;
begin
   if This_Player.GoldNum >= 1500000 then
        begin
     
          This_Player.Flyto('H007',161,172);

           
           end;
           
           begin
            This_Player.DecGold(1500000);
           end;
           if This_Player.GoldNum >= 1500000 then
        begin
         ServerSay('������ң�'+This_Player.Name+'ֱ��ʹ��150����ǰ���þ�7�㣬ף�����ˣ�',3);
    
        end else       
        begin
         This_Player.NotifyClientCommitItem(0,'�������ȥ���ͱ������ȸ���150���ң��Ͽ���Ұɡ�'); 
        end;
end;



procedure _move1;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ����þ�һ����Ҫ��ҡ�\'+ 
   '�����������ʹ�ã������֧��100000��ң�\'+ 
   '���뻨���Ǯ��\ \'+  
   '|{cmd}<�ƶ�/@pay1>\'+ 
   '|{cmd}<�˳�/@talkwith>');
end;

procedure _pay1;
begin
   if This_Player.GoldNum >= 100000 then
        begin
     
           This_Player.Flyto('H001',73,79);

           
         end;
           
         begin
            This_Player.DecGold(100000);
         end ;
         if This_Player.GoldNum >= 100000 then
        begin
         ServerSay('��ң�'+This_Player.Name+'ʹ��10����ǰ���þ���',3);
    
        end else   
        begin
         This_Player.NotifyClientCommitItem(0,'�������ȥ���ͱ������ȸ���150���ң��Ͽ���Ұɡ�'); 
        end;
end;













var
tem : integer;
say : string;
Begin
   tem := random(6)+1;
   case tem of
     1 : say := '�귨��½�������ػþ���ӿ�ִ�������������ʿ���Դ�������ǰ����ս�þ�.�򿪴�������Ҫ����������������Ҫ��ȡ����.����þ�һ����Ҫ10W��ң���Ȼ����Ǯ�Ļ��ҿ�������ȥ�þ�7��.����þ�7����Ҫ300W��ң�����ר�ã�����\' ;
     2 : say := '�귨��½�������ػþ���ӿ�ִ�������������ʿ���Դ�������ǰ����ս�þ�.�򿪴�������Ҫ����������������Ҫ��ȡ����.����þ�һ����Ҫ10W��ң���Ȼ����Ǯ�Ļ��ҿ�������ȥ�þ�7��.����þ�7����Ҫ300W��ң�����ר�ã�����\';
     3 : say := '�귨��½�������ػþ���ӿ�ִ�������������ʿ���Դ�������ǰ����ս�þ�.�򿪴�������Ҫ����������������Ҫ��ȡ����.����þ�һ����Ҫ10W��ң���Ȼ����Ǯ�Ļ��ҿ�������ȥ�þ�7��.����þ�7����Ҫ300W��ң�����ר�ã�����\';
     4 : say := '�귨��½�������ػþ���ӿ�ִ�������������ʿ���Դ�������ǰ����ս�þ�.�򿪴�������Ҫ����������������Ҫ��ȡ����.����þ�һ����Ҫ10W��ң���Ȼ����Ǯ�Ļ��ҿ�������ȥ�þ�7��.����þ�7����Ҫ300W��ң�����ר�ã�����\';
     5 : say := '�귨��½�������ػþ���ӿ�ִ�������������ʿ���Դ�������ǰ����ս�þ�.�򿪴�������Ҫ����������������Ҫ��ȡ����.����þ�һ����Ҫ10W��ң���Ȼ����Ǯ�Ļ��ҿ�������ȥ�þ�7��.����þ�7����Ҫ300W��ң�����ר�ã�����\';
     6 : say := '�귨��½�������ػþ���ӿ�ִ�������������ʿ���Դ�������ǰ����ս�þ�.�򿪴�������Ҫ����������������Ҫ��ȡ����.����þ�һ����Ҫ10W��ң���Ȼ����Ǯ�Ļ��ҿ�������ȥ�þ�7��.����þ�7����Ҫ300W��ң�����ר�ã�����\';
   end;
   {$IFDEF Q136_hero}
   This_NPC.NpcDialog(This_Player,
   say+
   '|{cmd}<��ս�þ�/@move>\'+

   '|{cmd}<�˳�/@exit>');
   {$ELSE}
   This_NPC.NpcDialog(This_Player,
   say+
   '|{cmd}<��ս�þ�/@move>\'+

   '|{cmd}<�˳�/@exit>');
   {$ENDIF}
end.