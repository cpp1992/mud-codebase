{
******************************************************************}

program Mir2;

{$I common.pas}
{$I PlatinaConfig.pas}  //��Ӱ׽��ʺŽ����������ļ�                                                         

var tempo:integer;        //���������ʹ���Ƿ������ȫ�ֱ���????? 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//��ħ������ 
Procedure _tumolj;
begin
   This_Npc.NpcDialog(This_Player,
   '������Ľ�Ʒ���ǹ���Ϊ��ʿ�����ģ�\'+
   'ֻ������λ��ħ������ħ��ǰʮ������ʿ�������ʸ���ȡ�\'+
   'ֻ������������ȡ��һ�ܵĽ������������ˣ��뼰ʱ����ȡ�\'+
   'ÿ�ν��ӽ����б��������ȡ1����������Ԥ����6�������ռ�ɡ� \'+
   '��ȷ�����㹻�����ռ䣬<��ȡ����/@getMountainPrize>\ \'+
   '|{cmd}<��ѯ��ħ�����Ի�õĽ���/@chaxun>          ^<�˽���ħ������/@liaojietumo>\ \'+
   '|{cmd}<����/@main>');
end;

Procedure _getMountainPrize;
begin
   {$IFDEF Q135_neigong}
   exit;
   {$ELSE}
   case This_Npc.getMountainPrize(This_Player) of
      0  : This_Npc.NpcDialog(This_Player,'�����Ѿ������ˣ���ȥ���һ�°����ɣ�');
      -1 : This_Npc.NpcDialog(This_Player,'���δ��ʼ��������ȡ������');
      -2 : This_Npc.NpcDialog(This_Player,'��Ԥ���İ����ռ�̫���ˣ��޷�װ���Ҹ���Ľ��ͣ�\�������������������������ȡ�ɡ�');
      -3 : This_Npc.NpcDialog(This_Player,'��Ľ�Ʒ�Ѿ���ȡ���ˣ�\������ڴ˻�ý��ͣ����ܾ�Ҫ����Ŭ������\ף����ħ�ɹ���');
      -4 : This_Npc.NpcDialog(This_Player,'�����ˣ���Ҫ����Ŭ������\���ƺ������콱�����ϣ����޷���������Ľ���');
   end;
   {$ENDIF}   
end;


Procedure _chaxun;
begin
   This_Npc.NpcDialog(This_Player,
   '|{cmd}<��1��������ѯ/@first>\'+
   '|{cmd}<��2��������ѯ/@second>\'+
   '|{cmd}<��3��������ѯ/@third>\'+
   '|{cmd}<��4-6��������ѯ/@fourth>\'+
   '|{cmd}<��7-10��������ѯ/@seventh>');
end;
   
Procedure _first;
begin
   This_Npc.NpcDialog(This_Player,
   '��1����<������ �������� ����ѥ>\'+
   '       ^<ս����ꡢʥħϵ�У���ս��������̫��ϵ��>\'+
   '       ^<ǿ��������ǿ����â��ǿ������ϵ��>\'+
   '       ^<���ҡ�ף���⡢�׽����>\'+
   '       ^<��������â������ϵ��>\ \'+
   '|{cmd}<����/@tumolj>');
end;    

Procedure _second;
begin
   This_Npc.NpcDialog(This_Player,
   '��2����<ս����ꡢʥħϵ�У���ս��������̫��ϵ��>\'+
   '       ^<ǿ��������ǿ����â��ǿ������ϵ��>\'+
   '       ^<���ҡ�ף���⡢�׽����>\'+
   '       ^<��������â������ϵ��>\ \'+
   '|{cmd}<����/@tumolj>');
end;

Procedure _third;
begin
   This_Npc.NpcDialog(This_Player,
   '��3����<��ս��������̫��ϵ��>\'+
   '       ^<ǿ��������ǿ����â��ǿ������ϵ��>\'+
   '       ^<���ҡ�ף���⡢�׽����>\'+
   '       ^<��������â������ϵ��>\ \'+
   '|{cmd}<����/@tumolj>');
end;  

Procedure _fourth;
begin
   This_Npc.NpcDialog(This_Player,
   '��4-6����<ǿ��������ǿ����â��ǿ������ϵ��>\'+
   '         ^<���ҡ�ף���⡢�׽����>\'+
   '         ^<��������â������ϵ��>\'+
   '         ^<����ر�ͼ>\ \'+
   '|{cmd}<����/@tumolj>');
end; 

Procedure _seventh;
begin
   This_Npc.NpcDialog(This_Player,
   '��7-10����<���ҡ�ף���⡢�׽����>\'+
   '          ^<��������â������ϵ��>\'+
   '          ^<����ر�ͼ>\ \'+
   '|{cmd}<����/@tumolj>');
end; 


Procedure _liaojietumo;
begin
   This_Npc.NpcDialog(This_Player,
   'ħ����Ĺ����쳣ǿ�����Ҫ��ý��Ϳɲ��Ǽ����׵����顣\'+
   'ֻ�е���ɹ��������й���ʱ�����ɼ���һ��ս����\'+
   '�����ս�����ڵڶ�������7�������ħ���ϲ�ѯ����\'+
   'ÿ�ܣ�����������������ʿȫ�߹���Ĵ�����\'+
   '����ս�����Ժյ�ǰ10����ʿ���Է��Ľ�����\'+
   'ȫ�ߵĴ���Խ�࣬��ս��Խ�Ժգ���õĽ��;�Խ���\'+
   'ս��λ����λ�ߣ����ɻ�����ش󽱣�\'+
   'ȫ�߹�������ļ�¼����Ϊ:ÿ��������7��������������7�㡣\'+
   '|{cmd}<����/@tumolj>');
end;


procedure domain;
begin
  {$IFDEF Q106_tumomatch}
  This_Npc.NpcDialog(This_Player,
  '��˵���׽����ƺͷ�ħ��Ĵ�˵�˰ɣ���֪�����е�һЩ���ܣ�\������а׽�ƾ֤����ʥ���׽�ƾ֤���ҿ��԰������������\��Ҳ֪��ȥ��ȡ�׽����ƺͷ�ħ���;�����ҿ�������ȥ��\ͨ���׽����ƻ�õ���Ʒ���ҿ��԰����������ħ�䣬��ԭ���ǡ�\' 
  +'|{cmd}<��ȡ�׽��ʺ��콱/@baijin>                ^<�˽�׽����ƺͷ�ħ��/@liaojie>\'
  +'|{cmd}<��ȡ����߽���/@lingyi>                ^<�����׽�����/@hecheng>\'
  +'|{cmd}<ʹ�ð׽���ֽ����׽�ƾ֤/@huanli>                                \'
  +'|{cmd}<���ܿ����ȡ��ħ��/@goqifu>\'
  +'|{cmd}<ʹ��ף���⡢��ħ��/@zhufu>              ^<�����ȡ��Ʒ�Ľ���/@jiejin>\'
  );
  {$ELSE}
  This_Npc.NpcDialog(This_Player,
  '��˵���׽����ƺͷ�ħ��Ĵ�˵�˰ɣ���֪�����е�һЩ���ܣ�\������а׽�ƾ֤����ʥ���׽�ƾ֤���ҿ��԰������������\��Ҳ֪��ȥ��ȡ�׽����ƺͷ�ħ���;�����ҿ�������ȥ��\ͨ���׽����ƻ�õ���Ʒ���ҿ��԰����������ħ�䣬��ԭ���ǡ�\' 
  +'|{cmd}<��ȡ�׽��ʺ��콱/@baijin>                ^<�˽�׽����ƺͷ�ħ��/@liaojie>\'
  +'|{cmd}<��ȡ����߽���/@lingyi>                ^<�����׽�����/@hecheng>\'
 // +'|{cmd}<��ȡħ������ħ��������/@tumolj>          \'
  +'|{cmd}<ʹ�ð׽���ֽ����׽�ƾ֤/@huanli>         |{cmd}<���ܿ����ȡ��ħ��/@goqifu>\'
  +'|{cmd}<ʹ��ף���⡢��ħ��/@zhufu>              ^<�����ȡ��Ʒ�Ľ���/@jiejin>\'
  );
  {$ENDIF}
end;

//��ʱ����ʹ��,��ʽ�ų�ʱ����ɾ���˽ӿ� 
procedure _addlevel;
begin
  This_Player.PlatLv := This_Player.PlatLv + 1; 
