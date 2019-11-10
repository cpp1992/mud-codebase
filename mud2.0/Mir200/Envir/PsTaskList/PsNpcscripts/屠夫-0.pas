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

procedure _normal;
begin
IF This_Player.GetV(9,21) = 1 then

   This_NPC.NpcDialog(This_Player,
   '�Ҹ����Ͳ���ʶ��..\ '
   +'���߿���һ��������� �Ҿ͸о�����...\'
   +'��������....\ \'
   +'|{cmd}<�ر�/@exit>'
   )
else
   This_NPC.NpcDialog(This_Player,
   '����������?\ \'
   +'|{cmd}<��/@sell>��\'
   +'|{cmd}<�ر�/@exit>'
   
   );

end;

procedure _QUEST;
var
num,duramax,duraav : integer;
num_1,duramax_1,duraav_1 : integer;
begin
    IF This_Player.GetV(9,21) = 1 then 
       This_NPC.NpcDialog(This_Player,
       '�Ҹ����Ͳ���ʶ��..\ '
       +'���߿���һ������������Ҿ͸е�����...\'
       +'��������....\ \'
       )
    else 
   // IF This_Player.GetV(9,22) = 1 then
   IF (This_Player.GetV(11,1) = 11) or (This_Player.GetV(11,1) = 12) then 
    begin
    //This_Player.SetV(9,9,1);
    This_Player.SetV(11,1,12);
       This_NPC.NpcDialog(This_Player,
       'Ŷ����׼���úܺã�������㣬\'
       +'�ҿ��Ժú��д�����λ����ʯ������ѡ� \'
       +'�Ұ����ҵ�������ǡ����Ϊ��׼����һ���ö����� \'
       +'��ȥ��һ��ǡ���ɡ�\'
       +'��ĺܸ�л�㡣 \'
       +'(�������ᣬ��Щ���Ǹ����⡣) \ \'
       +'|{cmd}<�ر�/@exit>'
       );
    
    
    end else
    IF This_Player.GetV(9,23) = 1 then
    begin
    IF This_Player.GetV(9,23) = 1 then
       This_NPC.NpcDialog(This_Player,
       '��ȥ�ұ���ʡ������! \ \'
       +'|{cmd}<�ر�/@exit>'
       );
    
    end else
    if This_Player.GetV(9,24) = 1 then
    begin
       This_Player.CheckBagItemEx('����',num,duramax,duraav);
       This_Player.CheckBagItemEx('��',num_1,duramax_1,duraav_1);
        //This_Player.PlayerNotice('����:' + inttostr(num) + '-' + inttostr(duramax),2);
        //This_Player.PlayerNotice('��:' + inttostr(num_1) + '-' + inttostr(duramax_1),2);
        if (num >= 5) and (duramax > 4500) and  (num_1 >= 5) and (duramax_1 > 11500) then 
        begin
            This_Player.Take('����',5);
            This_Player.Take('��',5);
            This_Player.AddGold(6000);
        
           This_Player.SetV(9,23,1);
           This_NPC.NpcDialog(This_Player,
           'лл��..����Ҹ��У��͸�����ö�һ�㣬\'
           +'������Ҳ�������ֻ����500���/�飬����200���/�����㡣 \'
           +'�治����˼\'
           +'�����ȥ�Ҷ���ɽ�ȵ������ɣ� \'
           +'��ʵ����˵�л�Ҫ���㽲�� \ '
           +'ǰ���������ƭ�ù�ꨣ�����\\'
           +'|{cmd}<�ر�/@exit>'
           );
        
        end else
        begin
           This_NPC.NpcDialog(This_Player,
           '�㶼û��׼���ã���ô����������?\'
           +'���һ��Ⱦ���! \ \ '
           +'|{cmd}<�ر�/@exit>'
           );
        
        end;
    end else
    IF This_Player.GetV(9,25) = 1 then
    begin
    IF random(5) = 0 then
       This_NPC.NpcDialog(This_Player,
       '��������ҵ���������ʵ����̫�������Բ������㡣 \'
       +'������ȴ�ܾ��ҵ�����̫�����ˡ�\'
       +'��һ�������㣬����?? \ \'
       +'|{cmd}<����/@Q300_2_1>\'
       +'|{cmd}<�ܾ�/@Q301_1>'
       )
       else
       This_NPC.NpcDialog(This_Player,
       '��������������ټ��棬���߰�! \ \'
       +'|{cmd}<�ر�/@exit>'
       );
    
    end else
    
   // IF (This_Player.GetV(9,24) <= 0) and (This_Player.GetV(9,25) <= 0) and (This_Player.GetV(9,21) <= 0) then
    if This_Player.GetV(11,1) < 0 then
    begin
    
       This_NPC.NpcDialog(This_Player,
       '�������˵����?? ��... \'
       +'������������ֻ���Ҹ��˵�����... \'
       +'���ǿ������ҽ�һ����?? \ \'
       +'|{cmd}<����/@Q300_1>\'
       +'|{cmd}<�ܾ�/@exit>\'
       
       );
    
    end else
    _normal;
