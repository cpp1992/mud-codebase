{
/************************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '���ҿ�����Ķ�����\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '�������ʲôҩƷ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


Procedure _huolong;
begin
   This_Npc.NpcDialog(This_Player,
   '������֮�ġ�����������ŭ���ģ���������ʹ�úϻ���\'+
   '�ڡ�����֮�ġ��з��������Ʒ��ŭ����������ӣ��ܶ�\'+
   '��Ʒ����������ŭ��ֵ�������ż�����ɴ�������ŭ����\' +
   '���⡢ʳ����Ҷ���ؿ൨����ҳ�ȶ��ɲ�ͬ�̶�����ŭ����\'+
   '�Ż�ѩ¶���Ż���¶��Ԫ�񵤡������ࡢ��������Щ��Ʒ��\'+
   '���ԴӶ����ٲ�ͬ��������ŭ��ֵ��\ \'+
   '|{cmd}<�ϳɻ�����Ʒ/@hecheng>                   ^<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'+
   '|{cmd}<�˳�/@doexit>');
end;


Procedure _yulu;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɾŻ���¶��Ҫ�ϱ�������������������ɲݸ�1��\'+
   '������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'+
   '|{cmd}<��ʼ�ϳ�/@yulu1>\ \'+ 
   '|{cmd}<����/@main>'+addspace(' ',30)+'|{cmd}<�˳�/@doexit>');
end;

Procedure _yulu1;
begin
   if (This_Player.GetBagItemCount('�ϱ����')>=1) and (This_Player.GetBagItemCount('������')>=1) 
   and (This_Player.GetBagItemCount('�����ɲ�')>=1) then
   begin
      This_Player.Take('�ϱ����',1);
      This_Player.Take('������',1);
      This_Player.Take('�����ɲ�',1);
      This_Player.Give('�Ż���¶',1);
      This_Npc.NpcDialog(This_Player,'��ϲ�����Ż���¶�Ѿ��ϳɺ���');
   end else
   begin
      This_Npc.NpcDialog(This_Player,'�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;


Procedure _xuelu;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɾŻ�ѩ¶��Ҫ��ɫ��֦�����޲���Ҷ���ؿ൨, \'+
   '��Ҷ�������ֲ�ҩ��1����\'+
   '������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'+
   '|{cmd}<��ʼ�ϳ�/@xuelu1>\ \'+
   '|{cmd}<����/@main>'+addspace(' ',30)+'|{cmd}<�˳�/@doexit>');
end;


Procedure _xuelu1;
begin
   if (This_Player.GetBagItemCount('��ɫ��֦��')>=1) and (This_Player.GetBagItemCount('�޲���Ҷ')>=1) 
   and (This_Player.GetBagItemCount('�ؿ൨')>=1) and (This_Player.GetBagItemCount('��Ҷ��')>=1) then
   begin
      This_Player.Take('��ɫ��֦��',1);
      This_Player.Take('�޲���Ҷ',1);
      This_Player.Take('�ؿ൨',1);
      This_Player.Take('��Ҷ��',1);
      This_Player.Give('�Ż�ѩ¶',1);
      This_Npc.NpcDialog(This_Player,'��ϲ�����Ż�ѩ¶�Ѿ��ϳɺ���');
   end else
   begin
      This_Npc.NpcDialog(This_Player,'�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;



Procedure _qidan;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�Ԫ����Ҫ��֩�����ݡ����ѡ�Ы�ӵ�β�͸�4����\'+
   '������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'+
   '|{cmd}<��ʼ�ϳ�/@qidan1>\ \'+
   '|{cmd}<����/@main>'+addspace(' ',30)+'|{cmd}<�˳�/@doexit>');
end;

Procedure _qidan1;
begin
   if (This_Player.GetBagItemCount('��֩������')>=4) and (This_Player.GetBagItemCount('����')>=4) 
   and (This_Player.GetBagItemCount('Ы�ӵ�β��')>=4) then
   begin
      This_Player.Take('��֩������',4);
      This_Player.Take('����',4);
      This_Player.Take('Ы�ӵ�β��',4);
      This_Player.Give('Ԫ��',1);
      This_Npc.NpcDialog(This_Player,'��ϲ����Ԫ���Ѿ��ϳɺ���');
   end else
   begin
      This_Npc.NpcDialog(This_Player,'�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;


Procedure _qigao;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɻ�������Ҫ��Ҫ���⡢�⡢ʳ����Ҷ��4����ͬ\'+
   'ʱ����Ҫʳ�����Ĺ�ʵ1����\'+
   '������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'+
   '|{cmd}<��ʼ�ϳ�/@qigao1>\ \'+
   '|{cmd}<����/@main>'+addspace(' ',30)+'|{cmd}<�˳�/@doexit>');
end;


Procedure _qigao1;
begin
   if (This_Player.GetBagItemCount('����')>=4) and (This_Player.GetBagItemCount('��')>=4) 
   and (This_Player.GetBagItemCount('ʳ����Ҷ')>=4) and (This_Player.GetBagItemCount('ʳ�����Ĺ�ʵ')>=1) then
   begin
      This_Player.Take('����',4);
      This_Player.Take('��',4);
      This_Player.Take('ʳ����Ҷ',4);
      This_Player.Take('ʳ�����Ĺ�ʵ',1);
      This_Player.Give('������',1);
      This_Npc.NpcDialog(This_Player,'��ϲ�����������Ѿ��ϳɺ���');
   end else
   begin
      This_Npc.NpcDialog(This_Player,'�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;



Procedure _hecheng;
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�û����ȫ��͸���е����ܣ����Ժϳɵ���Ʒ�������ޣ�\'+
   '��͸���������ϳ�ʲôҩƷ�ɡ�\ \'+
   '|{cmd}<�Ż���¶/@yulu>'+addspace(' ',18)+'|{cmd}<�Ż�ѩ¶/@xuelu>\'+
   '|{cmd}<Ԫ��/@qidan>'+addspace(' ',20)+'|{cmd}<������/@qigao>\'+
   '|{cmd}<�鿴�ϳ��䷽/@lookfor>\'+
   '|{cmd}<�ر�/@doexit>');
end;


Procedure _lookfor;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϻ�����ǿ�󣬵�ʹ����������Ҫӵ�С�����֮�ġ���\'+
   '��֪������˵��������֮�ġ������Ҷ϶���֪��һ��֪���\'+
   '������֮�ġ�����������ŭ���ģ���������ʹ�úϻ���\'+
   '�ڡ�����֮�ġ��з��������Ʒ��ŭ����������ӡ���Ʒ��\'+
   'ʵ�кܶ��֣���ͬ���䷽�ܺϳɳ���ͬ�Ļ�����Ʒ���һ���\'+
   '���ܶ��֡�����֮�ġ�����������������Ҫ���ְɡ�\'+
   '|{cmd}<�Ż���¶/@yulu2>'+addspace(' ',20)+'|{cmd}<�Ż�ѩ¶/@xuelu2>\'+
   '|{cmd}<Ԫ��/@qidan2>'+addspace(' ',22)+'|{cmd}<������/@qigao2>\'+
   '|{cmd}<����/@main>');
end;

Procedure _yulu2;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɾŻ���¶��Ҫ�ϱ�������������������ɲݸ�1��\'+
   '������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'+
   '|{cmd}<����/@main>'+addspace(' ',30)+'|{cmd}<�˳�/@doexit>');
end;

Procedure _xuelu2;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɾŻ�ѩ¶��Ҫ��ɫ��֦�����޲���Ҷ���ؿ൨, \'+
   '��Ҷ�������ֲ�ҩ��1����\'+
   '������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'+
   '|{cmd}<����/@main>'+addspace(' ',30)+'|{cmd}<�˳�/@doexit>');
end;

Procedure _qidan2;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�Ԫ����Ҫ��֩�����ݡ����ѡ�Ы�ӵ�β�͸�4����\'+
   '������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'+
   '|{cmd}<����/@main>'+addspace(' ',30)+'|{cmd}<�˳�/@doexit>');
end;

Procedure _qigao2;
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɻ�������Ҫ��Ҫ���⡢�⡢ʳ����Ҷ��4����ͬ\'+
   'ʱ����Ҫʳ�����Ĺ�ʵ1����\'+
   '������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'+
   '|{cmd}<����/@main>'+addspace(' ',30)+'|{cmd}<�˳�/@doexit>');
end;



procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 200, 1); 
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
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  //����stdmode  
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(25);
  This_NPC.AddStdMode(42);
end;




Begin
   {$IFDEF Q136_hero}
   This_Npc.NpcDialog(This_Player,
   '��л���������������һЩ������ҩƷ��\ \'+
   '|{cmd}<��ҩƷ/@buy> '+addspace(' ',20)+'|{cmd}<��ҩƷ/@sell> \'+
   '|{cmd}<�˳�/@doexit>');
   {$ELSE}
   This_Npc.NpcDialog(This_Player,
   '��л���������������һЩ������ҩƷ��\ \'+
   '|{cmd}<�ϳɻ�����Ʒ/@hecheng>'+addspace(' ',15)+'|{cmd}<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'+
   '|{cmd}<����������֮�ġ�������/@huolong>\ \'+
   '|{cmd}<��ҩƷ/@buy> '+addspace(' ',20)+'|{cmd}<��ҩƷ/@sell> \'+
   '|{cmd}<�˳�/@doexit>');
   {$ENDIF}
end.