{
*******************************************************************}

PROGRAM Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _mengzhong;
begin
   if compareText(This_Player.MapName, 'G001') = 0 then
   begin
      This_Player.RandomFlyTo('3');
   end;
end;

Procedure _biqi;
begin
   if compareText(This_Player.MapName, 'G001') = 0 then
   begin
      This_Player.RandomFlyTo('0');
   end;
end;

procedure _jinpai;
begin
  This_Npc.NpcDialog(This_Player,
  'ֻҪ���ǽ����ʺţ�����Ľ�Ʒ������һ�ݣ�\��ת��Ϊ�����˺�֮�󣬲��ܽ��н�Ʒ����ȡ�\��ȡ��Ʒ֮ǰ���뱣���㹻�İ����ռ䣬������������ȡ�\ \'
  +'|{cmd}<��ȡ��Ʒ/@liaojie>\ \'
  +'|{cmd}<����/@main>                      <�뿪/@doexit>'
  );
end;

procedure _liaojie;
begin
  This_Npc.NpcDialog(This_Player,
  '��ȡ��Ʒ֮ǰ���뱣���㹻�İ����ռ䣬������������ȡ�\���ڸߵȼ���ң�����ȡС�ڵ�ǰ�ȼ������н�Ʒ��\ÿ�������ʺŽ�һ����ɫ����ȡ��Ʒ����ÿ����Ʒֻ����ȡ1��\�һ�����㵱ǰ�ĵȼ���������Ӧ�Ľ�Ʒ��\ \'
  +'|{cmd}<��ȡ��Ʒ/@lingqu>                      ^<��ѯ��Ʒ����/@jiang>\'
  +'|{cmd}<�뿪/@doexit>'
  );
end;

procedure _lingqu;
begin
  This_Npc.NpcDialog(This_Player,
  '��ȷ�����㹻�İ����ռ���ý�Ʒ��������������ȡ��\��������ռ䲻�㣬���²���������ȡ����������е���\�㽫���ٿ���������ȡ������ռ䲻��û��������ȡ�Ľ�Ʒ��\ \'
  +'�����㹻�Ŀռ䣬<ȷ����ȡ/@goldidreq>\ \'
  +'|{cmd}<��ѯ��Ʒ����/@jiang>              ^<�뿪/@doexit>'
  );
end;

procedure _goldidreq;
begin
  This_Npc.ReqItemByGoldID(This_Player);
end;

procedure _jiang;
begin
  This_Npc.NpcDialog(This_Player,
  '�����ʺŵĽ�Ʒ���ã�����Ӧ�ȼ�����ȡ��Ӧ�Ľ�Ʒ��\28�������������������ߡ�ħ���е�����1��\35����������ף���͡�����Ӿ��ᡢ�����Ӿ��ᡢ\      а����Ӿ��ᡢ��Ѩ��Ӿ��ᡢʯĹ��Ӿ��������1��\40���������òþ�֮�ȡ�����Ȩ�ȡ����ƽ��е�����1��\42������������ħ��ס�ʥս���ס�������ۡ���ʦ���ۡ�\      �������¡��������磬������40����װ�е�����1��\ \'
  +'|{cmd}<�鿴��һҳ/@next5>                   ^<����/@main>'
  );
end;

procedure _next5;
begin
  This_Npc.NpcDialog(This_Player,
  '44��:��������ְҵ1.8���¼��ܣ�����𡢺����ơ�\���������޼�������ʨ�Ӻ��е�����1��\47��48��49��:������������Ʒ�������ȡһ����Ʒ\����ս�䡢��������������������������������սѥ\��â���䡢��â���󡢹�â��������â��ѥ����â����\�������������滤����������������ħѥ������ħ��\ \'
  +'|{cmd}<�鿴��һҳ/@next6>                  ^<����/@main>'
  );
end;

procedure _next6;
begin
  This_Npc.NpcDialog(This_Player,
  '50��:������������Ʒ�������ȡһ����Ʒ��\ս������ս���ָ��ս������\ʥħ����ʥħ��ָ��ʥħ����\�����������ָ���������\ \|{cmd}<����/@main>'
  );
end;

Procedure _HeroAct();
begin
   This_Npc.NpcDialog(This_Player,
   '����Ҫ�뿪��\ \'+
   '|{cmd}<��ȡ�����ʺŽ���/@jinpai>              ^<��Ѫ����ȫ��ȫ�����а�/@QuanQuQuanFu>\ \'+
   '|{cmd}<������/@mengzhong>                        ^<�ر���/@biqi>\'+
   '|{cmd}<���뿪/@doexit>');
end;

Procedure _GHeroAct;
begin
   _HeroAct();
end;

Procedure _QuanQuQuanFu;
begin
   This_NPC.NpcDialog(This_Player,
   '\'+
   '|{cmd}<�鿴��������/@QuanQGuize>\ \'+
   '|{cmd}<��ѯ�������а�/@GThisWeekOrder~1>\ \'+
   '|{cmd}<��ѯ�������а�/@GLastWeekOrder~1>\');
end;

 //ȫ��ȫ��ף���㲿�֡� 
procedure _GLastWeekOrder(sPage: string);
begin
  if sPage <> nil then
  begin
   // This_Npc.QueryGLastWeekPoints(This_Player, StrToInt(sPage));  
  end;
end;

procedure _GThisWeekOrder(sPage: string);
begin
  if sPage <> nil then
  begin
   // This_Npc.QueryGThisWeekPoints(This_Player, StrToInt(sPage));  
  end;
end;

Procedure _QuanQGuize;
begin
   This_NPC.NpcDialog(This_Player,
   '1. <�ʱ������������ף����������ǰ10λ����ҽ�������������/c=red>\'+
   '<����ף����������������/c=red>��ֻ��ʾ��������ǰ100�ҡ�\'+
   '   ף����������ͬ����ң��ȼ��ߵ���λ��ǰ���ȼ���ͬ����£�\'+
   '   ����ߵ������λ��ǰ��\ \'+
   '2. \ \'+   //�ڶ���������ý��������ݿ� 
   '|{cmd}<��һҳ/@QQNextPage>                                ^<����/@main>');
end;

Procedure _QQNextPage;
begin
   This_NPC.NpcDialog(This_Player,
   '3. �������Ž��ڻ����֮����GM�ֶ����š�\ \'+
   '|{cmd}<����/@main>');
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '����Ҫ�뿪��\ \'+
   '|{cmd}<��ȡ�����ʺŽ���/@jinpai>              ^<��Ѫ����ȫ��ȫ�����а�/@QuanQuQuanFu>\ \'+
   '|{cmd}<������/@mengzhong>                        ^<�ر���/@biqi>\'+
   '|{cmd}<���뿪/@doexit>');
end.