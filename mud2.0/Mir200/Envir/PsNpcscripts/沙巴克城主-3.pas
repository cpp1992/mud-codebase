{
/*******************************************************************************

/*******************************************************************************
}

program Mir2;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _gettitle;
begin
  This_Npc.NpcDialog(This_Player,
  '�ܹ���Ϊɳ�Ϳ˳������ˣ����Ե�����һ���콾���ĸ��֡�\'
  +'��ȡ�ƺ���Ҫ������ҫֵ�ﵽ1100�����ϣ�����ÿ����ȡ�ƺ���Ҫ��\'
  +'����ҫֵ100�㡣\ \'
  +'|{cmd}<ȷ����ȡ/@gettitle_1>         ^<�˽�ƺ�/@gettitle_2>\ \'
  +'|{cmd}<����/@main>' 
  );         
end;

procedure _gettitle_1;
var
temp:integer;
HaveTitle:integer;
begin
      //�������Ǳ��� 
  
    temp := This_NPC.GetPlayerHonorValue; 
    
    
      
      begin
      This_NPC.SubPlayerHonorValue(100);
      if This_NPC.GetPlayerHonorValue >= 6000 then This_NPC.ChgCelebColor(1) else This_NPC.ChgCelebColor(0);
      
      This_Npc.NpcDialog(This_Player,
      '��ϲ�����˳ƺţ���һ���콾����\'
      );
     end; 
     
end; 
   
procedure _gettitle_2;
begin
  This_Npc.NpcDialog(This_Player,
  'ɳ�Ϳ˳������ö�һ�޶��ĳƺţ�\'
  +'һ���콾������ֵ����+100 \ \'
  +'|{cmd}<����/@gettitle>' 
  );         
end;



  
  begin
  This_Npc.NpcDialog(This_Player,
  '�𾴵�ɳ�Ϳ˳���'+This_Player.Name+'\'
  +'�������ĵ�����ҫֵΪ'+inttostr(This_NPC.GetPlayerHonorValue)+'�㣬\'
  +'�������ǧ��ʿ�����ľ�����Ĥ�ݰɡ�\ \'
  +'|{cmd}<Ĥ��ɳ�ǳ���/@worship>               ^<��ȡһ���콾�ƺ�/@gettitle> \'
  +'|{cmd}<�˳�/@doexit>'
  );
  
end.