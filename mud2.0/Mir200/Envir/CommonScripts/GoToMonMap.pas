
function AutoClothersMapOpen() :boolean;  //���ﵽ�ȼ����� 
var MplayerNum : integer; 
begin
    result := false;
    MplayerNum := 6; 
    if GetG(2,2) < 0 then SetG(2,2,0);
     
    if GetG(2,2) >= MplayerNum then result := true
    else
    begin
        This_Npc.NpcDialog(This_Player,
      '�ഫ���귨��½��ĳЩ���䣬��һ����ħ������������װ��\��Ҫ�����Щ����ͱ�������Ҫɱ����Щ��ħ��\��������Ϊ�˻����Щ�����ϧ���Լ���������Ϊ���ۣ�\ ��Щ�˳ɹ��ˣ��������ʿ�����˶�ħ�Ľ��£�\ �����'+inttostr(MplayerNum)+'λ��ʿ�ȼ��ﵽ40������ͼ��ӡ�Ż�����\'
      +'|<�����ͼ��ӡ����Ҫ'+inttostr(MplayerNum - GetG(2,2))+'λ��ʿ�ﵽ40����/c=red>\'
      );
      exit;
    end; 
   
end;

procedure _goToMonMap_1;   
begin   
    if This_Player.MapName = '3' then   
    This_Player.Flyto('D711',200 + random(3) - 1,204 + random(3) - 1);   
end;  
procedure _goToMonMap_2;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ʯĹ���㣬�����������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ��ʯĹ����/@goToMonMap_2_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_2_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D712',367 + random(3) - 1,223 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_3;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ʯĹ���㣬�����������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ��ʯĹ����/@goToMonMap_3_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_3_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D713',35 + random(3) - 1,190 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_4;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ʯĹ�Ĳ㣬�����������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ��ʯĹ�Ĳ�/@goToMonMap_4_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_4_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D714',387 + random(3) - 1,187 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_5;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ʯĹ��㣬�����������ȸ���2���ҡ�\ \' 
    +'|{cmd}<ǰ��ʯĹ���/@goToMonMap_5_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_5_1;  
