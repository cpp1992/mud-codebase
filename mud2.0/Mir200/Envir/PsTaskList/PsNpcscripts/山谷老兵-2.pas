{********************************************************************

*******************************************************************}
program mir2;


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
    
    This_NPC.NpcDialog(This_Player,
    '��·�Ǳ���ͨ�����صıؾ�֮·��\'
    +'����ʵ�����㣬�ͻ��Ϊһ������·\'
    +'|{cmd}<����ׯ԰/@baodian>\'
    +'|{cmd}<ǰ������/@MoveMZ>            ^<ǰ������/@MoveBQ>\'

    +'|{cmd}<ȷ��/@exit>\ '
    );
end;


procedure _baodian;
begin
  This_Npc.NpcDialog(This_Player,
  'ͨ��ׯ԰�ڵġ�Ԫ��ʹ�ߡ�������������ҽ���Ԫ�����ף�\������Ҫȥׯ԰��?\ \'
  +'|{cmd}<ǰ��ׯ԰/@zhuangyuan>'
  );
end;

procedure _zhuangyuan;
var temp: integer;
//���5���㴫��
begin
  temp := random(5)+1;
  if This_Player.Level >= 8 then
  begin
    if compareText(This_Player.MapName, '0') = 0 then
    begin
        if temp = 1 then
        begin
        This_Player.Flyto('GA0',71,72);
        end
        else if temp = 2 then
        begin
        This_Player.Flyto('GA0',71,72);
        end
        else if temp = 3 then
        begin
        This_Player.Flyto('GA0',71,72);
        end
        else if temp = 4 then
        begin
        This_Player.Flyto('GA0',71,72);
        end
        else
        begin
        This_Player.Flyto('GA0',71,72);
        end;
    end;  
  end
  else
    This_Npc.NpcDialog(This_Player,
    '��������������һ���������ȥ���\�����ﵽ8����ʱ���������Ұɣ�\'
    );  
end;

procedure _MoveMZ; 
begin
This_Player.Flyto('3',333,333);
end;

procedure _moveBQ; 
begin
This_Player.Flyto('0',333,274);
end;


begin
 domain;
end.