end; 

/////////////////////////////��ȡ�׽��ʺŽ���/////////////////////////////////// 

procedure _baijin;
begin
  This_Npc.NpcDialog(This_Player,
  '��ٴ͸�����Դ������˻����ٰ���\����͸¶һ����Ϣ�ɣ�<�׽��ʺ�61������Ҳ������ȡ������/c=red>��\ \'
  +'|{cmd}<��ȡ�׽��˺Ž���/@lingqu>\ \'
  +'|{cmd}<�鿴�׽��˺Ž���/@chakan>\ \'
  +'|{cmd}<����/@main>'
  );
end;

procedure _lingqu;
begin
  This_Npc.NpcDialog(This_Player,
  '��ȷ�����㹻�İ����ռ���ý�Ʒ��������������ȡ\�����������ٿ���������ȡ������ռ䲻��û��������ȡ�Ľ�Ʒ\��û������<ף����>����������ϵ���ζ����һֱ�ǳ�ϲ����\�������ָ��ǳ�ϡ�к����������˿��Ը���һ��Ļ�\��Ϊ�ر����ҿ�����������ȡ�׽���ʱ��һ����Ȩ\���Ը����Լ�����Ը�õ����������ϡ���䱦��\'
  +'|{cmd}<�ҵİ������㹻�Ŀռ䣬��ȡ�׽��˺Ž���/@PlatinaReq>\' 
  +'|{cmd}<�鿴�׽��˺Ž���/@chakan>\'
  +'|{cmd}<����/@main>                                 ^<�ر�/@doexit>'
  );
end;

procedure _PlatinaReq;
begin
  //This_Npc.ReqItemByPlatina(This_Player);
  //������ͨ���ű�ֱ����ɸ����ȼ��İ׽��ʺŵĽ�������
  GivePlatinaReward(); 
end;

procedure _chakan;
begin
  This_Npc.NpcDialog(This_Player,
  '�׽��ʺŵĽ�Ʒ���ã�����Ӧ�ȼ�����ȡ��Ӧ�Ľ�Ʒ\�����ܵ���ħ�Ĵ��ѣ���Щ��Ʒ������ħ������\'
  +'51������������������������������������սѥ������ս��\'
  +'�����������������������滤������ħѥ������ħ�䡢\'
  +'��â��������â��������â���󡢹�â��ѥ����â���������һ��\'
  +'52����ǿ�����������桢��âϵ�����������һ��\'
  +'53��54������ս��ָ����ս����������ָ����������\̫������̫����ָ�����һ��\'
  +'|{cmd}<�鿴��һҳ/@next>             ^<����/@main>'
  );
end;

procedure _next;
begin
  This_Npc.NpcDialog(This_Player,
  '55�������������� Ԥ��ͷ���� ��˵ħѥ�����һ��\' 
  +'56������ս��ָ����ս����������ָ����������̫������\'
  +'̫����ָ��ʥħ������ʥħ����ʥħ��ָ��ս��������ս������\'
  +'ս���ָ����������������������ָ���һ��\'
  +'57����ս��������ս������ս���ָ��ʥħ������ʥħ����\ʥħ��ָ����������������������ָ���һ��\'
  +'|{cmd}<�鿴��һҳ/@chakan>             ^<�鿴��һҳ/@next2>\'
  +'|{cmd}<����/@main>'
  );
end;

procedure _next2;
begin
  This_Npc.NpcDialog(This_Player,
  '58����59��������ѫ�¡��ž�֮�������һ��\60-62��������ѥ�����������������������һ��\'
  +'63-65��������<��������>���ڵ�����ȫ��������һ��\66��������<��������>���ڵ�����ȫ��������һ����\���л�������������<���졢���졢����>������һ��\ \'
  +'|{cmd}<�鿴��һҳ/@next>               ^<����/@main>'
  );
end;

procedure _liaojie;
begin
  This_Npc.NpcDialog(This_Player,
  '��˵�õ��׽����ƺ�˫��ʹ�ú󣬾Ϳ��Ա�Ϊ�׽��˺ţ�\ÿ����ﵽһ�ض��ĵȼ����Ϳ��Ի�ȡ���ص�װ����\��˵��Щװ�������Ϲ�ս�����µģ�������ʲô���Ƕ��޷���֪��\������Щ�Ϲ���Ʒ�����ܵ����䣬���������\����ħ���ǽ���������Ҫ����֮һ��ֻ��ʹ�÷�ħ�\����ħ�������װ�����ָܻ�����������Ŀ�����¿������ʹ�ã�\ֻҪ����������ͷ�ħ����ҾͿ����ˡ�\|{cmd}<����/@main>'
  );
end;

/////////////////////////�һ��׽����//////////////////////////////////////////// 

procedure _huanli;
begin
  This_Npc.NpcDialog(This_Player,
  '�ȿȣ����а׽������\�Ҷ԰׽���ַǳ�����Ȥ����˵��Դ��ɳ�Ϳ˵�һ����˵��\��������ͷ�İ׽���ָ��ң��һ�ǳ��м��㣬\��Ϊ�ر����һ����׽�ƾ֤��\����30���׽���֣��Ҿ�����һ���׽�ƾ֤��\ \'
  +'|{cmd}<��30���׽����/@givethirty>��ȡ�׽�ƾ֤\'
  +'|{cmd}<����/@main>'
  );
end;

//��ɳɳ�֮·���� 
Procedure StudyRoad;
begin
   if This_Player.GetV(111,51) = 1 then
   begin
      if This_Player.SetV(111,51,10) then
      begin
         This_Player.Give('����',10000);
         This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·���׽�ƾ֤����',2);
         //#This_Player.DeleteTaskFromUIList(1051);
      end;
   end;
end;

