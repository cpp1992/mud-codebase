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
    '�����߲���Ҫ100�����\' 
    +'|{cmd}<����Ų������߲�/@qc> \');
end;

procedure _qc; 
begin
    if This_Npc.CheckCurrMapMon = 0 then
 begin
    if This_Player.MyLFnum > 99 then
  begin
    
    if (This_NPC.CheckMapMonByName('0150~7' , '��װʹ��') >= 1)  and
      (This_NPC.CheckMapMonByName('0150~7' , '˫ͷ���') >= 1)
      and (This_NPC.CheckMapMonByName('0150~7' , '˫ͷѪħ') >= 1) then
    begin  
         This_Player.RandomFlyto('0150~7');
         This_Player.DecLF(20251, 100, False)
        This_NPC.CreateMon('0150~7',11,16,8,'ţħ��ʦ',8);
        

  
        end else
     if (This_NPC.CheckMapMonByName('0150~7' , '��װʹ��') = 0)  and
      (This_NPC.CheckMapMonByName('0150~7' , '˫ͷ���') = 0) 
      and (This_NPC.CheckMapMonByName('0150~7' , '˫ͷѪħ') = 0) then
    begin
        This_NPC.CreateMon('0150~7',11,16,8,'ţħ��ʦ',8);
 
        This_NPC.CreateMon('0150~7',11,16,8,'��װʹ��',1);
        This_NPC.CreateMon('0150~7',11,16,8,'˫ͷ���',1);
         This_NPC.CreateMon('0150~7',11,16,8,'˫ͷѪħ',1);
     
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