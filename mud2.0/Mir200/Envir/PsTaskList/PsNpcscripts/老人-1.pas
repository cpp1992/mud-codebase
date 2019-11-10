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
    IF random(2) = 0 then
    begin
        //IF This_Player.GetV(9,10) = 1 then 
        IF This_Player.GetV(11,1) = 7 then
        begin
           This_NPC.NpcDialog(This_Player,
           '����ȥ�ҽ���! \ \'
           +'|{cmd}<�˳�/@exit>'
           );
        
        end else
        //IF This_Player.GetV(9,11) = 1 then
        IF This_Player.GetV(11,1) = 6 then
        begin
            IF This_Player.GetBagItemCount('ͷ��') > 0 then
            begin
                //This_Player.SetV(9,10,1); 
                This_Player.SetV(11,1,7);  
                This_Player.Take('ͷ��',1);
               This_NPC.NpcDialog(This_Player,
               '�������,��ô�����Ĺ���Ҳ���������!!! \'
               +'�������ͷ��,,�ҿɾ�Ƿ��һ��������. \'
               +'���������! \'
               +'��Ȼ���������һ������,����Ҳ������һ������... \ '
               +'��ȥ��һ�½���..���Ѿ�����Լ����\ \'
               +'|{cmd}<�˳�/@exit>'
               );
            
            end
            else
            begin
            IF random(5) = 0 then
               This_NPC.NpcDialog(This_Player,
               '��Ҳ�򲻹��Ǹ�����?��.. \'
               +'�Ǹ������ȷ��������.... \'
               +'��Ҫ��Ҫ����һ�ΰ�?? \ \'
               +'|{cmd}<��ս./@Q308_2_1>\'
               +'�Ȼ��<��ս./@exit>'
               )
               else
               This_NPC.NpcDialog(This_Player,
               '�����Һ�æ,�޷��������� \'
               +'�Ȼ������.. \ \'
               +'|{cmd}<�˳�/@exit>'
               );
            
            end;
        end else
        //IF This_Player.GetV(9,12) = 1 then
        IF This_Player.GetV(11,1) = 5 then
        begin
           This_NPC.NpcDialog(This_Player,
           '��Ȼ������ʶ��.... \'
           +'��,��ð�...����.\ \'
           +'������<ѯ��/@Q307_1> \'
           
           );
        
        end
        else
        begin
           This_NPC.NpcDialog(This_Player,
           '������ʿס������ɭ������... \'
           +'�������ɲ���Ŷ... \ \'
           +'|{cmd}<�˳�/@exit>'
           );
        
        end;
    end
    else
    begin
       This_NPC.NpcDialog(This_Player,
       '������ʿס������ɭ������... \'
       +'�������ɲ���Ŷ... \ \'
       +'|{cmd}<�˳�/@exit>'
       );
    
    end;
end;







procedure _Q307_1;
begin
   This_NPC.NpcDialog(This_Player,
   '����ʶ��ô?�ҵĹ����Ѿ��Ǻܾ���ǰ����.. \'
   +'�ܾ���ǰ,���ڱ���ǵ�����ʦ.. \'
   +'��ȷ�Ǻܾ���ǰ��������,��������������.. \ \'
   
   +'������ <����/@Q307_2>.'
   );

end;

procedure _Q307_2;
begin
    IF random(2) = 0 then
    begin
       IF random(2) = 0 then
       This_NPC.NpcDialog(This_Player,
       '�����˲���,�����־��ǿ,��ô,��ô...\'
       +'Ϊ����,��ֻ����һ������... \'
       +'�⼸����ȥ���ü����ط�,�������˿� \ '
       +'����һЩ��ϣ��ĵط�...\ \'
       +'|{cmd}<��һ��/@Q307_4>  '
       )
       else
       This_NPC.NpcDialog(This_Player,
       '�������Ҹ��㳴��,Ϊ�����.... \'
       +'�ǲ����ҵ�ȥ����Ǳ�һ��ѽ?? \ '
       +'�ҶԱ���Ǳ����Ѿ���һ�������... \'
       +'�Բ���,��Ҫ����... \ \'
       +'|{cmd}<�˳�/@exit>'
       );
    
    end else
   This_NPC.NpcDialog(This_Player,
   '������?��ƾʲô�����������? \'
   +'���߰�...... \ \'
   +'|{cmd}<�˳�/@exit>'
   );

