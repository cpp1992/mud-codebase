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
   '�ܾ���ǰ���������ǵ����洫֮���ĵ��� \\'
   +'�ǳ���Զ��Ķ��� \\'
   +'Ҫ˵�������µ����У�дһ���鶼���� \ \\'
   +'|{cmd}<�ر�/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.