{
*******************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _Exit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ���Ķ������ң��һ����ü�Ǯ�ġ�\'+
   '���ǻ��չ�����ҩ��\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫʲô��Ʒ��\'+
   '�������е������Ѿ���һЩ�ɣ�\ \'+
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
      This_Npc.NpcDialog(This_Player,'��ϲ�����Ż���¶�Ѿ��ϳɺ��ˡ�');
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
      This_Npc.NpcDialog(This_Player,'��ϲ�����Ż�ѩ¶�Ѿ��ϳɺ��ˡ�');
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
      This_Npc.NpcDialog(This_Player,'��ϲ����Ԫ���Ѿ��ϳɺ��ˡ�');
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
      This_Npc.NpcDialog(This_Player,'��ϲ�����������Ѿ��ϳɺ��ˡ�');
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

Procedure _QUEST;
begin
   This_Npc.NpcDialog(This_Player,
   '��Щҩˮ����������Ĺ������ٶȣ�����ֵ�ȵȣ���˵��������\'+
   '�����ǻ�ȡһ��ħ������ô�õĶ�����Ȼ�������׾Ϳ��Եõ��ģ�\'+
   '��������Ͽ�Ⱥ��񾭳�����֡�\ \'+
   '|{cmd}<����/@main>');
end;

procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 200, 1); 
  This_NPC.FillGoods('�������Ѿ�', 1000, 1);
  //����stdmode  
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3);
  This_NPC.AddStdMode(42);
end;

procedure _normal;
begin
  {$IFDEF Q136_hero}
  This_Npc.NpcDialog(This_Player,
   '��л������Ϊ������ʲô��\ \'+
   '|{cmd}<����Ʒ/@buy>                         ^<����Ʒ/@sell> \'+
   '|{cmd}<�Ի�/@QUEST>\'+
   '|{cmd}<�˳�/@exit>');
  {$ELSE}
  This_Npc.NpcDialog(This_Player,
   '��л������Ϊ������ʲô��\ \'+
   '|{cmd}<�ϳɻ�����Ʒ/@hecheng>                   ^<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'+
   '|{cmd}<����������֮�ġ�������/@huolong>\'+
   '|{cmd}<����Ʒ/@buy>                         ^<����Ʒ/@sell> \'+
   '|{cmd}<�Ի�/@QUEST>\'+
   '|{cmd}<�˳�/@exit>');
   {$ENDIF}
end;

//------------------------------------------------------------------------------
//�ɳ�����ģ�� 
procedure _automove1;
begin
  if This_Player.GetV(104,1) = 1 then
  begin
    This_Player.SetV(104,1,2);
    This_Player.UpdateTaskDetail(104,1);
    This_Player.SetV(104,2,0);
    //This_Player.AutogotoMap('1',84,277);
    This_NPC.CloseDialog(This_Player);
  end
  else if This_Player.GetV(104,1) = 2 then
  begin
    //This_Player.AutogotoMap('1',84,277);
    This_NPC.CloseDialog(This_Player);
  end
  else
  begin
    This_NPC.CloseDialog(This_Player);
  end; 
end;

procedure _mission104;
begin
  if This_Player.GetV(104,1) = 4 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��������ǰ�ǵð�����ϴ�ɾ���\'
    +'������Ŀ�꣺ɱ��3ֻ��棬��ȡ3���鱨ҩˮ��\ \'
    +'|{cmd}<�õģ������ȥ/@mission104_1>\ \' 
    +'|{cmd}<���б����������/@normal>'
    );
  end
  else if This_Player.GetV(104,1) = 3 then
  begin
    This_Player.Give('����', 100000);
    This_Player.SetV(104,1,4);
    This_Player.UpdateTaskDetail(104,1);
    This_Player.SetV(104,3,0);
    This_Npc.NpcDialog(This_Player,
    '��˵�����鱨���������Ǽ���ֽƬ����ȫ������������д��ʲô����\'
    +'Ŷ�����������ˣ���������鱨������Ҫ��������ʵ����������ֵ�\'
    +'�������������������ķ�����Ͽ���ȡ�á�\'
    +'���������ǰ�ǵð��Լ�ϴ�ɾ���\'
    +'������Ŀ�꣺ɱ��3ֻ��棬��ȡ3���鱨ҩˮ��\ \'
    +'|{cmd}<��棬�ö��ĵĶ�����/@mission104_1>\ \'
    +'|{cmd}<���б����������/@normal>' 
    ); 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�����ռ���3���鱨����'); 
  end;