end;



procedure _Q307_4;
begin
   This_NPC.NpcDialog(This_Player,
   '����ط��ܹŹ�,��һ�ֹ��� \'
   +'��Ȼ�ұȽ���,���һ����Ի�������\'
   +'Ҳ�������,���Ǹ�����ò�������... \'
   +'��Ϊ����ط��ǳ��Ź�,���ȥ��һ���Ӻ�ͻ�ص���ʵ \'
   +'���ǹŹֵĵط���,��Ҳȥ����ô? \ \'
   +'|{cmd}<��һ��/@Q307_5>'
   );

end;

procedure _Q307_5;
begin
   This_NPC.NpcDialog(This_Player,
   '��Ҫ���ܴ�����,�ɱ����˰�����ͷ��������.. \'
   +'�����ҾͿ��԰���... \'
   +'�ҿ��԰�������Ǹ��ط�,ף�������.. \ \'
   +'|{cmd}<��ȥ./@Q307_6>'
   );

end;

procedure call_back;
begin
    if (This_Player.MapName = 'Q001') or (This_Player.MapName = 'Q002') or (This_Player.MapName = 'Q003') then
    This_Player.FlyTo('1',236,306);
end;

procedure _Q307_6;
begin
   if This_Player.GetV(11,1) = 5 then
   begin
       IF CheckOtherMapHum('Q001') > 0 then
       This_NPC.NpcDialog(This_Player,
       '�������滹��һ����,��Ҫ�Ժ�һ����! \ \'
       +'|{cmd}<�˳�/@exit>'
       ) 
        else
        begin
            IF This_Player.Job = 0 then
            begin
                This_NPC.ClearMon('Q001');
                This_NPC.CreateMon('Q001',10,10,10,'���þ���2',1);
                This_Player.RandomFlyTo('Q001');
                This_Player.CallOut(This_Npc, 60, 'call_back');
                //This_Player.SetV(9,11,1); 
                This_Player.SetV(11,1,6);
            end else
            IF This_Player.Job = 1 then
            begin
                This_NPC.ClearMon('Q002');
                This_NPC.CreateMon('Q002',10,10,10,'������ʿ2',1);
                This_Player.RandomFlyTo('Q002');
                This_Player.CallOut(This_Npc, 60, 'call_back');
                //This_Player.SetV(9,11,1); 
                This_Player.SetV(11,1,6); 
            end else
            IF This_Player.Job = 2 then
            begin
                This_NPC.ClearMon('Q003');
                This_NPC.CreateMon('Q003',10,10,10,'���Ͷ�ǳ�2',1);
                This_Player.RandomFlyTo('Q003');
                This_Player.CallOut(This_Npc, 60, 'call_back');
                //This_Player.SetV(9,11,1); 
                This_Player.SetV(11,1,6);
            end;
        end;
   end;
end;


procedure _Q308_2_1;
begin
    IF CheckOtherMapHum('Q001') > 0 then
   This_NPC.NpcDialog(This_Player,
   '�����������ڱ�������ĥ,�Ǻ�,������Ҫ��һ����! \ \'
   +'|{cmd}<�˳�/@exit>'
   )
    else
    begin
        IF This_Player.Job = 0 then
        begin
            This_NPC.ClearMon('Q001');
            This_NPC.CreateMon('Q001',10,10,10,'���þ���2',1);
            This_Player.RandomFlyTo('Q001');
            This_Player.CallOut(This_Npc, 60, 'call_back');
        end else
        IF This_Player.Job = 1 then
        begin
            This_NPC.ClearMon('Q002');
            This_NPC.CreateMon('Q002',10,10,10,'������ʿ2',1);
            This_Player.RandomFlyTo('Q002');
            This_Player.CallOut(This_Npc, 60, 'call_back');
        end else
        IF This_Player.Job = 2 then
        begin
            This_NPC.ClearMon('Q003');
            This_NPC.CreateMon('Q003',10,10,10,'���Ͷ�ǳ�2',1);
            This_Player.RandomFlyTo('Q003');
            This_Player.CallOut(This_Npc, 60, 'call_back');
        end;
    end;
end;





begin
    domain;
end.