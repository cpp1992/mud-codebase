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
   '��ɭ���������û��֩����ﵱ�У� \\'
   +'������ͷ�۵�Ҫ����Ӱ֩��\\'
   +'����֩�������������ǲ����³��ӳ� \\'
   +'��Щ�ӳ���˾��Ա�\\'
   +'ֻ�д��ĸ��, �Ż�ֹͣ���ӳ棬���һ����Ӱ֩��\\'
   +'Ҫ��������ս��. \ \\'
   +'|{cmd}<�ر�/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.