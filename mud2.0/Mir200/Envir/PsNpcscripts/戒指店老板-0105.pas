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

procedure _heard;
begin
   This_NPC.NpcDialog(This_Player,
   '�����������İ취�ܼ򵥣�\'
   +'�������϶���Ҫ��׸�����󣬶���û��������\'
   +'�һ�����ġ�\'
   +'ֻҪ�����5�����\ \'
   +'|{cmd}<�����/@heard_1>\'
   +'|{cmd}<�ܾ�/@noheard>'
   );

end; 

procedure domain;
begin
    IF (This_Player.GetV(8,19) = 1) and
    (This_Player.GetV(8,26) = 1) then
    begin
        IF RANDOM(5) = 0 then
        begin
           This_Player.SetV(8,26,0);
           This_NPC.NpcDialog(This_Player,
           '��Ȼ���������������Ҿ�ԭ����ɡ�\'
           +'�����㲻�������һ���Դ����ҵ꣬\'
           +'�����Ҳ�һ�������Ǻ�С���۵ġ�\ \'
           +'|{cmd}<�õ�/@heard>'
           
           );
        
        end
        else
       This_NPC.NpcDialog(This_Player,
       '�Ҳ�����������������ٽ���ȥ��\'
       +'���ϳ�ȥ!!\ \'
       +'|{cmd}<�ر�/@exit>'
       
       );
    
    end else
    IF (This_Player.GetV(8,19) = 1) and (This_Player.GetV(8,27) = 1) then
    _heard
    
    else 
    //IF This_Player.GetV(8,19) = 1 then
    if (This_Player.GetV(11,5) = 3) and (This_Player.GetV(11,4) = 2) then
    begin
       This_NPC.NpcDialog(This_Player,
       '��ѽ����˵���������ҵꣿ\'
       +'����Ȼ�����Ǵֻ\'
       +'�����Ը�ȴ�����С����\'
       +'ֻ���Ҳ��а취������������\'
       +'��ô������������\ \'
       +'|{cmd}<��/@heard>\'
       +'|{cmd}<�ܾ�/@noheard>'
       
       
       
       );
    
    end else
    //IF (This_Player.GetV(8,22) = 1) then
    if (This_Player.GetV(11,5) = 2) and (This_Player.GetV(11,4) = 2) then
    begin
        //IF This_Player.GetV(8,14) <=  0 then

           This_NPC.NpcDialog(This_Player,
           '�������ǰ������ҵ����λ��\'
           +'����˵���㡣\'
           +'����ʶ����ס�ڱ���ʡ���������ϰ���\'
           +'��Ȼ���ڿ������ܺ��ᣬ\'
           +'������ǰ���Ǻ��������Ľ��ˣ������ǺȾƺȳ��Ǹ����ӡ�\'
           +'������ͱ���ʡ�������ϰ彲����ȥ�����ɡ�\ \'
           +'|{cmd}<��һ��/@next>'
           
           );
        
    end else
    if (This_Player.GetV(11,4) = 6) then 
     begin
           This_NPC.NpcDialog(This_Player,
           '��ȥ�ұ���ʡ�������ϰ�ɡ�\ \'
           +'|{cmd}<�ر�/@exit>'
           );
        
        
          // This_Player.SetV(8,22,0);
     end else
    This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���ʲô������\ \'
      +'|{cmd}<���ָ/@buy>' + addSpace('', 22) + '^<����ָ/@sell>\'
      +'|{cmd}<�����ָ/@repair>\'
      +'|{cmd}<��������/@s_repair>\'
      +'|{cmd}<�ر����/@moveout>\'
      +'|{cmd}<�˳�/@doexit>'
      );
end;

procedure _moveout;
begin  
    if This_Player.MapName = '0105' then 
    This_Player.Flyto('0',298 + random(3) - 1,289 + random(3) - 1); 
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    'Ҫ���ָ��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    'Ҫ����ָ��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    'Ҫ�����ָ��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����û��㲻��\ \|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ� !���̫������...������������Ĳ����������޲���\���۸������ͨ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|{cmd}<����/@main>'
  );
end;


procedure _heard_1;
begin
    IF This_Player.GetBagItemCount('���') >= 5 then
    begin
    This_Player.Take('���',5);
       This_NPC.NpcDialog(This_Player,
       '���Եȣ�����������\ \'
       +'|{cmd}<��һ���/@appease>'
       );
    end else
    begin
    
       This_NPC.NpcDialog(This_Player,
       'û�н�󣬿�ȥ�һ�����\ \'
       +'|{cmd}<�ر�/@exit>'       
       );
    
    This_Player.SetV(8,27,1);
    end;
end;

procedure _noheard;
begin
This_Player.SetV(8,26,1);
   This_NPC.NpcDialog(This_Player,
   'ԭ���������������ɰ���\'
   +'�����Դ������е��˵��ˣ����ǵ�һ�μ���\'
   +'�ߣ���Ҳ��������˵��\'
   +'���߰ɡ�\ \'
   +'|{cmd}<�ر�/@exit>'
   );

end;



procedure _appease;
begin
    if (This_Player.GetV(11,5) = 3) and (This_Player.GetV(11,4) = 2) then
    begin
    // This_Player.SetV(8,19,0);
     //This_Player.SetV(8,21,1);
       This_Player.SetV(11,4,3);
       This_NPC.NpcDialog(This_Player,
       '���ں��ˣ������ȥ�������ҵꡣ\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end;
end;



procedure _next;
begin
    if (This_Player.GetV(11,5) = 2) and (This_Player.GetV(11,4) = 2) then
    begin
        //IF This_Player.GetV(8,14) <=  0 then

         This_Player.SetV(11,4,6);
         This_Player.AddGold(5000);
         This_NPC.NpcDialog(This_Player,
         '�������ҵ�����˵Ľ���Ǯ�������ˣ�\'
         +'���㣬����500�֡�\'
         +'��˵��ֻ�ܸ�����Щ��\ \'
         +'|{cmd}<�ر�/@exit>'
         );

    end;
end;


//��ʼ������
procedure OnInitialize;
begin

  This_Npc.AddStdMode(22);
  This_Npc.AddStdMode(23);
  This_Npc.FillGoods('��ͭ��ָ',3,3);
  This_Npc.FillGoods('���ǽ�ָ',3,3);
  This_Npc.FillGoods('������ָ',3,3);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.  