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
       '���ǲ����Ѿ��õ�����? \'
       +'������õ�����������(˫��������) \'
       +'������ͻὥ����ʧͬʱҲѧ���������,���ܼ��ǰ�F11 \'
       +'��ѡ������ʾ�ļ���,�Ϳ������ÿ�ݼ���ʹ��. \'
       +'������ȥ�����������ϰ� \'
       +'��������㼼�ܵ�������ʽ\ \'
       +'|{cmd}<��  ��/@exit>'
       );
    
    
    end else
    IF This_Player.GetV(9,1) = 1 then
    begin
       IF This_Player.Level >= 7 then
       This_NPC.NpcDialog(This_Player,
       '����Ҫ��������书, �����кܶ��� ¹ �� \'
       +'������ڽ�����ɱ��,�ٺ���˵�� \ \'
       +'|{cmd}<�� ��/@Q706_1>'
       )
       else
       This_NPC.NpcDialog(This_Player,
       '�ҽд��ʥɮ,�ܸ�����ʶ��...\'
       +'���ڵ�ʿְҵ�������NPC�����˽��˺ܶ��˰� \'
       +'��ʿ��һ���书�������� \'
       +'ֻ�еȼ�����7������ʹ��\'
       +'��ʱ�����������Ұ� \ \'
       +'|{cmd}<�� ��/@exit>'
       );
    end else
     This_NPC.NpcDialog(This_Player,
       '�ҽд��ʥɮ,���ʲô����? \'
       +'��Ը�������? ��.. ���� \'
       +'�����æȥ�� \ \'
       +'|{cmd}<��  ��/@exit>'
       );
end;

procedure call_back;
begin
    if This_Player.MapName = '01132' then
    This_Player.RandomFlyTo('0113');
end;

procedure _Q706_1;
begin
   if CheckOtherMapHum('01132') > 0 then
   This_NPC.NpcDialog(This_Player,
   '������������һ�����ڽ������� \'
   +'�ܱ�Ǹ,����΢��һ�°�. \ \'
   +'|{cmd}<��  ��/@exit>'
   )
   else
   begin
       This_NPC.ClearMon('01132'); 
       This_NPC.CreateMon('01132',10,10,10,'¹',10);
       This_NPC.CreateMon('01132',10,10,10,'��',10);
       This_NPC.CreateMon('01132',10,10,10,'��',10);
       This_Player.RandomFlyTo('01132');
       This_Player.CallOut(This_Npc, 300, 'call_back')
   
   end
end;

begin
    domain;
end.