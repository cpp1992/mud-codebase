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
   '֩����ʲô��\'
   +'�Ҽ����е��ǣ�\\'
   +'|{cmd}<ȷ��/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.