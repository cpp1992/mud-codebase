{
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

procedure _Normal;
var temp : integer;
begin
  temp := random(2);
  if temp = 1 then
  begin
  This_Npc.NpcDialog(This_Player,
  '���������ǲ������������ڷ�ħ�ȱ������Ϣ��\�Ǻǣ����������������ħ�����������ط��ѹ�����һ�����\���һ������в��ֱ���ָ�������һЩ���¡������Ϣ�ҿ���\ð������Σ�յ�����Ӵ����ǧ��Ҫ���߱��ˡ�\ \'
  +'|{cmd}<������Ʒ/@buy>'+ addSpace('', 24) + '^<������Ʒ/@sell>\'
  +'|{cmd}<�������/@lingfuBuy>\'
  
  +'|{cmd}<�˳�/@doexit>'
  );
  end
  else
  begin
  This_Npc.NpcDialog(This_Player,
  '��л���ҿ���Ϊ����ʲô����������۵Ķ��������ֵ���Ʒ��\�����ҿ�������ʡ���Ҿ�ӪŶ��\ \'
  +'|{cmd}<������Ʒ/@buy>'+ addSpace('', 14) + '^<������Ʒ/@sell>\'
  +'|{cmd}<�������/@lingfuBuy>\'

  +'|{cmd}<�˳�/@doexit>'
  );
  end;
end;

function geiLinfItemName(itemId : integer):string; 
begin
    result := '';
    case itemId of        

        1 : result := '���洫��ʯ';
        2 : result := '���ش���ʯ';
        3 : result := '�������ʯ';
        4 : result := '�޸���ˮ';
        5 : result := '��ħʯ(С)';
        6 : result := 'Ǭ�����';
        7 : result := '��Ѩ��Ӿ���';
        8 : result := '����';
        9 : result := 'ѩ˪��ҩ��';
        10 : result := '����ҩ��ҩ��';
        11 : result := '̫��ˮ��ҩ��';
        12 : result := 'ǧ�ﴫ��';
        13 : result := '50������';
        14 : result := '������Ӿ���';
		15 : result := '��Ѫʯ(С)';
		16 : result := 'ħѪʯ(��)';
    end;
end;

function needLFnum(itemId : integer):integer; 
begin
    result := 0;
    case itemId of        
        1 : result := 40;
        2 : result := 40;
        3 : result := 40;
        4 : result := 5;
        5 : result := 10;
        6 : result := 5;
        7 : result := 10;
        8 : result := 20;
        9 : result := 2;
        10 : result := 10;
        11 : result := 5;
        12 : result := 50;
        13 : result := 100;
        14 : result := 10;
		15 : result := 20;
		16 : result := 100;

    end;
end;

procedure _lingfuBuy;
var str : string;
i : integer;
begin
   str := '';
   
   for i:=5 to 16 do
   begin
       str := str + '<' + geiLinfItemName(i) + '/@buyLFitem_Dlg~' + inttostr(i) + '>'
       if (i mod 2) = 1 then
       str := str + '^'
       else
       str := str + '|'; 
   end;
   This_Npc.NpcDialog(This_Player,
  '��ѡ����Ҫ�������Ʒ\ \|{cmd}'
  +str
  +'{cmd}<����/@main>'
  );
end;

procedure _buyLFitem_Dlg(strId : string);
var str : string;
i : integer;
begin
   str := '';
   
   i := StrToIntDef(strId,0);
 
   This_Npc.NpcDialog(This_Player,
  '����<' + geiLinfItemName(i) + '/c=red>��Ҫ<' + inttostr(needLFnum(i)) + '���/c=red>��|��ȷ��ʹ��' + inttostr(needLFnum(i)) + '�������' + geiLinfItemName(i) + '��\ \'
  +'|{cmd}<ȷ�Ϲ���' + geiLinfItemName(i) + '/@buyLFitem~' + strId + '>'
  +'{cmd}<����/@lingfuBuy>'
  );
end;

procedure _buyLFitem(strId : string);
var itemId , needLf: integer;
iName : string;
begin
    itemId := StrToIntDef(strId , 0);
    needLf := needLFnum(itemId);
    iName := geiLinfItemName(itemId);
    
    if iName <> '' then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
            if This_Player.MyLFnum >= needLf then
            begin
                This_Player.DecLF(10001, needLf, false);
                This_Player.Give(iName,1);
                This_Npc.NpcDialog(This_Player,
                '��ϲ����:' + iName + '��'
                +'|{cmd}<��������' + iName + ' /@buyLFitem~' + strId + '>'
                +'|{cmd}<����/@lingfuBuy>'
                );
            end else
            This_Npc.NpcDialog(This_Player,
          '����������㣬�޷�����'
          +'{cmd}<����/@main>'
          );
        end else
        This_Npc.NpcDialog(This_Player,
      '�����ռ䲻�㣬�޷�����'
      +'{cmd}<����/@main>'
      );
    end;
end;

procedure _baijin;
begin
  This_Npc.NpcDialog(This_Player, 
  '�����Ҹ�ѧ��ļ��ܣ����Ҫ���ұ���������ܣ��ҿ��԰������׽��������һ���׽���ְ���\��һ����Ҫ֧��10���ң�\��Ҫ��ҪҲ���Ұ�����һ������\'
  +'|{cmd}<�������׽����/@baijin1>\ \'
  +'|{cmd}<����/@main>'
  );
end;

procedure _baijin1;
begin
  if This_Player.GetBagItemCount('�׽����') < 6 then
  begin
    This_Npc.NpcDialog(This_Player, 
    '��û���㹻�İ׽���ְ���'
    );
  end
  else if This_Player.GoldNum >= 100000 then
  begin
    This_Player.DecGold(100000);
    This_Player.Take('�׽����',6);
    This_Player.Give('�׽���ְ�',1);
    This_Npc.NpcDialog(This_Player,
    '�Ѿ������ˣ����費��Ҫ��������\ \'
    +'|{cmd}<������/@baijin1>\ \'
    +'|{cmd}<����/@main>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��û���㹻��ң���Ҳ�ﲻ���㰡��'
    );
  end;
end; 

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ������Ʒ��?\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '���ǳ������򣬻���������ᣬ�޸��͵�.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\����������ͨ��3����'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|{cmd}<����/@main>'
  );