procedure _givethirty;
begin
  if This_Player.GetBagItemCount('�׽����') >= 30 then
  begin
    This_Player.Take('�׽����',30);
    This_Player.Give('�׽�ƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    'лл����Ұ׽���֣�һ���׽�ƾ֤�͸��㣬���������أ�\');
    //�ɳ�֮·
    StudyRoad; 
  end
  else if This_Player.GetBagItemCount('�׽���ְ�') >= 5 then
  begin
    This_Player.Take('�׽���ְ�',5);
    This_Player.Give('�׽�ƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    'лл����Ұ׽���֣�һ���׽�ƾ֤�͸��㣬���������أ�\');
    
    StudyRoad;
  end
  else if This_Player.GetBagItemCount('�׽���ְ�') = 4 then
  begin
    if This_Player.GetBagItemCount('�׽����') >= 6 then
    begin
    This_Player.Take('�׽���ְ�',4);
    This_Player.Take('�׽����',6);
    This_Player.Give('�׽�ƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    'лл����Ұ׽���֣�һ���׽�ƾ֤�͸��㣬���������أ�\');
    
    StudyRoad;
    end;
  end
  else if this_Player.GetBagItemCount('�׽���ְ�') = 3 then
  begin
    if This_Player.GetBagItemCount('�׽����') >= 12 then
    begin
    This_Player.Take('�׽���ְ�',3);
    This_Player.Take('�׽����',12);
    This_Player.Give('�׽�ƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    'лл����Ұ׽���֣�һ���׽�ƾ֤�͸��㣬���������أ�\');
    
    StudyRoad;
    end;
  end
  else if this_Player.GetBagItemCount('�׽���ְ�') = 2 then
  begin
    if This_Player.GetBagItemCount('�׽����') >= 18 then
    begin
    This_Player.Take('�׽���ְ�',2);
    This_Player.Take('�׽����',18);
    This_Player.Give('�׽�ƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    'лл����Ұ׽���֣�һ���׽�ƾ֤�͸��㣬���������أ�\');
    
    StudyRoad;
    end;
  end
  else if this_Player.GetBagItemCount('�׽���ְ�') = 1 then
  begin
    if This_Player.GetBagItemCount('�׽����') >= 24 then
    begin
    This_Player.Take('�׽���ְ�',1);
    This_Player.Take('�׽����',24);
    This_Player.Give('�׽�ƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    'лл����Ұ׽���֣�һ���׽�ƾ֤�͸��㣬���������أ�\');
    
    StudyRoad;
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�����û���㹻�İ׽���ְ���\����׽�ƾ֤����ʱ���ܸ��㡣\�������Ŭ���ɣ�\'
    );
  end;
end;

/////////////////////////////�����׽�����///////////////////////////////////// 

procedure _hecheng;
begin
  This_Npc.NpcDialog(This_Player,
  '�����׽����ƣ���Ҫһ���׽�ƾ֤����ʥ���׽�ƾ֤��\ֻҪ������һ�����ҾͿ��԰��������Ϊ�׽����ƣ�\��˵ׯ԰�Ĺܼҷǳ����ڲ�ȭ��Ϸ����Ҳ�����и��֣�\Ҫô���Ҳ���һȭ��Ӯ���ң��Ҿ����ϸ��������׽����ơ�\������˵��������һȭ��Ҫ50����Ŷ��ûǮ�ɲ��а���\'
  +'|{cmd}<�ã���ʼ��ȭ/@xiufu>\ \'
  +'|{cmd}<����/@main>'
  );
end;

procedure _lingyi();
begin
  This_Npc.NpcDialog(This_Player,
  '����ǰ���콱�İɣ������ϸ�����\'
  +'����������Ԥ��30�������ռ䣬\'
  +'���򣬲���������ȡ��Ʒ�ɲ�Ҫ����Ŷ��\ \'
  + '��ȷ�����㹻�����ռ䣬\'
  +'|{cmd}<��ȡ����/@ReqPodPrize>\ \'
  );
end;

procedure _ReqPodPrize();
begin
  //��ȡ����� 
  This_Npc.ReqPopGift(This_Player);
end;

procedure _goqifu;
begin
  This_Npc.NpcDialog(This_Player,
    '����ƾ֤�������ٻ�����Щʥ�ޡ�\' +
    '���뿼�鳡�Ժ���ֻ������ȫ����ʥ�ޣ����п��ܻ�÷�ħ�\' +
    '1����ƾ֤����Ͷ1�����ӣ�3����ƾ֤����Ͷ2�����ӣ�\' +
    '5����ƾ֤����Ͷ3�����ӣ�\' +
    'ʹ�õ�����Խ�࣬Խ�п��ܻ�ù���Я���ķ�ħ�\' +
    '��ֻ��20���ӵ�ʱ��ȥ��÷�ħ�\ \' +
    '|{cmd}<ǰ����ս��÷�ħ��/@gointo2>              ^<����/@main>\'
  );
end;

procedure getBack;
begin
  if compareText(This_Player.DynRoomName, 'qifuRoom') = 0 then
    This_Player.Flyto('3', 327, 333);
end;

procedure _gointo2;
begin
  if This_Player.MapName <> '3' then
    Exit;
  
  if This_Player.GetBagItemCount('��ƾ֤') > 0 then
  begin
    This_Player.FlyToDynRoom('qifuRoom', 15, 12);
    This_Player.CallOut(This_Npc, 1200, 'getBack');
  end
  else
    This_Npc.NpcDialog(This_Player,
      '������û����ƾ֤����Ҳ���ܰ��㰡!'
    );    
end;

procedure _xiufu;
begin
  if This_Player.GoldNum < 500000 then
  begin
    This_Npc.NpcDialog(This_Player,
    '������û���㹻�Ľ�Ұ�����Ҫ��ƭ��Ŷ��');
  end
  else if (This_Player.GetBagItemCount('�׽�ƾ֤') >= 1) or
          (This_Player.GetBagItemCount('ʥ���׽�ƾ֤') >= 1) then
  begin
    tempo := random(3)+1;
    This_Npc.NpcDialog(This_Player,
    '�ã������������ɣ�����˭���������ã�\'
    + '��������˵���ˣ���ƽҲ������Ŷ�����˿ɱ����Ŷ��\'
    + '�����Ӯ�ˣ����Ұ׽�ƾ֤�Ϳ��������ˡ�\'
    + '|{cmd}<������/@cjd>       ^<��ʯͷ/@cst>       ^<����/@cbp>\ \'
    + '|{cmd}<������һ��/@doexit>'
    );
  end;
end;

procedure _cjd;
begin
  if tempo = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�������������Ҳ�Ǽ���������ƽ,�������䣬�Ǻǣ�');
    This_Player.DecGold(500000);
    tempo := 0;
  end
  else if tempo = 2 then
  begin
    This_Npc.NpcDialog(This_Player,
    '������������ҳ�ʯͷ���������������ˣ�');
    This_Player.DecGold(500000);
    tempo := 0;
  end
  else if tempo = 3 then
  begin
    This_Npc.NpcDialog(This_Player,
    '������������ҳ���������ѽ��������\���ǲ������ھ�Ҫ�����׽������أ�\'
    +'|{cmd}<�ǣ���Ҫ�����׽�����/@giveji1>\'
    +'|{cmd}<���ˣ������´ΰ�/@doexit>');
    This_Player.DecGold(500000);
    tempo := 0;
    This_Player.SetV(34,1,100);
  end;
end; 
  
procedure _cst;
begin
  if tempo = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���ʯͷ�����ҳ�����������ѽ��������\���ǲ������ھ�Ҫ�����׽������أ�\'
    +'|{cmd}<�ǣ���Ҫ�����׽�����/@giveji1>\'
    +'|{cmd}<���ˣ������´ΰ�/@doexit>');
    This_Player.DecGold(500000);
    tempo := 0;
    This_Player.SetV(34,1,100);
  end
  else if tempo = 2 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���ʯͷ������Ҳ��ʯͷ������ƽ,�������䣬�Ǻǣ�');
    This_Player.DecGold(500000);
    tempo := 0;
  end
  else if tempo = 3 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���ʯͷ�����ҳ������������������ˣ�\');
    This_Player.DecGold(500000);
    tempo := 0;
  end;
end;

procedure _cbp;
begin
  if tempo = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����������ҳ��������������������ˣ�\' );
    This_Player.DecGold(500000);
    tempo := 0;
  end
  else if tempo = 2 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����������ҳ�ʯͷ������ѽ��������\���ǲ������ھ�Ҫ�����׽������أ�\'
    +'|{cmd}<�ǣ���Ҫ�����׽�����/@giveji1>\'
    +'|{cmd}<���ˣ������´ΰ�/@doexit>');
    This_Player.DecGold(500000);
    tempo := 0;
    This_Player.SetV(34,1,100);
  end
  else if tempo = 3 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�����������Ҳ����������ƽ,�������䣬�Ǻǣ�\');
    This_Player.DecGold(500000);
    tempo := 0;
  end;
end;

procedure _giveji1;
begin
  if This_Player.GetV(34,1) = 100 then
  begin
    if This_Player.GetBagItemCount('�׽�ƾ֤') >= 1 then
    begin
      This_Player.Take('�׽�ƾ֤',1);
      This_Player.Give('�׽�����',1);
      This_Npc.CloseDialog(This_Player);
    end
    else if This_Player.GetBagItemCount('ʥ���׽�ƾ֤') >= 1 then
    begin
      This_Player.Take('ʥ���׽�ƾ֤',1);
      This_Player.Give('�׽�����',1);
      This_Npc.CloseDialog(This_Player);
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '��û�а׽�ƾ֤����ʥ���׽�ƾ֤����Ҳ����Ϊ������');
    end;
  end;
end; 

///////////////////////////ף����///////////////////////////////////////////////

procedure _zhufu;
begin
  This_Npc.NpcDialog(This_Player,
  '��˵��ף�����𣬾�˵��������ζ֮�⣬�����в���˼���������\�Һ��볢��һ��������ζ�����ܰ����ҵ�����\ֻҪ���ܰ��������ң��ҿ��԰������һ���������벻�������飬\�����Խ⿪���������Ʒ�����⣬\�ҿ��Խ�����Ʒת��Ϊ����ְҵ����ͬ��Ʒ��\ֻҪ����ף�������Ҫת�����Ʒ�����ҾͿ����ˣ�\ʣ�µ��������ͽ����Ұɣ������������⣡\ \'
  +'|{cmd}<ʹ��ף���⻻��Ʒ/@huan>                 ^<ʹ�÷�ħ���Ʒ/@fumohuan>'
  );
end;

procedure _huan;
begin
  This_Npc.NpcDialog(This_Player,
  '����Ҫʹ��ף���⻻���ĸ���Ʒ��\'
  +'|{cmd}<�������/@shenhlian1>           ^<�������/@sheheShou1>           ^<��Ͻ�ָ/@shenhejie1>\'
  +'|{cmd}<��������/@jiflian2>           ^<��������/@jifenshou2>           ^<�����ָ/@jifenjie2>\'
  +'|{cmd}<ŭѪ����/@nuxuelian3>           ^<ŭѪ����/@nuxueshou3>           ^<ŭѪ��ָ/@nuxuejie3>\'
  +'|{cmd}<����ѫ��(ս)/@yinxin1>       ^<����ѫ��(��)/@yinxin2>       ^<����ѫ��(��)/@yinxin3>\'
  +'|{cmd}<��ս����/@kuang1>           ^<��������/@kuang2>           ^<̫������/@kuang3>\'
  +'|{cmd}<��ս��ָ/@hunshi1>           ^<������ָ/@hunshi2>           ^<̫����ָ/@hunshi3>\ \'
  +'|{cmd}<��һҳ/@next1>                       ^<����/@main>'
  );
end;

procedure _next1;
begin
  This_Npc.NpcDialog(This_Player,
  '����Ҫʹ��ף���⻻���ĸ���Ʒ��\'
  +'|{cmd}<�ž�֮��(ս)/@jijing1>       ^<�ž�֮��(��)/@jijing2>       ^<�ž�֮��(��)/@jijing3>\'
  +'|{cmd}<����սѥ/@xinxie1>           ^<������ѥ/@xinxie2>           ^<������ѥ/@xinxie3>\'
  +'|{cmd}<��������(ս)/@xinyao1>       ^<��������(��)/@xinyao2>       ^<��������(��)/@xinyao3>\'
  +'|{cmd}<��������(ս)/@xinneck1>       ^<��������(��)/@xinneck2>       ^<��������(��)/@xinneck3>\'
  +'|{cmd}<��������(ս)/@xinarml1>       ^<��������(��)/@xinarml2>       ^<��������(��)/@xinarml3>\'
  +'|{cmd}<����ս��/@xintou1>           ^<��������/@xintou2>           ^<��������/@xintou3>\ \'
  +'|{cmd}<��һҳ/@next12>             ^<��һҳ/@huan>            ^<����/@main>'
  );
end;

procedure _next12;
begin
  This_Npc.NpcDialog(This_Player,
  '����Ҫʹ��ף���⻻���ĸ���Ʒ��\'
  +'|{cmd}<����ս��/@xinring1>           ^<����ħ��/@xinring2>           ^<��������/@xinring3>\'  
  +'|{cmd}<��������(ս)/@shiyan1>       ^<��������(��)/@shiyan2>       ^<��������(��)/@shiyan3>\'
  +'|{cmd}<Ԥ��ͷ��(ս)/@yuyan1>       ^<Ԥ��ͷ��(��)/@yuyan2>       ^<Ԥ��ͷ��(��)/@yuyan3>\'
  +'|{cmd}<��˵ħѥ(ս)/@chuan1>       ^<��˵ħѥ(��)/@chuan2>       ^<��˵ħѥ(��)/@chuan3>\ \' 
  +'|{cmd}<��һҳ/@next1>                     ^<����/@main>'
  );
end;

procedure sayyes();
begin
  This_Npc.NpcDialog(This_Player,
  '�����ҵ������������ף�����ˣ���������Դ������ˡ�\��Ҳ�������������������¼�Ʒ�˰ɣ�������'
  );
end;

//��ף�����װ��������װ����ģ�����
procedure DoExchangeWithCake(item_src: string; item_des: string);
begin
  if This_Player.GetBagItemCount(item_src) = 0  then
  begin
    This_Npc.NpcDialog(This_Player,
    '������ȱ�ٱ�Ҫ����Ʒ����');
  end
  else if This_Player.GetBagItemCount('ף����') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '������ȱ�ٱ�Ҫ����Ʒ����');
  end
  else
  begin
  This_Player.Take(item_src,1);
  This_Player.Take('ף����',1);
  This_Player.Give(item_des,1);
  sayyes;
  end;
end; 

procedure _shenhlian1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ����һ��������������������أ�\ \'
  +'|{cmd}<��������/@shenhlian1_01>            ^<ŭѪ����/@shenhlian1_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _shenhlian1_01;
begin
  DoExchangeWithCake('��������', '�������');
end;

procedure _shenhlian1_02;
begin
  DoExchangeWithCake('ŭѪ����', '�������');
end;

procedure _sheheShou1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ����һ��������������������أ�\ \'
  +'|{cmd}<��������/@sheheShou1_01>            ^<ŭѪ����/@sheheShou1_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _sheheShou1_01;
begin
  DoExchangeWithCake('��������', '�������');
end;

procedure _sheheShou1_02;
begin
  DoExchangeWithCake('ŭѪ����', '�������');
end;

procedure _shenhejie1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ����һ����ָ��������Ͻ�ָ�أ�\ \'
  +'|{cmd}<�����ָ/@shenhejie1_01>            ^<ŭѪ��ָ/@shenhejie1_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _shenhejie1_01;
begin
  DoExchangeWithCake('�����ָ', '��Ͻ�ָ');
end;

procedure _shenhejie1_02;
begin
  DoExchangeWithCake('ŭѪ��ָ', '��Ͻ�ָ');
end;

procedure _jiflian2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ����һ���������������������أ�\ \'
  +'|{cmd}<�������/@jiflian2_01>            ^<ŭѪ����/@jiflian2_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _jiflian2_01;
begin
  DoExchangeWithCake('�������', '��������');
end;

procedure _jiflian2_02;
begin
  DoExchangeWithCake('ŭѪ����', '��������');
end;

procedure _jifenshou2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ����һ���������������������أ�\ \'
  +'|{cmd}<�������/@jifenshou2_01>            ^<ŭѪ����/@jifenshou2_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _jifenshou2_01;
begin
  DoExchangeWithCake('�������', '��������');
end;

procedure _jifenshou2_02;
begin
  DoExchangeWithCake('ŭѪ����', '��������');
end;

procedure _jifenjie2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ����һ����ָ�����������ָ�أ�\ \'
  +'|{cmd}<��Ͻ�ָ/@jifenjie2_01>            ^<ŭѪ��ָ/@jifenjie2_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _jifenjie2_01;
begin
  DoExchangeWithCake('��Ͻ�ָ', '�����ָ');
end;

procedure _jifenjie2_02;
begin
  DoExchangeWithCake('ŭѪ��ָ', '�����ָ');
end;

procedure _nuxuelian3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������ŭѪ�����أ�\ \'
  +'|{cmd}<�������/@nuxuelian3_01>            ^<��������/@nuxuelian3_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _nuxuelian3_01;
begin
  DoExchangeWithCake('�������', 'ŭѪ����');
end;

procedure _nuxuelian3_02;
begin
  DoExchangeWithCake('��������', 'ŭѪ����');
end;

procedure _nuxueshou3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������ŭѪ�����أ�\ \'
  +'|{cmd}<�������/@nuxueshou3_01>            ^<��������/@nuxueshou3_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _nuxueshou3_01;
begin
  DoExchangeWithCake('�������', 'ŭѪ����');
end;

procedure _nuxueshou3_02;
begin
  DoExchangeWithCake('��������', 'ŭѪ����');
end;

procedure _nuxuejie3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ���ָ������ŭѪ��ָ�أ�\ \'
  +'|{cmd}<��Ͻ�ָ/@nuxuejie3_01>            ^<�����ָ/@nuxuejie3_02>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _nuxuejie3_01;
begin
  DoExchangeWithCake('��Ͻ�ָ', 'ŭѪ��ָ');
end;

procedure _nuxuejie3_02;
begin
  DoExchangeWithCake('�����ָ', 'ŭѪ��ָ');
end;

procedure _shiyan1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(ս)�أ�\ \'
  +'|{cmd}<��������(��)/@shiyanf1>            ^<��������(��)/@shiyand1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _shiyanf1;
begin
  DoExchangeWithCake('��������(��)', '��������(ս)');
end;

procedure _shiyand1;
begin
  DoExchangeWithCake('��������(��)', '��������(ս)');
end;

procedure _shiyan2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(��)�أ�\ \'
  +'|{cmd}<��������(ս)/@shiyanf2>            ^<��������(��)/@shiyand2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _shiyanf2;
begin
  DoExchangeWithCake('��������(ս)', '��������(��)');  
end;

procedure _shiyand2;
begin
  DoExchangeWithCake('��������(��)', '��������(��)');   
end; 

procedure _shiyan3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(��)�أ�\ \'
  +'|{cmd}<��������(ս)/@shiyanf3>            ^<��������(��)/@shiyand3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _shiyanf3;
begin
  DoExchangeWithCake('��������(ս)', '��������(��)');   
end;

procedure _shiyand3;
begin
  DoExchangeWithCake('��������(��)', '��������(��)');   
end;

procedure _yuyan1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�Ԥ��ͷ��������Ԥ��ͷ��(ս)�أ�\ \'
  +'|{cmd}<Ԥ��ͷ��(��)/@yuyanf1>            ^<Ԥ��ͷ��(��)/@yuyand1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _yuyanf1;
begin
  DoExchangeWithCake('Ԥ��ͷ��(��)', 'Ԥ��ͷ��(ս)');   
end;

procedure _yuyand1;
begin
  DoExchangeWithCake('Ԥ��ͷ��(��)', 'Ԥ��ͷ��(ս)');   
end;

procedure _yuyan2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�Ԥ��ͷ��������Ԥ��ͷ��(��)�أ�\ \'
  +'|{cmd}<Ԥ��ͷ��(ս)/@yuyanf2>            ^<Ԥ��ͷ��(��)/@yuyand2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _yuyanf2;
begin
  DoExchangeWithCake('Ԥ��ͷ��(ս)', 'Ԥ��ͷ��(��)');    
end;

procedure _yuyand2;
begin
  DoExchangeWithCake('Ԥ��ͷ��(��)', 'Ԥ��ͷ��(��)');   
end; 

procedure _yuyan3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�Ԥ��ͷ��������Ԥ��ͷ��(��)�أ�\ \'
  +'|{cmd}<Ԥ��ͷ��(ս)/@yuyanf3>            ^<Ԥ��ͷ��(��)/@yuyand3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _yuyanf3;
begin
  DoExchangeWithCake('Ԥ��ͷ��(ս)', 'Ԥ��ͷ��(��)');   
end;

procedure _yuyand3;
begin
  DoExchangeWithCake('Ԥ��ͷ��(��)', 'Ԥ��ͷ��(��)');   
end;

procedure _chuan1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ���˵ħѥ��������˵ħѥ(ս)�أ�\ \'
  +'|{cmd}<��˵ħѥ(��)/@chuanf1>            ^<��˵ħѥ(��)/@chuand1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _chuanf1;
begin
  DoExchangeWithCake('��˵ħѥ(��)', '��˵ħѥ(ս)');  
end;

procedure _chuand1;
begin
  DoExchangeWithCake('��˵ħѥ(��)', '��˵ħѥ(ս)');   
end;

procedure _chuan2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ���˵ħѥ��������˵ħѥ(��)�أ�\ \'
  +'|{cmd}<��˵ħѥ(ս)/@chuanf2>            ^<��˵ħѥ(��)/@chuand2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _chuanf2;
begin
  DoExchangeWithCake('��˵ħѥ(ս)', '��˵ħѥ(��)');   
end;

procedure _chuand2;
begin
  DoExchangeWithCake('��˵ħѥ(��)', '��˵ħѥ(��)');   
end; 

procedure _chuan3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ���˵ħѥ��������˵ħѥ(��)�أ�\ \'
  +'|{cmd}<��˵ħѥ(ս)/@chuanf3>            ^<��˵ħѥ(��)/@chuand3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _chuanf3;
begin
  DoExchangeWithCake('��˵ħѥ(ս)', '��˵ħѥ(��)');   
end;

procedure _chuand3;
begin
  DoExchangeWithCake('��˵ħѥ(��)', '��˵ħѥ(��)');   
end;

procedure _kuang1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ�û���������̫��������������ս�����أ�\ \'
  +'|{cmd}<��������/@kuangf1>            ^<̫������/@kuangd1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _kuangf1;
begin
  DoExchangeWithCake('��������', '��ս����');    
end;

procedure _kuangd1;
begin
  DoExchangeWithCake('̫������', '��ս����');   
end;

procedure _kuang2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ�ÿ�ս������̫���������������������أ�\ \'
  +'|{cmd}<��ս����/@kuangf2>            ^<̫������/@kuangd2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _kuangf2;
begin
  DoExchangeWithCake('��ս����', '��������');   
end;

procedure _kuangd2;
begin
  DoExchangeWithCake('̫������', '��������');  
end; 

procedure _kuang3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ�ÿ�ս�����ǻ�������������̫�������أ�\ \'
  +'|{cmd}<��ս����/@kuangf3>            ^<��������/@kuangd3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _kuangf3;
begin
  DoExchangeWithCake('��ս����', '̫������');   
end;

procedure _kuangd3;
begin
  DoExchangeWithCake('��������', '̫������');  
end;

procedure _hunshi1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ�û�����ָ����̫����ָ��������ս��ָ�أ�\ \'
  +'|{cmd}<������ָ/@hunshif1>            ^<̫����ָ/@hunshid1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _hunshif1;
begin
  DoExchangeWithCake('������ָ', '��ս��ָ');   
end;

procedure _hunshid1;
begin
  DoExchangeWithCake('̫����ָ', '��ս��ָ');   
end;

procedure _hunshi2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ�ÿ�ս��ָ����̫����ָ������������ָ�أ�\ \'
  +'|{cmd}<��ս��ָ/@hunshif2>            ^<̫����ָ/@hunshid2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _hunshif2;
begin
  DoExchangeWithCake('��ս��ָ', '������ָ');   
end;

procedure _hunshid2;
begin
  DoExchangeWithCake('̫����ָ', '������ָ');  
end; 

procedure _hunshi3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ�ÿ�ս��ָ���ǻ�����ָ������̫����ָ�أ�\ \'
  +'|{cmd}<��ս��ָ/@hunshif3>            ^<������ָ/@hunshid3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _hunshif3;
begin
  DoExchangeWithCake('��ս��ָ', '̫����ָ');   
end;

procedure _hunshid3;
begin
  DoExchangeWithCake('������ָ', '̫����ָ');   
end;

procedure _yinxin1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����ѫ������������ѫ��(ս)�أ�\ \'
  +'|{cmd}<����ѫ��(��)/@yinxinf1>            ^<����ѫ��(��)/@yinxind1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _yinxinf1;
begin
  DoExchangeWithCake('����ѫ��(��)', '����ѫ��(ս)');   
end;

procedure _yinxind1;
begin
  DoExchangeWithCake('����ѫ��(��)', '����ѫ��(ս)');   
end;

procedure _yinxin2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����ѫ������������ѫ��(��)�أ�\ \'
  +'|{cmd}<����ѫ��(ս)/@yinxinf2>            ^<����ѫ��(��)/@yinxind2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _yinxinf2;
begin
  DoExchangeWithCake('����ѫ��(ս)', '����ѫ��(��)');   
end;

procedure _yinxind2;
begin
  DoExchangeWithCake('����ѫ��(��)', '����ѫ��(��)');   
end; 

procedure _yinxin3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����ѫ�½�������ѫ��(��)�أ�\ \'
  +'|{cmd}<����ѫ��(ս)/@yinxinf3>            ^<����ѫ��(��)/@yinxind3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _yinxinf3;
begin
  DoExchangeWithCake('����ѫ��(ս)', '����ѫ��(��)');   
end;

procedure _yinxind3;
begin
  DoExchangeWithCake('����ѫ��(��)', '����ѫ��(��)');     
end;

procedure _jijing1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ��ž�֮���������ž�֮��(ս)�أ�\ \'
  +'|{cmd}<�ž�֮��(��)/@jijingf1>            ^<�ž�֮��(��)/@jijingd1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _jijingf1;
begin
  DoExchangeWithCake('�ž�֮��(��)', '�ž�֮��(ս)');  
end;

procedure _jijingd1;
begin
  DoExchangeWithCake('�ž�֮��(��)', '�ž�֮��(ս)');  
end;

procedure _jijing2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ��ž�֮���������ž�֮��(��)�أ�\ \'
  +'|{cmd}<�ž�֮��(ս)/@jijingf2>            ^<�ž�֮��(��)/@jijingd2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _jijingf2;
begin
  DoExchangeWithCake('�ž�֮��(ս)', '�ž�֮��(��)');  
end;

procedure _jijingd2;
begin
  DoExchangeWithCake('�ž�֮��(��)', '�ž�֮��(��)');    
end; 

procedure _jijing3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ��ž�֮�ֽ����ž�֮��(��)�أ�\ \'
  +'|{cmd}<�ž�֮��(ս)/@jijingf3>            ^<�ž�֮��(��)/@jijingd3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _jijingf3;
begin
  DoExchangeWithCake('�ž�֮��(ս)', '�ž�֮��(��)');   
end;

procedure _jijingd3;
begin
  DoExchangeWithCake('�ž�֮��(��)', '�ž�֮��(��)');   
end;

procedure _xinxie1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ��������ѥ����������ѥ����������սѥ�أ�\ \'
  +'|{cmd}<������ѥ/@xinxief1>            ^<������ѥ/@xinxied1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinxief1;
begin
  DoExchangeWithCake('������ѥ', '����սѥ');    
end;

procedure _xinxied1;
begin
  DoExchangeWithCake('������ѥ', '����սѥ');    
end;

procedure _xinxie2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ������սѥ����������ѥ������������ѥ�أ�\ \'
  +'|{cmd}<����սѥ/@xinxief2>            ^<������ѥ/@xinxied2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinxief2;
begin
  DoExchangeWithCake('����սѥ', '������ѥ');   
end;

procedure _xinxied2;
begin
  DoExchangeWithCake('������ѥ', '������ѥ');   
end; 

procedure _xinxie3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ������սѥ����������ѥ����������ѥ�أ�\ \'
  +'|{cmd}<����սѥ/@xinxief3>            ^<������ѥ/@xinxied3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinxief3;
begin
  DoExchangeWithCake('����սѥ', '������ѥ');   
end;

procedure _xinxied3;
begin
  DoExchangeWithCake('������ѥ', '������ѥ');   
end;

procedure _xinyao1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(ս)�أ�\ \'
  +'|{cmd}<��������(��)/@xinyaof1>            ^<��������(��)/@xinyaod1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinyaof1;
begin
  DoExchangeWithCake('��������(��)', '��������(ս)');   
end;

procedure _xinyaod1;
begin
  DoExchangeWithCake('��������(��)', '��������(ս)');   
end;

procedure _xinyao2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(��)�أ�\ \'
  +'|{cmd}<��������(ս)/@xinyaof2>            ^<��������(��)/@xinyaod2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinyaof2;
begin
  DoExchangeWithCake('��������(ս)', '��������(��)'); 
end;

procedure _xinyaod2;
begin
  DoExchangeWithCake('��������(��)', '��������(��)');   
end; 

procedure _xinyao3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ���������������������(��)�أ�\ \'
  +'|{cmd}<��������(ս)/@xinyaof3>            ^<��������(��)/@xinyaod3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinyaof3;
begin
  DoExchangeWithCake('��������(ս)', '��������(��)');   
end;

procedure _xinyaod3;
begin
  DoExchangeWithCake('��������(��)', '��������(��)');   
end;

procedure _xintou1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������ս���أ�\ \'
  +'|{cmd}<��������/@xintouf1>            ^<��������/@xintoud1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xintouf1;
begin
  DoExchangeWithCake('��������', '����ս��');  
end;

procedure _xintoud1;
begin
  DoExchangeWithCake('��������', '����ս��');   
end;

procedure _xintou2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ����������������������أ�\ \'
  +'|{cmd}<����ս��/@xintouf2>            ^<��������/@xintoud2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xintouf2;
begin
  DoExchangeWithCake('����ս��', '��������');   
end;

procedure _xintoud2;
begin
  DoExchangeWithCake('��������', '��������');   
end; 

procedure _xintou3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ������ڽ������������أ�\ \'
  +'|{cmd}<����ս��/@xintouf3>            ^<��������/@xintoud3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xintouf3;
begin
  DoExchangeWithCake('����ս��', '��������');   
end;

procedure _xintoud3;
begin
  DoExchangeWithCake('��������', '��������');   
end;

procedure _xinneck1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(ս)�أ�\ \'
  +'|{cmd}<��������(��)/@xinneckf1>            ^<��������(��)/@xinneckd1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinneckf1;
begin
  DoExchangeWithCake('��������(��)', '��������(ս)');   
end;

procedure _xinneckd1;
begin
  DoExchangeWithCake('��������(��)', '��������(ս)');   
end;

procedure _xinneck2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(��)�أ�\ \'
  +'|{cmd}<��������(ս)/@xinneckf2>            ^<��������(��)/@xinneckd2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinneckf2;
begin
  DoExchangeWithCake('��������(ս)', '��������(��)');  
end;

procedure _xinneckd2;
begin
  DoExchangeWithCake('��������(��)', '��������(��)');   
end; 

procedure _xinneck3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ���������������������(��)�أ�\ \'
  +'|{cmd}<��������(ս)/@xinneckf3>            ^<��������(��)/@xinneckd3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinneckf3;
begin
  DoExchangeWithCake('��������(ս)', '��������(��)');   
end;

procedure _xinneckd3;
begin
  DoExchangeWithCake('��������(��)', '��������(��)');   
end;

procedure _xinarml1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(ս)�أ�\ \'
  +'|{cmd}<��������(��)/@xinarmlf1>            ^<��������(��)/@xinarmld1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinarmlf1;
begin
  DoExchangeWithCake('��������(��)', '��������(ս)');   
end;

procedure _xinarmld1;
begin
  DoExchangeWithCake('��������(��)', '��������(ս)');    
end;

procedure _xinarml2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�����������������������(��)�أ�\ \'
  +'|{cmd}<��������(ս)/@xinarmlf2>            ^<��������(��)/@xinarmld2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinarmlf2;
begin
  DoExchangeWithCake('��������(ս)', '��������(��)');   
end;

procedure _xinarmld2;
begin
  DoExchangeWithCake('��������(��)', '��������(��)');   
end; 

procedure _xinarml3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ��������󽻻���������(��)�أ�\ \'
  +'|{cmd}<��������(ս)/@xinarmlf3>            ^<��������(��)/@xinarmld3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinarmlf3;
begin
  DoExchangeWithCake('��������(ս)', '��������(��)');   
end;

procedure _xinarmld3;
begin
  DoExchangeWithCake('��������(��)', '��������(��)');   
end;

procedure _xinring1;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�������ָ����������ս���أ�\ \'
  +'|{cmd}<����ħ��/@xinringf1>            ^<��������/@xinringd1>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinringf1;
begin
  DoExchangeWithCake('����ħ��', '����ս��');   
end;

procedure _xinringd1;
begin
  DoExchangeWithCake('��������', '����ս��');  
end;

procedure _xinring2;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�������ָ����������ħ���أ�\ \'
  +'|{cmd}<����ս��/@xinringf2>            ^<��������/@xinringd2>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinringf2;
begin
  DoExchangeWithCake('����ս��', '����ħ��');   
end;

procedure _xinringd2;
begin
  DoExchangeWithCake('��������', '����ħ��');   
end; 

procedure _xinring3;
begin
  This_Npc.NpcDialog(This_Player,
  '����ʹ���ĸ�������ָ�������������أ�\ \'
  +'|{cmd}<����ս��/@xinringf3>            ^<����ħ��/@xinringd3>\ \'
  +'|{cmd}<����/@huan>'
  );
end;

procedure _xinringf3;
begin
  DoExchangeWithCake('����ս��', '��������');   
end;

procedure _xinringd3;
begin
  DoExchangeWithCake('����ħ��', '��������');     
end;

//////////////////////////////��ħ���Ʒ////////////////////////////////////// 

procedure _fumohuan;
begin
  This_Npc.NpcDialog(This_Player,
  '���뻻���ĸ���Ʒ��\ \'
  +'|{cmd}<����ѫ��(ս)/@xunzh>        ^<����ѫ��(��)/@xunzhand>        ^<����ѫ��(��)/@xunzhanf>\'
  +'|{cmd}<����ѫ��(ս)/@yongzz>        ^<����ѫ��(��)/@yongzd>        ^<����ѫ��(��)/@yongzf>\'
  );
end;

procedure _xunzh;
begin
  This_Npc.NpcDialog(This_Player,
  '�������ĸ���Ʒ���һ�����ѫ��(ս)��\ \'
  +'|{cmd}<����ѫ��(��)/@xunzhanzh_1>       ^<����ѫ��(��)/@xunzhanzh_2>'
  );
end;

//�÷�ħ���Ʒ��ģ�� 
procedure DoExchangeWithFML(item_src: string; item_des: string);
begin
  if This_Player.GetBagItemCount('��ħ��') = 0  then
  begin
    This_Npc.NpcDialog(This_Player,
    'ÿ�ζһ�����Ҫ����һ����ħ������û�з�ħ���');
  end
  else if This_Player.GetBagItemCount(item_src) = 0  then
  begin
    This_Npc.NpcDialog(This_Player,
    '������ȱ�ٱ�Ҫ��Ʒ����');
  end
  else
  begin
  This_Player.Take(item_src,1);
  This_Player.Take('��ħ��',1);
  This_Player.Give(item_des,1);
  This_Npc.NpcDialog(This_Player,
  '�Ѿ��һ��ɹ����Ͽ�򿪰��������ɣ�');
  end;
end;

procedure _xunzhanzh_1;
begin
  DoExchangeWithFML('����ѫ��(��)', '����ѫ��(ս)');  
end;

procedure _xunzhanzh_2;
begin
  DoExchangeWithFML('����ѫ��(��)', '����ѫ��(ս)');   
end;

procedure _xunzhand;
begin
  This_Npc.NpcDialog(This_Player,
  '�������ĸ���Ʒ���һ�����ѫ��(��)��\ \'
  +'|{cmd}<����ѫ��(ս)/@xunzhand_1>       ^<����ѫ��(��)/@xunzhand_2>'
  );
end;

procedure _xunzhand_1;
begin
  DoExchangeWithFML('����ѫ��(ս)', '����ѫ��(��)');   
end;

procedure _xunzhand_2;
begin
  DoExchangeWithFML('����ѫ��(��)', '����ѫ��(��)');   
end;

procedure _xunzhanf;
begin
  This_Npc.NpcDialog(This_Player,
  '�������ĸ���Ʒ���һ�����ѫ��(��)��\ \'
  +'|{cmd}<����ѫ��(ս)/@xunzhanf_1>       ^<����ѫ��(��)/@xunzhanf_2>'
  );
end;

procedure _xunzhanf_1;
begin
  DoExchangeWithFML('����ѫ��(ս)', '����ѫ��(��)');  
end;

procedure _xunzhanf_2;
begin
  DoExchangeWithFML('����ѫ��(��)', '����ѫ��(��)');  
end;

procedure _yongzz;
begin
  This_Npc.NpcDialog(This_Player,
  '�������ĸ���Ʒ���һ�����ѫ��(ս)��\ \'
  +'|{cmd}<����ѫ��(��)/@yongzz_1>       ^<����ѫ��(��)/@yongzz_2>'
  );
end;

procedure _yongzz_1;
begin
  DoExchangeWithFML('����ѫ��(��)', '����ѫ��(ս)');  
end;

procedure _yongzz_2;
begin
  DoExchangeWithFML('����ѫ��(��)', '����ѫ��(ս)');  
end;

procedure _yongzd;
begin
  This_Npc.NpcDialog(This_Player,
  '�������ĸ���Ʒ���һ�����ѫ��(��)��\ \'
  +'|{cmd}<����ѫ��(ս)/@yongzd_1>       ^<����ѫ��(��)/@yongzd_2>'
  );
end;

procedure _yongzd_1;
begin
  DoExchangeWithFML('����ѫ��(ս)', '����ѫ��(��)');  
end;

procedure _yongzd_2;
begin
  DoExchangeWithFML('����ѫ��(��)', '����ѫ��(��)');    
end;

procedure _yongzf;
begin
  This_Npc.NpcDialog(This_Player,
  '�������ĸ���Ʒ���һ�����ѫ��(��)��\ \'
  +'|{cmd}<����ѫ��(ս)/@yongzf_1>       ^<����ѫ��(��)/@yongzf_2>'
  );
end;

procedure _yongzf_1;
begin
  DoExchangeWithFML('����ѫ��(ս)', '����ѫ��(��)');    
end;

procedure _yongzf_2;
begin
  DoExchangeWithFML('����ѫ��(��)', '����ѫ��(��)');  
end;

///////////////////////////��ħ������///////////////////////////////////////// 

procedure _jiejin;
begin
  This_Npc.NpcDialog(This_Player,
  '��˵��Щϡ����Ʒ���ǵ���һ��ɳ�Ϳ˳����ұ��귨��½�ŷ��ֵģ�\������Щ���ﶼ������һ�����صĵط���ֻ�������������Ѳ�֪����\��֪Ϊ�Σ�ȴ����½�ϼ���ħͷ֮һ���������֪����������ܣ�\�����ϼ���ħͷ������Щ��������˽�������Ϊ��û�����Ե���Ʒ��\ֻ������ʹ�ù��ķ�ħ���ټ���һ������ħ�������ܽ����ħ�Ľ���,\�Һ�����ħ��û��ʧ������Ҳ�Ѿ�ѧ���ˣ��ҿ��Խ��������\������з�ħ��ǾͰѽ�������Ʒ�����Ұɣ�����������������\'
  +'|{cmd}<����׽���Ʒ�Ľ���/@jingu>                    ^<���ʥ����Ʒ�Ľ���/@shendianjingu>\'
  +'|{cmd}<��ѽ����������â��������Ʒ�Ľ���/@freejingu>                  |<����/@main>'
  );
end;

procedure _shendianjingu;              
begin
  This_Npc.NpcDialog(This_Player,
  '�������ĸ���Ʒ�Ľ����أ�\ \'
  +'|{cmd}<ʥ��ѥ(����)/@sdboots>                  ^<ʥ������(����)/@sdyaodai>\ \'
  +'|{cmd}<����/@jiejin>'
  );
end;

//��ħ�����Ʒ����ģ��
//item_src��ʾΪ��������Ʒ��
//item_des1��ʾ�⿪սʿ��item_des2��ʾ�⿪��ʿ��item_des3��ʾ�⿪��ʦ 
procedure OpenLockWithFML(item_src, item_des1, item_des2, item_des3: string);
var 
  temp : integer;
begin
  temp := Random(3)+1;
  if This_Player.GetBagItemCount('��ħ��') = 0  then
  begin
    This_Npc.NpcDialog(This_Player,
    'ÿ�ζһ�����Ҫ����һ����ħ������û�з�ħ���');
  end
  else if This_Player.GetBagItemCount(item_src) = 0  then
  begin
    This_Npc.NpcDialog(This_Player,
    '������û���㹻����Ʒ�����������ҵ����������Ұɣ�');
  end
  else
  begin
    This_Player.Take(item_src,1);
    This_Player.Take('��ħ��',1);
    //������������費ͬ�Ľ������Ʒ 
    if temp = 1 then
    begin
      This_Player.Give(item_des1,1);
    end
    else if temp = 2 then
    begin
      This_Player.Give(item_des2,1);
    end
    else
    begin
      This_Player.Give(item_des3,1);
    end;
    
    This_Npc.NpcDialog(This_Player,
            'ף��������Ʒ�Ľ����Ѿ�����ˣ��Ͽ�򿪰��������ɣ�');  
  end;
end;

procedure OpenLockWithFMLOne(item_src, item_des : string);
begin
  if This_Player.GetBagItemCount('��ħ��') = 0  then
  begin
    This_Npc.NpcDialog(This_Player,
    'ÿ�ζһ�����Ҫ����һ����ħ������û�з�ħ���');
  end
  else if This_Player.GetBagItemCount(item_src) = 0  then
  begin
    This_Npc.NpcDialog(This_Player,
    '������û���㹻����Ʒ�����������ҵ����������Ұɣ�');
  end
  else
  begin
    This_Player.Take(item_src,1);
    This_Player.Take('��ħ��',1);
    This_Player.Give(item_des,1);
    This_Npc.NpcDialog(This_Player,
            'ף��������Ʒ�Ľ����Ѿ�����ˣ��Ͽ�򿪰��������ɣ�');  
  end;
end; 

procedure _sdboots;
begin
  OpenLockWithFML('ʥ��ѥ(����)', 'ʥ��սѥ', 'ʥ���ѥ', 'ʥ��ħѥ');  
end;

procedure _sdyaodai;
begin
  OpenLockWithFML('ʥ������(����)', 'ʥ������(ս)', 'ʥ������(��)', 'ʥ������(��)');  
end;

procedure _jingu;
begin
  This_Npc.NpcDialog(This_Player,
  '�������ĸ���Ʒ�Ľ����أ�\'
  +'|{cmd}<��������(����)/@shiyan>    ^<Ԥ��ͷ��(����)/@yunyan>    ^<��˵ħѥ(����)/@chushu>\'
  +'|{cmd}<��ս��ָ(����)/@kuajie>    ^<������ָ(����)/@hunjie>    ^<̫����ָ(����)/@taijie>\'
  +'|{cmd}<��ս����(����)/@kuawan>    ^<��������(����)/@hunwan>    ^<̫������(����)/@taiwan>\'
  +'|{cmd}<ս���ָ(����)/@zanjie>    ^<ʥħ��ָ(����)/@senjie>    ^<����ָ(����)/@zenjie>\'
  +'|{cmd}<ս������(����)/@zanwan>    ^<ʥħ����(����)/@senwan>    ^<�������(����)/@zenwan>\' 
  +'|{cmd}<ս������(����)/@zanlan>    ^<ʥħ����(����)/@senlan>    ^<�������(����)/@zenlan>\ \'
  +'|{cmd}<��һҳ/@nextjie>                    ^<����/@jiejin>'
  );
end;

procedure _freejingu;
begin
  This_Npc.NpcDialog(This_Player,
  '��������â��������Ʒ������Ҫ��ħ����ֱ�ӽ��������\'
  +'�������ĸ���Ʒ�Ľ����أ�\'
  +'|{cmd}<����ս��(����)/@leijie>    ^<��â����(����)/@guajie>    ^<����ħ��(����)/@liejie>\'
  +'|{cmd}<��������(����)/@leiwan>    ^<��â����(����)/@guawan>    ^<���滤��(����)/@liewan>\'
  +'|{cmd}<��������(����)/@leilan>    ^<��â����(����)/@gualan>    ^<��������(����)/@lielan>\'
  +'|{cmd}<��������(����)/@leiyao>    ^<��â����(����)/@guayao>    ^<��������(����)/@lieyao>\'
  +'|{cmd}<����սѥ(����)/@leixie>    ^<��â��ѥ(����)/@guaxie>    ^<����ħѥ(����)/@liexie>\ \'
  +'|{cmd}<����/@jiejin>'
  );
end;

procedure _nextjie;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<����ѫ��(����)/@yinxin>    ^<�ž�֮��(����)/@jishou>\'
  +'|{cmd}<��������(����)/@xinyao>    ^<����ѥ(����)/@xinxie>      ^<������(����)/@xinguan>\'
  +'|{cmd}<��������(����)/@xinnek>    ^<��������(����)/@xinrig>    ^<������ָ(����)/@xinrin>\ \'
  +'|{cmd}<��һҳ/@jingu>                     ^<����/@jiejin>'
  );
