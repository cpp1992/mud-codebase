{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

  

procedure _shuye;
begin
  This_Npc.NpcDialog(This_Player,
  '��������Ѱ�õ��㹻����ҳ�����ɾ��ᣬ\'
  +'�������ң��Ҿ�������ص�<���ս��������ǻ��ꡢ��Ѫ��/c=red>�����ؼ���\'
  +'������ָ����һ��������\'
  +'������ҵ����Ҿ�ϲ�����ݣ���Ҳ����������ѧ����������\ \'
  +'|{cmd}<������ҳ/@shuye_change>               ^<�һ�˵��/@shuye_explain>\'
  +'|{cmd}<�˽�߼�����/@shuye_about>           ^<����/@main>'
  ); 
end;

procedure _shuye_change;
begin
  This_Npc.NpcDialog(This_Player,
  '�����ҵ�Ԥ�������1����ҳ�Ҿ��ܽ����һ�����õ����ϣ����ԣ�\'
  +'������ܴ�����<1/c=red>����ҳ���Ҿ͸����¼<1/c=red>�㹱�׶ȡ���Ȼ�������\'
  +'�ڸ���1����ҳ��ͬʱ���ܾ���<5Ԫ��/c=red>�о����ѵĻ���\'
  +'�������������¼5�㹱�׶ȡ�\'
  +'������������Ĺ��׶���1200��ʱ���ҽ�����ص��ؼ�������\'
  +'��ʿ�����������Ҫ�Ķ�����ô��\ \'
  +'|{cmd}<���׶ȶһ�/@NewSkill_1>             ^<���׶ȶһ�������/@NewSkill_2>\'
  +'|{cmd}<����/@shuye>\'
  ); 
end;

procedure _NewSkill_1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ�������������У�\'
 // +'����ҳ��' + inttostr(This_Player.GetBagItemCount('����ҳ')) + '��\'
  +'��ҳ��' + inttostr(This_Player.GetBagItemCount('��ҳ')) +'\ \'
//  +'|{cmd}<����ҳ�һ����׶�/@NewSkill_1_1>\ \'
  +'|{cmd}<��ҳ�һ����׶�/@NewSkill_1_2>\ \'
  +'|{cmd}<����/@shuye_change>\'
  ); 
end;

procedure _NewSkill_1_1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ�������������У�\'
  +'����ҳ��' + inttostr(This_Player.GetBagItemCount('����ҳ')) + '����ҳ��' + inttostr(This_Player.GetBagItemCount('��ҳ')) +'\'
  +'|{cmd}<1����ҳ�һ�1�㹱�׶�/@NewSkill_1_1_1~1>\'
  +'|{cmd}<10����ҳ�һ�10�㹱�׶�/@NewSkill_1_1_1~10>\'
  +'|{cmd}<1����ҳ��5Ԫ���һ�5�㹱�׶�/@NewSkill_1_1_2~1>\'
  +'|{cmd}<10����ҳ��50Ԫ���һ�50�㹱�׶�/@NewSkill_1_1_2~10>\'
  //+'|{cmd}<1����ҳ��5�𶧶һ�5�㹱�׶�/@NewSkill_1_1_3~1>\'
 // +'|{cmd}<10����ҳ��50�𶧶һ�50�㹱�׶�/@NewSkill_1_1_3~10>\'
  +'|{cmd}<����/@shuye_change>\'
  ); 
end;

procedure _NewSkill_1_1_1(str:string); 
var
  temp,temp_str:integer; 
