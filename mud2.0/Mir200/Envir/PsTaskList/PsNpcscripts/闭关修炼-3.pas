     {
*******************************************************************}

program Mir2;


Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

function Gaoji0LB(price, num: Integer):boolean;
begin                                               

  result := true;
end;

procedure _YBBG; 

begin            
        if This_Player.YBNum >= 1 then  
    begin   
       if This_Player.Level < 80 then
       begin                 
         This_Player.CallOut(This_Npc, 1, 'MFBG2');
        This_Player.RandomFlyTo('0139~1');
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
   
       end 
       else  
       begin
          This_Player.FlyTo('3', 333, 333);
           This_Npc.NpcDialog(This_Player,
        '�ȼ�����80�����޷����롣'
        );   
        end; 
    end 
   else  
   begin
       This_Player.FlyTo('3', 333, 333);
       This_Npc.NpcDialog(This_Player,
   'Ԫ�������ˡ�'
   );   
   end; 
end; 

procedure MFBG2;
begin
   if This_Player.YBNum >= 1 then
   begin
          if This_Player.Level < 80 then
      begin
         if CompareText(This_Player.MapName,'0139~1') = 0 then
         begin
            This_Player.CallOut(This_Npc, 1, 'MFBG2');
            This_Player.Give('����',300000);
            This_Player.PsYBConsum(This_NPC,'Gaoji0LB',20051,1,1);
    
           end 
         else  
          begin
          
             This_Player.FlyTo('3', 333, 333);
          
             
            
         end ; 
          end 
         else
        begin
           This_Player.FlyTo('3', 333, 333);
         This_Npc.NpcDialog(This_Player,
          '�ȼ�����80�����޷������ݵ㡣'
           ); 
        end;
      end;
   end;


begin
   This_NPC.NpcDialog(This_Player,
   '�����չأ�\|'
   +'��ӭ���������չ�.\|'
   +'����ÿ��۳�<1Ԫ��/c=red>�����<30W/c=red>����.\|'
   +'��Ҫǿ��͵ÿ���һ��\|'
   +'Ԫ���ݵ��޵ȼ�����.\|'
   +'|{cmd}<��Ԫ���չ�/@YBBG>');
end.    