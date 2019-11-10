{********************************************************************

*******************************************************************}
program mir2;

{$I common.pas}
{$I WarehouseAndMbind.pas}
{$I ActiveValidateCom.pas}
{$I goToMonMap.pas}

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
    '��������귨��½������ĳ���\'
    +'���кܶ���Ȥ�����飬���벻������\'
    +'|{cmd}<����ׯ԰/@baodian>        ^<����PK/@pk>\'
    +'|{cmd}<����ѯ��/@xy>              ^<����ħ����Ϣ/@dongcha>\\'
    +'|{cmd}<��˲���ƶ�/@talkwith>            ^<��ȥ����ɽ��/@moveDS>\'
    +'|{cmd}<ǰ�����ִ�/@goXSMap>            ^<��Ѩ����/@goMonMap>\'
    +ActiveValidateStr
    +'|{cmd}<ȷ��/@exit>\ '
    );
end;

procedure _moveDS; 
begin
This_Player.Flyto('2',500,485);
end;

procedure _goXSMap; 
begin
    This_NPC.NpcDialog(This_Player,
    '����ȥ�߽�廹������ɽ�ȣ�\ \'
    +'|{cmd}<ȥ�߽��/@goXSMap_1>            ^<ȥ����ɽ��/@goXSMap_2>\'
    +'|{cmd}<����/@main>\ '
    );
end;

procedure _goXSMap_1; 
begin
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',290 + random(3) - 1,615 + random(3) - 1);
end;

procedure _goXSMap_2; 
begin
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',650 + random(3) - 1,625 + random(3) - 1);
end;

procedure _goMonMap;
begin
    This_NPC.NpcDialog(This_Player,
    '����ȥ����ҿ�������һ�̡�\ \'
    +'|{cmd}<ǰ�����˹�Ĺ/@goToNewMonMap_1>              ^<ǰ����Ѩ/@goToNewMonMap_2>\'
    +'|{cmd}<ǰ������ɭ��/@goToNewMonMap_3>              ^<ǰ������Ͽ�/@goToNewMonMap_4>\'
    +'|{cmd}<����/@main>\ '
    );
end;

procedure _goToNewMonMap_1; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',140 + random(3) - 1,40 + random(3) - 1); 
end;

procedure _goToNewMonMap_2; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',45 + random(3) - 1,115 + random(3) - 1); 
end;

procedure _goToNewMonMap_3; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('1',90 + random(3) - 1,285 + random(3) - 1); 
end;

procedure _goToNewMonMap_4; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('0',660 + random(3) - 1,220 + random(3) - 1); 
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

procedure _dongcha;
begin
  if AutoClothersMapOpen then
  begin
  This_Npc.NpcDialog(This_Player,
  '�ഫ���귨��½��ĳЩ���䣬��һ����ħ������������װ��\��Ҫ�����Щ����ͱ�������Ҫɱ����Щ��ħ��\������Ϊ�˻����Щ�����ϧ���Լ���������Ϊ���ۣ�\ ��Щ�˳ɹ��ˣ��������ʿ�����˶�ħ�Ľ��£�\ ��λ�����Ƿ�Ҳ��ȥ������Щħ�޵��ټ���\����5���ң��Ҿ��ܰ���ȥ�鿴���ǵ���Ӱ��\����5�Ž��ʯ���Ҿ�������ȥ����ħѨ��\'
  +'|{cmd}<��5���ң�̽��ħ����Ӱ/@paymoney>\'
  +'|{cmd}<��5�Ž��ʯ��ǰ����ħ/@paydia>'
  );
  end;
end;

procedure _paymoney;
begin
  This_Npc.NpcDialog(This_Player,
  '�����ѯ�ĸ�ħ��Ķ�ħ��Ϣ�أ�\'
  +'|{cmd}<�������/@siwang>(��������)'+addSpace('', 10) +'^<����س�/@duoluo>(��������)\ \'
  +'|{cmd}<��Ԩħ��/@shengy>(�������)'+addSpace('', 10) +'^<��������/@diyu>(ʥս����)\ \'
  +'|{cmd}<��ѯ�����Ķ�ħ��Ϣ/@qita>           ^<����/@main>\ \'
  );
end;

procedure _paydia;
begin
  This_Npc.NpcDialog(This_Player,
  '������������ȥһЩħ��Ĵ�ŵص㣬������Ҫ����5�Ž��ʯ��\���ھ���ǰ��ħ���·������Ҫ�����ǻ۵�ͷ���ˡ�\ \'
  +'|{cmd}<ȥ�������/@paydiamondt118>(��������)'+addSpace('', 10) +'^<ȥ����س�/@paydiamondt115>(��������)\'
  +'|{cmd}<ȥ��Ԩħ��/@paydiamondt119>(�������)'+addSpace('', 10) +'^<ȥ��������/@paydiamondt139>(ʥս����)\'
  );
end;

