{
*******************************************************************}

Program Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _newskill;
Begin
   If This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '�������������������û��Σ��֮�أ��㻹������뿪�ɣ�\');
   end else if This_Player.GetV(10,3) = GetDateNum(GetNow()) then
   begin
      if This_Player.GetV(10,1) = 8 then
      begin
         This_Npc.NpcDialog(This_Player,
         '���ˣ���������귨��½���������������ŵĻ���\'+
         '�鷳ǰ��������������ҵ�ʦ�塣�ţ������Ǹ�����ϰ壬\'+
         '����˵һ���������ںܺã��������õ����ҡ�');
      end else if  This_Player.GetV(10,1) = 7 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�ڷ�ħ�ȣ����ߴ�������һλ���ݳ�û�ڹ���Ⱥ�е�����ʦ��\'+
         '����ָ����һЩ�������ɣ�����Ϊ����һֱû���ټ�������\'+
         '�鷳���ȥ�ҵ��ʺ򣬿�����');
      end else if  This_Player.GetV(10,1) = 6 then
      begin
          if This_Player.GetBagItemCount('������ҩ') >= 2 then
          begin
             if This_Player.IsCastle then
             begin
                This_Npc.NpcDialog(This_Player,
                '���ˣ���������귨��½���������������ŵĻ���\'+
                '�鷳ǰ��������������ҵ�ʦ�塣�ţ������Ǹ�����ϰ壬\'+
                '����˵һ���������ںܺã��������õ����ҡ�');
                This_Player.SetV(10,1,8);
                This_Player.Take('������ҩ',2); 
             end else
             begin
                This_Npc.NpcDialog(This_Player,
                'лл����������Ϊ��Ϊһ����������ʿ��Ŭ����\'+
                '�ڷ�ħ�ȣ����ߴ�������һλ���ݳ�û�ڹ���Ⱥ�е�����ʦ��\'+
                '����ָ����һЩ�������ɣ�����Ϊ����һֱû���ټ�������\'+
                '�鷳���ȥ�ҵ��ʺ򣬿�����');
                This_Player.SetV(10,1,7);
                This_Player.Take('������ҩ',2); 
             end;
          end else
          begin
             This_Npc.NpcDialog(This_Player,
             '��������������������ҩƷ��\'+
             '������г�����ҩ���Ͻ������Ұɣ�');
          end;     
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�������������������û��Σ��֮�أ��㻹������뿪�ɣ�\');
   end;   
end;

//------------------------------------------------------------------------------
//�ɳ�����ģ��
procedure _mission105;
var 
   BMT105 : integer;
begin
  BMT105 := This_Player.GetV(105,1);
  if BMT105 = 2 then
  begin
    This_NPC.NpcDialog(This_Player,
    '���Ѿ������פ�����񣬿�ȥ������ϱ�����һ�����������ɡ�');
  end else if BMT105 = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    'Ŷ���������λ��ʿ���ϼ������ϰ�������Ҽ����Ƽ��㣬'
    +'�ѵ���������Ƣ��Ҳ��佱�ˣ�\'
    +'�ðɣ����������ϵ㼬�ֵ����飬���Ѳ�������ȷ��Ҫ��ʿ���ң�\ \'
    +'|{cmd}<�岻�ݴǣ���˵�ɣ�/@mission105_2>');
  end else
    This_NPC.CloseDialog(This_Player);
end;

procedure _mission105_2;
var 
   BMT105 : integer;
begin
  BMT105 := This_Player.GetV(105,1);
  if BMT105 >= 2 then
  begin
     Exit;
  end else if BMT105 = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�����ǵļƻ����Ѿ�֪���˰ɣ�����������������ǳ���ıؾ�ͨ����\'
    +'������Ҫ��ȥ����<פ��10����/c=red>����Ҫ�����������ǣ�������ɧ�ң�\'
    +'Ȼ���Ҳ��������￪չ�ҵ��ƻ�������\'
    +'����ɹ���ɺ�������ϱ����档\'
    +'������Ŀ�꣺�������������פ��10���ӣ�ʱ�䵽��ᱻ�ͻر���ǣ�\ \'
    +'|{cmd}<�õģ������ҹ�ȥ��/@mission105_start>');
  end
  else
    exit;
