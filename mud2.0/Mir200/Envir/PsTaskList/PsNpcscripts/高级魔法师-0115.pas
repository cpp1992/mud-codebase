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
       +'��˫���Ǳ��������飨˫�������������\'
       +'�����ʧ����Ҳ�Ѿ�ѧ�����������\'
       +'��f11���Ϳ���ȷ���书\'
       +'�趨�书�ķ����ǵ���书���棬ָ�����̣���ָ�����̾Ϳ��Է���\'
       +'���������ȥ����ʡ����꣬ \'
       +'�������˻ύ����������� \ '
       +'��������������323��247����ȥ�ɡ�\'
       +'|{cmd}<�ر�/@exit>'
       
       );
    
    end else
    IF This_Player.GetV(9,1) = 1 then
    begin
       IF This_Player.Level >= 7 then
       This_NPC.NpcDialog(This_Player,
       '��������һ�����������\'
       +'�кܶ�����¹���������֣�������5����֮�ڰ�����ץ�꣬�ٺ��ҽ��жԻ���\ \'
       +'|{cmd}<�ر�/@Q706_1>'   
       )
       else
       This_NPC.NpcDialog(This_Player,
       '���Ǹ߼���ʦ���ܸ��˼����㣬\'
       +'�������ħ��ʦְҵ���������˽��˺ܶ࣬\'
       +'��ʦ�ĵ�һ��������ǻ�������\'
       +'������书Ҫ����ļ�����7����\'
       +'������������������ɡ�\ \'
       +'|{cmd}<�ر�/@exit>'
       
       );
    
    end else
    begin
       This_NPC.NpcDialog(This_Player,
       '���Ǹ߼���ʦ�����ʲô? \'
       +'��������?��.. ��֪���� \'
       +'��������������� \ \'
       +'|{cmd}<ȡ��/@exit>'
       );
    
    end;
end;


procedure call_back;
begin
    if This_Player.MapName = '01152' then
    This_Player.RandomFlyTo('0115');
end;

procedure _Q706_1;
begin
    IF CheckOtherMapHum('01152') > 0 then
    begin 
       This_NPC.NpcDialog(This_Player,
       '���������ڽ����ҵĲ��飬\'
       +'������������꣬�ܱ�Ǹ��\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    begin
        This_NPC.ClearMon('01152');
        This_NPC.CreateMon('01152',19,19,10,'¹',10);
        This_NPC.CreateMon('01152',19,19,10,'��',20);
        This_NPC.CreateMon('01152',19,19,10,'��',10);
        This_Player.RandomFlyTo('01152');
        This_Player.CallOut(This_Npc, 300, 'call_back');
    end;
end;

begin
    domain;
end.