begin
  temp_str:=strtointdef(str,-1);
  if (temp_str <> 1) and (temp_str <> 10) then exit;
  
  if This_Player.GetV(26,11) < 0 then
  begin
    This_Player.SetV(26,11,0);
  end; 
  temp := This_Player.GetV(26,11);
    if temp < 1200 then
  begin
    if This_Player.GetBagItemCount('����ҳ') >= temp_str then
    begin
      This_Player.Take('����ҳ',temp_str);
      This_Player.SetV(26,11, temp + temp_str);
      This_Player.AddLogRec(9, '���׶�', 811115, temp + temp_str, '�ݽ���ҳ��ǰ���׶�');
        This_Player.AddLogRec(9, '����ҳ', 811155, temp_str, '47��������');
      This_Npc.NpcDialog(This_Player,
      '��ݽ���'+str+'�Ű���ҳ����Ĺ��׶�������'+str+'�㣡\' 
      +'��ǰ��Ĺ��׶�Ϊ��' + inttostr(temp+temp_str) + '��\'
      +'���Ͱɣ���Ǳ������ʿ���Ϸ�û�п����ˡ�\ \'
      +'|{cmd}<�����һ�/@NewSkill_1_1_1~'+str+'>                ^<����/@NewSkill_1>'
      );             
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '����������'+str+'�Ű���ҳ���͸Ͽ콻���Ұɣ�'); 
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '��ǰ��Ĺ��׶��Ѿ��ﵽ1200�㣬�Ѿ����Զһ��������ˣ�\ \'
    +'|{cmd}<���׶ȶһ�������/@NewSkill_2>'); 
  end;
end;

function NewSkill_YB1(price, num: Integer):boolean; 
var
temp:integer; 
begin
  This_Player.Take('����ҳ',price/5);
  temp := This_Player.GetV(26,11);
  This_Player.SetV(26,11, temp + price);
 // This_Player.IncActivePoint(2*price/5);  //���ӻ�Ծ��ÿ��2�� 
  This_Player.AddLogRec(9, '����ҳ', 811155, price/5, '47��������');
  if num = 1 then
  begin
  This_Npc.NpcDialog(This_Player,
  '��ݽ���'+inttostr(price/5)+'�Ű���ҳ�����ҹ�����'+inttostr(price)+'Ԫ�����о����ѡ�\'
  +'��Ĺ��׶�������'+inttostr(price)+'�㣡\' 
  +'��ǰ��Ĺ��׶�Ϊ��' + inttostr(temp + price) + '��\'
  +'���Ͱɣ���Ǳ������ʿ���Ϸ�û�п����ˡ�\ \'
  +'|{cmd}<�����һ�/@NewSkill_1_1_2~'+inttostr(price/5)+'>                ^<����/@NewSkill_1>'
  );  
  This_Player.AddLogRec(9, '���׶�', 811115, temp + price, 'Ԫ���ݽ���ҳ');  
  end else
  begin
  This_Npc.NpcDialog(This_Player,
  '��ݽ���'+inttostr(price/5)+'�Ű���ҳ�����ҹ�����'+inttostr(price)+'�𶧵��о����ѡ�\'
  +'��Ĺ��׶�������'+inttostr(price)+'�㣡\' 
  +'��ǰ��Ĺ��׶�Ϊ��' + inttostr(temp + price) + '��\'
  +'���Ͱɣ���Ǳ������ʿ���Ϸ�û�п����ˡ�\ \'
  +'|{cmd}<�����һ�/@NewSkill_1_1_3~'+inttostr(price/5)+'>                ^<����/@NewSkill_1>'
  );  
  This_Player.AddLogRec(9, '���׶�', 811115, temp + price, '�𶧵ݽ���ҳ');  
  end; 
  result:= true; 
end;

procedure _NewSkill_1_1_2(str:string); 
var
  temp,temp_str:integer; 
begin
  temp_str:=strtointdef(str,-1);
  if (temp_str <> 1) and (temp_str <> 10) then exit;
  
  if This_Player.GetV(26,11) < 0 then
  begin
    This_Player.SetV(26,11,0);
  end; 
  temp := This_Player.GetV(26,11);
    if temp < 1200 then
  begin
    if This_Player.GetBagItemCount('����ҳ') >= temp_str then
    begin
    This_Player.PsYBConsum(This_NPC,'NewSkill_YB1',20156,5*temp_str,1);         
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '����������'+str+'�Ű���ҳ���͸Ͽ콻���Ұɣ�'); 
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '��ǰ��Ĺ��׶��Ѿ��ﵽ1200�㣬�Ѿ����Զһ��������ˣ�\ \'
    +'|{cmd}<���׶ȶһ�������/@NewSkill_2>'); 
  end;
end;

