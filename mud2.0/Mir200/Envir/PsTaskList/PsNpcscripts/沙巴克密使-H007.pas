{********************************************************************

*******************************************************************}
program mir2;

{$I common.pas}

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '����ɳ�Ϳ���ʹ���ҿ��԰���ֱ���͵�ɳ�Ϳ˻ʹ��У�\'
   +'��������������ҵ�Ҫ�󣬶��ҵ�Ҫ�����\'
   +'���ȸ���5000��Ұɣ������ɣ�\ \'
   +'|<����/@a1>\'
   +'|<�뿪/@exit>'
   );

end;

procedure _a1;
begin
    case random(3) of
        0:
        begin
            if This_Player.GoldNum >= 5000 then
            begin
                This_Player.DecGold(5000);
               This_NPC.NpcDialog(This_Player,
               'лл��Ľ���ˣ�\'
               +'��ϧ���˳���Ǯ���࣬�����һ�������Ϊ�����\'
               +'��������ܳ������Ǯ������Ը���ٿ��ǿ��ǵģ�\ \'
               +'|<�ٳ�/@a1>5000�������\'
               +'|<�뿪/@exit>'  
               );
        
            end else
           This_NPC.NpcDialog(This_Player,
           '������ô��Ǯ��û�У��ҿ�ֻΪ��Ǯ�˷���\ \'
           +'|<�뿪/@exit>'
           );
    
        end;
        1:
        begin
            if This_Player.GoldNum >= 5000 then
            begin
                This_Player.DecGold(5000);
               This_NPC.NpcDialog(This_Player,
               'лл��Ľ���ˣ������Ҹı������ˣ�\'
               +'������Ҫ������Ҫ�����һ�û��ã�\'
               +'�����ɣ������������˵�ɣ�\ \'
               +'|<�뿪/@exit>'  
               ); 
            end else
           This_NPC.NpcDialog(This_Player,
           '������ô��Ǯ��û�У��ҿ�ֻΪ��Ǯ�˷���\ \'
           +'|<�뿪/@exit>'
           );
    
        end;
        2:
        begin
            if This_Player.GoldNum >= 5000 then
            begin
                This_Player.DecGold(5000);
               This_NPC.NpcDialog(This_Player,
               '��ѽ��������˼������ʧ���ˣ�\'
               +'ʲôԭ���أ�����֣�\'
               +'��������ԭ�򣿻���ȱ����ʲô���ѵ���Ǯ����������\ \'
               +'|<�ٳ�/@a1>5000�������\'
               +'|<�뿪/@exit>'           
               );
    
            end else
           This_NPC.NpcDialog(This_Player,
           '������ô��Ǯ��û�У��ҿ�ֻΪ��Ǯ�˷���\ \'
           +'|<�뿪/@exit>'
           );
        end;
    end;
end;

begin
    domain;
end.