PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���,ͨ����һ���Ų㣬ÿ����յ�ǰ������ܽ�����һ�㣬��߱�һ��ʵ���ٿ��ǽ��룬װ�����ʸߣ����ռ���\'+ 
    '�����Ĳ���Ҫ50�����\'
    +'|{cmd}<����Ų������Ĳ�/@sic> \');
end;

procedure _sic; 
begin
    if This_Npc.CheckCurrMapMon = 0 then
 begin
    if This_Player.MyLFnum > 49 then
  begin
   
    if (This_NPC.CheckMapMonByName('0150~4' , '��֮˫ͷѪħ') >= 1)  and
      (This_NPC.CheckMapMonByName('0150~4' , '��֮˫ͷ���') >= 1) then
    begin  
         This_Player.RandomFlyto('0150~4');
         This_Player.DecLF(20250, 50, False)
        This_NPC.CreateMon('0150~4',11,16,8,'������ʿ',4);
        This_NPC.CreateMon('0150~4',11,16,8,'�������',4);

  
        end else
     if (This_NPC.CheckMapMonByName('0150~4' , '��֮˫ͷѪħ') = 0)  and
      (This_NPC.CheckMapMonByName('0150~4' , '��֮˫ͷ���') = 0) then
    begin
        This_NPC.CreateMon('0150~4',11,16,8,'������ʿ',4);
        This_NPC.CreateMon('0150~4',11,16,8,'�������',4);
        This_NPC.CreateMon('0150~4',11,16,8,'��֮˫ͷѪħ',1);
        This_NPC.CreateMon('0150~4',11,16,8,'��֮˫ͷ���',1);
     
    end;
    end else
    begin 
	   This_Npc.NpcDialog(This_Player,
        '������û���㹻�����!');
     end;
     end else
   begin 
	   This_Npc.NpcDialog(This_Player,
        '������û���������еĹ���!');
   end;

   
   
   end;

Begin
  domain;
end.