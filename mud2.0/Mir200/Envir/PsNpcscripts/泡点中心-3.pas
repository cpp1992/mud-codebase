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
        if This_Player.MyLFnum >= 5 then  
    begin   
       if This_Player.Level < 50 then
       begin                 
         This_Player.CallOut(This_Npc, 1, 'MFBG2');
        This_Player.RandomFlyTo('0139~1');
		ServerSay('�������<' + This_Player.Name + '>����������ݵ��ͼ,��������һ����', 2);
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
   
       end 
       else  
       begin
          This_Player.FlyTo('3', 333, 333);
           This_Npc.NpcDialog(This_Player,
        '�ȼ�����50�����޷����롣'
        );   
        end; 
    end 
   else  
   begin
       This_Player.FlyTo('3', 333, 333);
       This_Npc.NpcDialog(This_Player,
       '��������ˡ�'
   );   
   end; 
end; 

procedure MFBG2;
begin
   if This_Player.MyLFnum >= 5 then
   begin
          if This_Player.Level < 50 then
      begin
         if CompareText(This_Player.MapName,'0139~1') = 0 then
         begin
            This_Player.CallOut(This_Npc, 1, 'MFBG2');
            This_Player.Give('����',500000);
            This_Player.DecLF(0,5,false);
    
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
          '�ȼ�����50�����޷������ݵ㡣'
           ); 
        end;
        
         end 
         else
        begin
          This_Player.FlyTo('3', 333, 333);
         This_Npc.NpcDialog(This_Player,
          '������㣬�޷������ݵ㡣'
           ); 
        
        
      end;
   end;
   
   
procedure _YBBG1; 
var
  temp1,temp2 : integer;
begin
  if (GetHour = 11) and (GetMin < 00) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<8��00��/c=red>��<16��00��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 20) and (GetMin < 00) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<8��00��/c=red>��<16��00��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else 
  if (GetHour = 11) and (GetMin >= 00) and (GetMin < 59) then
  begin
    if temp1 = -1 then
    begin
      temp1 := 0;
    end
    if temp1 = GetDateNum(GetNow) then
    begin
      This_Player.CallOut(This_Npc, 1, 'MFBG25');
        This_Player.RandomFlyTo('0139~2');
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
    end
    else
    begin
      temp1 := GetDateNum(GetNow);
      This_Player.CallOut(This_Npc, 1, 'MFBG25');
        This_Player.RandomFlyTo('0139~2');
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
  
    end;
  end
  else if (GetHour = 20) and (GetMin >= 00) and (GetMin < 59) then
  begin
    if temp2 = -1 then
    begin
      temp2 := 0;
    end
    if temp2 = GetDateNum(GetNow) then
    begin
      This_Player.CallOut(This_Npc, 1, 'MFBG25');
        This_Player.RandomFlyTo('0139~2');
        ServerSay('��ҡ��' + This_Player.Name + '��������뼤��չأ��˻ÿ�쿪��2�Σ���',3); 
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
    end
    else
    begin
      temp2 := GetDateNum(GetNow);
      This_Player.CallOut(This_Npc, 1, 'MFBG25');
        This_Player.RandomFlyTo('0139~2');
        ServerSay('��ҡ��' + This_Player.Name + '��������뼤��չأ��˻ÿ�쿪��2�Σ���',3);
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 

    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '���ڻ�����ʱ�򣬻����ÿ���11��00�ֺ�20��00�ֿ��Ž��룡\�����ʱ�������ɡ�\ \');
  end;
end;


procedure MFBG25;

begin
  
      if ((GetHour = 11) or(GetMin < 59)) and ((GetHour = 20) or(GetMin < 59)) then
         
      begin
         if CompareText(This_Player.MapName,'0139~2') = 0 then
         begin
            This_Player.CallOut(This_Npc, 1, 'MFBG25');
            This_Player.Give('����',10000);
         end ;  
         end else 
         begin
          
             This_Player.FlyTo('3', 333, 333);
            ServerSay('����չػ��������ȴ��´ο���ʱ�䣡',3); 
             
            
         end ; 
        
end;



procedure _YBBG2; 

