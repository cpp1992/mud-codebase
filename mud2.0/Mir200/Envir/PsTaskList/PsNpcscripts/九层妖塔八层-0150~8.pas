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
    '���������������ǳ��������ϰ���������ͨ���Ų�������ߴ���������ܸ���300���֤������������Ҿ������ȥ��\' 
    +'|{cmd}<����Ų������Ų�/@jc> \');
end;

procedure _jc; 
begin
    if This_Npc.CheckCurrMapMon = 0 then
 begin
    if This_Player.MyLFnum > 299 then
  begin
   
    if (This_NPC.CheckMapMonByName('0150~9' , 'ħ������') >= 1)  and
      (This_NPC.CheckMapMonByName('0150~9' , 'ħ���޶�') >= 1) then
     
    begin  
         This_Player.RandomFlyto('0150~9');
         This_Player.DecLF(20251, 300, False)
        This_NPC.CreateMon('0150~9',11,16,8,'��֮ţħ��',8);
        

  
        end else
     if (This_NPC.CheckMapMonByName('0150~9' , '����1') = 1)  and
      (This_NPC.CheckMapMonByName('0150~9' , '��������') = 1) then
      
    begin
        This_NPC.CreateMon('0150~9',11,16,8,'ħ������',1);
 
        This_NPC.CreateMon('0150~9',11,16,8,'����ħ��',1);
        This_NPC.CreateMon('0150~9',11,16,8,'ħ���޶�',1);
        
     
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