end;

procedure mission105_callout;
begin
  if (This_Player.GetV(105,1) = 1) and (CompareText(This_Player.MapName, 'D023') = 0) then
  begin
    This_Player.Flyto('0',333,273);
    This_Player.SetV(105,1,2);
    This_Player.UpdateTaskDetail(105,1);
    This_Player.PlayerDialog('���Ѿ�������񣬸Ͽ�����<�����ϱ�/c=red>�㱨�ɣ�'); 
  end
  ELSE
  exit; 
end;

procedure _mission105_start;
begin
  if This_Player.GetV(105,1) = 1 then
  begin
    This_Player.RandomFlyTo('D023');
    This_Player.CallOut(This_NPC,600,'mission105_callout');
    This_Player.LeftTime('���������������פ�ص�ʱ�仹ʣ�ࣺ',0,600);
  end
  else
  exit;
end;

procedure _mission105_3;
begin
  if This_Player.GetV(105,1) = 3 then
  begin
    This_Player.SetV(105,1,4);
    This_Player.UpdateTaskDetail(105,1);
    This_Player.SetV(105,2,0);
    This_Npc.NpcDialog(This_Player,
    '�������ϱ������ˣ��������Ѿ������ˣ���ʿ����߰ɣ�\'
    +'��̳���ƻ���������������Ѿ������ˣ��ٲ��߾ͳ��ˣ�\ \'
    +'|{cmd}<���У���һ��Ҫ�����ȥ��/@doexit>������Ŀ�꣺����������ʿ3ֻ��');
  end
  else
  exit;
end;

procedure _mission105_1_5_fns;
begin
  if This_Player.GetV(105,1) = 5 then
  begin
    This_Player.Give('����',200000);
    This_Player.SetV(105,1,6);
    This_Player.UpdateTaskDetail(105,1);
    This_Player.SetV(105,3,0);
    This_Npc.NpcDialog(This_Player,
    '����ս���������ˣ���ʿ���ģ�\'
    +'������Ŀ�꣺��������ս��3ֻ��\ \'
    +'|{cmd}<��ͽ���Լ�С�ģ����������Ը���/@doexit>'
    ); 
  end
  else
  exit;
end;

procedure _mission105_1_6_fns;
begin
  if This_Player.GetV(105,1) = 7 then
  begin
    This_Player.Give('����',200000);
    This_Player.SetV(105,1,8);
    This_Player.UpdateTaskDetail(105,1);
    This_Player.SetV(105,4,0);
    This_Npc.NpcDialog(This_Player,
    '�ǻ������꣬��ʿС�ģ�\'
    +'������Ŀ�꣺�����������3ֻ��\ \'
    +'|{cmd}<��ͽ���Լ�С�ģ����������Ը���/@doexit>'
    ); 
  end
  else
  exit;
end;

procedure _mission105_1_7_fns;
begin
  if This_Player.GetV(105,1) = 9 then
  begin
    This_Player.Give('����',200000);
    This_Player.SetV(105,1,10);
    This_Player.UpdateTaskDetail(105,1);
    This_Npc.NpcDialog(This_Player,
    '���Ѿ������ˣ���ʿ������߰ɣ�\'
    +'���ǰ����ŵ�����ҿ�����ʿ���Ҵ��ذ�����\'
    +'����л����л����\ \'
    +'|{cmd}<��ͽ����ͽ�����ұ�֤����������ͻ���/@mission106>\ \'
    +'������Ŀ�꣺�����������ｻ�������ŵ�����\'
    +'�������ŵ�ǰ��������ѯ�ʲʺ羫�飩'
    ); 
  end
  else
  exit;
end;