end;

procedure _shiyan;
begin
  OpenLockWithFML('��������(����)', '��������(ս)', '��������(��)', '��������(��)'); 
end;

procedure _yunyan;
begin
  OpenLockWithFML('Ԥ��ͷ��(����)', 'Ԥ��ͷ��(ս)', 'Ԥ��ͷ��(��)', 'Ԥ��ͷ��(��)');   
end;

procedure _chushu;
begin
  OpenLockWithFML('��˵ħѥ(����)', '��˵ħѥ(ս)', '��˵ħѥ(��)', '��˵ħѥ(��)');   
end;

//����ģ�壺ħ��װ��������ȡ��ħ���ˣ�����Ϊֱ�Ӷһ���
procedure FROpenLockWithFMLOne(item_src, item_des : string);
begin
  if This_Player.GetBagItemCount(item_src) = 0  then
  begin
    This_Npc.NpcDialog(This_Player,
    '������û��' + item_src + '�����������ҵ����������Ұɣ�');
  end
  else
  begin
    This_Player.Take(item_src,1);
    This_Player.Give(item_des,1);
    This_Npc.NpcDialog(This_Player,
            'ף��������Ʒ�Ľ����Ѿ�����ˣ��Ͽ�򿪰��������ɣ�');  
  end;
end; 
 
