PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���,ͨ����һ���Ų㣬ÿ����յ�ǰ������ܽ�����һ�㣬��߱�һ��ʵ���ٿ��ǽ��룬װ�����ʸߣ����ռ���\'
    +'|{cmd}<����Ų���������/@erc> \');
end;

procedure _erc; 
begin
if This_Npc.CheckCurrMapMon = 0 then
    begin  This_Player.RandomFlyto('0150~2');
   This_NPC.CreateMon('0150~2',11,16,8,'����ս��',8);
   This_NPC.CreateMon('0150~2',11,16,8,'���þ���',1);
   This_NPC.CreateMon('0150~2',11,16,8,'ʬ��',1);
	end else
       begin 
	   This_Npc.NpcDialog(This_Player,
        '������û���������еĹ���!');
		end;
end;
Begin
  domain;
end.