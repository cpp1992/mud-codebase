PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���,�Ų�����һ���Ų㣬ÿ����յ�ǰ������ܽ�����һ�㣬��߱�һ��ʵ���ٿ��ǽ��룬װ�����ʸߣ����ռ���\'
    +'|{cmd}<��������/@dc>\');
end;

procedure _dc; 
begin
if This_Npc.CheckCurrMapMon = 0 then
    begin  
    This_Player.Flyto('3',333,333);
	
  
  
    end else
 begin 
	   This_Npc.NpcDialog(This_Player,
        '������û���������еĹ���!');
		end;
end;

Begin
  domain;
end.