begin  
    if This_Player.GoldNum >= 20000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(20000);  
        This_Player.Flyto('D715',30 + random(3) - 1,340 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���2���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_6;   
begin   
    if This_Player.MapName = '3' then   
    This_Player.Flyto('D501',174 + random(3) - 1,221 + random(3) - 1);   
end;  
procedure _goToMonMap_7;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������������㣬�����������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ�������������/@goToMonMap_7_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_7_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D502',174 + random(3) - 1,221 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_8;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ�������������㣬�����������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ��������������/@goToMonMap_8_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_8_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D503',174 + random(3) - 1,221 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_9;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ�����������Ĳ㣬�����������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ�����������Ĳ�/@goToMonMap_9_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_9_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D504',174 + random(3) - 1,221 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_10;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������������㣬�����������ȸ���2���ҡ�\ \' 
    +'|{cmd}<ǰ�������������/@goToMonMap_10_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_10_1;  
begin  
    if This_Player.GoldNum >= 20000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        if This_Player.GetActivePoint + This_Player.GetTmpActivePoint >= 10 then
        This_Player.DecGold(20000);  
        This_Player.Flyto('D505',100 + random(3) - 1,100 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���2���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_11;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������󣬲����������ȸ���3���ҡ�\ \' 
    +'|{cmd}<ǰ�������/@goToMonMap_11_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_11_1;  
begin  
    if This_Player.GoldNum >= 30000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        if This_Player.GetActivePoint + This_Player.GetTmpActivePoint >= 30 then  
        This_Player.DecGold(30000);  
        This_Player.Flyto('D5061',10 + random(3) - 1,14 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���3���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_12;   
begin   
    if This_Player.MapName = '3' then   
    This_Player.Flyto('D601',205 + random(3) - 1,235 + random(3) - 1);   
end;  
procedure _goToMonMap_13;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������һ�㱱�������������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ������һ�㱱/@goToMonMap_13_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_13_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D603',78 + random(3) - 1,87 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_14;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������һ����2�������������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ������һ����2/@goToMonMap_14_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_14_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D604',145 + random(3) - 1,135 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_15;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������һ�����������������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ������һ����/@goToMonMap_15_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_15_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D602',109 + random(3) - 1,93 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_16;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������һ�㱱2�������������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ������һ�㱱2/@goToMonMap_16_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_16_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D605',46 + random(3) - 1,22 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_17;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ�����沿�䣬�����������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ�����沿��/@goToMonMap_17_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_17_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D614',72 + random(3) - 1,68 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_18;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��а�������������������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ��а������/@goToMonMap_18_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_18_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D615',60 + random(3) - 1,85 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_19;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ����ڤʥ�򣬲����������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ����ڤʥ��/@goToMonMap_19_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_19_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D616',21 + random(3) - 1,24 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_20;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ���ֲ��ռ䣬�����������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ���ֲ��ռ�/@goToMonMap_20_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_20_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '3' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D617',53 + random(3) - 1,45 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_21;   
begin   
    if This_Player.MapName = '4' then   
    This_Player.Flyto('D2000',175 + random(3) - 1,100 + random(3) - 1);   
end;  
procedure _goToMonMap_22;   
begin   
    if This_Player.MapName = '4' then   
    This_Player.Flyto('D2001',256 + random(3) - 1,266 + random(3) - 1);   
end;  
procedure _goToMonMap_23;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������ͨ���������������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ������ͨ��/@goToMonMap_23_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_23_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '4' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D2002',31 + random(3) - 1,34 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_24;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ�����������������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ�������/@goToMonMap_24_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_24_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '4' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D2004',75 + random(3) - 1,70 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_25;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ����â���ȣ������������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ����â����/@goToMonMap_25_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_25_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '4' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D2005',80 + random(3) - 1,80 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_26;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ�����������������ȸ���2���ҡ�\ \' 
    +'|{cmd}<ǰ�������/@goToMonMap_26_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_26_1;  
begin  
    if This_Player.GoldNum >= 20000 then 
    begin 
        if This_Player.MapName = '4' then 
        begin 
        This_Player.DecGold(20000);  
        This_Player.Flyto('D2006',70 + random(3) - 1,75 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���2���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_27;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������֮·�������������ȸ���3���ҡ�\ \' 
    +'|{cmd}<ǰ������֮·/@goToMonMap_27_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_27_1;  
begin  
    if This_Player.GoldNum >= 30000 then 
    begin 
        if This_Player.MapName = '4' then 
        begin 
        This_Player.DecGold(30000);  
        This_Player.Flyto('D2007',180 + random(3) - 1,175 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���3���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_28;   
begin   
    if This_Player.MapName = '5' then   
    This_Player.Flyto('D2051',110 + random(3) - 1,175 + random(3) - 1);   
end;  
procedure _goToMonMap_29;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ʬħ�����㣬�����������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ��ʬħ������/@goToMonMap_29_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_29_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '5' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D2053',195 + random(3) - 1,270 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_30;   
begin   
    if This_Player.MapName = '5' then   
    This_Player.Flyto('D2061',22 + random(3) - 1,168 + random(3) - 1);   
end;  
procedure _goToMonMap_31;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ����ħ�����㣬�����������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ����ħ������/@goToMonMap_31_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_31_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '5' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D2062',30 + random(3) - 1,22 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_32;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ����ħ�����㣬�����������ȸ���15000��ҡ�\ \' 
    +'|{cmd}<ǰ����ħ������/@goToMonMap_32_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_32_1;  
begin  
    if This_Player.GoldNum >= 15000 then 
    begin 
        if This_Player.MapName = '5' then 
        begin 
        This_Player.DecGold(15000);  
        This_Player.Flyto('D2063',91 + random(3) - 1,167 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���15000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_33;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ����ħ���Ĳ㣬�����������ȸ���2���ҡ�\ \' 
    +'|{cmd}<ǰ����ħ���Ĳ�/@goToMonMap_33_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_33_1;  
begin  
    if This_Player.GoldNum >= 20000 then 
    begin 
        if This_Player.MapName = '5' then 
        begin 
        This_Player.DecGold(20000);  
        This_Player.Flyto('D2064',15 + random(3) - 1,35 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���2���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_34;   
begin   
    if This_Player.MapName = '5' then   
    This_Player.Flyto('D2071',220 + random(3) - 1,220 + random(3) - 1);   
end;  
procedure _goToMonMap_35;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ţħ������㣬�����������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ��ţħ�������/@goToMonMap_35_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_35_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '5' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D2072',150 + random(3) - 1,115 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_36;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ţħ�������㣬�����������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ��ţħ��������/@goToMonMap_36_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_36_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '5' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D2073',160 + random(3) - 1,160 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_37;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ţħ�����Ĳ㣬�����������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ��ţħ�����Ĳ�/@goToMonMap_37_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_37_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '5' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D2075',40 + random(3) - 1,105 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_38;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��ţħ������㣬�����������ȸ���2���ҡ�\ \' 
    +'|{cmd}<ǰ��ţħ�������/@goToMonMap_38_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_38_1;  
begin  
    if This_Player.GoldNum >= 20000 then 
    begin 
        if This_Player.MapName = '5' then 
        begin 
        This_Player.DecGold(20000);  
        This_Player.Flyto('D2076',91 + random(3) - 1,129 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���2���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_39;   
begin   
    if This_Player.MapName = '0' then   
    This_Player.Flyto('D001',160 + random(3) - 1,355 + random(3) - 1);   
end;  
procedure _goToMonMap_40;   
begin   
    if This_Player.MapName = '0' then   
    This_Player.Flyto('D002',200 + random(3) - 1,200 + random(3) - 1);   
end;  
procedure _goToMonMap_41;   
begin   
    if This_Player.MapName = '0' then   
    This_Player.Flyto('D003',200 + random(3) - 1,150 + random(3) - 1);   
end;  
procedure _goToMonMap_42;   
begin   
    if This_Player.MapName = '0' then   
    This_Player.Flyto('D011',150 + random(3) - 1,360 + random(3) - 1);   
end;  
procedure _goToMonMap_43;   
begin   
    if This_Player.MapName = '0' then   
    This_Player.Flyto('D012',193 + random(3) - 1,203 + random(3) - 1);   
end;  
procedure _goToMonMap_44;   
begin   
    if This_Player.MapName = '0' then   
    This_Player.Flyto('E001',19 + random(3) - 1,19 + random(3) - 1);   
end;  
procedure _goToMonMap_45;   
begin   
    if This_Player.MapName = '0' then   
    This_Player.Flyto('E002',88 + random(3) - 1,16 + random(3) - 1);   
end;  
procedure _goToMonMap_46;   
begin   
    if This_Player.MapName = '0' then   
    This_Player.Flyto('D401',27 + random(3) - 1,178 + random(3) - 1);   
end;  
procedure _goToMonMap_47;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ���Ͽ��������������������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ���Ͽ�������/@goToMonMap_47_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_47_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '0' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D402',142 + random(3) - 1,107 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_48;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������һ�㣬�����������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ������һ��/@goToMonMap_48_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_48_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '0' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D403',90 + random(3) - 1,90 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_49;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������B���㣬�����������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ������B����/@goToMonMap_49_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_49_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '0' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D404',100 + random(3) - 1,100 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_50;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ���������վ�������������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ���������վ/@goToMonMap_50_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_50_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '0' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D405',106 + random(3) - 1,61 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_51;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ���Ͽ����ϲ��������������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ���Ͽ����ϲ�/@goToMonMap_51_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_51_1;  
begin  
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '0' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D406',138 + random(3) - 1,118 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_52;   
begin   
    if This_Player.MapName = '1' then   
    This_Player.Flyto('D021',72 + random(3) - 1,70 + random(3) - 1);   
end;  

procedure _goToMonMap_53;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ����������һ�㣬�����������ȸ���5000��ҡ�\ \' 
    +'|{cmd}<ǰ����������һ��/@goToMonMap_53_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  

procedure _goToMonMap_53_1;   
begin          
    if This_Player.GoldNum >= 5000 then 
    begin 
        if This_Player.MapName = '1' then 
        begin 
        This_Player.DecGold(5000);  
        This_Player.Flyto('D022',340 + random(3) - 1,360 + random(3) - 1);   
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 

procedure _goToMonMap_54;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������������㣬�����������ȸ���8000��ҡ�\ \' 
    +'|{cmd}<ǰ�������������/@goToMonMap_54_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_54_1;  
begin  
    if This_Player.GoldNum >= 8000 then 
    begin 
        if This_Player.MapName = '1' then 
        begin 
        This_Player.DecGold(8000);  
        This_Player.Flyto('D023',205 + random(3) - 1,200 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���8000��ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_55;   
begin   
    if This_Player.MapName = '2' then   
    This_Player.Flyto('D421',32 + random(3) - 1,365 + random(3) - 1);   
end;  
procedure _goToMonMap_56;   
begin   
    if This_Player.MapName = '2' then   
    This_Player.Flyto('D422',180 + random(3) - 1,185 + random(3) - 1);   
end;  
procedure _goToMonMap_57;   
begin   
    if This_Player.MapName = '11' then   
    This_Player.Flyto('12',320 + random(3) - 1,465 + random(3) - 1);   
end;  
procedure _goToMonMap_58;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������Ͽ������ڣ������������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ������Ͽ�������/@goToMonMap_58_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_58_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '11' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D10012',40 + random(3) - 1,275 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_59;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������Ͽ�ȹ㳡�������������ȸ���2���ҡ�\ \' 
    +'|{cmd}<ǰ������Ͽ�ȹ㳡/@goToMonMap_59_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_59_1;  
begin  
    if This_Player.GoldNum >= 20000 then 
    begin 
        if This_Player.MapName = '11' then 
        begin 
        This_Player.DecGold(20000);  
        This_Player.Flyto('D1002',220 + random(3) - 1,260 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���2���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_60;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������ȣ������������ȸ���5���ҡ�\ \' 
    +'|{cmd}<ǰ�������/@goToMonMap_60_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_60_1;  
begin  
    if This_Player.GoldNum >= 50000 then 
    begin 
        if This_Player.MapName = '11' then 
        begin 
        This_Player.DecGold(50000);  
        This_Player.Flyto('D10031',285 + random(3) - 1,150 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_61;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������֮�أ������������ȸ���10���ҡ�\ \' 
    +'|{cmd}<ǰ������֮��/@goToMonMap_61_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_61_1;  
begin  
    if This_Player.GoldNum >= 100000 then 
    begin 
        if This_Player.MapName = '11' then 
        begin 
        This_Player.DecGold(100000);  
        This_Player.Flyto('D1004',105 + random(3) - 1,195 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���10���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_62;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������Ͽ�ȶ���ڣ������������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ������Ͽ�ȶ����/@goToMonMap_62_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_62_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '11' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D10013',285 + random(3) - 1,280 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_63;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ���һ��ȣ������������ȸ���5���ҡ�\ \' 
    +'|{cmd}<ǰ���һ���/@goToMonMap_63_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_63_1;  
begin  
    if This_Player.GoldNum >= 50000 then 
    begin 
        if This_Player.MapName = '11' then 
        begin 
        This_Player.DecGold(50000);  
        This_Player.Flyto('D10032',15 + random(3) - 1,151 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 
 
procedure _goToMonMap_64;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ������Ͽ�ȱ���ڣ������������ȸ���1���ҡ�\ \' 
    +'|{cmd}<ǰ������Ͽ�ȱ����/@goToMonMap_64_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  
 
procedure _goToMonMap_64_1;  
begin  
    if This_Player.GoldNum >= 10000 then 
    begin 
        if This_Player.MapName = '11' then 
        begin 
        This_Player.DecGold(10000);  
        This_Player.Flyto('D10011',268 + random(3) - 1,380 + random(3) - 1); 
        end;  
    end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���1���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'); 
end; 

procedure _goToMonMap_65;  
begin  
    This_NPC.NpcDialog(This_Player, 
    '�ҿ�������ǰ��δ֪��������������ȸ���5���ҡ�\ \' 
    +'|{cmd}<ǰ��δ֪����/@goToMonMap_65_1>\ \' 
    +'|{cmd}<����/@main>'  
    ); 
end;  

procedure _goToMonMap_65_1; 
begin 
   if This_Player.GoldNum >= 50000 then 
   begin 
    if (This_Player.MapName = '2') or (This_Player.MapName = '3') then 
    begin
    This_Player.DecGold(50000);  
    This_Player.Flyto('E603',26 + random(3) - 1,183 + random(3) - 1); 
    end;
   end else 
    This_NPC.NpcDialog(This_Player, 
   '�������ȥ���ͱ������ȸ���5���ң��Ͽ���Ұɣ�\ \'+  
   '|{cmd}<����/@main>'
   );  
end; 