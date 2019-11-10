{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure CheckGoldMap(mapname : string);
begin
  if CheckOtherMapHum(mapname) >= 40 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���ŵ�ͼ�Ѿ���Ա�ˣ����Ժ��ٵ����������ɣ�'); 
  end
  else if This_Player.GoldNum >= 2000 then
  begin
    This_Player.DecGold(2000);
    This_Player.SetS(22,21,0);
    This_Player.SetS(22,33,0); 
    This_Player.RandomFlyTo(mapname);
    This_Player.CallOut(This_NPC,60,'p101');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    'ÿ�ν��������ͼ����Ҫ֧��2000��ң�\�����ں���û��2000��ң�'); 
  end;
end;

procedure CreateMon1(mapname : string); 
begin
  This_NPC.CreateMon(mapname,52,52,10,'���������2',1);
  This_NPC.CreateMon(mapname,52,52,10,'���������4',1);
  This_NPC.CreateMon(mapname,52,52,10,'���������6',1);
  This_Player.CallOut(This_NPC,60,'p101');
  if random(400) = 168 then
  begin
    This_NPC.CreateMon(mapname,52,52,10,'���������801',1);
  end
  else if random(20) = 8 then
  begin
    This_NPC.CreateMon(mapname,52,52,10,'���������5',1);
  end
  else if random(20) = 10 then
  begin
    This_NPC.CreateMon(mapname,52,52,10,'���������802',1);
  end
  else if random(20) = 16 then
  begin
    This_NPC.CreateMon(mapname,52,52,10,'���������1',1);
  end; 
end;

procedure CreateMon2(mapname : string);
var
  temp : integer;
begin
  temp := This_Player.GetS(22,21);
  This_NPC.CreateMon(mapname,52,52,10,'��ɫ����114',1);
  This_Player.SetS(22,21,temp+1);
  This_Player.CallOut(This_NPC,60,'p101');
end;

procedure p101();
begin
  if (This_Player.GetS(22,21) = -1) or (This_Player.GetS(22,21) > 15) or (This_Player.GetS(22,33) = -1) then
  begin
    This_Player.SetS(22,21,0);
    This_Player.SetS(22,33,0);
  end;
  
  if This_Player.GetS(22,21) = 15 then
  begin
    This_Player.RandomFlyTo('3');
    This_Player.SetS(22,21,0);
    This_Player.SetS(22,33,0); 
  end 
  else if (This_Player.GetS(22,21) < 15) and (This_Player.GetS(22,33) = 0) then
  begin
    if CompareText(This_Player.MapName,'D2079~001') = 0 then
    begin
      CreateMon1('D2079~001');
      This_Player.SetS(22,33,1);
    end
    else if CompareText(This_Player.MapName,'D2079~002') = 0 then
    begin
      CreateMon1('D2079~002');
      This_Player.SetS(22,33,1);
    end
    else if CompareText(This_Player.MapName,'D2079~003') = 0 then
    begin
      CreateMon1('D2079~003');
      This_Player.SetS(22,33,1);
    end
    else if CompareText(This_Player.MapName,'D2079~004') = 0 then
    begin
      CreateMon1('D2079~004');
      This_Player.SetS(22,33,1);
    end
    else if CompareText(This_Player.MapName,'D2079~005') = 0 then
    begin
      CreateMon1('D2079~005');
      This_Player.SetS(22,33,1);
    end
    else if CompareText(This_Player.MapName,'D2079~006') = 0 then
    begin
      CreateMon1('D2079~006');
      This_Player.SetS(22,33,1);
    end 
  end
  else if (This_Player.GetS(22,21) < 15) and (This_Player.GetS(22,33) = 1) then
  begin
    if CompareText(This_Player.MapName,'D2079~001') = 0 then
    begin
      CreateMon2('D2079~001');
      This_Player.SetS(22,33,0);
    end
    else if CompareText(This_Player.MapName,'D2079~002') = 0 then
    begin
      CreateMon2('D2079~002');
      This_Player.SetS(22,33,0);
    end
    else if CompareText(This_Player.MapName,'D2079~003') = 0 then
    begin
      CreateMon2('D2079~003');
      This_Player.SetS(22,33,0);
    end
    else if CompareText(This_Player.MapName,'D2079~004') = 0 then
    begin
      CreateMon2('D2079~004');
      This_Player.SetS(22,33,0);
    end
    else if CompareText(This_Player.MapName,'D2079~005') = 0 then
    begin
      CreateMon2('D2079~005');
      This_Player.SetS(22,33,0);
    end
    else if CompareText(This_Player.MapName,'D2079~006') = 0 then
    begin
      CreateMon2('D2079~006');
      This_Player.SetS(22,33,0);
    end 
  end 
end;

procedure _godatin01;
begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    CheckGoldMap('D2079~001'); 
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin 
    CheckGoldMap('D2079~001');
  end 
  else
    exit; 
end;

procedure _godatin02;
begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    CheckGoldMap('D2079~002'); 
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin 
    CheckGoldMap('D2079~002');
  end
  else
    exit; 
end;

procedure _godatin03;
begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    CheckGoldMap('D2079~003'); 
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin 
    CheckGoldMap('D2079~003');
  end
  else
    exit; 
end;

procedure _godatin04;
begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    CheckGoldMap('D2079~004'); 
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin 
    CheckGoldMap('D2079~004');
  end
  else
    exit; 
end;

procedure _godatin05;
begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    CheckGoldMap('D2079~005'); 
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin 
    CheckGoldMap('D2079~005');
  end
  else
    exit; 
end;

procedure _godatin06;
begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    CheckGoldMap('D2079~006'); 
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin 
    CheckGoldMap('D2079~006');
  end
  else
    exit; 
end;


begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    This_Npc.NpcDialog(This_Player,
    '���������ڻ�����Σ���ǲ���ģ�ԽΣ�յĵط���õ�����ҲԽ��\'
    +'�����ó����׼�����𣿽���һ����֧��2000��ҡ�\ \'
    +'|{cmd}<������������һ/@godatin01>      ^<��������������/@godatin02>\'
    +'|{cmd}<��������������/@godatin03>      ^<��������������/@godatin04>\'
    +'|{cmd}<��������������/@godatin05>      ^<��������������/@godatin06>\'
    );
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin
    This_Npc.NpcDialog(This_Player,
    '���������ڻ�����Σ���ǲ���ģ�ԽΣ�յĵط���õ�����ҲԽ��\'
    +'�����ó����׼������\ \'
    +'|{cmd}<������������һ/@godatin01>      ^<��������������/@godatin02>\'
    +'|{cmd}<��������������/@godatin03>      ^<��������������/@godatin04>\'
    +'|{cmd}<��������������/@godatin05>      ^<��������������/@godatin06>\'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '���ڻ�����ʱ�򣬻����ÿ���14���17�㿪�Ž��룡\�����ʱ�������ɡ�\\'
    );
  end;
end. 