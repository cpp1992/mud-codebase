{********************************************************************

*******************************************************************}
//ָʾ�ĸ߼���ʿ
//��������ָʾ��
procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;

procedure domain;
begin
    IF This_Player.GetV(9,6) = 1 then
    begin
       This_NPC.NpcDialog(This_Player,
       '�㲻���Ѿ��յ�������������յ��飬\'
       +'��˫���Ǳ����������飨˫�������������\'
       +'�����ʧ����Ҳ�Ѿ�ѧ�����������\'
       +'����ʹ������������������ʣ�\'
       +'��Ĺ���Խ�����������Ҳ��Խ�ߡ�\'
       +'���������ȥ����ʡ����꣬ \'
       +'�������˻ύ����������� \ '
       +'��������������323��247����ȥ�ɡ�\'
       +'|{cmd}<�ر�/@exit>'
       );
    
    end else 
    IF This_Player.GetV(9,1) = 1 then
    begin
       IF This_Player.Level >= 7 then
       This_NPC.NpcDialog(This_Player,
       '��������һ�����������\'
       +'�кܶ�����¹���������֣�������5����֮�ڰ�����ץ�꣬�ٺ��ҽ��жԻ���\ \'
       +'|{cmd}<�ر�/@Q706_1>'
       )
       else
       This_NPC.NpcDialog(This_Player,
       '���Ǹ߼���ʿ���ܸ��˼����㣬\'
       +'�������սʿְҵ�����������˽��˺ܶ࣬\'
       +'սʿ�ĵ�һ��������ǻ���������\'
       +'������书Ҫ����ļ�����7����\'
       +'������������������ɡ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    
    end else

    //////////////////////////
    //IF (This_Player.GetV(9,7) = 1) and   
    //(This_Player.GetV(8,25) <= 0) then
    IF (This_Player.GetV(11,4) = 12) then
    begin
        if (This_Player.Job = 0) and (This_Player.Level >= 35) then
        begin
            //reset [210] 10
           // This_Player.SetV(8,25,1);
            This_Player.SetV(11,4,13);
            This_Player.Give('����֮��',1);
            
            //set [221] 1
            This_NPC.NpcDialog(This_Player,
           'Ŷ��������������ʿ���ܰ�ħ���������\'
           +'����̫�������ˣ�û�뵽���з��������һ�찡��\'
           +'�����Ұ��Ȿ����㣬�����Ұ�����������ʡ�������ϰ�\'
           +'���������ҵ���˼�ġ�\ \'
           +'|{cmd}<�ر�/@exit>'  );
        end;
    
       
      
    
    end else
    //IF This_Player.GetV(8,28) = 1 then
    if This_Player.GetV(11,4) = 8 then
   This_NPC.NpcDialog(This_Player,
   '��˵������ҵĵ���-����ʡ�������ϰ�?\'
   +'��û����úܺã�\'
   +'��ֲ��Ǻܺã����Ǿ�ƾ���Ǹ����飬\'
   +'�ҾͰ���������߽�����\'
   +'��������Ҳû˵������\'
   +'���������Ķ���ʲô��\ \'
   +'|{cmd}<�����ڱ���ʡ������������/@next_1>\'
   +'|{cmd}<��Ҫ˵���ֻ��������ҽ��ɡ�/@next_2>'
   ) else
    IF This_Player.GetV(11,4) = 11 then
    begin
       This_NPC.NpcDialog(This_Player,
       '׼����������ô��ʼ�ɡ�\ \'
       +'|{cmd}<��һ��/@next_3>'
       );
    
    end else
    //IF (This_Player.GetV(8,14) = 1) and
    //(This_Player.GetV(9,7) <= 0) then
    if This_Player.GetV(11,4) = 7 then
    begin
       This_NPC.NpcDialog(This_Player,
       '����ʲô�£�����ʡ�������ϰ壿?\'
       +'����ô֪���ҵĵ��ӣ�\'
       +'������ҽ�����\'
       +'�������沼������������Ϸ��\'
       +'��Ӯ���Ҿ����㽲��\ \'
       +'|{cmd}<����/@gawi>   ^<��/@bawi>   ^<��/@bo>'
       );
    
    end else
    IF This_Player.GetV(9,26) = 1 then
    begin
       This_NPC.NpcDialog(This_Player,
       '�㲻���Ѿ��յ�������������յ��飬\'
       +'��˫���Ǳ��飨˫�������������\'
       +'�����ʧ����Ҳ�Ѿ�ѧ�����������\'
       +'����ʹ������������������ʣ�\'
       +'��Ĺ���Խ�����������Ҳ��Խ�ߡ�\'
       +'���������ȥ����ʡ����꣬ \'
       +'�������˻ύ����������� \ '
       +'��������������323��247����ȥ�ɡ�\'
       +'|{cmd}<�ر�/@exit>'
       +''
       );
    
    end else
    IF This_Player.GetV(9,27) = 1 then
    begin
    IF This_Player.Level >= 7 then
    
       This_NPC.NpcDialog(This_Player,
       '��ļ�����7�� \'
       +'��������һ�����������\'
       +'�кܶ�����¹���������֣�������10����֮�ڰ�����ץ�꣬�ٺ��ҽ��жԻ���\ \'
       +'|{cmd}<�ر�/@Q706_1>'
       +''
       )
       else
       This_NPC.NpcDialog(This_Player,
       '���Ǹ߼���ʿ���ܸ��˼����㣬\'
       +'�������սʿְҵ�����������˽��˺ܶ࣬\'
       +'սʿ�ĵ�һ��������ǻ���������\'
       +'������书Ҫ����ļ�����7����\'
       +'������������������ɡ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    
    end else
    begin
        if This_Player.Gender = 0 then
        This_NPC.NpcDialog(This_Player,
       '����ôƫƧ�ĵط���\'
       +'���ʲô���֣�' + This_Player.Name + '����ô����ô�����֣�\'
       +'���������º�æ�����߰�\ \'
       +'|{cmd}<�ر�/@exit>'
       )
       else
       This_NPC.NpcDialog(This_Player,
       '|' + This_Player.Name + '��������ֺܺ�����\'
       +'������ʱ��������һ�𵽱����ջ��һ����ô����\'
       +'���ˣ���Ҫ�����������ң�\'
       +'������æ��\'
       +'���߰ɡ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end ;
end;

procedure call_back;
begin
    if This_Player.MapName = '01142' then
    This_Player.RandomFlyTo('0114');
end;

procedure _Q706_1;
begin
    IF CheckOtherMapHum('01142') > 0 then
    begin

       This_NPC.NpcDialog(This_Player,
       '���������ڽ����ҵĲ��飬\'
       +'������������꣬�ܱ�Ǹ��\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    begin
    This_NPC.ClearMon('01142');
    This_NPC.CreateMon('01142',19,19,10,'¹',10);
    This_NPC.CreateMon('01142',19,19,10,'��',20);
    This_NPC.CreateMon('01142',19,19,10,'��',10);
    This_Player.RandomFlyTo('01142');
    This_Player.CallOut(This_Npc, 300, 'call_back');
    
    end;

end;

procedure _gawi;
begin
    IF random(5) = 0 then
    begin
       //This_Player.SetV(8,28,1) ;
       This_Player.SetV(11,4,8);
       This_NPC.NpcDialog(This_Player,
       '�ҳ��˲�����ȻӮ�ң�\'
       +'����������������Ļ���\ \'
       +'|{cmd}<��һ��/@next>'
       );
    end else
    begin
   This_NPC.NpcDialog(This_Player,
   '�ҳ��˴�����Ӯ�ˣ����߰�\ \'
   +'|{cmd}<��һ��/@exit>'
   );
   This_Player.SetV(11,3,-1);
   This_Player.SetV(11,4,-1);
   This_Player.SetV(11,5,-1);
    end;
end;

procedure _bawi;
begin
    IF random(5) = 0 then
    begin
       //This_Player.SetV(8,28,1) ;
       This_Player.SetV(11,4,8);
       This_NPC.NpcDialog(This_Player,
       '�ҳ��������㾹Ȼ��Ӯ�ң�\'
       +'�������������㽲��\ \'
       +'|{cmd}<��һ��/@next>'
       )
   end
   else
   begin
   This_NPC.NpcDialog(This_Player,
   '���ǲ�����Ӯ�ˣ����߰ɡ�\ \'
   +'|{cmd}<�ر�/@exit>'
   +''
   );
   This_Player.SetV(11,3,-1);
   This_Player.SetV(11,4,-1);
   This_Player.SetV(11,5,-1);
   end;
end;

procedure _bo;
begin
    IF random(5) = 0 then
    begin
       //This_Player.SetV(8,28,1) ;
       This_Player.SetV(11,4,8);
   This_NPC.NpcDialog(This_Player,
   '�ҳ��˴�����Ȼ��Ӯ�ң�\'
   +'�������������㽲��\ \'
   +'|{cmd}<��һ��/@next>'
   )
   end
   else
   begin
   This_NPC.NpcDialog(This_Player,
   '�ҳ���������Ӯ�ˣ����߰ɡ�\ \'
   +'|{cmd}<�ر�/@exit>'
   );
   This_Player.SetV(11,3,-1);
   This_Player.SetV(11,4,-1);
   This_Player.SetV(11,5,-1);
   end;
end;
 
procedure _next;
begin
   if This_Player.GetV(11,4) = 8 then
   This_NPC.NpcDialog(This_Player,
   '��˵������ҵĵ���-����ʡ�������ϰ�?\'
   +'��û����úܺã�\'
   +'��ֲ��Ǻܺã����Ǿ�ƾ���Ǹ����飬\'
   +'�ҾͰ���������߽�����\'
   +'��������Ҳû˵������\'
   +'���������Ķ���ʲô��\ \'
   +'|{cmd}<�����ڱ���ʡ������������/@next_1>\'
   +'|{cmd}<��Ҫ˵���ֻ��������ҽ��ɡ�/@next_2>'
   );

end;
 
procedure _next_1;
begin
   //reset [210] 10
   //This_Player.SetV(8,23,1);
   This_Player.SetV(11,4,9);
   This_NPC.NpcDialog(This_Player,
   '����֪���ˣ���������Ի�ȥ�ˡ�\ \'
   +'|{cmd}<�ر�/@exit>'
   );

end;

procedure _next_2;
begin
   This_NPC.NpcDialog(This_Player,
   '����˵ʲô��\ \'
   +'|{cmd}<��ʵ����ʡ�������ϰ�Ҳ������ʦ��/@remember>\'
   +'|{cmd}<Ϊʲô����������ĵ��ӵ���˵����ô������?/@criticize>'
   );

end;
 
procedure _remember;
begin
   This_NPC.NpcDialog(This_Player,
   '������ʵ��Ҳû����������\'
   +'������Ϊ���ӣ����봫����һ��������\'
   +'���������ƾ�����ǲ����ģ�\'
   +'��Ҫ���������ε�ʧ�ܣ�\'
   +'��ʧ���еõ����飬������ɣ�����Ϊ��������Ӧ�ÿ������õ���\'
   +'�������������ˣ��벻�����ˡ�\ \'
   +'|{cmd}<��һ��/@remember_1>'
   +''
   );

end;
 
procedure _remember_1;
begin
   This_NPC.NpcDialog(This_Player,
   '�ټ�������������ʱ��ħ����������У�\'
   +'����һ��Ϊ���������ǣ��ҷ����飬�������ǳ�����\'
   +'��������̫ǿ���ˣ����ǲ�������ô���ˡ�\'
   +'��ô�������ܰ��Ҵ�������ħ���� \'
   +'|{cmd}<����/@accept>\'
   +'|{cmd}<�ܾ�/@noaccept>'
   );

end;

procedure _noaccept;
begin
   This_Player.SetV(11,3,-1);
   This_Player.SetV(11,4,-1);
   This_Player.SetV(11,5,-1);
   This_NPC.NpcDialog(This_Player,
   '��ûʲô���ˣ����ȥ��!!\ \'
   +'|{cmd}<�ر�/@exit>'
   );
end;

procedure _accept;
begin
   
   This_Player.SetV(8,28,1) ; 
   
   if This_Player.GetV(11,4) = 8 then
   This_Player.SetV(11,4,11);
   This_NPC.NpcDialog(This_Player,
   '�ã����������ħ���ǿ��\'
   +'��������׼���͸����Ұɡ�����û����׼������׼����װ��������\'
   +'�����Ǻܿ��µġ�\ \'
   +'|{cmd}<׼������/@next_3>\'
   +'|{cmd}<����׼������/@exit>'
   );

end;


 
procedure _next_3;
begin
 // if (This_Player.GetV(9,7) <= 0) and (CheckOtherMapHum('01141') >= 1) then

   
   if This_Player.GetV(11,4) = 11 then
   begin
       if (CheckOtherMapHum('01141') >= 1) then
       This_NPC.NpcDialog(This_Player,
       '�����������ں�ħ��ս����\'
       +'�㻹�ǵ�һ��������ɡ�\ \'
       +'|{cmd}<�ر�/@exit>'
       )
       else
       begin
        This_NPC.ClearMon('01141');
        This_NPC.CreateMon('01141',10,10,10,'��������2',30);
        This_Player.RandomFlyTo('01141');
       end;
   end;
end;

procedure _criticize;
begin
   //reset [210] 10
   This_Player.SetV(11,3,-1);
   This_Player.SetV(11,4,-1);
   This_Player.SetV(11,5,-1);
   This_NPC.NpcDialog(This_Player,
   '��˵ʲô�����ں��Ҽƽ���\'
   +'����ʲô��˵ʲô!!!\'
   +'�����ٺ���������˵����\'
   +'���ȥ��!!\ \'
   +'|{cmd}<�ر�/@exit>'
   );

end;

begin
    domain;
end.