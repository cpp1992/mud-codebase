{
*******************************************************************}

program Mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '������Ա������Ҫ�̳�����<��Ѫƾ֤/=red>������ʹ�û����������ﻻȡ����Ա���Խ�����Ѫս������ӵ��ǿ��������ܣ�ÿ�ղ����ȡ��������ƺ��빺��GM����ʹ�û�Ա������!\'+ 
  '<��Ա����Ϊ������Աר�õ��ߣ�˫���������ʹ�û�Ա�����ܣ�����ʵ�ã���ϸ�����빺���Ա�����飡��/=red>\' +
  +'|{cmd}<�ϳɻ�Ա����/@goldrole>    <��ȡ��Ա����/@ge> \'
  );
end;


procedure _ge;
begin
  if (This_Player.GetBagItemCount('��Ѫƾ֤') > 0) then
   
    
  begin
     
     
        This_Player.Give('GM����',1); 
      
       
     ;
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�㲻�Ǳ�����Ա���޷���ȡ���뽫��Ѫƾ֤���ڰ���!'
    );
end;




procedure _goldrole;
begin
  This_Npc.NpcDialog(This_Player,
  '�������30����Ѫ���֣������ң��һ����һ����Ѫƾ֤��\��Ѫƾ֤Ϊ����Ʒ�����ɶ��������ף��������������ڰ������ʹ�ö��ֻ�Ա���ܣ�\'
  +'|{cmd}<ʹ����Ѫ���ֻ����Ѫƾ֤/@goldjifen> \'
  +'|{cmd}<����Ѫ����/@bindgold>\'               
  +'|{cmd}<����/@main>                      <�뿪/@doexit>'
  );
end;

procedure _golditemreq;
begin
  This_Npc.ReqItemByGoldAct(This_Player);
end;

procedure _goldjifen;
begin
  if This_Player.GetBagItemCount('��Ѫ����') >= 30 then
  begin
    This_Player.Take('��Ѫ����',30);
    This_Player.Give('��Ѫƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    '��Ѫƾ֤�Ѿ������ˣ�˫��֮���������Ѫ��ʿ�ˣ�');
    
    if This_Player.GetV(111,47) = 1 then
    begin
       if This_Player.SetV(111,47,10) then
       begin
          This_Player.Give('����',10000);
          This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·����Ѫ��ʿ����',2);
          //#This_Player.DeleteTaskFromUIList(1047);
       end;
    end; 
  end
  else if this_Player.GetBagItemCount('��Ѫ���ְ�') >= 5 then
  begin
    This_Player.Take('��Ѫ���ְ�',5);
    This_Player.Give('��Ѫƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    '��Ѫƾ֤�Ѿ������ˣ�˫��֮���������Ѫ��ʿ�ˣ�');
    
    if This_Player.GetV(111,47) = 1 then
    begin
       if This_Player.SetV(111,47,10) then
       begin
          This_Player.Give('����',10000);
          This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·����Ѫ��ʿ����',2);
          //#This_Player.DeleteTaskFromUIList(1047);
       end;
    end; 
  end
  else if This_Player.GetBagItemCount('��Ѫ���ְ�') = 4 then
  begin
    if This_Player.GetBagItemCount('��Ѫ����') >= 6 then
    begin
       This_Player.Take('��Ѫ���ְ�',4);
       This_Player.Take('��Ѫ����',6);
       This_Player.Give('��Ѫƾ֤',1);
       This_Npc.NpcDialog(This_Player,
       '��Ѫƾ֤�Ѿ������ˣ�˫��֮���������Ѫ��ʿ�ˣ�');
    
       if This_Player.GetV(111,47) = 1 then
       begin
          if This_Player.SetV(111,47,10) then
          begin
             This_Player.Give('����',10000);
             This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·����Ѫ��ʿ����',2);
             //#This_Player.DeleteTaskFromUIList(1047);
          end;
       end; 
    end;
  end
  else if this_Player.GetBagItemCount('��Ѫ���ְ�') = 3 then
  begin
    if This_Player.GetBagItemCount('��Ѫ����') >= 12 then
    begin
       This_Player.Take('��Ѫ���ְ�',3);
       This_Player.Take('��Ѫ����',12);
       This_Player.Give('��Ѫƾ֤',1);
       This_Npc.NpcDialog(This_Player,
       '��Ѫƾ֤�Ѿ������ˣ�˫��֮���������Ѫ��ʿ�ˣ�');
    
       if This_Player.GetV(111,47) = 1 then
       begin
          if This_Player.SetV(111,47,10) then
          begin
             This_Player.Give('����',10000);
             This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·����Ѫ��ʿ����',2);
             //#This_Player.DeleteTaskFromUIList(1047);
          end;
       end; 
    end;
  end
  else if this_Player.GetBagItemCount('��Ѫ���ְ�') = 2 then
  begin
    if This_Player.GetBagItemCount('��Ѫ����') >= 18 then
    begin
    This_Player.Take('��Ѫ���ְ�',2);
    This_Player.Take('��Ѫ����',18);
    This_Player.Give('��Ѫƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    '��Ѫƾ֤�Ѿ������ˣ�˫��֮���������Ѫ��ʿ�ˣ�');
    end;
  end
  else if this_Player.GetBagItemCount('��Ѫ���ְ�') = 1 then
  begin
    if This_Player.GetBagItemCount('��Ѫ����') >= 24 then
    begin
       This_Player.Take('��Ѫ���ְ�',1);
       This_Player.Take('��Ѫ����',24);
       This_Player.Give('��Ѫƾ֤',1);
       This_Npc.NpcDialog(This_Player,
       '��Ѫƾ֤�Ѿ������ˣ�˫��֮���������Ѫ��ʿ�ˣ�');
       
       if This_Player.GetV(111,47) = 1 then
       begin
          if This_Player.SetV(111,47,10) then
          begin
             This_Player.Give('����',10000);
             This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·����Ѫ��ʿ����',2);
             //#This_Player.DeleteTaskFromUIList(1047);
          end;
       end;
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�����û���㹻����Ѫ���ְ���\�����Ѫƾ֤����ʱ���ܸ��㡣\�������Ŭ���ɣ�\'
    );
  end;
end;

procedure _bindgold;
begin
  This_Npc.NpcDialog(This_Player,
  '�ҿ��԰����6����Ѫ������Ϊһ����Ѫ���ְ���\����ÿ��һ���շ�5000��ҡ�\�������Ұ�������Ѫ������\ \'
  +'|{cmd}<����Ѫ����/@bindinggold>\ \'
  +'|{cmd}<����/@goldrole>'
  );
end;

procedure _bindinggold;
begin
  if This_Player.GoldNum < 5000 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����5000��Ҷ�û�У�����ô�������أ�\');
  end
  else if This_Player.GetBagItemCount('��Ѫ����') >= 6 then
  begin
    This_Player.Take('��Ѫ����',6);
    This_Player.DecGold(5000);
    This_Player.Give('��Ѫ���ְ�',1); 
    This_Npc.NpcDialog(This_Player,
    '�Ѿ����㽫6����������1����Ѫ���ְ���\����㻹�л��֣��ҿ��Լ�������������Ѫ���ְ���\ \'
    +'|{cmd}<������/@bindinggold>\ \'
    +'|{cmd}<����/@goldrole>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��û���㹻����Ѫ���ְ���û�취��������һ����\�����Ŭ���ɡ�\ \|{cmd}<����/@goldrole>');
  end;
end;



begin
  domain;
end. 