procedure _NewSkill_1_1_3(str:string); 
var
  temp,temp_str:integer; 
begin
  temp_str:=strtointdef(str,-1);
  if (temp_str <> 1) and (temp_str <> 10) then exit;
  
  if This_Player.GetV(26,11) < 0 then
  begin
    This_Player.SetV(26,11,0);
  end; 
  temp := This_Player.GetV(26,11);
    if temp < 1200 then
  begin
    if This_Player.GetBagItemCount('����ҳ') >= temp_str then
    begin
      if This_Player.GloryPoint >= 500*temp_str then 
      begin
       if This_Player.DecGloryPoint(30088,500*temp_str,1,false,'��ҳ�һ����׶�') then
       begin
       NewSkill_YB1(5*temp_str,0);
       end;
      end else
      This_Npc.NpcDialog(This_Player,
      '��Ľ𶧲��㣡\'
      );          
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '����������'+str+'�Ű���ҳ���͸Ͽ콻���Ұɣ�'); 
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '��ǰ��Ĺ��׶��Ѿ��ﵽ1200�㣬�Ѿ����Զһ��������ˣ�\ \'
    +'|{cmd}<���׶ȶһ�������/@NewSkill_2>'); 
  end;
end;

procedure _NewSkill_1_2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ�������������У�\'
 // +'����ҳ��' + inttostr(This_Player.GetBagItemCount('����ҳ')) + '��\'
  +'��ҳ��' + inttostr(This_Player.GetBagItemCount('��ҳ')) +'\'
  +'|{cmd}<1��ҳ�һ�1�㹱�׶�/@NewSkill_1_2_1~1>\'
  +'|{cmd}<10��ҳ�һ�10�㹱�׶�/@NewSkill_1_2_1~10>\'
  +'|{cmd}<1��ҳ��5Ԫ���һ�5�㹱�׶�/@NewSkill_1_2_2~1>\'
  +'|{cmd}<10��ҳ��50Ԫ���һ�50�㹱�׶�/@NewSkill_1_2_2~10>\'
  //+'|{cmd}<1��ҳ��5�𶧶һ�5�㹱�׶�/@NewSkill_1_2_3~1>\'
  //+'|{cmd}<10��ҳ��50�𶧶һ�50�㹱�׶�/@NewSkill_1_2_3~10>\'
  +'|{cmd}<����/@shuye_change>\'
  ); 
end;

function NewSkill_YB2(price, num: Integer):boolean; 
var
temp:integer; 
begin
  This_Player.Take('��ҳ',price/5);
  temp := This_Player.GetV(26,11);
  This_Player.SetV(26,11, temp + price);
  //This_Player.IncActivePoint(2*price/5);  //���ӻ�Ծ��ÿ��2�� 
  This_Player.AddLogRec(9, '��ҳ', 811155, price/5, '47��������');
  if num = 1 then
  begin
  This_Npc.NpcDialog(This_Player,
  '��ݽ���'+inttostr(price/5)+'����ҳ�����ҹ�����'+inttostr(price)+'Ԫ�����о����ѡ�\'
  +'��Ĺ��׶�������'+inttostr(price)+'�㣡\' 
  +'��ǰ��Ĺ��׶�Ϊ��' + inttostr(temp + price) + '��\'
  +'���Ͱɣ���Ǳ������ʿ���Ϸ�û�п����ˡ�\ \'
  +'|{cmd}<�����һ�/@NewSkill_1_2_2~'+inttostr(price/5)+'>                ^<����/@NewSkill_1>'
  );  
  This_Player.AddLogRec(9, '���׶�', 811115, temp + price, 'Ԫ���ݽ���ҳ');  
  end else
  begin
  This_Npc.NpcDialog(This_Player,
  '��ݽ���'+inttostr(price/5)+'����ҳ�����ҹ�����'+inttostr(price)+'�𶧵��о����ѡ�\'
  +'��Ĺ��׶�������'+inttostr(price)+'�㣡\' 
  +'��ǰ��Ĺ��׶�Ϊ��' + inttostr(temp + price) + '��\'
  +'���Ͱɣ���Ǳ������ʿ���Ϸ�û�п����ˡ�\ \'
  +'|{cmd}<�����һ�/@NewSkill_1_2_3~'+inttostr(price/5)+'>                ^<����/@NewSkill_1>'
  );  
  This_Player.AddLogRec(9, '���׶�', 811115, temp + price, '�𶧵ݽ���ҳ');  
  end; 
  result:= true; 
