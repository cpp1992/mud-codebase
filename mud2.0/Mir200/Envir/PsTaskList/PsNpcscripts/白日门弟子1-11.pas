{********************************************************************

*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure domain;
begin
This_Npc.NpcDialog(This_Player,
   '�ܾ���ǰ, ���ǵ������洫֮�������ƹ��佣�� \\'
   +'�����˵����ˡ��ǰѱ��������棬 \\'
   +'��˵����һ������𶯣��������·�Ʈ�� \\'
   +'������Щ����... \\'
   +'�������������ڵĻ����Ϳ���������������. \ \\'
   +'|{cmd}<�ر�/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.