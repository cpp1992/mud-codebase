{********************************************************************

*******************************************************************}
procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;

procedure domain; 
begin
   This_NPC.NpcDialog(This_Player,
   '��˵��ħ���������ˣ�������ء���ħ�ȡ�Ҳ�����ִ�½��\'
   +'������ô�ն�ĵط�������Ĵ���ȥ��\\'
   +'|{cmd}<Ҫȥ/@move>\'
   +'|{cmd}<��������ȥ/@exit>'
   );


end;

procedure _move; 
begin
This_Player.Flyto('4',440,190);

end;
 
begin
    domain;
end.