{
*******************************************************************}

program Mir2; 

var
d1 , d2 : integer;
s1 , s2 : double;
t1 : integer;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _cx;
begin
     This_Npc.NpcDialog(This_Player, 
     '�ܿ���������:\|'
     +'1.���<������ɴ���/c=red>���\|'
	 +'2.���<�����ҩ/c=red>���\|'
	 +'3.���<ÿ�ո���/c=red>���\|'
	 +'4.���<����̵�/c=red>���\|'
	 +'5.���<���һ���/c=red>���\|'
	 +'6.���<һ��48��/c=red>���\|'
	 +'7.���<�����ȡ1.2��2.0��������/c=red>���\|'
     );
end;

Procedure _zk;
begin
   s1 := GetNow;
d1 := This_Player.Getv(86,1);
s2 := ConvertDBToDateTime(d1);
d2 := minusDataTime(s1,s2);
t1 := This_Player.Getv(86,2);
if t1< 0 then   This_Player.Setv(86,2,0);
      if This_Player.YBNum >= 888 then 
   begin
      if  t1 < 1 then 
          begin 
          This_Player.PsYBConsum(This_NPC,'xin',20001,888,1);  
          This_Player.Setv(86,1, ConvertDateTimeToDB(s1));
          This_Player.Setv(86,2,1); 
          This_Player.give('��Ա������',1);
          This_Npc.NpcDialog(This_Player,'��ɹ��������ܿ���'); 
          ServerSay('�������<' + This_Player.Name + '>�����˻�Ա,�������������.', 2);		  
          end else This_Npc.NpcDialog(This_Player,'���Ѿ����ܿ���Ա������Ҫ�ظ�����');
   end else This_Npc.NpcDialog(This_Player,'��û���㹻��Ԫ����'); 
   
end; 
Procedure _zkgn;
begin
s1 := GetNow;
d1 := This_Player.Getv(86,1);
s2 := ConvertDBToDateTime(d1);
d2 := minusDataTime(s1,s2); 
if d2 > 604800 then                   //���� 3600*24*7 =604800��  �˴����Ը��ĵ���ʱ�估���Թ��ܣ����޸���ͬʱ�޸�GM�����еģ� 
begin 
this_Npc.NpcDialog(This_Player,'�ܿ����ڣ�'); 
This_Player.Setv(86,2,0);
end else 
begin 
    This_Player.PlayerDialog(
  '<רΪ��������Ա�����ƣ��ն��ͼ��/c=red>\ \'+  
  '<��ֱ���ͼ�ײ㣬������ҩ���Կ��ٲ�����Ʒ��/c=red>\ \'+  
    '|{cmd}<���ͼ���͡�/@CS>   ^<�￪��������/@KQSHENLI>     ^<��ÿ�ո�����/@FULI> \'
   +'|{cmd}<������̵��/@lingfu>  ^<����һ�����/@huhuan>   ^<����ҩ��/@my> \'  
    ); 
end;
end;


procedure _dhhy;
begin
  This_Npc.NpcDialog(This_Player,
  '������Ա������Ҫ�̳�����<��Ա������/=red>\ '+
  '����ʹ�û����������ﻻȡ����Ա���Խ����Աս������\'+ 
  'ӵ��ǿ��������ܣ�ÿ�ղ�����.\'+ 
  '��Ա������Ϊ������Աר�õ���.\'+ 
  '˫����Ա���������ʹ�û�Ա�����ܣ�\'+ 
  '����ʵ�ã���ϸ�����빺���Ա������.\' +
  '�������30����Ա���֣���Ҳ���԰����һ�һ��.\' +
  '��Ա�����䣬��Ա�����ڵ��¶ᱦ���ر������.\' +
  '|{cmd}<�ϳɻ�Ա������/@goldrole> \' 

  );
end;