end;

procedure _NewSkill_1_2_1(str:string); 
var
  temp,temp_str:integer; 
begin
  temp_str:=strtointdef(str,-1);
  if (temp_str <> 1) and (temp_str <> 10) then exit;
  
  if This_Player.GetV(26,11) < 0 then
  begin
    This_Player.SetV(26,11,0);
  end; 
  temp := This_Player.GetV(26,11);
    if temp < 1200 then
  begin
    if This_Player.GetBagItemCount('��ҳ') >= temp_str then
    begin
      This_Player.Take('��ҳ',temp_str);
      This_Player.SetV(26,11, temp + temp_str);
      This_Player.AddLogRec(9, '���׶�', 811115, temp + temp_str, '�ݽ���ҳ��ǰ���׶�');
        This_Player.AddLogRec(9, '��ҳ', 811155, temp_str, '47��������');
      This_Npc.NpcDialog(This_Player,
      '��ݽ���'+str+'����ҳ����Ĺ��׶�������'+str+'�㣡\' 
      +'��ǰ��Ĺ��׶�Ϊ��' + inttostr(temp+temp_str) + '��\'
      +'���Ͱɣ���Ǳ������ʿ���Ϸ�û�п����ˡ�\ \'
      +'|{cmd}<�����һ�/@NewSkill_1_2_1~'+str+'>                ^<����/@NewSkill_1>'
      );             
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '����������'+str+'����ҳ���͸Ͽ콻���Ұɣ�'); 
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '��ǰ��Ĺ��׶��Ѿ��ﵽ1200�㣬�Ѿ����Զһ��������ˣ�\ \'
    +'|{cmd}<���׶ȶһ�������/@NewSkill_2>'); 
  end;
end;

procedure _NewSkill_1_2_2(str:string); 
var
  temp,temp_str:integer; 
begin
  temp_str:=strtointdef(str,-1);
  if (temp_str <> 1) and (temp_str <> 10) then exit;
  
  if This_Player.GetV(26,11) < 0 then
  begin
    This_Player.SetV(26,11,0);
  end; 
  temp := This_Player.GetV(26,11);
    if temp < 1200 then
  begin
    if This_Player.GetBagItemCount('��ҳ') >= temp_str then
    begin
    This_Player.PsYBConsum(This_NPC,'NewSkill_YB2',20156,5*temp_str,1);         
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '����������'+str+'����ҳ���͸Ͽ콻���Ұɣ�'); 
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '��ǰ��Ĺ��׶��Ѿ��ﵽ1200�㣬�Ѿ����Զһ��������ˣ�\ \'
    +'|{cmd}<���׶ȶһ�������/@NewSkill_2>'); 
  end;
end;

procedure _NewSkill_1_2_3(str:string); 
var
  temp,temp_str:integer; 
begin
  temp_str:=strtointdef(str,-1);
  if (temp_str <> 1) and (temp_str <> 10) then exit;
  
  if This_Player.GetV(26,11) < 0 then
  begin
    This_Player.SetV(26,11,0);
  end; 
  temp := This_Player.GetV(26,11);
    if temp < 1200 then
  begin
    if This_Player.GetBagItemCount('��ҳ') >= temp_str then
    begin
      if This_Player.GloryPoint >= 500*temp_str then 
      begin
       if This_Player.DecGloryPoint(30088,500*temp_str,1,false,'��ҳ�һ����׶�') then
       begin
       NewSkill_YB2(5*temp_str,0);
       end;
      end else
      This_Npc.NpcDialog(This_Player,
      '��Ľ𶧲��㣡\'
      );          
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '����������'+str+'����ҳ���͸Ͽ콻���Ұɣ�'); 
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '��ǰ��Ĺ��׶��Ѿ��ﵽ1200�㣬�Ѿ����Զһ��������ˣ�\ \'
    +'|{cmd}<���׶ȶһ�������/@NewSkill_2>'); 
  end;
