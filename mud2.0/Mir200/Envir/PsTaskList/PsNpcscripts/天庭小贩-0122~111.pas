{
/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
   '��������Ҫ�ҵİ�����\'+
   '���������������Ʒ����ʲô��Ҫ����ľͽ����Ұɡ�\'+
   '������в�Ҫ����Ʒ����������Ի���\ \'+
   '|{cmd}<��/@buy>                      ^<������Ʒ/@guhua>\'+
   '|{cmd}<��/@sell>                      \'+  //^<�������ӵ�����/@shenyoling>
   '|{cmd}<����/@repair>                    \'+  //^<���������뷴豹���/@huishouXF>
   '|{cmd}<��������/@s_repair>                ^<�һ���Ӿ���/@chgzuduij>\'+
   '|{cmd}<�˳�/@doexit>');
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����Ҫ�������ҿ��Ǹ����ܹ���Ŷ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \' +
    '|{cmd}<����/@main>'
  );
end;

Procedure _s_repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����һ���̫�����ˣ��������в����������޲���\'+
   '����������ͨ��������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
   This_Npc.NpcDialog(This_Player,
   '�Ѿ�������ˣ��������ܲ����\' +
   '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '������Ҫ������Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;

Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������Щʲô��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;

procedure OnInitialize;
var
  i : integer;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 100, 1); 
  This_NPC.FillGoods('��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);
  This_NPC.FillGoods('��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('��ҩ(��)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(��)��', 100, 1);  
  This_NPC.FillGoods('������ҩ', 100, 1);
  This_NPC.FillGoods('����ħ��ҩ', 100, 1);  
  This_NPC.FillGoods('�����', 10, 1);
  This_NPC.FillGoods('�����(��)', 10, 1);
  This_NPC.FillGoods('���������', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);  
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);  
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);  
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  //����stdmode 
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3); 
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(16);
  This_NPC.AddStdMode(42);
  This_NPC.AddStdMode(43);
  for i := 19 to 28 do
  This_NPC.AddStdMode(i);
end;

Procedure _chgzuduij;
begin
   This_Npc.NpcDialog(This_Player,
   '����Ӿ��ᡢ�����Ӿ��ᡢа����Ӿ��ᡢ��Ѩ��Ӿ��ᡢ\'+
   'ʯĹ��Ӿ��ᶼ���Զһ���<������Ӿ���/c=red>��\����ʹ��������Ӿ���һ��أ�\ \'+
   '|{cmd}<����Ӿ���/@chgzuduij_01>        ^<�����Ӿ���/@chgzuduij_02>        ^<а����Ӿ���/@chgzuduij_03>\'+
   '|{cmd}<��Ѩ��Ӿ���/@chgzuduij_04>        ^<ʯĹ��Ӿ���/@chgzuduij_05>\ \'+
   '|{cmd}<����/@main>');
end;

Procedure ChangeJuZhou(gtname, gvname : string);
begin
   if This_Player.GetBagItemCount(gtname) > 0 then
   begin
      This_Player.Take(gtname,1);
      This_Player.Give(gvname,1);
      _chgzuduij;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�������' + gtname + '���Ͱ��������Ұɡ�\ \ \'+ 
      '|{cmd}<����/@main>');
   end;
end;

Procedure _chgzuduij_01;
begin
   ChangeJuZhou('����Ӿ���','������Ӿ���');
end;

Procedure _chgzuduij_02;
begin
   ChangeJuZhou('�����Ӿ���','������Ӿ���');
end;

Procedure _chgzuduij_03;
begin
   ChangeJuZhou('а����Ӿ���','������Ӿ���');
end;

Procedure _chgzuduij_04;
begin
   ChangeJuZhou('��Ѩ��Ӿ���','������Ӿ���');
end;

Procedure _chgzuduij_05;
begin
   ChangeJuZhou('ʯĹ��Ӿ���','������Ӿ���');
end;

Procedure _huishouXF;
begin
   This_Npc.NpcDialog(This_Player,
   '���ж�������̺ͷ�豹�����\'+
   'ÿ����һ�����̻��߷�豹��棬����������10000���顣\ \' +
   '|{cmd}<����/@XLhuishou>                        ^<��豹���/@FPhuishou>\ \'+
   '|{cmd}<����/@main>');