procedure _goldrole;
begin
  This_Npc.NpcDialog(This_Player,
  '�������30����Ա���֣������ң��һ����һ����Ա�����䡣\'
  +'��Ա������Ϊ����Ʒ�����ɶ��������ף��������������ڰ������ʹ�ö��ֻ�Ա���ܣ�\'
  +'|{cmd}<ʹ�û�Ա���ֻ�û�Ա������/@goldjifen> \'
  +'|{cmd}<����Ա����/@bindgold>\'               
  );
end;

procedure _golditemreq;
begin
  This_Npc.ReqItemByGoldAct(This_Player);
end;

procedure _goldjifen;
begin
  if This_Player.GetBagItemCount('��Ա����') >= 30 then
  begin
    This_Player.Take('��Ա����',30);
    This_Player.Give('��Ա������',1);
	ServerSay('�������<' + This_Player.Name + '>ʹ�û�Ա���ֶһ��˻�Ա,�������������.', 2);		
    This_Npc.NpcDialog(This_Player,
    '��Ա�������Ѿ������ˣ�˫��֮�󣬾Ϳ������ܻ�Ա���ܣ�');
    
   
     
  end
  else if this_Player.GetBagItemCount('��Ա���ְ�') >= 5 then
  begin
    This_Player.Take('��Ա���ְ�',5);
    This_Player.Give('��Ա������',1);
    This_Npc.NpcDialog(This_Player,
    '��Ա�������Ѿ������ˣ�˫��֮�󣬾Ϳ������ܻ�Ա���ܣ�');
     
  end
  else if This_Player.GetBagItemCount('��Ա���ְ�') = 4 then
  begin
    if This_Player.GetBagItemCount('��Ա����') >= 6 then
    begin
       This_Player.Take('��Ա���ְ�',4);
       This_Player.Take('��Ա����',6);
       This_Player.Give('��Ա������',1);
       This_Npc.NpcDialog(This_Player,
       '��Ա�������Ѿ������ˣ�˫��֮�󣬾Ϳ������ܻ�Ա���ܣ�');
    
    end;
  end
  else if this_Player.GetBagItemCount('��Ա���ְ�') = 3 then
  begin
    if This_Player.GetBagItemCount('��Ա����') >= 12 then
    begin
       This_Player.Take('��Ա���ְ�',3);
       This_Player.Take('��Ա����',12);
       This_Player.Give('��Ա������',1);
       This_Npc.NpcDialog(This_Player,
       '��Ա�������Ѿ������ˣ�˫��֮�󣬾Ϳ������ܻ�Ա���ܣ�');
    
     
    end;
  end
  else if this_Player.GetBagItemCount('��Ա���ְ�') = 2 then
  begin
    if This_Player.GetBagItemCount('��Ա����') >= 18 then
    begin
    This_Player.Take('��Ա���ְ�',2);
    This_Player.Take('��Ա����',18);
    This_Player.Give('��Ա������',1);
    This_Npc.NpcDialog(This_Player,
     '��Ա�������Ѿ������ˣ�˫��֮�󣬾Ϳ������ܻ�Ա���ܣ�');
    end;
  end
  else if this_Player.GetBagItemCount('��Ա���ְ�') = 1 then
  begin
    if This_Player.GetBagItemCount('��Ա����') >= 24 then
    begin
       This_Player.Take('��Ա���ְ�',1);
       This_Player.Take('��Ա����',24);
       This_Player.Give('��Ա������',1);
       This_Npc.NpcDialog(This_Player,
        '��Ա�������Ѿ������ˣ�˫��֮�󣬾Ϳ������ܻ�Ա���ܣ�');
       
       
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�����û���㹻�Ļ�Ա���ְ���\�����Աƾ֤����ʱ���ܸ��㡣\�������Ŭ���ɣ�\'
    );
  end;
end;

procedure _bindgold;
begin
  This_Npc.NpcDialog(This_Player,
  '�ҿ��԰����6����Ա������Ϊһ����Ա���ְ���\����ÿ��һ���շ�5000��ҡ�\�������Ұ�������Ա������\ \'
  +'|{cmd}<����Ա����/@bindinggold>\ \'
  //+'|{cmd}<����/@goldrole>'
  );
