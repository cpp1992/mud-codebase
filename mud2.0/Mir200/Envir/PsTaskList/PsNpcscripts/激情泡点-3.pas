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
 var
  temp1,temp2 : integer;
begin
  if (GetHour = 11) and (GetMin < 00) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<11��00��/c=red>��<19��00��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 19) and (GetMin < 00) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<11��00��/c=red>��<19��00��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο���2��');
  end
  else if (GetHour = 11) and (GetMin >= 00) and (GetMin < 59) then
  begin
    if temp1 = -1 then
    begin
      temp1 := 0;
    end
    if temp1 = GetDateNum(GetNow) then
    begin
      This_Player.CallOut(This_Npc, 1, 'MFBG2');
        This_Player.RandomFlyTo('0139~2');
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
    end
    else
    begin
      temp1 := GetDateNum(GetNow);
      This_Player.CallOut(This_Npc, 1, 'MFBG2');
        This_Player.RandomFlyTo('0139~2');
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
  
    end;
  end
  else if (GetHour = 19) and (GetMin >= 00) and (GetMin < 59) then
  begin
    if temp2 = -1 then
    begin
      temp2 := 0;
    end
    if temp2 = GetDateNum(GetNow) then
    begin
      This_Player.CallOut(This_Npc, 1, 'MFBG2');
        This_Player.RandomFlyTo('0139~2');
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 
    end
    else
    begin
      temp2 := GetDateNum(GetNow);
      This_Player.CallOut(This_Npc, 1, 'MFBG2');
        This_Player.RandomFlyTo('0139~2');
        This_Npc.NpcDialog(This_Player,
         ' ��úð������Ҹ���ʱ�⡣'
         ); 

    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '���ڻ�����ʱ�򣬻����ÿ���11��00�ֺ�19��00�ֿ��Ž��룡\�����ʱ�������ɡ�\ \');
  end;
end;


procedure MFBG2;

begin
  
      if (GetHour = 11)  or (GetHour = 19) and (GetMin < 59) then
         
      begin
         if CompareText(This_Player.MapName,'0139~2') = 0 then
         begin
            This_Player.CallOut(This_Npc, 1, 'MFBG2');
            This_Player.Give('����',5000);
         end;
       end 
         else  
          begin
          
             This_Player.FlyTo('3', 333, 333);
          
             
            
         end ; 
        
end;





begin
   This_NPC.NpcDialog(This_Player,
   '�����<ÿ��/c=red>��<11��/c=red>��<19��/c=red>���ţ�\|'
   +'���Ž���ʱ��Ϊ<11��00��/c=red>��<19��00��/c=red>��\|'
   +'ÿ�ο���ʱ��60���ӣ������ͼÿ����<5000����/c=red>��\|'
   +'���м���ˢ�¸�������.\|'
   +'����ݵ㲻���Ƶȼ�.\|'
   +'|{cmd}<����Ҫ����/@YBBG>');
end.    