end;

procedure _mission104_1;
begin
  if This_Player.GetV(104,1) = 4 then
  begin
    //This_Player.AutogotoMap('D022',338,356);
    This_NPC.CloseDialog(This_Player);
  end;
end;

procedure _mission104_1_fns;
begin
  if This_Player.GetV(104,1) = 6 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��������������ϰ���ô��\ \'
    +'|{cmd}<�����ȥ/@doexit>\ \'
    +'|{cmd}<���б����������/@normal>'
    ); 
  end
  else if This_Player.GetV(104,1) = 5 then
  begin
    This_Player.SetV(104,1,6);
    This_Player.UpdateTaskDetail(104,1);
    This_Player.Give('����',100000);
    This_Npc.NpcDialog(This_Player,
    '��ô�����ϻ�����ô���ţ���ȥ�������������ϰ�ɣ��������Աߡ�\'
    +'��Ҫ�о����鱨����˵�����ɵվ������Ͻ�ȥ���Ͻ�ȥ��\ \'
    +'|{cmd}<���ҳ�����˵�/@doexit>\ \'
    +'|{cmd}<���б����������/@normal>'
    ); 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��ô�����ռ�����3���鱨ҩˮ����'); 
  end;
end;

procedure _mission104_3;
begin
  if This_Player.GetV(104,1) = 9 then
  begin
    //This_Player.AutogotoMap('D022',338,356);
    This_NPC.CloseDialog(This_Player);
  end
  else if This_Player.GetV(104,1) = 8 then
  begin
    This_Player.SetV(104,1,9);
    This_Player.UpdateTaskDetail(104,1);
    This_Player.SetV(104,4,0);
    //This_Player.AutogotoMap('D022',338,356);
    This_NPC.CloseDialog(This_Player);
  end
  else
  exit;
end;

procedure _mission104_3_fns;
begin
  if This_Player.GetV(104,1) = 100 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���������������İ�������ͽ��ô��\ \'
    +'|{cmd}<�����ȥ/@doexit>'
    );
  end
  else if This_Player.GetV(104,1) = 10 then
  begin
    This_Player.SetV(104,1,100);
    This_Player.UpdateTaskDetail(104,1);
    This_Player.SetV(105,1,1);
    //#This_Player.DeleteTaskFromUIList(104);          //��ɾ����һ������ŵ����ݣ��������һ������ŵ����ݣ�˳���ܴ�
    //#This_Player.AddTaskToUIList(105);
    This_Player.UpdateTaskDetail(105,1);
    This_Player.Give('����',150000);
    This_Npc.NpcDialog(This_Player,
    '�����������������ܹ��ӻ����ǵļƻ�ʵʩ��\'
    +'��������Ҫ�����������ڲ�ȥ�Ұ�������ͽ��\'
    +'������������������\'
    +'�����������һ������ô���ģ�\ \'
    +'|{cmd}<��������ͽ��/@mission105>'
    ); 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '���ռ���3��ľ������'); 
  end;
end;

procedure _mission105;
begin
  if This_Player.GetV(105,1) = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�����ʵľͱ��ʣ��Ͻ�ȥ���������������Σ����\ \'
    +'|{cmd}<֪���ˣ�֪���ˣ������ȥ������������ʲô��ν�ľ������ܰɣ�/@mission105_1>'
    );
  end
  else
  exit;
end;

procedure _mission105_1;
begin
  if This_Player.GetV(105,1) = 1 then
  begin
    //This_Player.AutogotoMap('D024',49,49);
    This_NPC.CloseDialog(This_Player);
  end
  else
  exit;
end;
//------------------------------------------------------------------------------

var
  CZTem2: integer;
