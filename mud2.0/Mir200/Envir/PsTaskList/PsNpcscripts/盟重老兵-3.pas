{********************************************************************

*******************************************************************}
program mir2;

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
   'ɳ�Ϳ˾������أ�����ȥһ��ɳ�Ϳ˳����ķ����\ \'
   +'|{cmd}<����ׯ԰/@baodian>      ^<����PK/@pk>\'
   +'|{cmd}<��ȥ�̵�/@move0>          ^<��ȥ����ɽ��/@moveDS>\'
   +'|{cmd}<��ȥ���µ�/@move4>          ^<��Ѩ����/@goMonMap>\' 
   +'|{cmd}<�˳�/@exit>'
   +ActiveValidateStr
   );

end;

procedure _moveDS; 
begin
This_Player.Flyto('2',500,485);
end;

procedure _goMonMap;
begin
    This_NPC.NpcDialog(This_Player,
    '����ȥ����ҿ�������һ�̡�\ \'
    +'|{cmd}<ǰ�����궴Ѩ/@goToMonMap_1>              ^<ǰ����򼶴Ѩ/@goToMonMap_2>\'
    +'|{cmd}<ǰ��ʯĹ��Ѩ/@goToMonMap_3>              ^<ǰ�����߿���/@goToMonMap_4>\'
    +'|{cmd}<����/@main>\ '
    );
end;

procedure _goToMonMap_1; 
begin 
    if This_Player.MapName = '3' then 
    This_Player.Flyto('3',855 + random(3) - 1,185 + random(3) - 1); 
end;

procedure _goToMonMap_2; 
begin 
    if This_Player.MapName = '3' then 
    This_Player.Flyto('3',143 + random(3) - 1,98 + random(3) - 1); 
end;

procedure _goToMonMap_3; 
begin 
    if This_Player.MapName = '3' then 
    This_Player.Flyto('3',295 + random(3) - 1,340 + random(3) - 1); 
end;

procedure _goToMonMap_4; 
begin 
    if This_Player.MapName = '3' then 
    This_Player.Flyto('2',555 + random(3) - 1,175 + random(3) - 1); 
end;

procedure _move6;
begin
   if compareText(This_Player.MapName,'3') = 0 then
      This_Player.Flyto('6',121,154);
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
    if compareText(This_Player.MapName, '3') = 0 then
    begin
        if temp = 1 then
        begin
        This_Player.Flyto('GA0',59,46);
        end
        else if temp = 2 then
        begin
        This_Player.Flyto('GA0',57,61);
        end
        else if temp = 3 then
        begin
        This_Player.Flyto('GA0',71,72);
        end
        else if temp = 4 then
        begin
        This_Player.Flyto('GA0',59,75);
        end
        else
        begin
        This_Player.Flyto('GA0',67,83);
        end;
    end;  
  end
  else
    This_Npc.NpcDialog(This_Player,
    '��������������һ���������ȥ���\�����ﵽ8����ʱ���������Ұɣ�\'
    );  
end;
procedure _move4; 
begin
This_Player.Flyto('5',140,330);
end;


procedure _pk; 
begin
   This_NPC.NpcDialog(This_Player,
   '�������PK���ˣ���Ҫ�Լ�����Ŷ����Ȼ˵PK����\'
   +'���ܵ����ŵĴ����������������������Ժ���еġ�\'
   +'��Ȱ��Ҳ�ҪPK�����ŵ��߽��Ժ�����ӿɲ��ù���\'
   +'����ÿһ�������Ŵ���¿����꣬û��װ����û��\'
   +'�����Ķȹ����ӵ��˶���ͬ������仰��\'
   +'������˸��ߴ�ң�ɳ�Ϳ������ŵ��������һ��\'
   +'���ŷ���û������ǧ��С�ĲƲ�¶��Ŷ��\\'
   +'|{cmd}<����/@main>'
   );

end;

procedure _speed; 
begin
   This_NPC.NpcDialog(This_Player,
   '�����ٶ���,��ʵ�кܶ�ԭ������㲻���Ϻ�����ô���п�\'
   +'�ܵľ�����Ϊ����������粻��ͨ�������ԣ���ǧ��Ҫ�ǵ�\'
   +'��www.mir2.com.cn���棬�����ſ�����ʢ������\'
   +'�������������װ������ѽ��\'
   +'�������һ�䣬�����վ�б��Ҹ���ϸ�İ������Կ���\\\ '
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
   +'|{cmd}<���/@move04>\'
   +'|{cmd}<�ֿ�/@move05>\'
   +'|{cmd}<����/@main>'
   
   );

end;

procedure _move01; 
begin
This_Player.RandomFlyTo('0149');
end;

procedure _move02; 
begin
This_Player.RandomFlyTo('0159');
end;

procedure _move03; 
begin
This_Player.RandomFlyTo('0158');
end;

procedure _move04; 
begin
This_Player.RandomFlyTo('0161');
end;

procedure _move05; 
begin
This_Player.RandomFlyTo('0145');
end;



begin
    domain; 
end.