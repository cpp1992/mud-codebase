 program mir2;

var
  Snum,HPnum,xiangcha : integer;
procedure _kaiqi;
begin
     snum  := This_Player.GetV(59,6);
     HPnum := This_Player.GetV(59,7);
	 if snum <> 2 then
   begin
       if This_Player.MyLFnum >= 150 then
       begin
	     This_Player.SetV(59,6,-1);
         This_Player.SetV(59,7,-1);
          if snum = -1 then
          begin
            This_Player.DecLF(21250, 150, False);
            This_Player.AddPlayerAbil(4,200,64800);
            This_Player.SetV(59,6,snum+1);
            This_Player.SetV(59,7,HPnum+1);
            This_Npc.CloseDialog(This_Player);
            ServerSay('���<' + This_Player.Name + '>���������壬HPѪ��������200�㣬��ʱ��ǿ�˺ܶ� �� ', 5);
          end 
          This_NPC.NpcDialog(This_Player,
            '����150�����������200HP������������Σ������������HPѪ����|'
              +'���������ʱ����������ԣ�ɱ�˶ᱦ���������� |'
              +'�㵱ǰ�������<' + inttostr(This_Player.MyLFnum) + '��/c=red>\|'
              +'�㵱ǰ�����������< ' + inttostr(snum+2) + '��/c=red>\|'
              +'�㵱ǰ��HP���ӣ�< ' + inttostr((HPnum+2) * 200) + '/c=red>\|'         
              +'<˵��/c=red>������18Сʱ�����ߺ���ʧ�����¼���ʱ��!\|'
              +'|{cmd}   <�һ�Ҫ����/@kaiqi1>  \|'
               );

       end else
          This_Player.PlayerNotice('��������������150��', 0);
   end else
          This_Player.PlayerNotice('���Ѿ�����3���ˣ����ܼ��������ˣ�', 0);
end;  
 
 procedure _kaiqi1;
begin
   if This_Player.MyLFnum >= 150 then
   begin
      snum  := This_Player.GetV(59,6);
      HPnum := This_Player.GetV(59,7);
      if snum = 0 then
      begin
           This_Player.DecLF(21250, 150, False);
           This_Player.AddPlayerAbil(4,400,64800);
           This_Player.SetV(59,6,snum+1);
           This_Player.SetV(59,7,HPnum+1);
           This_Npc.CloseDialog(This_Player);
           ServerSay('���<' + This_Player.Name + '>���������壬HPѪ��������200�㣬��ʱ��ǿ�˺ܶ� �� ', 5);
      end 
            This_NPC.NpcDialog(This_Player,
            '����150�����������200HP������������Σ������������HPѪ����|'
              +'���������ʱ����������ԣ�ɱ�˶ᱦ���������� |'
              +'�㵱ǰ�������<' + inttostr(This_Player.MyLFnum) + '��/c=red>\|'
              +'�㵱ǰ�����������< ' + inttostr(snum+2) + '��/c=red>\|'
              +'�㵱ǰ��HP���ӣ�< ' + inttostr((HPnum+2) * 200) + '/c=red>\|'         
              +'<˵��/c=red>������18Сʱ�����ߺ���ʧ�����¼���ʱ��!\|'
              +'|{cmd}   <�һ�Ҫ����/@kaiqi2>  \|'
               );
   end else
          This_Player.PlayerNotice('��������������150��', 0);
end;

 procedure _kaiqi2;
begin
    if This_Player.MyLFnum >= 150 then
   begin
       snum  := This_Player.GetV(59,6);
       HPnum := This_Player.GetV(59,7); 
      if snum = 1 then
      begin
        This_Player.DecLF(21250, 150, False);
        This_Player.AddPlayerAbil(4,600,64800);
        This_Player.SetV(59,6,snum+1);
        This_Player.SetV(59,7,HPnum+1);
        This_Npc.CloseDialog(This_Player);
       ServerSay('���<' + This_Player.Name + '>���������壬HPѪ��������200�㣬��ʱ��ǿ�˺ܶ� �� ', 5);
      end
	    This_NPC.NpcDialog(This_Player,
            '����150�����������200HP������������Σ������������HPѪ����|'
              +'���������ʱ����������ԣ�ɱ�˶ᱦ���������� |'
              +'�㵱ǰ�������<' + inttostr(This_Player.MyLFnum) + '��/c=red>\|'
              +'�㵱ǰ�����������< ' + inttostr(snum+2) + '��/c=red>\|'
              +'�㵱ǰ��HP���ӣ�< ' + inttostr((HPnum+2) * 200) + '/c=red>\|'         
              +'<˵��/c=red>������18Сʱ�����ߺ���ʧ�����¼���ʱ��!\|'
               );
   end else
          This_Player.PlayerNotice('��������������150��', 0);
end;


 begin
     snum  := This_Player.GetV(59,6);
     HPnum := This_Player.GetV(59,7);
   This_NPC.NpcDialog(This_Player,
    '����150�����������200HP������������Σ������������HPѪ����|'
   +'���������ʱ����������ԣ�ɱ�˶ᱦ���������� |'
   +'�㵱ǰ�������<' + inttostr(This_Player.MyLFnum) + '��/c=red>\|'
   +'�㵱ǰ�����������< ' + inttostr(snum+1) + '��/c=red>\|'
   +'�㵱ǰ��HP���ӣ�< ' + inttostr((HPnum+1) * 200) + '/c=red>\|'         
   +'<˵��/c=red>������18Сʱ�����ߺ���ʧ�����¼���ʱ��!\|'
   +'|{cmd}   <��Ҫ����/@kaiqi>  \|'
   );
 
 end.