end;

procedure _bindinggold;
begin
  if This_Player.GoldNum < 5000 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����5000��Ҷ�û�У�����ô�������أ�\');
  end
  else if This_Player.GetBagItemCount('��Ա����') >= 6 then
  begin
    This_Player.Take('��Ա����',6);
    This_Player.DecGold(5000);
    This_Player.Give('��Ա���ְ�',1); 
    This_Npc.NpcDialog(This_Player,
    '�Ѿ����㽫6����������1����Ա���ְ���\����㻹�л��֣��ҿ��Լ����������ɻ�Ա���ְ���\ \'
    +'|{cmd}<������/@bindinggold>\ \'
    +'|{cmd}<����/@goldrole>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��û���㹻�Ļ�Ա���ְ���û�취��������һ����\�����Ŭ���ɡ�\ \|{cmd}<����/@goldrole>');
  end;
end;

function xin(price, num: Integer):boolean; 
begin
   result := true;  
end;

procedure _zzyb;
begin
    This_NPC.NpcDialog(This_Player,
       '���ӭ���١�Ц�����֡��������ġ���\|'              
     +' ������Ϊ������Զ��԰���С��Ԫ�����������ơ��\|'
     +' ������ߺ��ٴ�������Ҫ���¿������\|'
    +'{cmd}<����/@kq> \');
end;

procedure kq;
begin
  if This_Player.GetBagItemCount('1������') >0  then
  begin
      This_Player.Take('1������', 1);
      This_Player.AddLF(1,1);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('2������')>0  then
  begin
      This_Player.Take('2������', 1);
      This_Player.AddLF(1,2);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('5������')>0  then
  begin
      This_Player.Take('5������', 1);
      This_Player.AddLF(1,5);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('10������')>0  then
  begin
      This_Player.Take('10������', 1);
      This_Player.AddLF(1,10);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('20������')>0  then
  begin
      This_Player.Take('20������', 1);
      This_Player.AddLF(1,20);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('50������')>0  then
  begin
      This_Player.Take('50������', 1);
      This_Player.AddLF(1,50);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
  if This_Player.GetBagItemCount('100������')>0  then
  begin
      This_Player.Take('100������', 1);
      This_Player.AddLF(1,100);
      This_Player.CallOut(This_NPC,5,'kq');
  end else 
   if This_Player.GetBagItemCount('1Ԫ��')>0  then
  begin
      This_Player.Take('1Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(1);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('2Ԫ��')>0  then
  begin
      This_Player.Take('2Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(2);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('5Ԫ��')>0  then
  begin
      This_Player.Take('5Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(5);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('10Ԫ��')>0  then
  begin
      This_Player.Take('10Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(10);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('20Ԫ��')>0  then
  begin
      This_Player.Take('20Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(20);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
  if This_Player.GetBagItemCount('20Ԫ��')>0  then
  begin
      This_Player.Take('50Ԫ��', 1);
      This_Player.ScriptRequestAddYBNum(50);
      This_Player.CallOut(This_NPC,5,'kq');
  end else
      This_Player.CallOut(This_NPC,5,'kq');
end; 

procedure _kq;
begin
kq;
end;
Begin     
    This_Npc.NpcDialog(This_Player,
	'�𾴵Ĵ��������ã��������ҿ����ṩһЩ���ƻ���Ϸ \|'
    +'��ƽ�ԵĻ�Ա���ܣ������ڱ��ַ������Ľ������С�\|'
	+'�ܿ��������:\|'
	+'���ͼ���͡￪��������ÿ�ո����������ҩ���ȹ��ܡ�\|'
	+'ֻ��Ҫ<888Ԫ��/c=red>,�Ϳ�������һ�ܵ��������!\|'
	
    +'|{cmd}<�����ܿ�/@zk>  ^<�ϳɻ�Ա/@dhhy> \' 
    +'|{cmd}<��ѯ�ܿ�����/@cx>  ^<����Ԫ��/@zzyb> \'
    );
end.