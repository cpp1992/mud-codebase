{********************************************************************

*******************************************************************}
procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;

procedure domain;
begin
    IF  This_Player.GetV(9,6) = 1 then
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
       This_Player.RandomFlyTo('0113');
    end else
    if CheckOtherMapMon('01152') > 0 then
    begin

         This_NPC.NpcDialog(This_Player,
         '�㻹û��ץ������,�Ѿ�û��ʱ���� \'
         +'����ж���,ף����� \ \'
         +'|{cmd}<��  ��/@exit>'
         );

    end else
    begin
        IF (This_Player.FreeBagNum > 0)  then
        begin
           This_Player.Give('������',1);
           This_Player.SetV(9,6,1);
           
           This_NPC.NpcDialog(This_Player,
           '�����Ѿ�ͨ����,��������ҵ�ͽ��\'
           +'ף����... ���Ƚ���7��ʱ��Ļ������������� \ \'
           +'|{cmd}<��  ��/@exit>'
           );
  
        end else
       This_NPC.NpcDialog(This_Player,
       '��İ����Ѿ�װ����,�����ڳ��ط���.. \ \'
       +'|{cmd}<��  ��/@exit>'
       );

    end;
end;



begin
    domain;
end.