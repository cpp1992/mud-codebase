{********************************************************************

*******************************************************************}
procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;
procedure domain;
begin
    IF This_Player.GetV(9,6) = 1 then
    begin
       This_NPC.NpcDialog(This_Player,
       '�㲻���Ѿ��յ�������������յ��飬\'
       +'��˫���Ǳ����������飨˫�������������\'
       +'�����ʧ����Ҳ�Ѿ�ѧ�����������\'
       +'����ʹ������������������ʣ�\'
       +'��Ĺ���Խ�����������Ҳ��Խ�ߡ�\'
       +'���������ȥ����ʡ����꣬ \'
       +'�������˻ύ����������� \ '
       +'��������������323��247����ȥ�ɡ�\'
       +'|{cmd}<�ر�/@exit>'
       );
       This_Player.RandomFlyTo('0114');
    
    end else
    IF CheckOtherMapMon('01142') > 0 then
    begin
    
       This_NPC.NpcDialog(This_Player,
       '��û��ץ������?ûʱ����\'
       +'����.. ף����� \ \'
       +'|{cmd}<ȡ��/@exit>'   
       )
    end 
    else
    begin
        IF (This_Player.GetV(9,6) <= 0) and (This_Player.FreeBagNum > 0)  then
        begin
             This_Player.Give('��������',1);
             This_Player.SetV(9,6,1);
           This_NPC.NpcDialog(This_Player,
           '�ã����Ѿ��߱��ʸ����ҵ�ͽ��\'
           +'ף���㰡... \'
           +'���������������7��֮������ף���� \ \'
           +'|{cmd}<ȡ��/@exit>'
           );
        end else
       This_NPC.NpcDialog(This_Player,
       '��İ��ﶫ���Ѿ����ˣ�������һ�°�.. \ \'
       +'|{cmd}<ȡ��/@exit>'
       );
    end;
end;



begin
    domain;
end.