procedure _leijie;
begin
  FROpenLockWithFMLOne('����ս��(����)', '����ս��');  
end;

procedure _leiwan;
begin
  FROpenLockWithFMLOne('��������(����)', '��������');   
end;

procedure _leilan;
begin
  FROpenLockWithFMLOne('��������(����)', '��������');   
end;

procedure _leiyao;
begin
  FROpenLockWithFMLOne('��������(����)', '��������');  
end;

procedure _leixie;
begin
  FROpenLockWithFMLOne('����սѥ(����)', '����սѥ');    
end;

procedure _guajie;
begin
  FROpenLockWithFMLOne('��â����(����)', '��â����');    
end;

procedure _guawan;
begin
  FROpenLockWithFMLOne('��â����(����)', '��â����');   
end;

procedure _gualan;
begin
  FROpenLockWithFMLOne('��â����(����)', '��â����');   
end;

procedure _guayao;
begin
  FROpenLockWithFMLOne('��â����(����)', '��â����');  
end;

procedure _guaxie;
begin
  FROpenLockWithFMLOne('��â��ѥ(����)', '��â��ѥ');    
end;

procedure _liejie;
begin
  FROpenLockWithFMLOne('����ħ��(����)', '����ħ��');   
end;

procedure _liewan;
begin
  FROpenLockWithFMLOne('���滤��(����)', '���滤��');    
