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
   '�ӵ��������ߣ��ͻ���ֽ�����ľ�ֵ�ɭ�� \\'
   +'������ľïʢ������Ҳ����һ˿���⣬ \\'
   +'���������Ǿ�����������· \\'
   +'����ȥ�Ƕ�һ��Ҫ����С��. \ \\'
   +'|{cmd}<�ر�/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.