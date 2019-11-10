program NewSkyNpc;

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

{*****************************GS�ű� Begin*************************************}
procedure _RgivUp;
begin
  This_Player.Flyto('0122~1', 0, 0);
end;

procedure _JinRuTong;   // ��ͨ��
begin
//  This_Player.Flyto('D5071~0', 11, 13);
  This_Npc.EnterRouteWayByLF(This_Player, True);
end;


procedure _JinRuNext;   // ��һ��
begin
  This_Npc.EnterNext(This_Player, False);
end;

procedure _jinrunext2;   // ���ع�
begin
  This_Npc.EnterMyStery(This_Player);
end;
{*****************************GS�ű� End  *************************************}

procedure _EnAch;
begin
  This_Npc.NpcDialog(This_Player,
    '            ��ѡ����ù����ֵ�λ��\\' +
    '��<��1��/@EngageAch1>                                 ^<��10��/@EngageAch10>��\' +
    '��                                            ��\' +
    '��<��2��/@EngageAch2>                                 ^<��09��/@EngageAch9>��\' +
    '��                                            ��\' +
    '��<��3��/@EngageAch3> ^<��4��/@EngageAch4> ^<��5��/@EngageAch5> ^<��6��/@EngageAch6> ^<��7��/@EngageAch7> ^<��08��/@EngageAch8>��\' +
    '������������������������������������������������\');
end;

procedure _MovAch;
begin
  This_Npc.NpcDialog(This_Player,
    '        	  ��ѡ��Ҫ�ƶ��Ĺ�����\\' +
    '��<��1��/@GetMoving1>                                 ^<��10��/@GetMoving10>��\' +
    '��                                            ��\' +
    '��<��2��/@GetMoving2>                                 <��09��/@GetMoving9>��\' +
    '��                                            ��\' +
    '��<��3��/@GetMoving3> ^<��4��/@GetMoving4> ^<��5��/@GetMoving5> ^<��6��/@GetMoving6> ^<��7��/@GetMoving7> ^<��8��/@GetMoving8>��\' +
    '������������������������������������������������\');
end;


procedure _GetMoving1;
begin
  if This_Npc.GetMoveChance(This_Player, 1) then
    _EnAch;
end;

procedure _GetMoving2;
begin
  if This_Npc.GetMoveChance(This_Player, 2) then
    _EnAch;
end;

procedure _GetMoving3;
begin
  if This_Npc.GetMoveChance(This_Player, 3) then
    _EnAch;
end;

procedure _GetMoving4;
begin
  if This_Npc.GetMoveChance(This_Player, 4) then
    _EnAch;
end;

procedure _GetMoving5;
begin
  if This_Npc.GetMoveChance(This_Player, 5) then
    _EnAch;
end;

procedure _GetMoving6;
begin
  if This_Npc.GetMoveChance(This_Player, 6) then
    _EnAch;
end;

procedure _GetMoving7;
begin
  if This_Npc.GetMoveChance(This_Player, 7) then
    _EnAch;
end;

procedure _GetMoving8;
begin
  if This_Npc.GetMoveChance(This_Player, 8) then
    _EnAch;
end;

procedure _GetMoving9;
begin
  if This_Npc.GetMoveChance(This_Player, 9) then
    _EnAch;
end;

procedure _GetMoving10;
begin
  if This_Npc.GetMoveChance(This_Player, 10) then
    _EnAch;
end;


procedure _rule;
begin
  This_Npc.NpcDialog(This_Player,
    '��ǲ��Ĺ����֣���������Ĺ����ù�����ߵı���\' +
    '����Ĺ���Խ�٣����ܻ�õ���Ʒ�����ӷḻ\' +
    '������1��������л�����<�����>\' +
    '����47-49������ɻ������ͣ�����41-46������ɻ��ͭ���\' +
    '���صĹ�������41���������Ի��ľ���\' +
    'ÿ�ΰڷŹ����֣�����Ҫ����1�����\' +
     '|{cmd}<����/@main>\'
   // '|{cmd}<ʲô�����ƣ�/@rule4>\' +
   // '|{cmd}<��ΰڷŹ�����/@rule1>    ^<����ƶ�������/@rule2>\' +
   // '|{cmd}<�����ȡ��ر���/@rule3>'
   );
end;

procedure _rule1;
begin
  This_Npc.NpcDialog(This_Player,
    '������ʼ����һ�ΰڷŹ�����ʱ\' +
    '�����Ե��<��ѡ��ڷŹ�����λ�á�>ѡ��ڷŵ�һ�������ֵ�λ��\' +
    '��һ��������λ��һ��������ϣ����������ʼ���룡\' +
    '���Ĺ�����ɱ���������ɱ������Ĺ������Ե���<�����ơ�/@rule4>\' +
    '����ӵ��5������ʱ����ѡ��<��ʹ��5�����ƻ�ȡ�����֡�>\' +
    'ͬʱ��<�����븶��1�������>��������ٴ�ѡ��ڷ�1�������ֵĻ���\' +
    '������ٽ������ƺ�û�����̰ڷŹ�����\' +
    '�����ٴ�ѡ��<��ѡ��ڷŹ�����λ�á�>���аڷ�\' +
    '|{cmd}<��һҳ/@next>');
end;

procedure _next;
begin
  This_Npc.NpcDialog(This_Player,
    'ÿ�����ս����ֻ�ܰڷ�6��������\' +
    '|{cmd}<�˳�/@exit>        ');
end;

procedure _rule2;
begin
  This_Npc.NpcDialog(This_Player,
    '�����İ��������1�����ƣ�����ӵ��1�����Ϲ�����ʱ\' +
    '������ѡ��<��ʹ��1�������ƶ������֡�>\' +
    '��ѡ��Ҫ�ƶ��Ĺ����ֺ���ѡ��Ҫ���õ�λ�ã������ƶ�\' +
    '������Ѿ�ѡ�����ƶ������֣����Ƿ��õ�λ�ô���\' +
    '�����ٴ�ѡ��<��ѡ��ڷŹ�����λ�á�>�ڷŹ�����\' +
    '�ƶ�������<������Ҫ���������>\' +
    '|{cmd}<�˳�/@exit>');
end;

procedure _rule3;
begin
  This_Npc.NpcDialog(This_Player,
    '�����ѻ�����������ﵽһ��ʱ\' +
    '�����ѡ��<"��ȡ��ر���">��ȡ��ս��Ʒ\' +
    '������Ѿ���ȡ�˱���,����ȡ���پѻ��Ĺ��ﲻ�ټ���ɼ�\' +
    '������ܱ���������ȫ�ѳɼ�,�������عؿ��ȴ����㣡\' +
    '|{cmd}<�˳�/@exit>');
end;

procedure _rule4;
begin
  This_Npc.NpcDialog(This_Player,
    '����Ϊ�ٻ����ƶ������ֵ�ƾ֤\' +
    '�����ʹ��5�����ƺ�1�������ȡ1��������Ϊ����ս\' +
    '����ʹ��1������Ϊ���1����������λ\' +
    'ɱ������Ĺ����л���������\' +
    '����ֻ����ħ������ʹ�ã�һ������ħ���룬����ʧȥħ��\' +
    '�ٽ���ħ����ʱ�ᱻ����֮��������\' +
    '|{cmd}<�˳�/@exit>');
end;

procedure _GNewPrize;
begin
  This_Npc.ClientGetPrize(This_Player);

end;

procedure _lingqu;
begin
  This_Npc.NpcDialog(This_Player,
    '����Ҫ���������ս�����Ϳ��Ե���������ȡ��Ʒ��\' +
    '������ȡ����Ʒ�������Ѿ�����Ĺ���������������\' +
    'ľ��ͭ��������������˫����Ϳ��Դ򿪣�\' +
    '���е���Ʒ���Զ��ŵ����İ����\' +
    '�������ע�⣬��ȡʱҪ<ȷ���������㹻�Ŀռ�>Ŷ��\' +
    '���򽫻��޷��쵽��ͻ�����е���Ʒ��\' +
    '��ȷ�������ھ�Ҫ����ȡ��\' +
    '|{cmd}<��ȷ�ϣ������ھ�Ҫ��ȡ/@GNewPrize>\' +
    '|{cmd}<���ҽ��������ս��������ȡ��/@exit>');
end;

procedure main1;
begin
  This_Npc.NpcDialog(This_Player,
    '����������е����عأ�\' +
    'ֻҪ���ص����Ĺ���������47�����ϣ�\' +
    '�ǳ��˿��Ի��ԭ�еı����⣬�����Ի��������ͣ�\' +
    '���δ������47�����ϣ���Ȼ���Ի��ԭ�е���ر��\' +
    '��<ѡ��ڷŹ�����λ��/@EnAch>�ڷŵ�һ�������֣�\' +
    '����ƶ������ֵ�λ�ô���Ҳ�������������·���\' +
    '|{cmd}<ʹ��5�����ƻ�ȡ������/@GetEngage>    |<ʹ��1�������ƶ�������/@MovAch>\  \' +
    '|{cmd}<��ȡ��ر���/@lingqu>                        ^<�鿴����/@rule>\');

end;

procedure _EngageAch1;
begin
  This_Npc.EngageArcher(This_Player, 1);
end;

procedure _EngageAch2;
begin
  This_Npc.EngageArcher(This_Player, 2);
end;

procedure _EngageAch3;
begin
  This_Npc.EngageArcher(This_Player, 3);
end;

procedure _EngageAch4;
begin
  This_Npc.EngageArcher(This_Player, 4);
end;

procedure _EngageAch5;
begin
  This_Npc.EngageArcher(This_Player, 5);
end;

procedure _EngageAch6;
begin
  This_Npc.EngageArcher(This_Player, 6);
end;

procedure _EngageAch7;
begin
  This_Npc.EngageArcher(This_Player, 7);
end;

procedure _EngageAch8;
begin
  This_Npc.EngageArcher(This_Player, 8);
end;

procedure _EngageAch9;
begin
  This_Npc.EngageArcher(This_Player, 9);
end;

procedure _EngageAch10;
begin
  This_Npc.EngageArcher(This_Player, 10);
end;

procedure _GetEngage;
begin
  if This_Npc.GetEngageChance(This_Player) then
    _EnAch;
end;

function getEngageStr() : string;
var R_str : string;
i: integer;
begin
    R_str := '';
    
    for i:= 1 to 10 do
    begin
        if This_NPC.IsExistArcher(This_Player,i) then  //This_NPC.IsExistArcher(This_Player,i) λ���Ƿ��й����� 
        R_str := R_str + '' + inttostr(i) + ' '  
        else
        R_str := R_str + '<' + inttostr(i) + '��λ/@GetEngage_10_SD~' + inttostr(i) + '>' ;
        
        if (i mod 5) = 0 then
        R_str := R_str + '|'
        else
        R_str := R_str + '^';
    end; 
    
    result := '|{cmd}' + R_str;
end; 

procedure _GetEngage_10();
var i : integer;
begin
    This_Npc.NpcDialog(This_Player,
    '��ѡ���ٻ������ֵ�λ��\ \' 
    + getEngageStr
    );
    

end; 


procedure _GetEngage_10_SD(str_i : string);
var i : integer;
begin
    i := StrToIntDef(str_i , 0);
    
    if i > 0  then
    begin
        if This_Npc.GetEngageChance(This_Player) then
        This_Npc.EngageArcher(This_Player, i)    
        else
        This_Npc.EngageArcher(This_Player, i);
    
        _GetEngage_10();
    end;
end; 

procedure _chklinfu;
begin
  This_Npc.NpcDialog(This_Player,
  '�㵱ǰ����������ǣ�' + inttostr(This_Player.MyLFnum)
  ); 
end;

procedure OnInitialize;
begin
  This_Npc.AddNpcProp(12);

end;       

begin
  This_Npc.NpcDialog(This_Player,
    '�Ͽ��ٻ��������֣�������ر���Ĺ����Ҫ�����ˣ�\' +
    '��������Ĺ����ر����ı��\' +
    'ÿ�ΰڷŹ����֣�����Ҫ����һ�����Ŷ\' +
    //'|{cmd}<ʹ��5�����ƻ�ȡ������/@GetEngage>    |<ʹ��1�������ƶ�������/@MovAch>\  \' +
    '|{cmd}<�ڷŹ�����/@GetEngage_10>' +
    '|{cmd}<��ȡ��ر���/@lingqu>                        ^<�鿴����/@rule>\'
    +'|<��ѯ���/@chklinfu>'
    );

end.