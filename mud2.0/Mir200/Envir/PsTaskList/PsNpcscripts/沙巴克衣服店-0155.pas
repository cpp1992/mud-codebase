{
/*******************************************************************************
}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Normal;
begin
  This_Npc.NpcDialog(This_Player,
  '��л�������и��ָ������·� �����������������һ�֣�\����'+This_npc.GetCastleGuildName+'�ĳ�Ա��Ҫ��20%���ۿ۵ġ�\��Ϊ����Ǳ�����'+This_npc.GetCastleGuildName+'��\' 
   +'|{cmd}<�����칤����Ĺ���/@gongdian>\'  
   +'|{cmd}<���·�/@buy>'+ addSpace('', 18) + '|{cmd}<���·�/@sell>\'
   +'|{cmd}<�޸��·�/@repair>'+ addSpace('', 16) + '|{cmd}<��������/@s_repair>\'
   +'|{cmd}<�˳�/@doexit>'
   );
end;
   
procedure _GongDian;
begin
  This_Npc.NpcDialog(This_Player,
  +'�칤��������ҵ�ʦ�����̻����Һܶ�����\'
  +'�����Դ���ѧ�ɳ�ʦ֮����Ҳ��Ҳû�м���ʦ����\'
  +'�����Ҳ���ʦ�ֵ���˵�����ʦ��ʧ���ˣ������Ǳ�ħ��������\'
  +'���Ƕ��ܽ�������֪�����ܲ��ܰ��������ҵ����ǵ�ʦ��\'
  +'��˵���������ڵ��¹���\'
  +'ħ��Ϊ�˲�������ǰȥӪ�ȣ���ħ�޶���ȥ���¹���\'
  +'��Ȼ������Ҳ��ȥ��Ϊ��׳�۵ı��ء�\'
  +'��Ϊ�������Ǿ����Ѵ�û�������ļ��չ���\'
  +'|{cmd}<������������â��������װ������/@shengji>'+ addSpace('', 10) + '|{cmd}<����/@main>'
  );
end;


procedure _Shengji;
begin
  This_Npc.NpcDialog(This_Player,
    '��˵�������ǵ��żҲ����ϰ�ѧ����һ��ܣ�\' +
    '�ܹ�ʹ�������䷽����������â������ϵ�н��������ͺϳɣ�\' +
    '�����Ҳ�֪������������Ҫô������ȥ��һ�������˰ɡ�\ \' +
    '|{cmd}<�뿪/@DoExit>'
  );
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫʲô������·���ô����\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ���ĸ��ҿ������һ����һ�����ۡ�\ͷ����ñ�����Ա��̵꣬ \�����Ե�����ȥ������\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����·�����ȥ�ܾ��ˣ��������޲�һ�£�\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '���ˣ��������ȥ�Ѿ������ˡ�\ \|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\����������ͨ��3����' +
    '\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \|{cmd}<����/@main>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.AddStdMode(27);
  This_Npc.AddStdMode(28);
  This_Npc.FillGoods('����(��)',50,1);
  This_Npc.FillGoods('����(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1); 
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1);
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('����ս��(��)',50,1);
  This_Npc.FillGoods('����ս��(Ů)',50,1);
  This_Npc.FillGoods('��ħ����(��)',30,1);
  This_Npc.FillGoods('��ħ����(Ů)',30,1);
  This_Npc.FillGoods('ս�����(��)',30,1);
  This_Npc.FillGoods('ս�����(Ů)',30,1);
  This_Npc.SetRebate(100);
end;

Procedure _XiaoXiCD109;
begin
   if This_Player.GetV(109,1) = 6 then
   begin
      This_Player.Give('����',600000);
      This_Player.SetV(109,1,7);
      This_Player.UpdateTaskDetail(109,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

//�ű�ִ�е����
var
  SwQ109 : integer;
begin
   SwQ109 := This_Player.GetV(109,1);
   if SwQ109 = 7 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ʯ��û���͵�ɳ�Ϳ�������ô��\ \'+
      '|{cmd}<�����ȥ/@doexit>\ \'+
      '|{cmd}<������������������/@Normal>');
   end else if SwQ109 = 6 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���ݷ�����ɡ����ȥ����ɳ�Ϳ������ϰ壬��˵�������յ��ˡ�\'+
      '���⣬����������������ĺ�����ʯ����ѿ�ʯ\'+
      '�ᵽɳ�Ϳ�����Ƥ�ϰ�����ȥ�ɣ�������ô�����ң������㣬\'+
      '��ֻ��ɳ�Ϳ˳�Ա�ṩ��õķ������������̬�Ⱥõ㣬\'+
      '�鷳����֤���Լ���\'+
      '������Ŀ�꣺����Ϣת��ɳ�Ϳ������̣�\ \'+
      '|{cmd}<�Ϳ�ʯȥ��������ƽ�/@XiaoXiCD109>\'+
      '|{cmd}<������������������/@Normal>');
   end else
   begin
     _Normal;
   end;
end.