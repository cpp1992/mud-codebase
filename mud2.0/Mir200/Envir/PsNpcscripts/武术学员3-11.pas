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
   '���Ͽ��ף��ҽ�����������õ�սʿ��\'
   +'��Ҫȥ����Ͽ�����ϴ��Ǹ�Ѫ������ƴһ�Σ�\'
   +'�ϴκ��գ��ҿ�ʦ�����ң�����ҿ϶��ɹ���\\'
   +'|{cmd}<ȷ��/@exit>\');

end;

//�ű�ִ�е����
begin
  domain;
end.