begin 
    if This_Player.Level < 60then       
  begin         
        if This_Player.MyLFnum >= 200 then  
    begin   
       
                       
         This_Player.CallOut(This_Npc, 1, 'MFBG22');
        This_Player.RandomFlyTo('0116~1');
		ServerSay('�������<' + This_Player.Name + '>����������ݵ��ͼ,��������һ����', 2);
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
   
       
    end 
   else  
   begin
       This_Player.FlyTo('3', 333, 333);
       This_Npc.NpcDialog(This_Player,
      '�������200���ܽ��롣'
      ); 
   end;  
  end 
  else
  begin
       This_Player.FlyTo('3', 333, 333);
         This_Npc.NpcDialog(This_Player,
          '�ȼ�����60�����޷������չء�'
           ); 
  end;
end;
 

procedure MFBG22;
begin
    if This_Player.Level < 60 then
    begin
       if This_Player.MyLFnum >= 10 then
       begin
         if CompareText(This_Player.MapName,'0116~1') = 0 then
         begin
            This_Player.CallOut(This_Npc, 1, 'MFBG22');
            This_Player.Give('����',1000000);
            This_Player.DecLF(0,10,false);
           end;
           end 
         else  
          begin
          
             This_Player.FlyTo('3', 333, 333);
               This_Npc.NpcDialog(This_Player,
              '���������㣬�Զ�ȡ���չأ��������ǡ�'
               );   
             
           end; 
    end  
    else  
    begin
          This_Player.FlyTo('3', 333, 333);
               This_Npc.NpcDialog(This_Player,
              '��ĵȼ�����60�����Զ�ȡ���չء�'
               );   
         end;
end;
    
       
procedure _YBBG3; 

begin  
    if (This_Player.GetBagItemCount('��Ա������') > 0) then    
  begin            
        if This_Player.MyLFnum >= 500 then  
    begin   
       
                       
         This_Player.CallOut(This_Npc, 1, 'MFBG23');
        This_Player.RandomFlyTo('0116~2');
		ServerSay('�������<' + This_Player.Name + '>�����˻�Ա�ݵ��ͼ,��������һ����', 2);
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
   
       
    end 
   else  
   begin
       This_Player.FlyTo('3', 333, 333);
       This_Npc.NpcDialog(This_Player,
       '�������500���ܽ��롣'
        );   
   end;
  end 
  else
  begin
       This_Player.FlyTo('3', 333, 333);
         This_Npc.NpcDialog(This_Player,
          '����ʧ�ܣ�ֻ�б�����Ա�ſ��Խ��롣'
           ); 
  end; 
end; 

procedure MFBG23;
begin
   if This_Player.MyLFnum >= 20 then 
   begin
         if CompareText(This_Player.MapName,'0116~2') = 0 then
         begin
            This_Player.CallOut(This_Npc, 1, 'MFBG23');
            This_Player.Give('����',2000000);
            This_Player.DecLF(0,20,false);
    
           end;
           end 
         else  
          begin
          
             This_Player.FlyTo('3', 333, 333);
               This_Npc.NpcDialog(This_Player,
              '���������㣬�Զ�ȡ���չأ��������ǡ�'
               );   
             
            
           end ; 
  end ;     
      
     
   
   
   
      

begin
   This_NPC.NpcDialog(This_Player,
   '|��ӭ����\'+
   '|��������Խ���չ���������\'+
   '|����չ�ÿ���11��00�ֺ�20��00�ֿ���,ÿ�ο���ʱ��1Сʱ��ÿ��10000���� \'+
   '|�����չ�ÿ������5�����ÿ��50W���飬����������50�� \'+
   '|�м��չ�ÿ������10�����ÿ��100W���飬����������60��\ '+
   '|�߼��չ�ÿ������20�����ÿ��200W���飬����������70����ÿ��Сʱˢ��һֻ<������˭֪��/c=red>,���ʳ��ߡ�\ '+
   '|{cmd}<������չء�/@YBBG1>\ '+
   '|{cmd}<����������չء�/@YBBG>\ '+
   '|{cmd}<���м�����չء�/@YBBG2>\ '+
   '|{cmd}<���߼�����չء�/@YBBG3>');
end.    