end;



//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(25);
  This_Npc.AddStdMode(30);
  This_Npc.FillGoods('�������Ѿ�',100,1);
  This_Npc.FillGoods('������;�',100,1);
  This_Npc.FillGoods('�л�سǾ�',100,1);
  This_Npc.FillGoods('�����',100,1); 
  This_Npc.FillGoods('�޸���',50,1);
  This_Npc.FillGoods('�������Ѿ��',100,1);
  This_Npc.FillGoods('������;��',100,1);
  This_Npc.FillGoods('�л�سǾ��',100,1);
  This_Npc.FillGoods('ľ��Կ��',100,1);
  This_Npc.FillGoods('��ˮ',5,5);
  This_Npc.FillGoods('�����(��)',50,1);
  This_Npc.FillGoods('���������',10,1);
  This_Npc.SetRebate(100);
end;

//=============================================================================
procedure _SHISHI_108;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ȼ����Ը��æ���Ǻðɣ����س������и�ʯĹ��ڣ����ȥ��ô��\'+
   '����һ����֪����ûȥ��������������Ҳ�ܰ����æô��\'+
   '����ȥ���濴���ɣ�����<ʯĹһ��/c=red>˳�ְ��ҽ��<5ֻ��Ұ��/c=red>�ɡ�\'+
   '������Ŀ�꣺����ʯĹһ�㣬ɱ��5ֻ��Ұ��\ \'+
   '|{cmd}<ʯĹ���õģ������ȥ/@SHISHI_108_01>\');
end;

procedure _SHISHI_108_01;
begin
   if This_Player.GetV(108,1) = 1 then
   begin
      This_Player.Give('����',360000);
      This_Player.SetV(108,1,2);
      This_Player.SetV(108,2,0);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

procedure _HeiYZ108_3;
begin
   if This_Player.GetV(108,1) = 3 then
   begin
      This_Player.Give('����',360000);
      This_Player.SetV(108,1,4);
      This_Player.SetV(108,3,0);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