Begin
  CZTem2 := This_Player.GetV(104,1);
  if This_Player.GetV(105,1) = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���������������İ�������ͽ��ô��\ \'
    +'|{cmd}<�����ȥ/@doexit>\ \'
    +'|{cmd}<���б����������/@normal>'
    );
  end
  else if ( CZTem2 = 9 ) or ( CZTem2 = 10 ) then
  begin
    This_Npc.NpcDialog(This_Player,
    'һ��Ҫ�����ǵ��ж������ƻ���\'
    +'������Ŀ�꣺ɱ������սʿ���ռ�3��ľ�ϣ�\ \'
    +'|{cmd}<���Ѿ������/@mission104_3_fns>\ \'
    +'|{cmd}<���б����������/@normal>'
    );
  end 
  else if CZTem2 = 8 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�鱨��д�ĺܻ�ɬ��ֻ˵������������������ｨһ��ʲô��̳��\'
    +'Ҫ����ʲô��ʽ��Ϊ�˳ｨ�����̳���������ڴ������ռ�ľ�ϡ�\'
    +'��ȥɱ�����ǣ��������ռ���ľ��ȫ�����١�\'
    +'������Ŀ�꣺ɱ������սʿ���ռ�3��ľ�ϣ�\ \'
    +'|{cmd}<�õģ��һᾡ���ƻ����ǵ��ж��ġ�/@mission104_3>\ \'
    +'|{cmd}<���б����������/@normal>'
    );
  end
  else if CZTem2 = 6 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��������������ϰ���ô��\ \'
    +'|{cmd}<�����ȥ/@doexit>\ \'
    +'|{cmd}<���б����������/@normal>'
    );
  end
  else if ( CZTem2 = 4 ) or ( CZTem2 = 5 ) then
  begin
    This_Npc.NpcDialog(This_Player,
    '��������ǰ�ǵð�����ϴ�ɾ���\'
    +'������Ŀ�꣺ɱ��3ֻ��棬��ȡ3���鱨ҩˮ��\ \'
    +'|{cmd}<���Ѿ��ռ�����/@mission104_1_fns>\ \' 
    +'|{cmd}<���б����������/@normal>'
    ); 
  end
  else if ( CZTem2 = 2 ) or ( CZTem2 = 3 ) then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ���ȡ���鱨��ô��\'
    +'������Ŀ�꣺ɱ��2ֻɽ�����𣬻�ȡ2�����õ��鱨��\ \'
    +'|{cmd}<���Ѿ��ҵ����鱨/@mission104>\ \'
    +'|{cmd}<���б����������/@normal>' 
    );
  end 
  else if CZTem2 = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�����ּ����ˡ�ûɶ��˵�ģ���Ӧ��֪��ɽ���������Ҫ�԰ɣ�\'
    +'������ȥ���������������ǣ�����ܴ�����������ȡ���鱨��\'
    +'������Ŀ�꣺ɱ��2ֻɽ�����𣬻�ȡ2�����õ��鱨��\'
    +'��ô���������ӣ�һ��ϻ���û�С���\ \'
    +'|{cmd}<�����ȥ�����ȥ��/@automove1>\ \'
    +'|{cmd}<���б����������/@normal>' 
    );
  end
  else 
  begin
    {$IFDEF Q136_hero}
    This_Npc.NpcDialog(This_Player,
    '��л������Ϊ������ʲô��\ \'+
    '|{cmd}<����Ʒ/@buy>                         ^<����Ʒ/@sell> \'+
    '|{cmd}<�Ի�/@QUEST>\'+
    '|{cmd}<�˳�/@exit>');
    {$ELSE}
    This_Npc.NpcDialog(This_Player,
    '��л������Ϊ������ʲô��\ \'+
    '|{cmd}<�ϳɻ�����Ʒ/@hecheng>                   ^<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'+
    '|{cmd}<����������֮�ġ�������/@huolong>\'+
    '|{cmd}<����Ʒ/@buy>                         ^<����Ʒ/@sell> \'+
    '|{cmd}<�Ի�/@QUEST>\'+
    '|{cmd}<�˳�/@exit>');
    {$ENDIF}
  end;
end.           