{********************************************************************

*******************************************************************}
Program Mir2;

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
   '��Ȼ����֤ʵ�Ӻ�·���ܻؼң���������������������ҵĺ�����\'
   +'ֻҪ������������ս������һ�����ˡ�ѩɽ�������谭���ǻؼң�\'
   +'����ȥʲô�ط����ܴ����أ��ҿ�������һ�̣�\'
   +'|{cmd}<����ׯ԰/@baodian>\'
   +'|{cmd}<������/@move3>\'
   +'|{cmd}<�������µ��Ĵ�˵/@superamo>\'
   +'|{cmd}<������編ʦ/@superman>          ^<��Ѩ����/@goMonMap>\'
   +ActiveValidateStr
   +'|{cmd}<�뿪/@exit>\'
   );

end;

procedure _goMonMap;
begin
    This_NPC.NpcDialog(This_Player,
    '����ȥ����ҿ�������һ�̡�\ \'
    +'|{cmd}<ǰ��ʬħ��Ѩ/@goToMonMap_1>              ^<ǰ����ħ��Ѩ/@goToMonMap_2>\'
    +'|{cmd}<ǰ��ţħ��Ѩ/@goToMonMap_3>\'
    +'|{cmd}<����/@main>\ '
    );
end;

procedure _goToMonMap_1; 
begin 
    if This_Player.MapName = '5' then 
    This_Player.Flyto('5',520 + random(3) - 1,617 + random(3) - 1); 
end;

procedure _goToMonMap_2; 
begin 
    if This_Player.MapName = '5' then 
    This_Player.Flyto('5',543 + random(3) - 1,133 + random(3) - 1); 
end;

procedure _goToMonMap_3; 
begin 
    if This_Player.MapName = '5' then 
    This_Player.Flyto('5',660 + random(3) - 1,465 + random(3) - 1); 
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


Procedure _move3;
Begin
   if compareText(This_Player.MapName, '5') = 0 then
   begin
      This_Player.Flyto('3',330,330);
   end;
end;


procedure _superamo;
begin
   This_NPC.NpcDialog(This_Player,
   '�����㣬��ʵ���µ���ֻ����ô�򵥵ĵ���Ŷ��\'
   +'������һ��ӵ������������ʥ�أ�������������ֵ�\'
   +'�������й�һ����˵��˵�ǰ�����Ϊ����ֹħ����\'
   +'��������6��ս�۸�ս���ŵ���ʿ����Ҫ������Щ��\'
   +'ս�۳���Ҫ��ǿ�����������Ҫ�߱�һ���޾���յ���\'
   +'ȥѰ����Щս�۰ɣ������Դ�����ҫ��������\'
   +'��˵�����̤�����������ŵ�ʿս�۵���Ϣ��ȥ��������\\'
   +'|{cmd}<����/@main>'
   );

end;

procedure _superman;
begin
   This_NPC.NpcDialog(This_Player,
   '��編ʦ��Ŷ����˵��������������ڲ��µ���\'
   +'���߳���Ŷ������С����ϲ�������ˣ�ȥ��������\'
   +'׼û��ġ�\\'
   +'|{cmd}<����/@main>'
   );

end;


begin
    domain; 
end.