end;

procedure _NewSkill_2;
var
  temp:integer;
begin
  if This_Player.GetV(26,11) < 0 then
  begin
    This_Player.SetV(26,11,0);
  end;
  
  temp := This_Player.GetV(26,11);
    if temp >= 1200 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ʿ��Ŀǰ����Ĺ��׶�Ϊ��' + inttostr(temp) + '�㡣\'
    +'�Ѿ��ﵽ�˶һ�������ѡ������Ҫ����ѧ���Űɡ�\'
    +'��ȷ�������㹻�İ����ռ䡣������ѡ����ô��\ \' 
    +'|{cmd}<��ȡ���ǻ���/@NewSkill_1_chg_1>          ^<��ȡ���ս���/@NewSkill_1_chg_2>          |{cmd}<��ȡ��Ѫ��/@NewSkill_1_chg_3>\ \'
    +'|{cmd}<����/@shuye_change>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��ʿ��Ŀǰ����Ĺ��׶�Ϊ��' + inttostr(temp) + '�㡣\'
    +'��û�������ҵ�Ҫ�󣬼���Ŭ���ɡ�\ \'
    +'|{cmd}<����/@shuye_change>'
    ); 
  end;
end;

function Point_CHG_Book(Book_Name:string):Boolean;
var
  temp:integer;
begin
  if This_Player.Level < 40 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�Բ�����ĵȼ�̫�ͣ�ֻ��40�����ϲſ��Խ��жһ���');
    exit; 
  end;
  
  temp := This_Player.GetV(26,11);
    if temp >= 1200 then
  begin
    if This_Player.FreeBagNum > 0 then
    begin
        This_Player.SetV(26,11,temp - 1200);
      This_Player.Give(Book_Name,1);
        This_Player.AddLogRec(9, Book_Name, 811116, 1, '�۳�1200���׶Ȼ��');
      This_Npc.NpcDialog(This_Player,
      '��ɹ��һ����ˣ�' + Book_Name + '��\ \'
      +'|{cmd}<����/@NewSkill_2>'
      );
      This_NPC.NpcNotice('��ң���' + This_Player.Name + '����ͨ��Ŭ������˻ʼҴ�ѧʿ���Ͽɣ��һ��������飺' + Book_Name +'��');
      This_Player.AddLogRec(9, Book_Name, 811115, 1, '47�������鹱�׶ȶһ����');
      Result := True; 
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '�Բ�����İ������ˣ�����������һ���������Ұɣ�\ \'
      +'|{cmd}<����/@NewSkill_2>'
      );
      Result := False;
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�Բ�����û������һ����������ܶһ���\ \'
    +'|{cmd}<����/@NewSkill_2>'
    );
    Result := False;
  end; 
end;

procedure _NewSkill_1_chg_1;
begin
  Point_CHG_Book('���ǻ���');
end;

procedure _NewSkill_1_chg_2;
begin
  Point_CHG_Book('���ս���');
end;

procedure _NewSkill_1_chg_3;
begin
  Point_CHG_Book('��Ѫ��');
end;

procedure _shuye_explain;
begin
  This_Npc.NpcDialog(This_Player,
  '�Ϸ�һ���������������ܴ�̶Ƚ������������´������ǽ�����ء�\'
  +'�˴�������ϣ���õ���Щ������ҳ��Ȼ�һ�������һ�׹��׶ȿ���\'
  +'���ơ��������������¼�Ĺ��׶�����1200�㣬�������ļ�������\'
  +'40����ʱ�򣬿���ӵ�жһ�����ص�47��ѧ���ŵ�Ȩ����\ \'
  +'|{cmd}<���׶�˵��/@shuye_explain_1>      ^<��ҳ˵��/@shuye_explain_2>\'
  +'|{cmd}<����/@shuye>'
  );
end;

