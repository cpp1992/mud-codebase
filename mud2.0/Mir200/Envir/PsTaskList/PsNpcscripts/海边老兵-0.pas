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
   '�ţ���Ϣͦ������ô����ҵ����⡣\'
   +'����ȥ��սǿ��Ĺ����𣿲�����ֻ��60����ʱ�䣬\'
   +'60���Ӻ��㻹���������������Ҫ���������ģ�\'
   +'�Ͼ�ץ������Ҳ�����ף�������Ҳ���ܱ�֤���ǵİ�ȫ��\'
   +'��ô����������ÿ��ȥһ������һ������ֵ��\ \'
   +'|{cmd}<����ʥ�����Ϣ/@sabout>\'
   +'|{cmd}<ȥ/@jump>\'
   +'|{cmd}<��ȥ/@exit>'
   
   
   );

end;

procedure _sabout;
begin
   This_NPC.NpcDialog(This_Player,
   '����ѫ����ʥ��������\'
   +'����������ȵ���һ���С�ʥ��֮�š��ĵط���\'
   +'�ɱ�������տ��ķ���������̫��ʱ��Ŷ��\'
   +'������ĵ�һ������˵�е�ʥ�����޾ͻ���֡�\'
   +'���ҪС��Ӧ������\\'
   +'|{cmd}<�ر�/@exit>'
   );

end;

procedure _noway;
begin
   This_NPC.NpcDialog(This_Player,
   '���ź�����������������޷����롣\'
   +'�ڱ�����ݽ�ͷ������Բ�ѯ�Լ���������\\'
   +'|{cmd}<�뿪/@exit>'
   );

end;

procedure call_back;
begin
    if (This_Player.MapName = 'B101') or (This_Player.MapName = 'B102') then
    This_Player.Flyto('0',108,417);
end;

procedure _jump;
begin
    if This_Player.MyShengwan >= 1 then
    begin
         This_Player.MyShengwan := This_Player.MyShengwan-1;
         case random(2) of
             0 : This_Player.RandomFlyTo('B101');
             1 : This_Player.RandomFlyTo('B102');
         end;
         This_Player.CallOut(This_NPC,3600,'call_back');
    end else
    This_NPC.NpcDialog(This_Player,
   '���ź�����������������޷����롣\'
   +'�ڱ�����ݽ�ͷ������Բ�ѯ�Լ���������\\'
   +'|{cmd}<�뿪/@exit>'
   ); 
end;

begin
   domain;
end.   