{********************************************************************

*******************************************************************}
PROGRAM Mir2;

{$I WarehouseAndMbind.pas}
{$I ActiveValidateCom.pas}

procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;



procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '����ħ��������־�֪���Ǹ�Σ�յĵط�\'
   +'��������ȥ������ս��\ \'
   +'|{cmd}<����ׯ԰/@baodian>\'
   +'|{cmd}<ȥ����/@leave>           ^<ȥ��ħ����/@goMonMap>\'
   +'|{cmd}<��ȥ�̵�/@move0>\'
   +'|{cmd}<�������������Ϣ/@supman>\'
   +ActiveValidateStr
   +'|{cmd}<ȷ��/@exit>\ '
   );

end;

procedure _goMonMap;
begin
    if This_Player.MapName = '4' then 
    This_Player.Flyto('4',60 + random(3) - 1,70 + random(3) - 1); 
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

procedure _leave;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ���������Ҫ���  \'
   +'�����������ʹ�� \'
   +'�����֧��2000��� \ '
   +'���뻨���Ǯ��? \ \'
   +'|{cmd}<�ƶ�/@pay1> \ '
   +'|{cmd}<����/@main>  '
   );
 
end;

procedure _pay1;
begin
    IF This_Player.GoldNum >= 2000 then
    begin
    This_Player.DecGold(2000);
    This_Player.Flyto('0',333,274);
    end else
   This_NPC.NpcDialog(This_Player,
   '���ڿ���Ц��???���ǮҲû��.. \'
   +'�����ƶ�?? �Ҳ����ټ�����.. \ \'
   +'|{cmd}<����/@main>' 
   );



end;

procedure _move0;
begin
   This_NPC.NpcDialog(This_Player,
   '���뵽�ĸ��̵ꣿ��������������񰡣�\\'
   +'|{cmd}<��װ��/@move01>\'
   +'|{cmd}<������/@move02>\'
   +'|{cmd}<���ε�/@move03>\'
   +'|{cmd}<ҩ���/@move04>\'
   +'|{cmd}<����/@main>'   
   );

end;

procedure _move01;
begin
This_Player.RandomFlyTo('b345');
end;

procedure _move02;
begin
This_Player.RandomFlyTo('b342');
end;

procedure _move03;
begin
This_Player.RandomFlyTo('b344');
end;

procedure _move04;
begin
This_Player.RandomFlyTo('b343');
end;

procedure _supman;
begin
   This_NPC.NpcDialog(This_Player,
   '�����������˵�е����������������Դ֮�ų���\'
   +'����һ���ܹ������ͷ���ش���������ǰ����ȿ���һ�¡�\\'
   +'|{cmd}<����/@main> '
   );

end;



begin
    domain; 
end.