procedure _Dowhat108;
begin
   This_Npc.NpcDialog(This_Player,
   '��ҹ�������ܵ���ʯĹ�����ͻȻϮ����\'+
   '�ܶ��˶�������ץ����ʯĹ��Ѩ�У���Ҳû�г�����\'+
   '�ҵ����˱�ɱ��������ʬ�嶼�������ˣ�������ֻʣ����һ���ˣ�\'+
   'Ϊ��Ѱ�����ǣ���Щ���Ҳ��ϵĽ���ʯĹ��Ѩ����ϧһֱ�޷��ҵ���\'+
   '��ֻ��һ����Ը��ϣ�����һ����ǵ�ʬ�ǰ��ᡣ\'+
   '������Ŀ�꣺����ʯĹ���㣬ɱ����ɫ������\'+
   'Ѱ�����˺����˵��ź���\ \'+
   '|{cmd}<��Ҷ�������һ�������һ��ź�/@Dowhat108_01>\');
end;

procedure _Dowhat108_01;
begin
   if This_Player.GetV(108,1) = 5 then
   begin
      This_Player.Give('����',360000);
      This_Player.SetV(108,1,6);
      This_Player.SetV(108,4,0);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

procedure _Jinli108;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ⱥ���µ�Ұ������Ѿ�ӵ����һ�����ǻۣ�\'+
   '˵��������˵����������ʧ�ĺ��Ǳ�������ȥ������Ʒ�������ϡ�\'+
   '�����һ�ʣ�µĺ��Ǻ�ô�������ˣ�\'+
   '������Ŀ�꣺����ʯĹ���㣬ɱ������ĺ�Ұ��\'+
   'ʣ�µĺ���һ���ں�Ұ�����ϣ�\ \'+
   '|{cmd}<�õģ���һ�����ҵ���/@Jinli108_01>\');
end;

procedure _Jinli108_01;
begin
   if This_Player.GetV(108,1) = 7 then
   begin
      This_Player.Give('����',300000);
      This_Player.SetV(108,1,8);
      This_Player.SetV(108,5,0);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

procedure _TouGuoL108;
begin
   This_Npc.NpcDialog(This_Player,
   '��ʿ�������ĵ�лл�㡣����㲻�������ҾͰ����͸���ɡ�\ \'+
   '����ô�У���������������⣬һ���̺��Ŵ�����������\'+
   '|{cmd}<�㻹���Լ����������/@TouGuoL108_01>��');
end;

procedure _TouGuoL108_01;
begin
   This_Npc.NpcDialog(This_Player,
   '�������������Ĳ������Ƿ��������˵ĺ��ǣ�\'+
   '�������������귨��������������ɡ�\'+
   '����������������߶�Ը�����Ԯ�֡������������ʸ��������\'+
   '�귨�����Ӣ��һ���Ụ����ġ������������Ҷ��Գ��˼���\'+
   '�������ã��������������������ðɣ�\ \'+
   '|{cmd}<�Ǻðɣ��ұ�֤��úõ�������/@TouGuoL108_02>��');
end;

procedure _TouGuoL108_02;
begin
   This_Npc.NpcDialog(This_Player,
   '����ţ�����Ҫ�鷳�����ת������ָ�ӹ٣����㾡������͵���\ \'+
   '|{cmd}<�õģ�û���⣬�����ȥ/@TouGuoL108_03>��');
end;

procedure _TouGuoL108_03;
begin
   if This_Player.GetV(108,1) = 9 then
   begin
      if This_Player.FreeBagNum >= 1 then
      begin
         This_Player.Give('����',320000);
         This_Player.Give('�������',1);
         This_Player.SetV(108,1,10);
         This_Player.UpdateTaskDetail(108,1);
         This_NPC.CloseDialog(This_Player);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��İ�����������������ռ��Ժ��������ҡ�');
      end;
   end;
end;

Procedure _Tongzhi108;
begin
   This_Npc.NpcDialog(This_Player,
   '�Һ������Ѿ��ܾ�û�м��ˡ���ĺ��������ǣ�\'+
   '�㿴�ң�һ�������鲻�Խ��ˡ����ҿ���ʿ��ʵ���ѽ���ƿ����\'+
   '�Һ���ʦ����һ�㽻�飬�����ʿ�Ƽ�������\'+
   'ֻ�ǲ�֪����ʿ������Σ�\ \'+
   '|{cmd}<��һֱ��Ŭ�����У����ǿ����޷�����/@Tongzhi108_01>');
end;

Procedure _Tongzhi108_01;
begin
   This_Npc.NpcDialog(This_Player,
   '������Ҫ�õ���ʦ��ָ�㣬����Ҫ�������Ĺ�ء�\'+
   '�����򼶴�Ѿ��ᳵ��·�˰ɣ�����򼶴������㡰�����ײġ���\'+
   '��һ�ֿ��µľ���а��ǯ�棬��ϲ���ݷ��ڵ��£�ȥɱ������\'+
   '��ȡǯ��ǣ�(����Ŀ�꣺������򼶴�ġ������ײġ���\'+
   'ɱ��һֻа��ǯ�棬���ǯ���)\ \'+
   '|{cmd}<а��ǯ�棿�һ�֤���ҵ������ġ�/@Tongzhi108_02>');
end;

procedure _Tongzhi108_02;
begin
   if This_Player.GetV(108,1) = 16 then
   begin
      This_Player.Give('����',360000);
      This_Player.SetV(108,1,17);
      This_Player.SetV(108,7,0);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

Procedure _Thanks108;
begin
   if This_Player.GetV(108,1) = 18 then
   begin
      if This_Player.FreeBagNum >= 1 then
      begin
        //This_Player.Give('������',1);
        This_Player.Give('����',400000);
        This_Player.SetV(108,1,19);
        This_Player.UpdateTaskDetail(108,1);
        This_NPC.CloseDialog(This_Player);
      end else
      begin
        This_Npc.NpcDialog(This_Player,
        '��İ����ռ䲻��������ô�Ͷ�����л���أ�'); 
      end;
   end;
end;
//=============================================================================

//�ű�ִ�е����
var
  RW108 : integer;
begin
   RW108 := This_Player.GetV(108,1);
   if RW108 = 19 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ�������ʦ��ô��\ \'+
      '|{cmd}<�õģ������ȥ/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 18 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ɵ�Ư�����������ҵ���ȥ����ʦ�ɣ�ϣ���������ջ�\ \'+
      '|{cmd}<лл�㣬�����ȥ����ʦ/@Thanks108>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 17 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������򼶴��·��ô��\ \'+
      '(����Ŀ�꣺������򼶴�ġ������ײġ���ɱ��һֻа��ǯ��)\ \'+
      '|{cmd}<а��ǯ�棿�һ�֤���ҵ�������/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 16 then
   begin
      This_Npc.NpcDialog(This_Player,
      '����ָ�ӹٸ����ң��ܹ���ȫ����ʯĹ����ֻ���㣬\'+
      '��������������ȥʯĹ��Ѱ�ҵĵ����ǡ��������л��\'+
      'ֻ�ǲ�֪���ҵĵ����������Σ�\ \'+
      '|{cmd}<���İɣ�ǰ������������һ��֪ͨ�㣬�����Ѷ����ء�/@Tongzhi108>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 10 then
   begin
      This_Npc.NpcDialog(This_Player,
      '����ţ�����Ҫ�鷳�����ת������ָ�ӹ٣����㾡������͵���\ \'+
      '|{cmd}<�õģ�û���⣬�����ȥ/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 9 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�⡭�����������������\ \'+
      '����������Ұ���ͷ����������ϣ�����ȥӦ��\'+
      '���ɺ����Ƴɵġ�\|{cmd}<�ҾͰ���͵�˹���/@TouGuoL108>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 8 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���ҵ�ʣ�µ��ź���ô���������ˣ���ȴ���������Ƕ���������\'+
      '����û�á���\'+
      '������Ŀ�꣺����ʯĹ���㣬ɱ������Ĺ��\'+
      'ʣ�µĺ���һ����ĳֻ�������ϣ�\ \'+
      '|{cmd}<�õģ���һ�����ҵ���/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 7 then
   begin
      This_Npc.NpcDialog(This_Player,
      'ֻʣ���⼸���Ź���ô���ҵ����˺�ʱ���ܰ�Ϣ��\'+
      '�����ң��ҿ����������һ��ô��\ \'+
      '|{cmd}<��˵�ɣ���һ��������Ϊ��/@Jinli108>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 6 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���ҵ������˵��ź���ô���������ˣ�\'+
      '��ȴ���������Ƕ�������������û�á���\'+
      '������Ŀ�꣺����ʯĹ���㣬ɱ����ɫ������\'+
      '�ź�һ����ĳֻ�������ϣ�\ \'+
      '|{cmd}<��Ҷ��������һ�������һ��ź�/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 5 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ΪʲôҪ���ң�������ܰ������ô��\ \'+
      '|{cmd}<�����������Ϊ������ʲô��/@Dowhat108>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 4 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��Ҫ�����ң�������ʯĹ����������\'+
      '������Ŀ�꣺����ʯĹһ�㣬ɱ��5ֻ��Ұ��\ \'+
      '|{cmd}<�õģ������ȥ/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 3 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ȼ���Ż����ˣ������㻹���������ӵġ�\'+
      '��ô��ȥ<ʯĹһ��/c=red>����ɱ<5ֻ��Ұ��/c=red>�ɣ�\'+
      '��Щ������������������Ƕ�����ˡ�\'+
      '������Ŀ�꣺����ʯĹһ�㣬ɱ��5ֻ��Ұ��\ \'+
      '|{cmd}<����˻����ǡ������ˣ�ɱ����˵��/@HeiYZ108_3>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��Ҫ�����ң������ʯĹ����ڶ���û���ҵ���\'+
      '������Ŀ�꣺����ʯĹһ�㣬ɱ��5ֻ��Ұ��\ \'+
      '|{cmd}<�õģ������ȥ/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if RW108 = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��˵����ָ�ӹ������������ң�\'+
      'лл���ĺ��⣬��ϧû�����ܰ�����ҡ�\ \'+
      '|{cmd}<ǰ���������������԰ɣ�/@SHISHI_108>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else
   begin
      _Normal;
   end;
    _Normal;
end.