procedure _mission106;
begin
  if This_Player.GetV(105,1) = 10 then
  begin
    //This_Player.AutogotoMap('11',225,270);
    This_NPC.CloseDialog(This_Player);
  end
  else
  exit;
end;  
//------------------------------------------------------------------------------
var
  MT105 : integer;
Begin
  MT105 := This_Player.GetV(105,1);
  if MT105 = 10 then
  begin
    //This_Npc.NpcDialog(This_Player,
    //'���ǰ����ŵ�����ҿ�����ʿ���Ҵ��ذ�����\'
    //+'����л����л����\ \'
    //+'|{cmd}<��ͽ����ͽ�����ұ�֤����������ͻ���/@mission106>\ \'
    //+'|{cmd}<��˵����ҪҩƷ��������������������ҩ/@newskill>');
    This_Npc.NpcDialog(This_Player,
    '���ǰ����ŵ�����ҿ�����ʿ�Ƚ����ղ�����ߡ�\'+
    '��<ʱ������/c=red>�������ٰ������ͻ�����\'+ 
    '����л����л����\ \'
    //+'|{cmd}<�ɳ����񣺺õģ������ڿ�����Ϣһ���ˣ�/@doexit>\ \'
    //'|{cmd}<�ճ�������˵����ҪҩƷ��������������������ҩ/@newskill>'
    );
  end else if ( MT105 = 8 ) or ( MT105 = 9 )then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ������˻��������ˣ�\'
    +'������Ŀ�꣺�����������3ֻ��\ \'
    //+'|{cmd}<�ɳ��������Ѿ�������3ֻ��������/@mission105_1_7_fns>\ \'
    //'|{cmd}<�ճ�������˵����ҪҩƷ��������������������ҩ/@newskill>'
    );
  end else if ( MT105 = 6 ) or ( MT105 = 7 ) then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ�����������ս���ˣ�\'
    +'������Ŀ�꣺��������ս��3ֻ��\ \'
    //+'|{cmd}<�ɳ��������Ѿ�������3ֻ����ս��/@mission105_1_6_fns>\ \'
    //'|{cmd}<�ճ�������˵����ҪҩƷ��������������������ҩ/@newskill>'
    );
  end else if ( MT105 = 4 ) or ( MT105 = 5 ) then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ�������������ʿ�ˣ�\'
    +'������Ŀ�꣺����������ʿ3ֻ��\ \'
    //+'|{cmd}<�ɳ��������Ѿ�������3ֻ������ʿ/@mission105_1_5_fns>\ \'
    //'|{cmd}<�ճ�������˵����ҪҩƷ��������������������ҩ/@newskill>'
    );
  end else if MT105 = 3 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ʿ������ô�ֻ����ˣ�\ \'
    //+'|{cmd}<�ɳ������ϱ����Ҷ��������㡣������һ��Ҫ��֤��İ�ȫ��/@mission105_3>\ \'
    //'|{cmd}<�ճ�������˵����ҪҩƷ��������������������ҩ/@newskill>'
    );
  end else if MT105 = 2 then
  begin
    This_NPC.NpcDialog(This_Player,
    '���Ѿ������פ�����񣬿�ȥ������ϱ�����һ�����������ɡ�\ \'
    //+'|{cmd}<�ɳ����񣺺õģ������ȥ/@DoExit>\ \'
    //'|{cmd}<�ճ�������˵����ҪҩƷ��������������������ҩ/@newskill>'
    );
  end else if MT105 = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����ʲô�ˣ���ô������������Σ�գ��Ͻ��뿪�ɣ�\ \'
    //+'|{cmd}<�ɳ������Ǻϼ������ϰ����ҹ����ˡ�/@mission105>\ \'
    //'|{cmd}<�ճ�������˵����ҪҩƷ��������������������ҩ/@newskill>'
    );
  end else
  begin
    This_Npc.NpcDialog(This_Player,
    '��Ҫ��ʲô��\ \'
    //'|{cmd}<�ճ�������˵����ҪҩƷ��������������������ҩ/@newskill>'
    );
  end;
end.