end;

procedure domain;
begin
    IF random(2) = 0 then
    _QUEST
    else
    _normal;
end;




   


procedure _Q300_1;
begin
   This_NPC.NpcDialog(This_Player,
   '����һ�������ѡ�\'
   +'������ס�ڱ���ʡ�Ľ���ʯ����ˡ�\'
   +'������֪������������æ�������ҡ� \'
   +'��λ������ܵ�һ���ʳ�������������� \'
   +' '
   +'|{cmd}<����/@Q300_2>\'
   
   );

end;


procedure _Q300_2;
begin
   This_NPC.NpcDialog(This_Player,
   '����˵���������������� \'
   +'��Ҳ��ȥ�ң������ҹ�����Ҳ�����ף����ܲ��������� \'
   +'������������æ�� \ \'
   
   +'|{cmd}<�õ�/@Q300_2_1>\'
   +'|{cmd}<�ܾ�/@Q300_2_2>\'
   
   
   
   
   );

end;


procedure _Q300_2_1;
begin
   // This_Player.SetV(9,24,1);
   // This_Player.SetV(9,25,0);
  //  This_Player.SetV(9,21,0);
   This_Player.SetV(11,1,1);
   This_NPC.NpcDialog(This_Player,
   '�ܸ�л���Ӧ�ҵ����� \'
   +'������ԵĻ����뾡�����������\'
   +'Ŷ����һ�����˸����㣬\'
   +'����Ҫ����Ʒ��20���ϵ����Ʒ��5���ϵļ��⡣ \'
   +'һ����10�����10�鼦�⡣ \\'
   +'|{cmd}<�ر�/@exit>'
   );

end;


//;; ��һ�ξܾ�����ʱ
procedure _Q300_2_2;
begin
    This_Player.SetV(9,25,1);
   This_NPC.NpcDialog(This_Player,
   '�Ҷ����㽲���ҵ��Ѵ����㻹�ܾ��ҡ�����֡� \'
   +'����Ҳ��������㣬̫����ʧ���ˡ� \'
   +'��������ǰ��ʧ�� \ \'
   +'|{cmd}<�ر�/@exit>'   
   );

end;


procedure _Q301_1;
begin
   This_NPC.NpcDialog(This_Player,
   '���������㣬�㶼����Ӧ���á� \ '
   +'���������ҿ��ǵ�һ�μ��� \ '
   +'����Լ�ȥ����ưɡ� \'
   +'�Ҳ����ټ����㡣\ '
   +'(�������ᣬ��Щ���Ǹ����⡣) \ \'
   +'|{cmd}<�ر�/@exit>'
   );

This_Player.SetV(9,21,1);
end;





procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�߼�����Ʒ�ʺõ��⡣\�ͼ�����ճ�����򱻻��յ��⡣\ \'
    +'|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;


//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(40);
  This_Npc.AddStdMode(1);
  This_Npc.SetRebate(100);
end;  

//�ű�ִ�е����
begin
  domain;
end.