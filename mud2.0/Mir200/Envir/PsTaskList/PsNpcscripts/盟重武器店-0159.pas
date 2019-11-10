{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _SongDD109;
begin
   if This_Player.GetV(109,1) = 4 then
   begin
      This_Player.Give('����',600000);
      This_Player.SetV(109,1,5);
      This_Player.UpdateTaskDetail(109,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

procedure domain;
var
  MWQ106, MWQ109 : integer;
begin
  MWQ109 := This_Player.GetV(109,1);
  MWQ106 := This_Player.GetV(106,1);
  if MWQ109 = 5 then
  begin
     This_Npc.NpcDialog(This_Player,
     '���Ѿ��ѻ����͵�ɳ�Ϳ���������ô��\ \'+
     '|{cmd}<�õģ�û������/@doexit>\ \'+
     '|{cmd}<������������������/@Normal>');
  end else if MWQ109 = 4 then
  begin
     This_Npc.NpcDialog(This_Player,
     This_Player.Name + '���þ�û�п������ˣ����ˣ�\'+
     '���ǵ�����ǰ�͵�������һ��ǯ������ô�����Ѿ��Ѳ��϶�\'+
     '����������ˡ��ܲ������鷳������͵�<ɳ�Ϳ�������/c=red>��\'+
     '������Ŀ�꣺�������͵�ɳ�Ϳ������̣�\ \'+
     '|{cmd}<�õģ�û������/@SongDD109>\ \'+
     '|{cmd}<������������������/@Normal>');
  end else if MWQ106 = 15 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����̫��л�ˣ��ҾͲ��к����ˡ��ҵ�ʱ��ܽ��ġ���\'
    +'�������ϻ�����ô��������ȥ�Ұ��������ϰ�ɡ�\ \'
    +'��ôÿ�ζ���������һ�������������\ \'
    +'|{cmd}<�õģ������ȥ/@doexit>\ \'
    +'|{cmd}<������������������/@Normal>');
  end
  else if MWQ106 = 14 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ��ռ���������ĩ��ô��\'
    +'������Ŀ�꣺ɱ����ɫ����5�����ռ�������ĩ5�ݣ�\'
    +'Ȼ�󽻸�����ɭ�ֵĺϼ�ҩ���ϰ壩\ \'
    +'|{cmd}<�õģ��Ҿ�ȥ/@doexit>\ \'
    +'|{cmd}<������������������/@normal>'
    );
  end
  else if MWQ106= 13 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ��ռ���5��ǯ��������ô��\'
    +'������Ŀ�꣺ɱ��5����򼶴��ǯ�棬�ռ�5��ǯ��ǣ�\ \'
    +'|{cmd}<���Ѿ��ռ�����5��ǯ������/@mission_106_1_12_fns>\ \'
    +'|{cmd}<������������������/@normal>'
    );
  end
  else if MWQ106 = 12 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ��ռ���5��ǯ��������ô��\'
    +'������Ŀ�꣺ɱ��5����򼶴��ǯ�棬�ռ�5��ǯ��ǣ�\ \'
    +'|{cmd}<�����ȥ�ռ�5��ǯ������/@doexit>\'
    +'|{cmd}<������������������/@normal>'
    );
  end
  else if MWQ106 = 11 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����֮ì������֮�ܡ��ӹ�������ȡ�õĲ��ϣ�Ҳ����������������\'
    +'ǯ�����֪��ô���ܼ�Ӳ�����֡�\'
    +'ֻҪ��������Щ���������ܱ�ø����������ǵ�սʿ���ܸ��õ�\'
    +'��ս���Ϻͱ����˾���ս����\'
    +'������ܰ���ȥŪ5�����Ļ����һ�ܸм��ġ�\'
    +'������Ŀ�꣺ɱ��5����򼶴��ǯ�棩\ \'
    +'|{cmd}<�����ȥ�ռ�5��ǯ������/@doexit>\'
    +'|{cmd}<������������������/@normal>'
    );
    This_Player.SetV(106,1,12);
    This_Player.SetV(106,5,0);
    This_Player.Give('����',300000);
    This_Player.UpdateTaskDetail(106,1); 
  end
  else
  begin
  This_Npc.NpcDialog(This_Player,
  '��л�㵽�����̣���ʲô���԰�æô��\ \'
  +'|{cmd}<������/@buy>\'
  +'|{cmd}<������/@sell>\'
  +'|{cmd}<��������/@repair>\'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@doexit>'
  );
  end;
end;

//------------------------------------------------------------------------------
//�ɳ�����

procedure _mission_106_1_12_fns;
begin
   This_Npc.NpcDialog(This_Player,
   '�ǳ���л�㡣������Щǯ�����ǣ��Ҿ�������������о���ɱ����\'
   +'�������ˣ������´��ս���Ｏ������Ҳ��������ɣ�\'
   +'��ؿ������˻��Ҳ������������������ϰ�ϣ���㻹�ܰ������\'
   +'��������һ���µĲ����ڶԿ�ʬ���Ч���ϱȷ�滹��ʹ��\ \'
   +'|{cmd}<������������ʲô���ĵ�����ɣ�/@mission_106_1_1222_fns>');
end;

procedure _mission_106_1_1222_fns;
begin
  if This_Player.GetV(106,1) = 14 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���������˵������򼶴�ĺ�ɫ��������\'
    +'������Ŀ�꣺ɱ����ɫ����5��Ȼ���ҵ�����ɭ�ֵİ��������ϰ壩\'
    +'���������ϰ�Ͳ����о���ɾ�������ô��\ \'
    +'|{cmd}<�ðɣ��ðɣ��Ҿ�����һ�˺��ˡ�/@doexit>'
    );
  end else if This_Player.GetV(106,1) = 13 then
  begin
    This_Player.Give('����',300000);
    This_Player.SetV(106,1,14);
    This_Player.SetV(106,6,0);
    This_Player.UpdateTaskDetail(106,1);
  end;
end;

procedure _mission106_1_12_1;
begin
  if This_Player.GetV(106,1) = 14 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���������˵������򼶴�ĺ�ɫ��������\'
    +'������Ŀ�꣺ɱ����ɫ����5��Ȼ���ҵ�����ɭ�ֵĺϼ�ҩ���ϰ壩\'
    +'�ϼ�ҩ���ϰ�Ͳ����о���ɾ�������ô��\ \'
    +'|{cmd}<�ðɣ��ðɣ��Ҿ�����һ�˺��ˡ�/@doexit>'
    );
  end
  else
  exit;
end;

//------------------------------------------------------------------------------ 

procedure _normal;
begin
  This_Npc.NpcDialog(This_Player,
  '��л�㵽�����̣���ʲô���԰�æô��\ \'
  +'|{cmd}<������/@buy>\'
  +'|{cmd}<������/@sell>\'
  +'|{cmd}<��������/@repair>\'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Щʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Ҫ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ҫ����������\������Ҫ�����������\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�������޺��ˣ���л�´�������\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\����������ͨ��3����'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|{cmd}<����/@main>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.AddStdMode(43);
  This_Npc.FillGoods('ľ��',50,1);
  This_Npc.FillGoods('��ͭ��',50,1);
  This_Npc.FillGoods('����',50,1); 
  This_Npc.FillGoods('ذ��',50,1);
  This_Npc.FillGoods('����',50,1);
  This_Npc.FillGoods('��˪',50,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.