end;

Procedure _XLhuishou;
begin
   if This_Player.GetBagItemCount('����') >= 1 then
   begin
      This_Player.Take('����',1);
      This_Player.Give('����',10000);
      This_Npc.NpcDialog(This_Player,
      '�㻹�ж�������̺ͷ�豹�����\'+
      'ÿ����һ�����̻��߷�豹��棬����������10000���顣\ \' +
      '|{cmd}<����/@XLhuishou>                        ^<��豹���/@FPhuishou>\ \'+
      '|{cmd}<����/@main>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû������������������̾Ϳ���Ұɣ�\ \' +
      '|{cmd}<�뿪/@doexit>');
   end;
end;

Procedure _FPhuishou;
begin
   if This_Player.GetBagItemCount('��豹���') >= 1 then
   begin
      This_Player.Take('��豹���',1);
      This_Player.Give('����',10000);
      This_Npc.NpcDialog(This_Player,
      '�㻹�ж�������̺ͷ�豹�����\'+
      'ÿ����һ�����̻��߷�豹��棬����������10000���顣\ \' +
      '|{cmd}<����/@XLhuishou>                        ^<��豹���/@FPhuishou>\ \'+
      '|{cmd}<����/@main>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������з�豹���Ϳ���Ұɣ�\ \' +
      '|{cmd}<�뿪/@doexit>');
   end;
end;

Procedure jinngjinbi;
begin
   This_Npc.NpcDialog(This_Player,
   '�������Ʒ���������Ҫ�����Խ����ң����ǲ��ܻ��5���ҡ�\ \'+
   '|{cmd}<������/@jinnang_1>           ^<��Ԫ��/@jinnang_2>           ^<��Ԫ��/@jinnang_5>          ^<���鵤/@jinnang_6>\'+
   '|{cmd}<���鵤(С)/@jinnang_7>       ^<���鵤(��)/@jinnang_8>       ^<���鵤(��)/@jinnang_9>\'+
   '|{cmd}<�������鵤(С)/@jinnang_10> ^<�������鵤(��)/@jinnang_11> ^<�������鵤(��)/@jinnang_12>\'+
   '|{cmd}<Ǭ����/@jinnang_3>           ^<����/@jinnang_4>             ^<����/@jinnang_13>            ^<�ػ����/@jinnang_15>\'+
   '|{cmd}<����Կ��/@jinnang_14>         ^<����Կ��/@jinnang_16>         ^<��ˮ����/@jinnang_17>        ^<�̱�ʯ��/@jinnang_18>\'+
   '|{cmd}<ħ������/@jinnang_19>         ^<��Ѫʯ(С)/@jinnang_21>       ^<��ħʯ(С)/@jinnang_22>      ^<�±�/@jinnang_20>\'+
   '|{cmd}<һ�λ���10��Ǭ����/@jinnang_23>                     ^<����/@guhua>');
end;

Procedure _jinnang;
begin
   jinngjinbi;
end;