procedure _qita;
begin
  This_Npc.NpcDialog(This_Player,
  '�������ѯ����Ķ�ħ��Ϣ��\��Ȼ���������ޣ�����֪��˭���Ը��������е����ܣ�\ֻҪ�����������֪���Ķ�ħ��Ѩ�Ϳ����ˡ�\'
  +'|{cmd}<�������/@askmen>'+addSpace('', 16) + '|{cmd}<ǯ�泲Ѩ/@askbai>\ \'
  +'|{cmd}<����/@main>'
  );
end;

procedure _askmen;
begin
  This_Npc.NpcDialog(This_Player,
  '���ص���ħ�ؽ�����֪��һЩ�й���ħ�޵����飬\Ҫô��ȥ�������ʿ��ɡ�\<�ر�/@doexit>'
  );
end;

procedure _askbai;
begin
  This_Npc.NpcDialog(This_Player,
  '�����ŵ��򵼺���֪��һЩ�й���ħ�޵����飬\Ҫô��ȥ�������ʿ��ɡ�\<�ر�/@doexit>'
  );
end;  

procedure _siwang;
begin
  if This_Player.GoldNum >= 50000 then
    begin
        if CheckOtherMapMon('T118') >= 1 then                         
        begin
        This_Player.DecGold(50000);
        This_Npc.NpcDialog(This_Player,
        '������ָ���㣬\����ħ�޾��غ���ǰ������ʱ��ȥ��������ʱ��\<��5�Ž��ʯ��ǰ����ħ/@paydiamondt118>'
        );
        end
        else
        begin
        This_Npc.NpcDialog(This_Player,
        '������ָ���㣬\��ϧ��ħ�޻�û�г��֡�'
        );
        end;
    end
    else
    begin
    This_Npc.NpcDialog(This_Player,
    '������û��50000��Ұ�����Ҳ�ﲻ�����ˣ�'
    );
    end;
end;

procedure _paydiamondt118;
begin
  if This_Player.GetBagItemCount('���ʯ') >= 5 then
  begin
     if compareText(This_Player.MapName, '0') = 0 then
     begin
        This_Player.Take('���ʯ',5); 
        This_Player.Flyto('4',205,230);
     end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '����ô��5�Ž��ʯҲû�а���'
    );
  end;
end;

procedure _duoluo;
begin
  if This_Player.GoldNum >= 50000 then
    begin
        if CheckOtherMapMon('T115') >= 1 then
        begin
        This_Player.DecGold(50000);
        This_Npc.NpcDialog(This_Player,
        '������ָ���㣬\����ħ�޾��غ���ǰ������ʱ��ȥ��������ʱ��\<��5�Ž��ʯ��ǰ����ħ/@paydiamondt115>'
        );
        end
        else
        begin
        This_Npc.NpcDialog(This_Player,
        '������ָ���㣬\��ϧ��ħ�޻�û�г��֡�'
        );
        end;
    end
    else
    begin
    This_Npc.NpcDialog(This_Player,
    '������û��50000��Ұ�����Ҳ�ﲻ�����ˣ�'
    );
    end;
end;

procedure _paydiamondt115;
begin
  if This_Player.GetBagItemCount('���ʯ') >= 5 then
  begin
     if compareText(This_Player.MapName, '0') = 0 then
     begin
        This_Player.Take('���ʯ',5);
        This_Player.Flyto('1',306,70);
     end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '����ô��5�Ž��ʯҲû�а���'
    );
  end;
end;

procedure _shengy;
begin
  if This_Player.GoldNum >= 50000 then
    begin
        if CheckOtherMapMon('T119') >= 1 then
        begin
        This_Player.DecGold(50000);
        This_Npc.NpcDialog(This_Player,
        '������ָ���㣬\����ħ�޾��غ���ǰ������ʱ��ȥ��������ʱ��\<��5�Ž��ʯ��ǰ����ħ/@paydiamondt119>'
        );
        end
        else
        begin
        This_Npc.NpcDialog(This_Player,
        '������ָ���㣬\��ϧ��ħ�޻�û�г��֡�'
        );
        end;
    end
    else
    begin
    This_Npc.NpcDialog(This_Player,
    '������û��50000��Ұ�����Ҳ�ﲻ�����ˣ�'
    );
    end;
end;

procedure _paydiamondt119;
begin
  if This_Player.GetBagItemCount('���ʯ') >= 5 then
  begin
     if compareText(This_Player.MapName, '0') = 0 then
     begin
        This_Player.Take('���ʯ',5);
        This_Player.Flyto('1',213,324);
     end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '����ô��5�Ž��ʯҲû�а���'
    );
  end;
end;

procedure _diyu;
begin
  if This_Player.GoldNum >= 50000 then
    begin
        if CheckOtherMapMon('T139') >= 1 then
        begin
        This_Player.DecGold(50000);
        This_Npc.NpcDialog(This_Player,
        '������ָ���㣬\����ħ�޾��غ���ǰ������ʱ��ȥ��������ʱ��\<��5�Ž��ʯ��ǰ����ħ/@paydiamondt139>'
        );
        end
        else
        begin
        This_Npc.NpcDialog(This_Player,
        '������ָ���㣬\��ϧ��ħ�޻�û�г��֡�'
        );
        end;
    end
    else
    begin
    This_Npc.NpcDialog(This_Player,
    '������û��50000��Ұ�����Ҳ�ﲻ�����ˣ�'
    );
    end;
