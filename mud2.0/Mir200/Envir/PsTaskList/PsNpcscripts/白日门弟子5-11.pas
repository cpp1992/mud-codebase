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
   '����������ɭ���������һ����ħ���ɽ \\'
   +'���¹���ɽ�������½��ᱻѪ������ס.. \\'
   +'��, �����Һܾ���ǰ������һ�λ�. \\'
   +'�����ڰ�ʾ��ʲô������ȴ��֪��������ʲô��˼ \\'
   +'��������˽�Ļ���ȥ����ɽ������. \ \\'
   +'|{cmd}<�ر�/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.