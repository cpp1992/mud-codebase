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
   'վ�������������ʯͷ\'
   +'ʦ����˵������֩�룬�������ǳ�ȥ��\'
   +'����ֻ����һЩ������ʲô�ģ�֩�뵽�������\\'
   +'|{cmd}<ȷ��/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.