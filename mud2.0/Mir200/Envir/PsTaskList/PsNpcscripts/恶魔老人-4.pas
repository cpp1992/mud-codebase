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
   '��Ҫ˵��û�������㣬\'
   +'�������ħ�Ǻܿ��ܳ�Ϊ���һ�����Σ�\'
   +'����Ļ������ȥ��\'
   +'|{cmd}<�˳�/@exit>'
   
   );

end;

begin
    domain; 
end.  