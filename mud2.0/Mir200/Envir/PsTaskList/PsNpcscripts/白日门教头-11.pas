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
    if This_Player.GetV(1,400) = 0 then
    This_Npc.NpcDialog(This_Player,
   '�ƹ��佣? Ŷ...����ѧͽ�Ǻ���˵��һЩ�ϻ� \ \'
   +'��������Щ�޵�������˵��\\'
   +'���ַ�����û�õ�... \ \\'
   +'|{cmd}<ԭ�����, �ƹ��佣��Ĵ�����?/@next> \\'
   +'|{cmd}<ԭ�����. ����������������֮��./@deney>\') 
   else
   This_Npc.NpcDialog(This_Player,
   '�����ʵ�ںܺ���, �Ǿ�ȥ�ҹ�����.. \ \\'
   +'|{cmd}<�ر�/@exit>\');
end;

procedure _deney; 
begin
This_Npc.NpcDialog(This_Player,
   '�ԣ���Ҫ����. ��Ҫ�úý�ѵ��Щ�����µļһ� \\'
   +'��ʩ���ܿ�һ���. \ \\'
   +'|{cmd}<�ر�/@exit>\');

end;

procedure _next; 
begin
This_Npc.NpcDialog(This_Player,
   '�ƹ��佣�����ǵ������֮��... \\'
   +'�����������ǰ��������\\'
   +'��Ҳ��������������̸���֪����... \ \\'
   +'|{cmd}<�ر�/@exit>\');
This_Player.SetV(1,400,1);
end;

//�ű�ִ�е����
begin
  domain;
end.