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
  '��л���� ����Ҫ��������������\��������Ǳ�������'+This_npc.GetCastleGuildName+'����� \�����ر��'+This_npc.GetCastleGuildName+'��Ա�ṩ20%���ۿۡ�\'
  +'|{cmd}<��������/@s_repair>\'
  +'|{cmd}<�˳�/@doexit>'
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
  This_Npc.SetRebate(100);
end;

procedure _SWUQi109_01;
begin
   This_Npc.NpcDialog(This_Player,
   'ɳ�Ϳˣ�Ŷ�������룬���Ǻܾ���ǰ�������ˡ�\'+
   '�ڶԿ�����ʱ��һЩ־Ȥ��Ͷ��ǰ���ڴ�ս��Ҫ�ؽ�����\'+
   '�����Ǳ����κ�ռ�������Ǳ����лᶼ�ܵõ��޶�����棡\'+
   '����ɳ�Ϳ�����ɳ�Ϳ�����ȵȡ�\ \'+
   '|{cmd}<�ֲ����ҿ��������ͻ���ϡ���ô��ζ�ȡɳ�Ϳ��أ�/@SWUQi109_02>');
end;

procedure _SWUQi109_02;
begin
   This_Npc.NpcDialog(This_Player,
   '���ȣ����빥��ɳ�Ϳ˱���Կ���л�᳤��\'+
   '��Σ��л�᳤ҪЯ��һ������ͷ���һ���שȥ����ʹ���\'+
   '����������빥��ɳ�Ϳˡ�����ɹ���\'+
   'ս�����ڵ������20��00��23��00֮����졣�����ǰ���л�\'+
   '�ڹ���ɳ�Ϳ��ǲ�������ģ�Ҫ�ȵ�ս�������ſ������롣\ \'+
   '|{cmd}<ɳ�Ϳ���ζ��Ҫɱ���ж��л����ȡ��ʤ��ඣ�/@SWUQi109_03>');
end;

Procedure _SWUQi109_03;
begin
   if This_Player.GetV(109,1) = 5 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ǵģ�����ɳ�Ϳ˵�ʱ��������ɱ���ǲ�����PKֵ�ģ�\'+
      '����ʵ��ǿ���ˣ����ڴ���һ�죬ɳ�Ϳ˵ĳ��������㣡\'+
      'ȥ������ľ�����ʶһ�°ɡ�����Ǹղ��������Ļ���ĵ��ݣ�\'+
      '��������ɳ�Ϳ˲����ϰ�ɡ�\'+
      '������Ŀ�꣺�ѻ��ﵥ���͵�ɳ�Ϳ˲����ϰ壩\ \'+ 
      '|{cmd}<�õģ������ȥ/@doexit>');
      This_Player.Give('����',600000);
      This_Player.SetV(109,1,6);
      This_Player.UpdateTaskDetail(109,1);
   end;
end;

procedure _HeiTK109;
begin
   This_Npc.NpcDialog(This_Player,
   '������������У����������������������ķ�����\'+
   '������ʯ�������������������һ��ԭ�ϣ��ڱ�����߶���ɽ�ȵ�\'+
   '�󶴿����ڵ�������Ҫ����������ʱ�򣬿�����������鵽\'+
   '�����������������������������ʹ��ˣ�����������⣬\'+
   '����ʧ�ܵĻ��������ǻ�ֱ������ġ�\ \'+
   '|{cmd}<�������˲��ϣ��һ����������/@HeiTK109_01>');
end;

procedure _HeiTK109_01;
begin
   if This_Player.GetV(109,1) = 7 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ղŻ��֪ͨ�ң�����ָ�ӹ������㡣\'+
      '����������Ȼ��Ѩ��ʲô���֡�\'+
      '������Ŀ�꣺ȥ����ָ�ӹ����￴����\ \'+
      '|{cmd}<�õģ������ȥ/@doexit>');
      This_Player.Give('����',600000);
      This_Player.SetV(109,1,8);                               //30-35��������� 
      This_Player.UpdateTaskDetail(109,1);
   end;
end;


//�ű�ִ�е����
var
  SwQ109 : integer;
begin
   SwQ109 := This_Player.GetV(109,1);
   if SwQ109 = 8 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���������ָ�ӹ���ô��\ \'+
      '|{cmd}<�����ȥ/@doexit>\ \'+
      '|{cmd}<������������������/@Normal>');
   end else if SwQ109 = 7 then
   begin
      This_Npc.NpcDialog(This_Player,
      'Ŷ����������ĺ�����ʯ����\'+
      '�����Ƕ����ɳ�Ϳ˲����ϰ��ˡ�\ \'+
      '|{cmd}<������ʯ����ʲô�õģ�/@HeiTK109>\ \'+
      '|{cmd}<������������������/@Normal>');
   end else if SwQ109 = 6 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ��ѵ��ݽ���ɳ�Ϳ˲����ϰ���ô��\ \'+
      '|{cmd}<�����ȥ/@doexit>\ \'+
      '|{cmd}<������������������/@Normal>');
   end else if SwQ109 = 5 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�һ���Ϊ�����������겻�������ء�\'+
      '��ϧ��������Ҳæ�Ĳ��ɿ������ﲻ������ֻ�ܸɵ��ۡ�\'+
      '��λ�Ҫ��л�㰡��\ \'+
      '|{cmd}<����֮�Ͷ��ѡ������������������ɳ�Ϳ�ô��/@SWUQi109_01>\ \'+
      '|{cmd}<������������������/@Normal>');
   end else
      _Normal;
end.
