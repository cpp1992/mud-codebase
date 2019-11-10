{
/************************************************************************}
PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;



Procedure givegold50000;
begin
   This_Player.AddGold(50000);
   This_Npc.NpcDialog(This_Player,
   '�㻹�ж����װ����\'+
   '��Ʒ�Ҷ���5���һ��գ����µ���Ʒ�ж���ľ͸��Ұɡ�\'+
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
   '|{cmd}<ʥս����(��ӡ)/@shenxl1>    ^<ʥս����(��ӡ)/@shenxl2> ^<ʥս��ָ(��ӡ)/@shenxl3>\'+
   '|{cmd}<��������(��ӡ)/@fashxl1>    ^<��������(��ӡ)/@fashxl2> ^<�����ָ(��ӡ)/@fashxl3>\'+
   '|{cmd}<��������(��ӡ)/@tianxl1>    ^<��������(��ӡ)/@tianxl2> ^<�����ָ(��ӡ)/@tianxl3>\'+
   '|{cmd}<ʥսͷ��(��ӡ)/@shentk1>    ^<����ͷ��(��ӡ)/@fashtk1> ^<����ͷ��(��ӡ)/@tiantk1>\'+
   '|{cmd}<����ͷ��(��ӡ)/@heitie>');
end;

Procedure fengyin01;
begin
   This_Player.AddGold(50000);
   This_Npc.NpcDialog(This_Player,
   '���еķ�ӡ��Ʒ�Ҷ����գ��㻹���������ĸ��أ�\'+
   '|{cmd}<��ħ����(��ӡ)/@huanmo1>    ^<��ħ����(��ӡ)/@huanmo2> ^<��ħ��ָ(��ӡ)/@huanmo3>\'+
   '|{cmd}<��������(��ӡ)/@leizel1>    ^<��������(��ӡ)/@leizel2> ^<�����ָ(��ӡ)/@leizel3>\'+
   '|{cmd}<��Դ����(��ӡ)/@qiyuan1>    ^<��Դ����(��ӡ)/@qiyuan2> ^<��Դ��ָ(��ӡ)/@qiyuan3>\'+
   '|{cmd}<ʥս����(��ӡ)/@shenxl1>    ^<ʥս����(��ӡ)/@shenxl2> ^<ʥս��ָ(��ӡ)/@shenxl3>\'+
   '|{cmd}<��������(��ӡ)/@fashxl1>    ^<��������(��ӡ)/@fashxl2> ^<�����ָ(��ӡ)/@fashxl3>\'+
   '|{cmd}<��������(��ӡ)/@tianxl1>    ^<��������(��ӡ)/@tianxl2> ^<�����ָ(��ӡ)/@tianxl3>\'+
   '|{cmd}<ʥսͷ��(��ӡ)/@shentk1>    ^<����ͷ��(��ӡ)/@fashtk1> ^<����ͷ��(��ӡ)/@tiantk1>\'+
   '|{cmd}<����ͷ��(��ӡ)/@heitie>');
end;


Procedure _shentk1;
begin
   if This_Player.GetBagItemCount('ʥսͷ��(��ӡ)') >= 1 then
   begin
      This_Player.Take('ʥսͷ��(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _fashtk1;
begin
   if This_Player.GetBagItemCount('����ͷ��(��ӡ)') >= 1 then
   begin
      This_Player.Take('����ͷ��(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _tiantk1;
begin
   if This_Player.GetBagItemCount('����ͷ��(��ӡ)') >= 1 then
   begin
      This_Player.Take('����ͷ��(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _heitie;
begin
   if This_Player.GetBagItemCount('����ͷ��(��ӡ)') >= 1 then
   begin
      This_Player.Take('����ͷ��(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _fashxl1;
begin
   if This_Player.GetBagItemCount('��������(��ӡ)') >= 1 then
   begin
      This_Player.Take('��������(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _fashxl2;
begin
   if This_Player.GetBagItemCount('��������(��ӡ)') >= 1 then
   begin
      This_Player.Take('��������(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _fashxl3;
begin
   if This_Player.GetBagItemCount('�����ָ(��ӡ)') >= 1 then
   begin
      This_Player.Take('�����ָ(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _tianxl1;
begin
   if This_Player.GetBagItemCount('��������(��ӡ)') >= 1 then
   begin
      This_Player.Take('��������(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 



Procedure _tianxl2;
begin
   if This_Player.GetBagItemCount('��������(��ӡ)') >= 1 then
   begin
      This_Player.Take('��������(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _tianxl3;
begin
   if This_Player.GetBagItemCount('�����ָ(��ӡ)') >= 1 then
   begin
      This_Player.Take('�����ָ(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _qiyuan1;
begin
   if This_Player.GetBagItemCount('��Դ����(��ӡ)') >= 1 then
   begin
      This_Player.Take('��Դ����(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _qiyuan2;
begin
   if This_Player.GetBagItemCount('��Դ����(��ӡ)') >= 1 then
   begin
      This_Player.Take('��Դ����(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _qiyuan3;
begin
   if This_Player.GetBagItemCount('��Դ��ָ(��ӡ)') >= 1 then
   begin
      This_Player.Take('��Դ��ָ(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _shenxl1;
begin
   if This_Player.GetBagItemCount('ʥս����(��ӡ)') >= 1 then
   begin
      This_Player.Take('ʥս����(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 



Procedure _shenxl2;
begin
   if This_Player.GetBagItemCount('ʥս����(��ӡ)') >= 1 then
   begin
      This_Player.Take('ʥս����(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _shenxl3;
begin
   if This_Player.GetBagItemCount('ʥս��ָ(��ӡ)') >= 1 then
   begin
      This_Player.Take('ʥս��ָ(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _huanmo1;
begin
   if This_Player.GetBagItemCount('��ħ����(��ӡ)') >= 1 then
   begin
      This_Player.Take('��ħ����(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _huanmo2;
begin
   if This_Player.GetBagItemCount('��ħ����(��ӡ)') >= 1 then
   begin
      This_Player.Take('��ħ����(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _huanmo3;
begin
   if This_Player.GetBagItemCount('��ħ��ָ(��ӡ)') >= 1 then
   begin
      This_Player.Take('��ħ��ָ(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _leizel1;
begin
   if This_Player.GetBagItemCount('��������(��ӡ)') >= 1 then
   begin
      This_Player.Take('��������(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 



Procedure _leizel2;
begin
   if This_Player.GetBagItemCount('��������(��ӡ)') >= 1 then
   begin
      This_Player.Take('��������(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _leizel3;
begin
   if This_Player.GetBagItemCount('�����ָ(��ӡ)') >= 1 then
   begin
      This_Player.Take('�����ָ(��ӡ)',1);        
      fengyin01;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _libao;
begin
   if This_Player.GetBagItemCount('���') >= 1 then
   begin
      This_Player.Take('���',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _tianlong;
begin
   if This_Player.GetBagItemCount('����֮ӡ') >= 1 then
   begin
      This_Player.Take('����֮ӡ',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _guhua1;
begin
   if This_Player.GetBagItemCount('����ѫ��43��') >= 1 then
   begin
      This_Player.Take('����ѫ��43��',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _guhua2;
begin
   if This_Player.GetBagItemCount('����ѫ��44��') >= 1 then
   begin
      This_Player.Take('����ѫ��44��',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _guhua3;
begin
   if This_Player.GetBagItemCount('����ѫ��45��') >= 1 then
   begin
      This_Player.Take('����ѫ��45��',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _guhua7;
begin
   if This_Player.GetBagItemCount('ʥս����') >= 1 then
   begin
      This_Player.Take('ʥս����',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _guhua8;
begin
   if This_Player.GetBagItemCount('��������') >= 1 then
   begin
      This_Player.Take('��������',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _guhua9;
begin
   if This_Player.GetBagItemCount('��������') >= 1 then
   begin
      This_Player.Take('��������',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 



Procedure _guhua4;
begin
   if This_Player.GetBagItemCount('�þ�֮��') >= 1 then
   begin
      This_Player.Take('�þ�֮��',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _guhua5;
begin
   if This_Player.GetBagItemCount('����Ȩ��') >= 1 then
   begin
      This_Player.Take('����Ȩ��',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 



Procedure _guhua6;
begin
   if This_Player.GetBagItemCount('���ƽ�') >= 1 then
   begin
      This_Player.Take('���ƽ�',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _guhua13;
begin
   if This_Player.GetBagItemCount('Ѫ��') >= 1 then
   begin
      This_Player.Take('Ѫ��',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _guhua10;
begin
   if This_Player.GetBagItemCount('��֮�þ�') >= 1 then
   begin
      This_Player.Take('��֮�þ�',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _guhua11;
begin
   if This_Player.GetBagItemCount('��֮����Ȩ��') >= 1 then
   begin
      This_Player.Take('��֮����Ȩ��',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 


Procedure _guhua12;
begin
   if This_Player.GetBagItemCount('��֮����') >= 1 then
   begin
      This_Player.Take('��֮����',1);        
      givegold50000;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end;
 

Procedure _jinnang;
begin
   This_Npc.NpcDialog(This_Player,
   '�������Ʒ���������Ҫ�����Խ����ң����ǲ��ܻ��5���ҡ�\ \'+
   '|{cmd}<������/@jinnang_1>            ^<��Ԫ��/@jinnang_2>            ^<��Ԫ��/@jinnang_5>        ^<���鵤/@jinnang_6>\'+
   '|{cmd}<���鵤(С)/@jinnang_7>        ^<���鵤(��)/@jinnang_8>        ^<���鵤(��)/@jinnang_9>\'+
   '|{cmd}<�������鵤(С)/@jinnang_10>    ^<�������鵤(��)/@jinnang_11>    ^<�������鵤(��)/@jinnang_12>\'+
   '|{cmd}<Ǭ����/@jinnang_3>            ^<����/@jinnang_4>              ^<����/@jinnang_13>\'+
   '|{cmd}<����Կ��/@jinnang_14>\ \'+
   '|{cmd}<����/@main>');
end;

Procedure jinngjinbi;
begin
   This_Npc.NpcDialog(This_Player,
   '�������Ʒ���������Ҫ�����Խ����ң����ǲ��ܻ��5���ҡ�\ \'+
   '|{cmd}<������/@jinnang_1>            ^<��Ԫ��/@jinnang_2>            ^<��Ԫ��/@jinnang_5>        ^<���鵤/@jinnang_6>\'+
   '|{cmd}<���鵤(С)/@jinnang_7>        ^<���鵤(��)/@jinnang_8>        ^<���鵤(��)/@jinnang_9>\'+
   '|{cmd}<�������鵤(С)/@jinnang_10>    ^<�������鵤(��)/@jinnang_11>    ^<�������鵤(��)/@jinnang_12>\'+
   '|{cmd}<Ǭ����/@jinnang_3>            ^<����/@jinnang_4>              ^<����/@jinnang_13>\'+
   '|{cmd}<����Կ��/@jinnang_14>\ \'+
   '|{cmd}<����/@main>');
end;



Procedure _jinnang_1;
begin
   if This_Player.GetBagItemCount('������') >= 1 then
   begin
      This_Player.Take('������',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_2;
begin
   if This_Player.GetBagItemCount('��Ԫ��') >= 1 then
   begin
      This_Player.Take('��Ԫ��',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_5;
begin
   if This_Player.GetBagItemCount('��Ԫ��') >= 1 then
   begin
      This_Player.Take('��Ԫ��',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_6;
begin
   if This_Player.GetBagItemCount('���鵤') >= 1 then
   begin
      This_Player.Take('���鵤',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_7;
begin
   if This_Player.GetBagItemCount('���鵤(С)') >= 1 then
   begin
      This_Player.Take('���鵤(С)',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_8;
begin
   if This_Player.GetBagItemCount('���鵤(��)') >= 1 then
   begin
      This_Player.Take('���鵤(��)',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_9;
begin
   if This_Player.GetBagItemCount('���鵤(��)') >= 1 then
   begin
      This_Player.Take('���鵤(��)',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 
Procedure _jinnang_10;
begin
   if This_Player.GetBagItemCount('�������鵤(С)') >= 1 then
   begin
      This_Player.Take('�������鵤(С)',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_11;
begin
   if This_Player.GetBagItemCount('�������鵤(��)') >= 1 then
   begin
      This_Player.Take('�������鵤(��)',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_12;
begin
   if This_Player.GetBagItemCount('�������鵤(��)') >= 1 then
   begin
      This_Player.Take('�������鵤(��)',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_3;
begin
   if This_Player.GetBagItemCount('Ǭ����') >= 1 then
   begin
      This_Player.Take('Ǭ����',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 
Procedure _jinnang_4;
begin
   if This_Player.GetBagItemCount('����') >= 1 then
   begin
      This_Player.Take('����',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_13;
begin
   if This_Player.GetBagItemCount('����') >= 1 then
   begin
      This_Player.Take('����',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 

Procedure _jinnang_14;
begin
   if This_Player.GetBagItemCount('����Կ��') >= 1 then
   begin
      This_Player.Take('����Կ��',1);        
      jinngjinbi;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ôû��������������оͿ���Ұɣ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end; 





Begin
   This_Npc.NpcDialog(This_Player,
   '���ж����װ����\'+
   '��Ʒ�Ҷ���5���һ��գ����µ���Ʒ�ж���ľ͸��Ұɡ�\ \'+
   '|{cmd}<����ѫ��43��/@guhua1>        ^<����ѫ��44��/@guhua2>        ^<����ѫ��45��/@guhua3>\'+
   '|{cmd}<ʥս����/@guhua7>               ^<��������/@guhua8>             ^<��������/@guhua9>\'+
   '|{cmd}<�þ�֮��/@guhua4>         ^<����Ȩ��/@guhua5>         ^<���ƽ�/@guhua6>        ^<Ѫ��/@guhua13>\'+
   '|{cmd}<��֮�þ�/@guhua10>            ^<��֮����Ȩ��/@guhua11>            ^<��֮����/@guhua12>\'+
   '|{cmd}<����֮ӡ/@tianlong>                                        ^<���/@libao>\'+
   '|{cmd}<���շ�ӡ��Ʒ/@fengyin>           ^<��ѻ�����Ʒ/@jinnang>             ^<�뿪/@doexit>');
end.