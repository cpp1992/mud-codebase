PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
    +'<�������Ų������������/c=red>\|'
    +'��ӭ����Ц�����ִ���,�Ų�����һ���Ų㣬\|'
	+'<50/=red>�����Ͻ���\|'
	+'ÿ����յ�ǰ������ܽ�����һ�㣬\|'
	+'��߱�һ��ʵ���ٿ��ǽ��룬װ�����ʳ��ߣ�\|'
    +'|{cmd}<����Ų�����һ��/@yic>  ^<����/@main>\');
end;

procedure _yic; 
begin
    if This_Player.Level >= 50 then
  begin                 
   This_Player.RandomFlyto('0150~1');
   ServerSay('���<' + This_Player.Name + '>�����˾Ų�����', 2);
   This_NPC.CreateMon('0150~1',11,16,8,'��ɫ����',9);
   This_NPC.CreateMon('0150~1',11,16,8,'ǯ��',1);
   end
   else
   begin
       This_Player.FlyTo('3', 333, 333);
       This_Npc.NpcDialog(This_Player,
   '���ĵȼ�������'
   );   
   end;

  end;
Begin
  domain;
end.