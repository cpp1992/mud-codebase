program Skynpc;
                                   
procedure _RgivUp;
begin
  This_Player.Flyto('0122~1', 0, 0); 
end;


procedure _recmon;
begin
  // �����У�����ص�ͨ����GS�ű������ļ��ű���
  This_Npc.WantWarMon(This_Player)
end;

procedure _jinrutong;
begin
  // �����У�����ص�ͨ����GS�ű������ļ��ű���
  This_Npc.EnterRouteWayByLF(This_Player, True);
end;

procedure _jinrunext2;   // ���ع�
begin
  This_Npc.EnterMyStery(This_Player);
end;

procedure _fanhui;
begin
  This_Player.Flyto('0122~1', 0, 0); 
end;

procedure _getprize;
begin
  This_Npc.GetSkyPrize(This_Player);
end;


procedure _GetGift;
begin
  This_Npc.NpcDialog(This_Player,
    'ֻ�������귿��������й����������ս�ɹ���\'+
    '����ȡ����ǰ������ȷ�������������㹻�Ŀռ���ñ��ء�\ \'+
    '|{cmd}<׼�����ˣ���ȡ����/@getprize>');
end;


procedure _lookmon;
begin
  This_Npc.ChkMonAndItem(This_Player);
end;

procedure _Enoughvalue;
begin
  This_Npc.NpcDialog(This_Player,
    '�����ʿ�����Ѿ�û����������ܽ�����һ��');
end;

procedure _NotNewBieCard;
begin
  This_Npc.NpcDialog(This_Player,
    '��ĵȼ��Ѿ�����21����������ʹ����ʿ�����������');
end;

procedure OnInitialize;
begin
  This_Npc.AddNpcProp(11);

end;
  
begin
  This_Npc.NpcDialog(This_Player,
    '������������Ȼ����˫ȫ��\'+
    '�ȿ���������ı��ֻҪ������й������͹����ˡ�\'+
    '����뵽��һ�أ������ʹ��1������ٹ�һ�����ͨ����\'+
    '�������ʹ��������ǾͿ�ʵ�����ȥ�ɡ�\'+
    '����������أ��ܹ����ٹؾͿ���������������ˡ�\'+
    '|{cmd}<��������ı���/@lookmon>        ^<��ս�ɹ�����ȡ����/@GetGift>\ \'+ 
    '|{cmd}<������ͥ/@fanhui>');
end.