end;

procedure _lielan;
begin
  FROpenLockWithFMLOne('��������(����)', '��������');   
end;

procedure _lieyao;
begin
  FROpenLockWithFMLOne('��������(����)', '��������');  
end;

procedure _liexie;
begin
  FROpenLockWithFMLOne('����ħѥ(����)', '����ħѥ');   
end;

procedure _kuajie;
begin
  OpenLockWithFMLOne('��ս��ָ(����)', '��ս��ָ');  
end;

procedure _kuawan;
begin
  OpenLockWithFMLOne('��ս����(����)', '��ս����');    
end;

procedure _hunjie;
begin
  OpenLockWithFMLOne('������ָ(����)', '������ָ');   
end;

procedure _hunwan;
begin
  OpenLockWithFMLOne('��������(����)', '��������');
end;

procedure _taijie;
begin
  OpenLockWithFMLOne('̫����ָ(����)', '̫����ָ');
end;

procedure _taiwan;
begin
  OpenLockWithFMLOne('̫������(����)', '̫������');
end;

procedure _zanjie;
begin
  OpenLockWithFMLOne('ս���ָ(����)', 'ս���ָ');  
end;

procedure _zanwan;
begin
  OpenLockWithFMLOne('ս������(����)', 'ս������');   
end;

procedure _zanlan;
begin
  OpenLockWithFMLOne('ս������(����)', 'ս������');   
