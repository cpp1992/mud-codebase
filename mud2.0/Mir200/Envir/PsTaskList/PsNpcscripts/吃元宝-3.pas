  {�Զ���Ԫ����� 
���ߣ����ľͺ�
���ݣ����ߵ��һ�θ�NPC�ͻ�ѭ��������Ԫ���������Ŀ���Զ��ԣ�
֮����1 2 5 10Ԫ�����������Ҫ����Լ���else�������
���ߺ�ýű�ֹͣ���У��ܿᣬ�ݵ㣬��װ�����͸ýű���˼·һģһ���� 
}
PROGRAM Mir2;
Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;
procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
       '���ӭ���١�Ц�����֡��������ġ���\|'              
     +' ������Ϊ������Զ��԰���С��Ԫ�����������ơ��\|'
     +' ������ߺ��ٴ�������Ҫ���¿������\|'
    +'{cmd}<����/@kq> \');
end;

procedure kq;
begin
  if This_Player.GetBagItemCount('1������') >0  then
  begin
      This_Player.Take('1������', 1);
      This_Player.AddLF(1,1);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('2������')>0  then
  begin
      This_Player.Take('2������', 1);
      This_Player.AddLF(1,2);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('5������')>0  then
  begin
      This_Player.Take('5������', 1);
      This_Player.AddLF(1,5);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('10������')>0  then
  begin
      This_Player.Take('10������', 1);
      This_Player.AddLF(1,10);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('20������')>0  then
  begin
      This_Player.Take('20������', 1);
      This_Player.AddLF(1,20);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('50������')>0  then
  begin
      This_Player.Take('50������', 1);
      This_Player.AddLF(1,50);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('100������')>0  then
  begin
      This_Player.Take('100������', 1);
      This_Player.AddLF(1,100);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
   if This_Player.GetBagItemCount('1Ԫ��')>0  then
  begin
      This_Player.Take('1Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(1);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('2Ԫ��')>0  then
  begin
      This_Player.Take('2Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(2);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('5Ԫ��')>0  then
  begin
      This_Player.Take('5Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(5);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('10Ԫ��')>0  then
  begin
      This_Player.Take('10Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(10);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('20Ԫ��')>0  then
  begin
      This_Player.Take('20Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(20);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('20Ԫ��')>0  then
  begin
      This_Player.Take('50Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(50);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
      This_Player.CallOut(This_NPC,5,'kq');
end; 

procedure _kq;
begin
kq;
end;
begin
domain;
end.