end;

procedure _paydiamondt139;
begin
  if This_Player.GetBagItemCount('���ʯ') >= 5 then
  begin
      if compareText(This_Player.MapName, '0') = 0 then
      begin
        This_Player.Take('���ʯ',5);
        This_Player.Flyto('0',444,465);
      end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '����ô��5�Ž��ʯҲû�а���'
    );
  end;
end;


procedure _xy;
begin
    This_NPC.NpcDialog(This_Player,
    '�������ĳ��о��������ڵı���ǣ�����Ͳ�����˵�˰ɣ�\'
    +'����ɽ�ȵ�С��ܺ��ң���ֻҪ��500 500 �������߾��ܹ�\'
    +'���ˡ������������Ҫ���������ǣ���Ӧ���μ�300 300\'
    +'�������, ����ָ�����ߵ���������ŵغܽ���ɳ�Ϳˣ���\'
    +'һ��Σ�յ������Ҽǵ���ǰ��600 300�ҵ����ġ�������Ҫ��\'
    +'���㣬ÿ��ʡ�ݵ����궼�ǲ�ͬ�ģ��ɱ��ڱ�����ɳ�Ϳ�Ŷ��\'
    +'���ԣ�Ҫ��סÿ��ͨ������ʡ�Ĺؿڡ�\'
    +'���⣬������ɭ�ֵ�45 30�Ϳ��Ե���ոձ����ֵĵİ�����\'
    +'|{cmd}<����/@main>'

    );

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


procedure _talkwith;
begin
    This_NPC.NpcDialog(This_Player,
    '��Ҫ����ʲô�貨΢��,��ʵ���������\'
    +'��,ֻҪ�㸶Ǯ,ʲô���ⲻ�ܽ����?\'
    +'����,С����,����������Σ��,��������һ�̰�!\\'
    +'|{cmd}<�������̵�/@move0>\'
    +'|{cmd}<��������ƶ�/@move1> \'
    +'|{cmd}<����ɽ������ƶ�/@move2> \'
    +'|{cmd}<���ħ���ƶ�/@move3> \'
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
+'|{cmd}<����/@main>'
);

end;

procedure _move01;
begin
This_Player.RandomFlyTo('0106');
end;

procedure _move02;
begin
This_Player.RandomFlyTo('0103');
end;

procedure _move03;
begin
This_Player.RandomFlyTo('0105');
end;

procedure _move1;
begin
    This_NPC.NpcDialog(This_Player,
    '�Ҳ�ϲ��һ�仰˵�ܶ��,û��Ǯ�Ļ�\'
    +'���Լ�Ӧ��֪����ô��.ȥ�������ǰ�?\'
    +'2000����,һ��Ҳ������.\\'
    
    +'|{cmd}<�ƶ�/@pay1> \ '
    +'|{cmd}<��/@talkwith> '
    );
  
end;


procedure _pay1;
begin
    IF This_Player.GoldNum >= 2000 then
    begin
        This_Player.DecGold(2000);
        This_Player.Flyto('11',136,368);
    end else
    This_NPC.NpcDialog(This_Player,
    '�㿪��Ц����ûǮ�����ƶ���\'
    +'����Ҳ��������㡣\ '
    
    +'|{cmd}<����/@main>'
    );

end;

procedure _move2;
begin
This_NPC.NpcDialog(This_Player,
'�ƶ�������ɽ�ȵ�ȻҲ��Ҫ��Ǯ��\'
+'�ܲ�����Ѱ����ƶ����Ƕ��ɣ�\'
+'ȥ����ɽ����Ҫ1000��ҡ�\ '
+'֧����ЩǮ���ƶ���\ \'

+'|{cmd}<�ƶ�/@pay2> \'
+'|{cmd}<��/@talkwith>'



);

end;

procedure _pay2;
begin
    IF This_Player.GoldNum >= 1000 then
    begin
        This_Player.DecGold(1000);
        This_Player.Flyto('0',667,90);
    end else
    This_NPC.NpcDialog(This_Player,
    '���ڿ���Ц��ûǮ�����ƶ���\'
    +'����Ҳ��������㡣\ '
    
    +'|{cmd}<����/@main>'
    );

end;

procedure _move3;
begin
    This_NPC.NpcDialog(This_Player,
    '�Ҳ�ϲ��һ�仰˵�ܶ��,û��Ǯ�Ļ�\'
    +'���Լ�Ӧ��֪����ô��.ȥ��ħ���ǰ�?\'
    +'2000����,һ��Ҳ������.\ \'
    +'|{cmd}<�ƶ�/@pay3> \ '
    +'|{cmd}<��/@talkwith> '
);
  
end;


procedure _pay3;
begin
    IF This_Player.GoldNum >= 2000 then
    begin
        This_Player.DecGold(2000);
        This_Player.Flyto('4',240,200);
    end else
    This_NPC.NpcDialog(This_Player,
    '�㿪��Ц����ûǮ�����ƶ���\'
    +'����Ҳ��������㡣\ '
    +'|{cmd}<����/@main>'
    );

end;

begin
 domain;
end.