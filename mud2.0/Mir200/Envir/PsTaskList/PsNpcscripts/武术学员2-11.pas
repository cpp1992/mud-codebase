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
   '�ұ���С���ڱ������ִ��ſ�����վ�ŵ��ҡ�\'
   +'��˵������ȥ������ڨ�������ʰ˵ģ��治���İ���\\'
   +'|{cmd}<ȷ��/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.