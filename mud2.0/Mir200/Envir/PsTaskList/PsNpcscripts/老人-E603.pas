{********************************************************************

*******************************************************************}

procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;



procedure _normal; 
begin
   This_NPC.NpcDialog(This_Player,
   '��.. ����ô��������ôΣ�յĵط���\'
   +'�Ҳ���˵���ܲ��ܴ�����߳�ȥ��\ \'
   
   +'|{cmd}<���жԻ�/@talkwith_1>\'
   +'|{cmd}<�ر�./@exit>\'
   );

end;


procedure _QUEST; 
begin

      //IF This_Player.GetV(9,13) = 1 then
      IF This_Player.GetV(11,1) = 10 then 
      begin
         This_NPC.NpcDialog(This_Player,
         '��ȥ�ұ���ʡ������ɡ� \ \'
         +'|{cmd}<�ر�/@exit>'   
         );
      
      end else
      //if This_Player.GetV(9,14) = 1 then
      if This_Player.GetV(11,1) = 9 then
      begin
      
          if (This_Player.GetBagItemCount('¹��') >= 1) and (This_Player.GetBagItemCount('¹Ѫ') >= 1) then
          begin
           //This_Player.SetV(9,13,1);
           This_Player.SetV(11,1,10);
           This_Player.Take('¹��',1);
           This_Player.Take('¹Ѫ',1);
             This_NPC.NpcDialog(This_Player,
             '���������ô���ҵĲ��϶��ܹ��ҵ���\'
             +'�һ��������ͽ���������������\'
             +'��ȥ�����ɡ�\ \'
             +'ȥ<��/@exit>'
             
             );
          
          end else
          begin
             This_NPC.NpcDialog(This_Player,
             '��û���ҵ�������ȥ�Ұɡ�\'
             +'�Ҳ��Ǻ�Ƣ�����Ȳ�����ô��ʱ�䡣\ \'
             +'|{cmd}<�ر�/@exit>'
             );
          
          end;
      end else
      IF This_Player.GetV(9,15) = 1 then
      begin
          IF random(5) = 0 then
          begin
             This_NPC.NpcDialog(This_Player,
             '������Ǹ��������ĳ�Ƣ����\'
             +'�����Ƣ����࣬�á�������.. \'
             +'���벻��׬һ�δ�Ǯ�� \ \'
             +'|{cmd}<��׬Ǯ/@Q351_1_1> \'
             +'|{cmd}<����׬Ǯ/@Q351_1_2>'
             );
          
          end else
          _normal
      end else
      //IF (This_Player.GetV(9,16) = 1) and (random(5) = 0) then
      IF (This_Player.GetV(11,1) = 8) and (random(5) = 0) then
      begin
         This_NPC.NpcDialog(This_Player,
         '����ʲô������Ҫ�����������͸��㣬����\ '
         +'Ҫ���������ͣ���Ҫϡ�в��ϡ�\'
         +'��������ҵ���Щ���ϣ��Ҿ͸������졣\ '
         +'��Щ���ϰ���¹�׺�¹Ѫ��\'
         +'����ڱ�ĵط��Ҳ�����Щ���ϣ� \ \'
         +'|{cmd}<��һ��/@Q310_1>'
         );
      
      end else
      _normal
end;



procedure domain; 
begin
    IF random(2) = 0 then 
    _QUEST
    else
    _normal
end;




procedure _Q310_1; 
begin
   IF (This_Player.GetV(11,1) = 8) then
   begin 
    //This_Player.SetV(9,14,1);
    This_Player.SetV(11,1,9);
   This_NPC.NpcDialog(This_Player,
   '����˵¹��ֻ���ڵ��²��ܹ��ҵõ���\'
   +'��֪����ôȥ�������֪��������Ҳû�취��\ '
   +'����¹Ѫ�ҾͲ�������Ķ����Եõ���\ '
   +'ף����ˡ�\ \'
   +'|{cmd}<�ر�/@exit>'
   );
   end;
end;









procedure _talkwith_1; 
begin
    //IF GetDayOfWeek >= 6 then 
    IF GetDayOfWeek >= 0 then 
    begin
       This_NPC.NpcDialog(This_Player,
       '������ô��Զ���Ҵ�� \'
       +'�Ҿ͸�����һ�����鱨��\'
       +'�⸽����һ������֪���Ķ�Ѩ��\'
       +'�����Ѩ�ʹ������粻һ������Ҳֻ����˵��һ�Ρ�\'
       +'һ��Ҳûȥ���������ҿ��Ը����·��\ \ '
       
       +'|{cmd}<��ս/@talkwith_3>\'
       +'|{cmd}<�ر�/@exit>'
       );
    
    end else
    begin
    IF random(10) = 0 then
       This_NPC.NpcDialog(This_Player,
       '����û����˵�����£� \'
       +'��Ҳ����������ϸ˵����\'
       +'���ǿ��Ը���������ʱ������ĩ�����ϣ� \'
       +'���ʱ�����������ҵĻ��� \'
       +'�ҿ��Դ��㵽�Ǹ��ط���\ '
       +'�ǵ�ʱ����ɡ�\ \'
       +'|{cmd}<����/@main>'
       ) 
       else
       This_NPC.NpcDialog(This_Player,
       '����˵ʲô��\'
       +'��������ʧ�ɡ�\ \'
       +'|{cmd}<����/@main>'
       );
    
    end;
end;
   


procedure _talkwith_3; 
begin
   This_NPC.NpcDialog(This_Player,
   '�ˣ��ҿ��������ȥ��\'
   +'���Ǽ�ס��������Сʱ֮�����ص�ԭ���ĵط�������С�ĵ㡣\ \'
   +'|{cmd}<����/@talkwith_4>'
   
   );

end;

procedure call_back;
begin
    if This_Player.MapName = 'M001' then
    This_Player.Flyto('E603',32,192);
end;
   
procedure _talkwith_4; 
begin
     This_Player.RandomFlyTo('M001');
       This_Player.CallOut(This_Npc, 180 * 60, 'call_back');
end;






procedure _Q351_1_1; 
begin
   This_NPC.NpcDialog(This_Player,
   'Ŷ����׬�ǰɣ� \'
   +'�ã��������ն��ȥ�ҵ��ζ���ļ���С��ɣ�\'
   +'���������𰸵ġ�\ \'
   +'|{cmd}<ȥ��/@Q351_1_1_1>'
   );

end;

procedure _Q351_1_2; 
begin
   This_NPC.NpcDialog(This_Player,
   '��˵��Ƣ�����ã�����Ҳ����������������\'
   +'�Ҷ�������˼���㣬\'
   +'��ȥ���������ɡ�\ \'
   +'|{cmd}<�ر�/@exit>'
   
   );

end;

procedure _Q351_1_1_1; 
begin
    This_Player.SetV(9,17,1);
   This_NPC.NpcDialog(This_Player,
   'ף����ˡ�\ \'
   +'|{cmd}<�ر�/@exit>'
   );

end;







begin
    domain;
end.