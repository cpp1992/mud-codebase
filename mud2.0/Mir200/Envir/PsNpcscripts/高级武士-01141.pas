{********************************************************************

*******************************************************************}
//����֮��ָʾ�������

procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;

procedure domain;
begin
    if CheckOtherMapMon('01141') > 0 then
       This_NPC.NpcDialog(This_Player,
   'Ŷ��ħ������������ȥ��������������\ \'
   +'|{cmd}<�ر�/@exit>'

   )else
   begin
    This_Player.RandomFlyTo('0114');
    //This_Player.SetV(9,7,1);
    This_Player.SetV(11,4,12);
   end;
end; 


begin
    domain;
end.