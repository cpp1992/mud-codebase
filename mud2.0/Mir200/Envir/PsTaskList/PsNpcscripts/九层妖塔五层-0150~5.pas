PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���,�Ų�����һ���Ų㣬ÿ����յ�ǰ������ܽ�����һ�㣬��߱�һ��ʵ���ٿ��ǽ��룬װ�����ʸߣ����ռ���\'+
     '����������Ҫ50�����\' 
    +'|{cmd}<����Ų���������/@lc> \');
end;

procedure _lc; 
begin
    if This_Npc.CheckCurrMapMon = 0 then
 begin
    if This_Player.MyLFnum > 49 then
  begin
    
    if (This_NPC.CheckMapMonByName('0150~6' , 'ţħ��') >= 1)  and
      (This_NPC.CheckMapMonByName('0150~6' , '��֮��ħ����') >= 1)
      and (This_NPC.CheckMapMonByName('0150~6' , '��֮�������') >= 1) then
    begin  
         This_Player.RandomFlyto('0150~6');
         This_Player.DecLF(20251, 50, False)
        This_NPC.CreateMon('0150~6',11,16,8,'ţħ��˾',8);
        

  
        end else
     if (This_NPC.CheckMapMonByName('0150~6' , 'ţħ��') = 0)  and
      (This_NPC.CheckMapMonByName('0150~6' , '��֮��ħ����') = 0) 
      and (This_NPC.CheckMapMonByName('0150~6' , '��֮�������') = 0) then
    begin
        This_NPC.CreateMon('0150~6',11,16,8,'ţħ��˾',8);
 
        This_NPC.CreateMon('0150~6',11,16,8,'��֮�������',1);
        This_NPC.CreateMon('0150~6',11,16,8,'ţħ��',1);
         This_NPC.CreateMon('0150~6',11,16,8,'��֮��ħ����',1);
     
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