Procedure _jinnang_23;
begin
  if This_Player.GetBagItemCount('Ǭ����') >= 10 then
  begin
    This_Player.Take('Ǭ����',10);
    jinngjinbi;
  end
  else
  begin
      This_Npc.NpcDialog(This_Player,
      '����ôû����10��Ǭ�����������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
  end;   
end; 


//�ύ��Ʒģ��,����Ǯ
procedure HandOutItemWithoutMoney(item_name : string);
begin
   if This_Player.GetBagItemCount(item_name) >= 1 then
   begin
      This_Player.Take(item_name,1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû����'+item_name+'����������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_1;
begin
  HandOutItemWithoutMoney('������');   
end; 

Procedure _jinnang_2;
begin
  HandOutItemWithoutMoney('��Ԫ��');      
end; 

Procedure _jinnang_5;
begin
  HandOutItemWithoutMoney('��Ԫ��');      
end; 

Procedure _jinnang_6;
begin
  HandOutItemWithoutMoney('���鵤');     
end; 

Procedure _jinnang_7;
begin
  HandOutItemWithoutMoney('���鵤(С)');    
end; 

Procedure _jinnang_8;
begin
  HandOutItemWithoutMoney('���鵤(��)');    
end; 

Procedure _jinnang_9;
begin
  HandOutItemWithoutMoney('���鵤(��)');    
end; 

Procedure _jinnang_10;
begin
  HandOutItemWithoutMoney('�������鵤(С)');   
end; 

Procedure _jinnang_11;
begin
  HandOutItemWithoutMoney('�������鵤(��)');   
end; 

Procedure _jinnang_12;
begin
  HandOutItemWithoutMoney('�������鵤(��)');   
end; 

Procedure _jinnang_3;
begin
  HandOutItemWithoutMoney('Ǭ����');    
end; 

Procedure _jinnang_4;
begin
  HandOutItemWithoutMoney('����');   
end; 

Procedure _jinnang_13;
begin
  HandOutItemWithoutMoney('����');   
end; 

Procedure _jinnang_14;
begin
  HandOutItemWithoutMoney('����Կ��');   
end;

procedure _jinnang_15;
begin
  HandOutItemWithoutMoney('�ػ����'); 
end; 

procedure _jinnang_16;
begin
  HandOutItemWithoutMoney('����Կ��'); 
end;

procedure _jinnang_17;
begin
  HandOutItemWithoutMoney('��ˮ����'); 
end;

procedure _jinnang_18;
begin
  HandOutItemWithoutMoney('�̱�ʯ��'); 
end;

procedure _jinnang_19;
begin
  HandOutItemWithoutMoney('ħ������'); 
end;


procedure _jinnang_21;
begin
  HandOutItemWithoutMoney('��Ѫʯ(С)'); 
end;

procedure _jinnang_22;
begin
  HandOutItemWithoutMoney('��ħʯ(С)'); 
end;

Procedure _guhua;
begin
   This_Npc.NpcDialog(This_Player,
   '���ж����װ����\'+
   '��Ʒ�Ҷ���5���һ��գ����µ���Ʒ�ж���ľ͸��Ұɡ�\ \'+
   '|{cmd}<����ѫ��43��/@guhua1>        ^<����ѫ��44��/@guhua2>        ^<����ѫ��45��/@guhua3>\'+
   '|{cmd}<ʥս����/@guhua7>               ^<��������/@guhua8>             ^<��������/@guhua9>\'+
   '|{cmd}<�þ�֮��/@guhua4>         ^<����Ȩ��/@guhua5>         ^<���ƽ�/@guhua6>        ^<Ѫ��/@guhua13>\'+
   '|{cmd}<��֮�þ�/@guhua10>            ^<��֮����Ȩ��/@guhua11>            ^<��֮����/@guhua12>\'+
   '|{cmd}<����֮ӡ/@tianlong>                                        ^<���/@libao>\'+
   '|{cmd}<���շ�ӡ��Ʒ/@fengyin>           ^<��ѻ�����Ʒ/@jinnang>             ^<����/@main>');
end;

Procedure _fengyin;
begin
   This_Npc.NpcDialog(This_Player,
   '���еķ�ӡ��Ʒ�Ҷ����գ������������ĸ��أ�\'+
   '|{cmd}<��ħ����(��ӡ)/@huanmo1>    ^<��ħ����(��ӡ)/@huanmo2> ^<��ħ��ָ(��ӡ)/@huanmo3>\'+
   '|{cmd}<��������(��ӡ)/@leizel1>    ^<��������(��ӡ)/@leizel2> ^<�����ָ(��ӡ)/@leizel3>\'+
   '|{cmd}<��Դ����(��ӡ)/@qiyuan1>    ^<��Դ����(��ӡ)/@qiyuan2> ^<��Դ��ָ(��ӡ)/@qiyuan3>\'+
   '|{cmd}<ʥս����(��ӡ)/@shenxl1>    ^<ʥս����(��ӡ)/@shensz2> ^<ʥս��ָ(��ӡ)/@shenjz3>\'+
   '|{cmd}<��������(��ӡ)/@fashxl1>    ^<��������(��ӡ)/@fashxl2> ^<�����ָ(��ӡ)/@fashxl3>\'+
   '|{cmd}<��������(��ӡ)/@tianxl1>    ^<��������(��ӡ)/@tianxl2> ^<�����ָ(��ӡ)/@tianxl3>\'+
   '|{cmd}<ʥսͷ��(��ӡ)/@shentk1>    ^<����ͷ��(��ӡ)/@fashtk1> ^<����ͷ��(��ӡ)/@tiantk1>\'+
   '|{cmd}<����ͷ��(��ӡ)/@heitie>');
end;

//�ύ��Ʒģ��,��50000��� 
//item_name �ύ��Ʒ���� ; mode ��ʾ 1��һҳ��Ʒ 2��ʾ��ӡ��Ʒ 
procedure HandOutItemForMoney(item_name : string; mode : Integer);
begin
   if This_Player.GetBagItemCount(item_name) >= 1 then
   begin
      This_Player.Take(item_name,1);
      This_Player.AddGold(50000);
      if mode = 1 then
      begin
        _guhua;
      end
      else if mode = 2 then
      begin
        _fengyin;      
      end
      else
      begin
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû����'+item_name+'����������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _shentk1;
begin
   HandOutItemForMoney('ʥսͷ��(��ӡ)', 2);   
end; 

Procedure _fashtk1;
begin
   HandOutItemForMoney('����ͷ��(��ӡ)', 2); 
end; 

Procedure _tiantk1;
begin
   HandOutItemForMoney('����ͷ��(��ӡ)', 2);  
end; 


Procedure _heitie;
begin
   HandOutItemForMoney('����ͷ��(��ӡ)', 2);  
end; 

Procedure _fashxl1;
begin
   HandOutItemForMoney('��������(��ӡ)', 2); 
end; 

Procedure _fashxl2;
begin
   HandOutItemForMoney('��������(��ӡ)', 2);  
end; 

Procedure _fashxl3;
begin
   HandOutItemForMoney('�����ָ(��ӡ)', 2); 
end; 

Procedure _tianxl1;
begin
   HandOutItemForMoney('��������(��ӡ)', 2); 
end; 

Procedure _tianxl2;
begin
   HandOutItemForMoney('��������(��ӡ)', 2); 
end; 

Procedure _tianxl3;
begin
   HandOutItemForMoney('�����ָ(��ӡ)', 2);  
end; 

Procedure _qiyuan1;
begin
   HandOutItemForMoney('��Դ����(��ӡ)', 2); 
end; 

Procedure _qiyuan2;
begin
   HandOutItemForMoney('��Դ����(��ӡ)', 2); 
end; 

Procedure _qiyuan3;
begin
   HandOutItemForMoney('��Դ��ָ(��ӡ)', 2); 
end; 

Procedure _shenxl1;
begin
   HandOutItemForMoney('ʥս����(��ӡ)', 2);  
end; 

Procedure _shensz2;
begin
   HandOutItemForMoney('ʥս����(��ӡ)', 2); 
end; 

Procedure _shenjz3;
begin
   HandOutItemForMoney('ʥս��ָ(��ӡ)', 2); 
end; 

Procedure _huanmo1;
begin
   HandOutItemForMoney('��ħ����(��ӡ)', 2);  
end; 

Procedure _huanmo2;
begin
   HandOutItemForMoney('��ħ����(��ӡ)', 2); 
end; 

Procedure _huanmo3;
begin
   HandOutItemForMoney('��ħ��ָ(��ӡ)', 2); 
end; 

Procedure _leizel1;
begin
   HandOutItemForMoney('��������(��ӡ)', 2);  
end; 

Procedure _leizel2;
begin
   HandOutItemForMoney('��������(��ӡ)', 2); 
end; 

Procedure _leizel3;
begin
   HandOutItemForMoney('�����ָ(��ӡ)', 2); 
end; 

///////////////////////////////////////////////////////////////////////////////
Procedure _libao;
begin
   HandOutItemForMoney('���', 1);    
end; 

Procedure _tianlong;
begin
   HandOutItemForMoney('����֮ӡ', 1);  
end; 

Procedure _guhua1;
begin
   HandOutItemForMoney('����ѫ��43��', 1);  
end; 

Procedure _guhua2;
begin
   HandOutItemForMoney('����ѫ��44��', 1);  
end; 

Procedure _guhua3;
begin
   HandOutItemForMoney('����ѫ��45��', 1);  
end; 

Procedure _guhua7;
begin
   HandOutItemForMoney('ʥս����', 1);  
end; 

Procedure _guhua8;
begin
   HandOutItemForMoney('��������', 1);  
end; 

Procedure _guhua9;
begin
   HandOutItemForMoney('��������', 1);  
end; 

Procedure _guhua4;
begin
   HandOutItemForMoney('�þ�֮��', 1);  
end; 

Procedure _guhua5;
begin
   HandOutItemForMoney('����Ȩ��', 1);  
end; 

Procedure _guhua6;
begin
   HandOutItemForMoney('���ƽ�', 1);  
end; 

Procedure _guhua13;
begin
   HandOutItemForMoney('Ѫ��', 1);  
end; 

Procedure _guhua10;
begin
   HandOutItemForMoney('��֮�þ�', 1);  
end; 

Procedure _guhua11;
begin
   HandOutItemForMoney('��֮����Ȩ��', 1);  
end; 

Procedure _guhua12;
begin
   HandOutItemForMoney('��֮����', 1);  
end;
 
 
Procedure _shenyoling;
begin
   This_Npc.NpcDialog(This_Player,
   '�������Ӻͼ�Ʒ�������ӿɶ��ǲ�ͬ����Ķ��������������̺���\'+
   '����������ʱ������Ʋ������ģ�����Ҫ���ڸ�����ע���µ�������\'+
   'ֻ�������������ǲ��ܻ�ȡ��������������������һ��ע���˲�䣬\'+
   'Ҳ�Ὣһ���ľ���ע��������ڣ������ҵø����㣬��ȡ����Ļ���\'+
   'ֻ��һ�Ρ������ָ������Ͱ����ǽ����Ұɡ�\ \'+
   '|{cmd}<�ָ��������ӵ�����/@lingshu_01>\'+
   '|{cmd}<�ָ���Ʒ�������ӵ�����/@lingshu_02>\'+
   '|{cmd}<����/@main>\'); 
end; 

procedure _lingshu_01;
begin
  if This_Player.GetS(18,2) = 100 then
  begin
    if This_Player.GetBagItemCount('��������') >= 1 then
    begin
      This_Player.Take('��������',1);
      This_Player.Give('��������',1);
      This_Npc.NpcDialog(This_Player,
      '������������Ѿ����»������������ͽ�����ɡ�\ \|{cmd}<����/@main>\');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '�����ָ��������ӵ������Ͱ��������Ұɡ�\ \');
    end;
  end
  else
  begin
    if This_Player.GetBagItemCount('��������') >= 1 then
    begin
      This_Player.Take('��������',1);
      This_Player.Give('��������',1);
      This_Player.SetS(18,2,100);
      This_Player.Give('����',18888);
      This_Npc.NpcDialog(This_Player,
      '������������Ѿ����»������������ͽ�����ɡ�\ \|{cmd}<����/@main>\');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '�����ָ��������ӵ������Ͱ��������Ұɡ�\ \');
    end;
  end;  
end;

procedure _lingshu_02;
begin
  if This_Player.GetS(18,3) = 100 then
  begin
    if This_Player.GetBagItemCount('��Ʒ��������') >= 1 then
    begin
      This_Player.Take('��Ʒ��������',1);
      This_Player.Give('��Ʒ��������',1);
      This_Npc.NpcDialog(This_Player,
      '��ļ�Ʒ���������Ѿ����»������������ͽ�����ɡ�\ \|{cmd}<����/@main>\');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '�����ָ���Ʒ�������ӵ������Ͱ��������Ұɡ�\ \');
    end;
  end
  else
  begin
    if This_Player.GetBagItemCount('��Ʒ��������') >= 1 then
    begin
      This_Player.Take('��Ʒ��������',1);
      This_Player.Give('��Ʒ��������',1);
      This_Player.SetS(18,3,100);
      This_Player.Give('����',88888);
      This_Npc.NpcDialog(This_Player,
      '��ļ�Ʒ���������Ѿ����»������������ͽ�����ɡ�\ \|{cmd}<����/@main>\');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '�����ָ���Ʒ�������ӵ������Ͱ��������Ұɡ�\ \');
    end;
  end;  
end;



Begin
  domain;
end.