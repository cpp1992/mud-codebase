{
*******************************************************************}

Program Mir2;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _talkwith_1;
begin
   This_NPC.NpcDialog(This_Player,
   '���Ȼ���������� ���Ҿ͸����㣬\'+
   '�⸽����һ������֪����ɽ������ \'+
   'ɽ��������������������ǲ�ͬ�ģ������ȥ��һ����\ \'+
   '|{cmd}<��ս/@talkwith_3>\'+
   '|{cmd}<�˳�/@doexit>'); 
end;

Procedure _talkwith_3;
begin
   This_NPC.NpcDialog(This_Player,
   '�ҿ��������ȥ����ֻ���������3��Сʱ��\'+ 
   '�Լ�С�ġ���\ \'+
   '|{cmd}<����ɽ��/@talkwith_4>'); 
end;

Procedure GunChuLai;
begin
   if compareText(This_Player.MapName,'M001') = 0 then
   begin
      This_Player.Flyto('E603',29,192);
   end;
end;

Procedure _talkwith_4;
begin
   if compareText(This_Player.MapName,'E603') = 0 then
   begin 
      if CheckOtherMapHum('M001') < 200 then
      begin
         This_Player.CallOut(This_NPC, 10800,'GunChuLai');
         This_Player.RandomFlyTo('M001');
      end else
      begin
         This_NPC.NpcDialog(This_Player,
         '�Һ�������ȥ�����������Ѿ���ƣ�����ˣ�\'+ 
         '�����Ҳ��ܰ������ȥ������΢��һ��ɡ��� \ \');
      end;
   end else
   begin
      Exit;
   end;
end;

Begin
   This_NPC.NpcDialog(This_Player,
   '�١�����ôΣ�յĵط��������� \'+
   '��֪�����ܲ����߳�����ط�����\ \'+
   '|{cmd}<�Ի�./@talkwith_1>\'+
   '|{cmd}<�˳�./@doexit>\');  
end.