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
   '����ɲ��ǵ���һ�����ڣ��Ǻǣ�\'
   +'���������ź�����ʲô�ط�����������\ \'
   +'|{cmd}<�뿪/@exit>'
   );

end;

begin
    domain; 
end.