procedure _shuye_explain_1;
begin
  This_Npc.NpcDialog(This_Player,
  '���׶��ǿ�������ȡǿ�����ŵĶһ�ƾ֤��\'
  +'�����ҵ�Ԥ�������1����ҳ�Ҿ��ܽ����һ�����õ����ϣ����ԣ�\'
  +'������ܴ�����<1/c=red>����ҳ���Ҿ͸����¼<1/c=red>�㹱�׶ȡ���Ȼ�������\'
  +'�ڸ���1����ҳ��ͬʱ���ܾ���<5Ԫ��/c=red>�о����ѵĻ���\'
  +'�������������¼5�㹱�׶ȡ�\'
  +'������������Ĺ��׶���1200��ʱ���ҽ�����ص��ؼ�������\ \'
  +'|{cmd}<����/@shuye_explain>'
  );
end;

procedure _shuye_explain_2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ҳ�ְ���ҳ����ҳ������ҳ����ҳ������ͨ����Ѩ̽�մӹ���\'
  +'���ж�ã����߻�Ե�ɺ����о�֮���á�����ҳֻ�����Լ�ʹ�ã�\'
  +'��ҳ�Ļ����Խ��н��ס��ð���ҳ����ҳ�����Զһ����׶Ȼ���ֱ\'
  +'�����Ϸ����������������Ƿ���ϡ����ҳ��\ \'
  +'|{cmd}<����/@shuye_explain>'
  );
end;

procedure _shuye_about;
begin
  This_Npc.NpcDialog(This_Player,
  '���ս�����սʿ47�����ܡ��������۳��Σ�˲�仯��һ����Ӱ��ͻϮ\'
  +'��ǰ�ĸ��ڵĵ��ˡ�\'
  +'����һ���ƻ�����ǿ��ֱ��Զ���빥��������ͬ�һ𽣷�һ������Ҳ\'
  +'��Ҫһ����ʱ�䣬�ý���������սʿ������֮�ϣ��ȴ���������һ˲\'
  +'�䣬���Ķ��ǡ�\ \'
  +'|{cmd}<��һҳ/@shuye_about_1>\'
  +'|{cmd}<����/@shuye>'
  );
end;

procedure _shuye_about_1;
begin
  This_Npc.NpcDialog(This_Player,
  '���ǻ��꣺��ʦ47�����ܡ���ħ���������£�һ�����ҵĻ�������\'
  +'�������������ڵ��κ����ﶼ���ܵ�������˺���\'
  +'���ǻ�����һ��ɱ�����ܴ��ҷ�Χ�ܹ��ħ���������˺�7������\'
  +'�еĲ��ӣ�����з��Ĳ��Ӽ�����һ��ʱ������ʹ�����ħ����õ�\'
  +'ʱ���ˡ�������Ӣ�۵ȼ�����ߣ��Ժ�ħ����������Խ��Խǿ��\ \'
  +'|{cmd}<��һҳ/@shuye_about_2>\'
  +'|{cmd}<����/@shuye>'
  );
end;

procedure _shuye_about_2;
begin
  This_Npc.NpcDialog(This_Player,
  '��Ѫ������ʿ47�����ܡ��ü�����ʹ��������Ե�������˺�������\'
  +'�󻹿���ȡ�Է�������Ϊ�Լ��ظ�һ����Ѫ����\'
  +'��ʿ�ǳ������֮�⣬�ڶ������������ϵ������������������ֲ�\'
  +'���ǣ����ַ��������Ǳ��������߾���ľ���������������ĳЩ����\'
  +'�ϰ���ֱ�����˵�Ҫ������Ѫ���ĳ��֣����õ�ʿ�ǳ���ǿ����ٻ�\'
  +'��֮�⣬��������һ�����˾��µĶ��֡���Ҫע�������Ѫ����Ҫ\'
  +'���Ļ������\ \'
  +'|{cmd}<����/@shuye>'
  );
end;

//------------------------------------------------------------------------------

begin

    This_Npc.NpcDialog(This_Player,
    '��Ȼ�������Ѿ����ϻ��˱�����ԭ���������Ǳ���ʱ�̱��־��裬\'+
    '��������ӭ��ս����׼����\ \'
    +'|{cmd}<��ҳ�һ�/@shuye>                     \ \'
    );

end.