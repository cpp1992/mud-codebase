program mir2;

// �����ֿ� д��Compiler.inc��
{.$DEFINE NEWBIE_CARD}


procedure _mount;
begin
  This_Npc.NpcDialog(This_Player,
    '������ӵ��ʥ�������' + IntToStr(This_Player.NickLinFu) + '\ \' +
    '|{cmd}<����/@chaxun>'
  )  
end;

procedure _dating;
begin
  This_Npc.NpcDialog( This_Player,
    '��˵���֮�г��˴��������֪�������챦֮�⣬\' +
    '��ʵ��������ʥ�����Ҳ�����ű��ء�\' +
    'ֻ��ʹ��ʥ������ſ��Խ�������е�ʥ�\' +
    'Ѱ���������صı��ء�\ \' +
    '|{cmd}<����/@chaxun>'
  );
end;

procedure _chaxun;
begin
  This_Npc.NpcDialog( This_Player,
    '|{cmd}<��ѯʥ���������/@mount>\ \'  +
    '|{cmd}<����ʥ���/@dating>\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _shengdian;
begin
  if This_Player.NickLinFu > 0 then
  begin
    if compareText(This_Player.MapName, '0122~1') = 0 then
    begin
       This_Player.RandomFlyTo('D515~304');
    end;
  end
  else
    This_Npc.NpcDialog(This_Player,
      '���ʥ������������أ�'
    );
end;

procedure _jinrutong;
begin
  This_Npc.EnterRouteWayByLF(This_Player, True);
  
  if This_Player.GetV(111,7) = 1 then
  begin
     if This_Player.SetV(111,7,10) then
     begin
        This_Player.Give('����',10000);
        //#This_Player.DeleteTaskFromUIList(1007);
        This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·�����Ѱ����', 2); 
     end;
  end;
  
  if This_Player.GetV(111,8) = 1 then
  begin
     if This_Player.SetV(111,8,10) then
     begin
        This_Player.Give('����',10000);
        //#This_Player.DeleteTaskFromUIList(1008);
        This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·��ħ����ܵС�', 2); 
     end;  
  end; 
end;

procedure _gomo;
begin
//  This_Player.Tell('[Test]: ok', 2);
  This_Npc.NpcDialog(This_Player,
    '֪�������ң���Ϣ��ͦ��ͨ���\' +
    '����һ��������Ҿ�����ȥ���ͨ����\ \' +
    '|{cmd}<ʹ��һ������������ͨ��/@jinrutong>\ \' +
    '|{cmd}<����/@main>                       ^<�ر�/@exit>');

end;

procedure _newbiejinrutong;
begin
  {$IFDEF Q136_hero}
  exit;
  {$ELSE}
  //This_Npc.NewBieEnterRouteWayByLF(This_Player);
  {$ENDIF}
end;

procedure _xijie1;
begin
  This_Npc.NpcDialog( This_Player,
    '|{cmd}<�˽ⴳ��ص�ϸ��/@xijie>\ \' +
    '|{cmd}<�鿴ħ����ϸ��/@rule>\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _xijie;
begin
  This_Npc.NpcDialog( This_Player,
    '|{cmd}<Ϊʲô��ʾ�ҡ����ͨ���Ѿ���Ա�����Ժ����ԡ�/@why>\' +
    '|{cmd}<������л�õĽ��ʯ�����ʾ/@xianshi>\' +
    '|{cmd}<���ͨ���Ƿ�������/@shifou>\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _why;
begin
  This_Npc.NpcDialog( This_Player,
    '�����Ҷ��Լ���ʵ�������ģ�����[ѡ���������]\' +
    '��û������ı����½������ͨ��\' +
    '��ұ���ֻ�����������ͨ��������й�����ܽ�����ضᱦ\' +
    '������ͨ��һ����10��\' +
    '�����Ա�ͻ���ʾ�������ͨ���Ѿ���Ա�����Ժ����ԡ�\ \' +
    '|{cmd}<������һҳ/@xijie>'
  );
end;

procedure _xianshi;
begin
  This_Npc.NpcDialog( This_Player,
    '�����������л���˽��ʯ����ô��ͬһ��������޷���ʾ��\' +
    '�����������һ��أ��򷵻���ͥ���Ϳ��Կ������ӵĽ��ʯ��\ \' +
    '|{cmd}<������һҳ/@xijie>'
  );
end;

procedure _shifou;
begin
  This_Npc.NpcDialog( This_Player,
    '���ͨ����������أ�ֻ����ͥͨ����ص�ͨ��\' +
    '���ͨ����û�б��أ������ı�����������������\ \' +
    '|{cmd}<������һҳ/@xijie>'
  );
end;

procedure _rule;
begin
  This_Npc.NpcDialog( This_Player,
    '��ǲ��Ĺ����֣���������Ĺ����ù�����ߵı���\' +
    '����Ĺ���Խ�٣����ܻ�õ���Ʒ�����ӷḻ\' +
    '������1��������л�����<�����>\' +
    '����47-49������ɻ������ͣ�����41-46������ɻ��ͭ���\' +
    '���صĹ�������41���������Ի��ľ���\' +
    'ÿ�ΰڷŹ����֣�����Ҫ����1�����\' +
    '|{cmd}<ʲô�����ƣ�/@rule4>\' +
    '|{cmd}<��ΰڷŹ�����/@rule1>\' +
    '|{cmd}<����ƶ�������/@rule2>\'
  );
end;

procedure _rule1;
begin
  This_Npc.NpcDialog( This_Player,
    '������ʼ����һ�ΰڷŹ�����ʱ\' +
    '�����Ե��<��ѡ��ڷŹ�����λ�á�>ѡ��ڷŵ�һ�������ֵ�λ��\' +
    '��һ��������λ��һ��������ϣ����������ʼ���룡\' +
    '���Ĺ�����ɱ���������ɱ������Ĺ������Ե���<�����ơ�/@rule4>\' +
    '����ӵ��5������ʱ����ѡ��<��ʹ��5�����ƻ�ȡ�����֡�>\' +
    'ͬʱ��<�����븶��1�������>��������ٴ�ѡ��ڷ�1�������ֵĻ���\' +
    '������ٽ������ƺ�û�����̰ڷŹ�����\' +
    '�����ٴ�ѡ��<��ѡ��ڷŹ�����λ�á�>���аڷ�\' +
    '|{cmd}<��һҳ/@next>'
  );
end;

procedure _next;
begin
  This_Npc.NpcDialog( This_Player,
    'ÿ�����ս����ֻ�ܰڷ�6��������\ \' +
    '|{cmd}<�˳�/@exit>'
  );
end;

procedure _rule2;
begin
  This_Npc.NpcDialog( This_Player,
    '�����İ��������1�����ƣ�����ӵ��1�����Ϲ�����ʱ\' +
    '������ѡ��<��ʹ��1�������ƶ������֡�>\' +
    '��ѡ��Ҫ�ƶ��Ĺ����ֺ���ѡ��Ҫ���õ�λ�ã������ƶ�\' +
    '������Ѿ�ѡ�����ƶ������֣����Ƿ��õ�λ�ô���\' +
    '�����ٴ�ѡ��<��ѡ��ڷŹ�����λ�á�>�ڷŹ�����\' +
    '�ƶ�������<������Ҫ���������>\ \' +
    '|{cmd}<�˳�/@exit>'
  );
end;

procedure _rule4;
begin
  This_Npc.NpcDialog( This_Player,
    '����Ϊ�ٻ����ƶ������ֵ�ƾ֤\' +
    '�����ʹ��5�����ƺ�1�������ȡ1��������Ϊ����ս\' +
    '����ʹ��1������Ϊ���1����������λ\' +
    'ɱ������Ĺ����л���������\' +
    '����ֻ����ħ������ʹ�ã�һ������ħ���룬����ʧȥħ��\' +
    '�ٽ���ħ����ʱ�ᱻ����֮��������\ \' +
    '|{cmd}<�˳�/@exit>'
  );
end;

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _gozhuang;
var
  rValue, x, y : Integer;
begin
 if compareText(This_Player.MapName, '0122~1') = 0 then
 begin  
  rValue := random(5);
  case rValue of 
  0 :
    This_Player.FlyTo('Ga0', 70, 71);
  1 :
    This_Player.FlyTo('Ga0', 73, 64);
  2 :
    This_Player.FlyTo('Ga0', 73, 69);
  3 :
    This_Player.FlyTo('Ga0', 62, 72);
  4 :
    This_Player.FlyTo('Ga0', 61, 64);
  end;
 end;
end;

Procedure _buylingfu;
var
  num : integer;
begin
  num := This_Player.GetV(14,3);
  if num < 0 then
  begin
    num := 0;
    This_Player.SetV(14,3,0);
    This_Npc.NpcDialog(This_Player,
    'ͨ���ң����Խ�������Ϸʱ��һ��������\'
    +'�һ���׼���¿��û�1����Ϸʱ��һ�1�������\'
    +'�뿨�û�4Сʱ��Ϸʱ��һ�1�����.�ȿ��쿨������뿨\'
    +'�����쿨ͬʱ���ڲ��ҹ������������쿨��ȣ�����Ҫ�����ι���\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\ ' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'�㻹û�жһ������\'
    +'|{cmd}<��һ��/@sjaddone> ^<������/@sjaddfive> ^<��ʮ��/@sjaddten>      ^<��һ��/@sjdecone> ^<������/@sjdecfive> ^<��ʮ��/@sjdecten>\'
    +'|{cmd}<ȷ���һ�/@sjbuylf>                  ^<����/@main>'
    );
  end
  else if num = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    'ͨ���ң����Խ�������Ϸʱ��һ��������\'
    +'�һ���׼���¿��û�1����Ϸʱ��һ�1�������\'
    +'�뿨�û�4Сʱ��Ϸʱ��һ�1�����.�ȿ��쿨������뿨\'
    +'�����쿨ͬʱ���ڲ��ҹ������������쿨��ȣ�����Ҫ�����ι���\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\ ' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'�㻹û�жһ������\'
    +'|{cmd}<��һ��/@sjaddone> ^<������/@sjaddfive> ^<��ʮ��/@sjaddten>      ^<��һ��/@sjdecone> ^<������/@sjdecfive> ^<��ʮ��/@sjdecten>\'
    +'|{cmd}<ȷ���һ�/@sjbuylf>                  ^<����/@main>'
    );
  end
  else if num < 1000 then
  begin
    This_Npc.NpcDialog(This_Player,
    'ͨ���ң����Խ�������Ϸʱ��һ��������\'
    +'�һ���׼���¿��û�1����Ϸʱ��һ�1�������\'
    +'�뿨�û�4Сʱ��Ϸʱ��һ�1�����.�ȿ��쿨������뿨\'
    +'�����쿨ͬʱ���ڲ��ҹ������������쿨��ȣ�����Ҫ�����ι���\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\ ' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'�����һ�' + inttostr(num) + '�����\'
    +'|{cmd}<��һ��/@sjaddone> ^<������/@sjaddfive> ^<��ʮ��/@sjaddten>      ^<��һ��/@sjdecone> ^<������/@sjdecfive> ^<��ʮ��/@sjdecten>\'
    +'|{cmd}<ȷ���һ�/@sjbuylf>                  ^<����/@main>'
    );
  end
  else
  begin
    num := 1000;
    This_Player.SetV(14,3,num);
    This_Npc.NpcDialog(This_Player,
    'һ�����ɶһ�1000�������\'
    +'���Ѿ�ѡ��һ�1000��������Ƿ���жһ���\ \'
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@sjdecone> ^<������/@sjdecfive> ^<��ʮ��/@sjdecten>\'
    +'|{cmd}<ȷ���һ�/@sjbuylf>                  ^<����/@main>'
    ); 
  end;
end;

procedure _sjbuylf;
var
  needm, miao, needLF: integer;
begin
  //��Ҫ�һ���������� 
  needm := This_Player.GetV(14,3)*4*3600; 
  miao := This_Player.HaveTimeNum;
  if miao >= needm then
  begin
    needLF := This_Player.GetV(14,3);
    This_Npc.ReqUseTimeBuyLF(This_Player, needLF);
    This_Player.SetV(14,3,0);
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�����뿨��������\ \|{cmd}<����/@main>');
  end;
end;

procedure _chklinfu;
begin
  This_Npc.NpcDialog(This_Player,
  '�㵱ǰ����������ǣ�' + inttostr(This_Player.MyLFnum)
  ); 
end;

Procedure showchklinfu;
var
  num : integer;
begin
  num := This_Player.GetV(14,3);
  if num < 0 then
  begin
    num := 0;
    This_Player.SetV(14,3,0);
    This_Npc.NpcDialog(This_Player,
    'ͨ���ң����Խ�������Ϸʱ��һ��������\'
    +'�һ���׼���¿��û�1����Ϸʱ��һ�1�������\'
    +'�뿨�û�4Сʱ��Ϸʱ��һ�1�����.�ȿ��쿨������뿨\'
    +'�����쿨ͬʱ���ڲ��ҹ������������쿨��ȣ�����Ҫ�����ι���\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\ ' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'�㻹û�жһ������\'
    +'|{cmd}<��һ��/@sjaddone> ^<������/@sjaddfive> ^<��ʮ��/@sjaddten>      ^<��һ��/@sjdecone> ^<������/@sjdecfive> ^<��ʮ��/@sjdecten>\'
    +'|{cmd}<ȷ���һ�/@sjbuylf>                  ^<����/@main>'
    );
  end
  else if num = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    'ͨ���ң����Խ�������Ϸʱ��һ��������\'
    +'�һ���׼���¿��û�1����Ϸʱ��һ�1�������\'
    +'�뿨�û�4Сʱ��Ϸʱ��һ�1�����.�ȿ��쿨������뿨\'
    +'�����쿨ͬʱ���ڲ��ҹ������������쿨��ȣ�����Ҫ�����ι���\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\ ' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'�㻹û�жһ������\'
    +'|{cmd}<��һ��/@sjaddone> ^<������/@sjaddfive> ^<��ʮ��/@sjaddten>      ^<��һ��/@sjdecone> ^<������/@sjdecfive> ^<��ʮ��/@sjdecten>\'
    +'|{cmd}<ȷ���һ�/@sjbuylf>                  ^<����/@main>'
    );
  end
  else if num < 1000 then
  begin
    This_Npc.NpcDialog(This_Player,
    'ͨ���ң����Խ�������Ϸʱ��һ��������\'
    +'�һ���׼���¿��û�1����Ϸʱ��һ�1�������\'
    +'�뿨�û�4Сʱ��Ϸʱ��һ�1�����.�ȿ��쿨������뿨\'
    +'�����쿨ͬʱ���ڲ��ҹ������������쿨��ȣ�����Ҫ�����ι���\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\ ' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'�����һ�' + inttostr(num) + '�����\'
    +'|{cmd}<��һ��/@sjaddone> ^<������/@sjaddfive> ^<��ʮ��/@sjaddten>      ^<��һ��/@sjdecone> ^<������/@sjdecfive> ^<��ʮ��/@sjdecten>\'
    +'|{cmd}<ȷ���һ�/@sjbuylf>                  ^<����/@main>'
    );
  end
  else
  begin
    num := 1000;
    This_Player.SetV(14,3,num);
    This_Npc.NpcDialog(This_Player,
    'һ�����ɶһ�1000�������\'
    +'���Ѿ�ѡ��һ�1000��������Ƿ���жһ���\ \'
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@sjdecone> ^<������/@sjdecfive> ^<��ʮ��/@sjdecten>\'
    +'|{cmd}<ȷ���һ�/@sjbuylf>                  ^<����/@main>'
    ); 
  end;
end;

procedure sjaddlinfu(num : integer);
var
  allnum : integer;
begin
  allnum := This_Player.GetV(14,3) + num;
  if  allnum < 1000 then
  begin
    This_Player.SetV(14,3,allnum);
    showchklinfu;
  end
  else
  begin
    This_Player.SetV(14,3,1000);
    showchklinfu;
  end;
end; 

Procedure _sjaddten;
begin
   sjaddlinfu(10);
end;

Procedure _sjaddfive;
begin
   sjaddlinfu(5);
end;

Procedure _sjaddone;
begin
   sjaddlinfu(1);
end;

procedure sjdeclinfu(num : integer);
var
  allnum : integer;
begin
  allnum := This_Player.GetV(14,3) - num;
  if  allnum > 0 then
  begin
    This_Player.SetV(14,3,allnum);
    showchklinfu;
  end
  else
  begin
    This_Player.SetV(14,3,0);
    showchklinfu;
  end;
end; 

procedure _sjdecten;
begin
  sjdeclinfu(10);
end;

procedure _sjdecfive;
begin
  sjdeclinfu(5);
end;

procedure _sjdecone;
begin
  sjdeclinfu(1);
end;


begin
    This_Npc.NpcDialog(This_Player,
    '�ҽ�����������ͨ������Խͨ�����ɵ�����������е�����һ�أ�\' +
    '��ܸô�����ڵĹ����ɻ�øô�����еı��أ�\' +
    '�������ͨ�����й�����أ�����ǿ������ֱ�Ӵ�Խ��\' +
    'ʹ����������ｫ�޷������㣬�����ֱ�Ӵ�Խͨ��������أ�\' +
    //'|{cmd}<ǰ��ħ��������/@gomo>                ^<����ʥ�����/@shengdian>\' +   ^<ʹ����Ϸʱ��һ����/@buylingfu>
    '|{cmd}<ǰ��ħ����/@gomo>\' +
    
    '|{cmd<����ׯ԰/@gozhuang>\');
end.