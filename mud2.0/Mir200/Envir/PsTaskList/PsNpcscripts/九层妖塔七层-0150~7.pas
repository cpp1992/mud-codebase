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
     '����Ų������˲���Ҫ200�����\' 
    +'|{cmd}<����Ų������˲�/@bc> \');
end;

procedure _bc; 
begin
    if This_Npc.CheckCurrMapMon = 0 then
 begin
    if This_Player.MyLFnum > 199 then
  begin
   
    if (This_NPC.CheckMapMonByName('0150~8' , 'ħ������') >= 1)  and
      (This_NPC.CheckMapMonByName('0150~8' , 'ħ���޶�') >= 1) then
     
    begin  
         This_Player.RandomFlyto('0150~8');
         This_Player.DecLF(20251, 200, False)
        This_NPC.CreateMon('0150~8',11,16,8,'ħ��Ѫ��',8);
        

  
        end else
     if (This_NPC.CheckMapMonByName('0150~8' , 'ħ������') = 1)  and
      (This_NPC.CheckMapMonByName('0150~8' , 'ħ���޶�') = 1) then
      
    begin
        This_NPC.CreateMon('0150~8',11,16,8,'ħ��Ѫ��',8);
 
        This_NPC.CreateMon('0150~8',11,16,8,'ħ������',1);
        This_NPC.CreateMon('0150~8',11,16,8,'����1',1);
        
     
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