end;

procedure _senjie;
begin
  OpenLockWithFMLOne('ʥħ��ָ(����)', 'ʥħ��ָ');   
end;

procedure _senwan;
begin
  OpenLockWithFMLOne('ʥħ����(����)', 'ʥħ����');   
end;

procedure _senlan;
begin
  OpenLockWithFMLOne('ʥħ����(����)', 'ʥħ����');   
end;

procedure _zenjie;
begin
  OpenLockWithFMLOne('����ָ(����)', '����ָ');  
end;

procedure _zenwan;
begin
  OpenLockWithFMLOne('�������(����)', '�������');  
end;

procedure _zenlan;
begin
  OpenLockWithFMLOne('�������(����)', '�������');   
end;

procedure _yinxin;
begin
  OpenLockWithFML('����ѫ��(����)', '����ѫ��(ս)', '����ѫ��(��)', '����ѫ��(��)');   
end;

procedure _jishou;
begin
  OpenLockWithFML('�ž�֮��(����)', '�ž�֮��(ս)', '�ž�֮��(��)', '�ž�֮��(��)');    
end;

procedure _xinyao;
begin
  OpenLockWithFML('��������(����)', '��������(ս)', '��������(��)', '��������(��)');    
end;

procedure _xinxie;
begin
  OpenLockWithFML('����ѥ(����)', '����սѥ', '������ѥ', '������ѥ');   
end;

procedure _xinguan;  
begin
  OpenLockWithFML('������(����)', '����ս��', '��������', '��������');    
end;

procedure _xinnek;
begin
  OpenLockWithFML('��������(����)', '��������(ս)', '��������(��)', '��������(��)');   
end;

procedure _xinrig;
begin
  OpenLockWithFML('��������(����)', '��������(ս)', '��������(��)', '��������(��)');   
end;

procedure _xinrin;
begin
  OpenLockWithFML('������ָ(����)', '����ս��', '��������', '����ħ��');    
end;      

begin
  domain;
end.   