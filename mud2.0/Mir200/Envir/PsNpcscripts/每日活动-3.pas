

program mir2;



procedure _cj;
begin
  This_Npc.NpcDialog(This_Player,          
   '�����<ÿ��/c=red>��<16��/c=red>��<19��/c=red>���ţ�\'+
   '+���Ž���ʱ��Ϊ<16��00��/c=red>��<19��00��/c=red>��\'+
   'ÿ�ο���ʱ��60���ӣ�Ͽ�������ش���Я����������ޡ�\'+
   '�������ǣ��������ֳ�ԭ�Σ����������ҳ����\ \'+
   '|{cmd}<���Ͻ���/@zou1>'); 
end;

procedure _zou1;
var
  temp1,temp2 : integer;
begin
  if (GetHour = 16) and (GetMin < 00) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<16��00��/c=red>��<19��00��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 19) and (GetMin < 00) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<16��00��/c=red>��<19��00��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 16) and (GetMin >= 00) and (GetMin < 60) then
  begin
    if temp1 = -1 then
    begin
      temp1 := 0;
    end
    if temp1 = GetDateNum(GetNow) then
    begin
      This_Player.RandomFlyTo('R001~21');
      This_Player.CallOut(This_Npc, 1, 'MFBG2');
    end
    else
    begin
      temp1 := GetDateNum(GetNow);
      This_Player.CallOut(This_Npc, 1, 'MFBG2');
      This_Player.RandomFlyTo('R001~21');
  
    end;
  end
  else if (GetHour = 19) and (GetMin >= 00) and (GetMin < 60) then
  begin
    if temp2 = -1 then
    begin
      temp2 := 0;
    end
    if temp2 = GetDateNum(GetNow) then
    begin
    This_Player.CallOut(This_Npc, 1, 'MFBG2');
      This_Player.RandomFlyTo('R001~21');
    end
    else
    begin
      temp2 := GetDateNum(GetNow);
      This_Player.CallOut(This_Npc, 1, 'MFBG2');
      This_Player.RandomFlyTo('R001~21');

    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '���ڻ�����ʱ�򣬻����ÿ���16��00�ֺ�19��00�ֿ��Ž��룡\�����ʱ�������ɡ�\ \');
  end;
end;


procedure MFBG2;

begin
  
      if ((GetHour = 16) or(GetMin < 59)) and ((GetHour = 19) or(GetMin < 59)) then
         
      begin
         if CompareText(This_Player.MapName,'R001~21') = 0 then
         begin
            This_Player.CallOut(This_Npc, 1, 'MFBG2');
            
         end ;  
         end else 
         begin
          
             This_Player.FlyTo('3', 333, 333);
            ServerSay('�ؾ�Ͽ�Ȼ��������ȴ��´ο���ʱ�䣡',3); 
             
            
         end ; 
        
end;







procedure _gongsha;
begin
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���\|'
	+'ÿ��14:00-15:00��18:00-19:00���Խ���ģ�⹥ɳ���\|'
    +'45�����Ͻ��룬ɱ���س���ʿ���Ի��һ����Ԫ����\|'
    +'����ɱ����������һ�����ʻ�ü�Ʒְҵ������\|'
    +'|{cmd}<����ģ�⹥ɳ/@mngs>\');
end;
procedure mngs2;
begin
This_Player.FlyTo('3~1',693+random(5),349+random(5));  //������䷶Χ����ֹ���Ž���ȥ 

end; 

procedure _mngs; 
begin
if  ((GetHour = 14) and (GetMin < 60)) or 
((GetHour = 18) and (GetMin < 60)) then begin 
    if This_Player.Level >= 50 then
  begin                 
   This_Player.CallOut(This_Npc,50, 'mngs2');
    This_Player.RandomFlyTo('Q002~2');
    This_Npc.NpcDialog(This_Player,
   '��ɳ��ʼ��5�����빥ɳ����');
   This_Npc.NpcNotice('ǿ���'+This_Player.Name+
   '������ģ�⹥ɳ��');
   end else
    This_Npc.NpcDialog(This_Player,
   '���ĵȼ�������');   
end else
     This_Npc.NpcDialog(This_Player,
   '���ڻʱ�䣡');  
  end;



Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _guaiwu;
begin
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���,���﹥��ʱ��Ϊ��������20:00-21:30��\'
	+'�����Ǿ��У�ÿ10����һ����,��6������������5���Ӻ�ȫBOSS���ǣ�\'
  +'21:30��յ��ڹ���\'
    +'|{cmd}<��ѯ/@cx>\');
end;

procedure _cx; 

begin  
    if  ((GetHour = 20) and ( GetDayOfWeek = 6) and (GetMin < 60)) or
	((GetHour = 21) and ( GetDayOfWeek = 6) and (GetMin < 30))  then  
    begin
      This_Npc.NpcDialog(This_Player,
        '��ǰ�����������ܹ�����Ű����ע�ⰲȫ!');
	end else
  This_Npc.NpcDialog(This_Player,
        '���ڹ��﹥��ʱ��!');
    end;
 
procedure Execute;
var   
gmin : integer;
begin
gmin := GetMin ;
if (GetDayOfWeek = 6) and (GetHour = 20)  then            //��ʱˢ��ʱ���
 case gmin of 
0 : begin
This_NPC.CreateMon('3',234,292,5,'��ʬ',50);
This_NPC.CreateMon('3',347,376,5,'������',50);
This_NPC.CreateMon('3',380,364,5,'ʬ��',10);
This_NPC.CreateMon('3',381,330,5,'������ʿ',10);
This_NPC.CreateMon('3',380,364,5,'˫ͷѪħ',1);
This_NPC.CreateMon('3',380,364,5,'˫ͷ���',1);
This_NPC.SetMonTargetXY(333,333);
This_NPC.NpcNotice('���������ؼ��ἴ�����ǣ����λ��ʿӻԾ���룬ά��һ��������');
    end; 
10 : begin
This_NPC.CreateMon('3',234,292,5,'���齩ʬ',50);
This_NPC.CreateMon('3',347,376,5,'���ó�ǹ��',50);
This_NPC.CreateMon('3',380,364,5,'ʬ��',10);
This_NPC.CreateMon('3',381,330,5,'�罩��',10);
This_NPC.SetMonTargetXY(323,323);
This_NPC.NpcNotice('�ڶ��������������ؼ��ἴ�����ǣ����λ��ʿӻԾ���룬ά��һ��������');
    end;   
20 : begin
This_NPC.CreateMon('3',234,292,5,'������ʿ',50);
This_NPC.CreateMon('3',347,376,5,'����ս��',50);
This_NPC.CreateMon('3',380,364,5,'��������',10);
This_NPC.CreateMon('3',381,330,5,'�������',4);
This_NPC.CreateMon('3',381,330,5,'��֮�������',1);
This_NPC.SetMonTargetXY(337,325);
This_NPC.NpcNotice('�����������������ؼ��ἴ�����ǣ����λ��ʿӻԾ���룬ά��һ��������');
    end;   
 30 : begin
This_NPC.CreateMon('3',234,292,5,'���깭����',20);
This_NPC.CreateMon('3',347,376,5,'Ш��',20);
This_NPC.CreateMon('3',380,364,5,'а��ǯ��',10);
This_NPC.CreateMon('3',381,330,5,'����֩��',10);
This_NPC.CreateMon('3',381,330,5,'Ѫ����',10);
This_NPC.CreateMon('3',380,364,5,'��Ұ��',10);
This_NPC.CreateMon('3',381,330,5,'��֮��Ȫ����',1);
This_NPC.CreateMon('3',380,364,5,'��֮��ħ����',1);
This_NPC.SetMonTargetXY(323,337);
This_NPC.NpcNotice('���Ĳ������������ؼ��ἴ�����ǣ����λ��ʿӻԾ���룬ά��һ��������');
    end;  
 40 : begin
This_NPC.CreateMon('3',234,292,5,'��ʬ',50);
This_NPC.CreateMon('3',347,376,5,'������',50);
This_NPC.CreateMon('3',380,364,5,'ʬ��',10);
This_NPC.CreateMon('3',381,330,5,'������ʿ',10);
This_NPC.CreateMon('3',234,292,5,'��װʹ��',2);
This_NPC.CreateMon('3',347,376,5,'��֮˫ͷѪħ',1);
This_NPC.CreateMon('3',380,364,5,'��֮˫ͷ���',1);
This_NPC.CreateMon('3',381,330,5,'��֮���þ���',1);
This_NPC.SetMonTargetXY(337,337);
This_NPC.NpcNotice('���岨�����������ؼ��ἴ�����ǣ����λ��ʿӻԾ���룬ά��һ��������');
    end;  
  50 : begin
This_NPC.CreateMon('3',234,292,5,'��ħ����',5);
This_NPC.CreateMon('3',347,376,5,'��Ұ��',20);
This_NPC.CreateMon('3',380,364,5,'а����',5);
This_NPC.CreateMon('3',381,330,5,'��ħЫ��',5);
This_NPC.CreateMon('3',234,292,5,'��ħ����',5);
This_NPC.CreateMon('3',347,376,5,'��ħ����',1);
This_NPC.CreateMon('3',380,364,5,'ţħ����',5);
This_NPC.CreateMon('3',381,330,5,'ţħ��ʦ',5);
This_NPC.CreateMon('3',347,376,5,'ħ������',20);
This_NPC.CreateMon('3',380,364,5,'ħ����ʿ',5);
This_NPC.CreateMon('3',381,330,5,'ħ������',1);
This_NPC.CreateMon('3',347,376,5,'��֮ħ������',1);
This_NPC.CreateMon('3',380,364,5,'ţħ��',1);
This_NPC.CreateMon('3',381,330,5,'��֮ţħ��',1);
This_NPC.CreateMon('3',347,376,5,'��Ȫ����',1);
This_NPC.CreateMon('3',380,364,5,'ħӰ����',1);
This_NPC.SetMonTargetXY(329,333);
This_NPC.NpcNotice('�����������������ؼ��ἴ�����ǣ����λ��ʿӻԾ���룬ά��һ��������');
    end;  
60 : begin
This_NPC.CreateMon('3',381,330,5,'ħ������',1);
This_NPC.CreateMon('3',347,376,5,'��֮ħ������',1);
This_NPC.CreateMon('3',380,364,5,'ţħ��',1);
This_NPC.CreateMon('3',381,330,5,'��֮ţħ��',1);
This_NPC.CreateMon('3',347,376,5,'��Ȫ����',1);
This_NPC.CreateMon('3',380,364,5,'ħӰ����',1);
This_NPC.CreateMon('3',333,333,5,'������',1);
This_NPC.CreateMon('3',333,333,5,'����ս��',1);
This_NPC.CreateMon('3',333,333,5,'����ħ��',1);
This_NPC.CreateMon('3',333,333,5,'����1',1);
This_NPC.SetMonTargetXY(333,333);
This_NPC.NpcNotice('����ͳ˧�������ؼ��ἴ�����ǣ����λ��ʿӻԾ���룬ά��һ��������');
    end;  
  end;
if  (GetDayOfWeek = 6) and (GetHour = 21) and  (GetMin = 30)  then
  begin
    This_NPC.ClearMon('3');
    This_NPC.NpcNotice('���﹥�ǽ��������λ��ʿ�´�������'); 
  end;
  end; 








procedure _letgo;
begin
  if (GetHour <> 12) and (GetHour <> 19) and (GetHour <> 22) then
  begin
    This_Player.PlayerNotice('���Ի��û�п�ʼ��', 0);
    exit;
  end;
  if GetMin > 5 then
  begin
    This_Player.PlayerNotice('�Ѿ������˽���ʱ���ˣ����ڻ��ʼ5�����ڽ��룡', 0);
    exit;
  end;
  if GetMin > 20 then
  begin
    This_Player.PlayerNotice('��Ѿ���������ȴ��´λ��', 0);
    exit;
  end;
  This_Player.RandomFlyTo('0139~30');
  This_Player.PlayerNotice('���Ի����10��ʱ��ʼ�������ĵȴ���', 2);
  This_Player.CallOut(This_Npc, 1, 'luandou');
end;

procedure luandou;
begin
  if not(This_Player.MapName = '0139~30') then
    exit;
  if GetMin = 10 then
  begin
    This_Player.RandomFlyTo('0139~31');
    This_Player.CallOut(This_Npc, 10, 'jieshu');
    This_Player.PlayerNotice('���Ի�Ѿ���ʼ������������ң��������ʤ����', 2);
    exit;
  end;
  This_Player.CallOut(This_Npc, 1, 'luandou');
end;

procedure jieshu;
begin
  if not(This_Player.MapName = '0139~31') then
    exit;
  if GetMin > 20 then
  begin
    This_Player.RandomFlyTo('0159');
    This_Player.PlayerNotice('���Ի�Ѿ�������', 2);
    exit;
  end;
  This_Player.CallOut(This_Npc, 10, 'jieshu');
end;
procedure _luandou;
begin
  This_Npc.NpcDialog(This_Player,
    'ÿ��12�㣬19�㣬22����������Ⱥ�����Ի\|'
	+'|�����ʱ��ͼ�ڵ����һ����ҽ����<50���/c=red>��<200����/c=red>��\'
    +'|���ʼ���ǰ5������Ҫ�μӻ�����.\'
	+'|����ȴ���(��ʱ���޷�����)��10��ʱ�����˽����͵����Ե�ͼ.\'
	+'|��ͼ�����һ����һ�ý�����.\'
    +'|{cmd}<����ȴ���/@letgo>');

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


procedure _guanduobao;
begin
  This_Npc.NpcDialog(This_Player,          
  'ÿ�յĻ���Ž���ʱ��Ϊ<18��20����18��40��/c=red>��\'
  +'ÿ�ν�����Ҫ<֧��1000���/c=red>��\ \'
  +'|{cmd}<��Ҫ���ضᱦ/@guanduobao_start>'
  ); 
end;

procedure _guanduobao_start;
begin
  if This_Player.Level >= 40 then
  begin
    if (GetHour = 18) and (GetMin >= 40) then
    begin
      This_Npc.NpcDialog(This_Player,          
      '�ǳ��ı�Ǹ�����Ѿ�����˱��λ�Ľ���ʱ�䣬\ÿ�յĻ���Ž���ʱ��Ϊ<18��20����18��40��/c=red>��\��ȴ��´λ������\');
    end
    else if (GetHour = 18) and (GetMin >= 20) and (GetMin < 40) then
    begin
      This_Npc.NpcDialog(This_Player,          
      'Ŀǰ�ᱦս������ʽ����������ץ��ʱ�価�����ͣ����\�ȴ����ʼ��ÿ�ν���ͣ���ض���Ҫ<֧��1000���/c=red>��\ \'
      +'|{cmd}<����ͣ����/@GOONE>');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,          
      '�ǳ��ı�Ǹ�����Ѿ�����˱��λ�Ľ���ʱ�䣬\ÿ�յĻ���Ž���ʱ��Ϊ<18��20����18��40��/c=red>��\��ȴ��´λ������\');
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '�ǳ����ź���ֻ�еȼ��ﵽ<40��/c=red>����Ҳ��ܲμӴ˻��');
  end;
end;

procedure _GOONE;
begin
  if This_Player.Level >= 40 then
  begin
    if (GetHour = 18) and (GetMin >= 20) and (GetMin < 40) then
    begin
      if This_Player.GoldNum >= 1000 then
      begin
        This_Player.DecGold(1000);
        This_Player.RandomFlyTo('0139~12');
      end
      else
      begin
        This_Npc.NpcDialog(This_Player,          
        '�����û���㹻�Ľ�Ұ�������ô���أ�');
      end;
    end
  end
  else
    exit;
end;

procedure _Alivemission;
begin
  This_Npc.NpcDialog(This_Player,          
   '�����<ÿ��/c=red>��<14��/c=red>��<17��/c=red>���ţ�\'+
   '+���Ž���ʱ��Ϊ<13��50��/c=red>��<16��50��/c=red>��\'+
   '���������ڻ�����Σ���ǲ���ģ�ԽΣ�յĵط���õ�����ҲԽ��\'+
   '�����ó����׼�����\�����׼�����˿����Ƚ�����Ϣ�ҵȴ����ʼ��\ \'+
   '|{cmd}<������Ϣ��/@gorestroom>'); 
end;

procedure _gorestroom;
var
  temp1,temp2 : integer;
begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<13��50��/c=red>��<16��50��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<13��50��/c=red>��<16��50��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 13) and (GetMin >= 50) and (GetMin < 60) then
  begin
    if temp1 = -1 then
    begin
      temp1 := 0;
    end
    if temp1 = GetDateNum(GetNow) then
    begin
      This_Player.RandomFlyTo('EM002~001');
    end
    else
    begin
      temp1 := GetDateNum(GetNow);
      This_Player.RandomFlyTo('EM002~001');
      This_NPC.ClearMon('D2079~001');
      This_NPC.ClearMon('D2079~002');
      This_NPC.ClearMon('D2079~003');
      This_NPC.ClearMon('D2079~004');
      This_NPC.ClearMon('D2079~005');
      This_NPC.ClearMon('D2079~006');
    end;
  end
  else if (GetHour = 16) and (GetMin >= 50) and (GetMin < 60) then
  begin
    if temp2 = -1 then
    begin
      temp2 := 0;
    end
    if temp2 = GetDateNum(GetNow) then
    begin
      This_Player.RandomFlyTo('EM002~001');
    end
    else
    begin
      temp2 := GetDateNum(GetNow);
      This_Player.RandomFlyTo('EM002~001');
      This_NPC.ClearMon('D2079~001');
      This_NPC.ClearMon('D2079~002');
      This_NPC.ClearMon('D2079~003');
      This_NPC.ClearMon('D2079~004');
      This_NPC.ClearMon('D2079~005');
      This_NPC.ClearMon('D2079~006');
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '���ڻ�����ʱ�򣬻����ÿ���13��50�ֺ�16��50�ֿ��Ž��룡\�����ʱ�������ɡ�\ \');
  end;
end;

procedure _gohuan7;
begin
  This_Npc.NpcDialog(This_Player,
    '|ֻҪ��ӵ�е�����Ӿ��ᡢ\' +
    '|�ҾͿ�������ǰ�������Թ�������Ҳ��һ�����³�����\' +
    '|����������ȥ����ȣ�ǰȥ�μӶᱦ�\' +
    'ֻ�е�����¹������м����ʿ����ͨ���ͱ���ż����ᱦ��ͼ\' +
    '|{cmd}<���ǰ�������Թ�/@checkthing>\' +
    '|{cmd}<����ǰ�������Թ�/@checkthing1>\' +
    '|{cmd}<����/@main>');

end;

procedure _checkthing;
begin
  if This_Player.MapName = '3' then
  begin
    if This_Player.IsGroupOwner then
    begin
    if This_Player.GetBagItemCount('������Ӿ���') > 0 then
    begin
      if This_Player.Take('������Ӿ���', 1) then
        This_Player.GroupFly('T3063~01');
      end
    else
      This_Npc.NpcDialog(This_Player,
        '��û���κ���Ӿ��ᰡ���Ҳ�������ȥ');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
        '�㲻�����ڶ���Ķӳ������ܽ���');
    end;
  end;
end;


procedure _checkthing1;
begin
  if compareText(This_Player.MapName, '3') = 0 then
  begin
    if This_Player.GetBagItemCount('������Ӿ���') > 0 then
    begin
    if This_Player.Take('������Ӿ���', 1) then
        This_Player.Flyto('T3063~01', 0, 0);
   
    
    end
    else
      This_Npc.NpcDialog(This_Player,
        '��û���κ���Ӿ��ᰡ���Ҳ�������ȥ');
  end;

end;


procedure _move;
begin
   This_NPC.NpcDialog(This_Player,
   '�����ƶ�������ȥ�أ�\'+
   '|{cmd}<��ս�þ�һ��/@move1> \'+
   '|{cmd}<����Ǯ,ֱ����ս�þ�7��/@move2> \'+

   '|{cmd}<����/@main>');
end;



procedure _move2;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ����þ��߲㡣\'+ 
   '�����������ʹ�ã������֧��3000000��ң�\'+ 
   '���뻨���Ǯ��\ \'+  
   '|{cmd}<�ƶ�/@pay2>\');

end;


procedure _pay2;
begin
   if This_Player.GoldNum >= 3000000 then
        begin
     
          This_Player.Flyto('H007',161,172);

           
           end;
           
           begin
            This_Player.DecGold(3000000);
           end;
           if This_Player.GoldNum >= 3000000 then
        begin
         ServerSay('������ң�'+This_Player.Name+'ֱ��ʹ��300����ǰ���þ�7�㣬ף�����ˣ�',3);
    
        end else       
        begin
         This_Player.NotifyClientCommitItem(0,'�������ȥ���ͱ������ȸ���300���ң��Ͽ���Ұɡ�'); 
        end;
end;



procedure _move1;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ����þ�һ����Ҫ��ҡ�\'+ 
   '�����������ʹ�ã������֧��100000��ң�\'+ 
   '���뻨���Ǯ��\ \'+  
   '|{cmd}<�ƶ�/@pay1>\'+ 
   '|{cmd}<�˳�/@talkwith>');
end;

procedure _pay1;
begin
   if This_Player.GoldNum >= 100000 then
        begin
     
           This_Player.Flyto('H001',73,79);

           
         end;
           
         begin
            This_Player.DecGold(100000);
         end ;
         if This_Player.GoldNum >= 100000 then
        begin
         ServerSay('��ң�'+This_Player.Name+'ʹ��10����ǰ���þ���',3);
    
        end else   
        begin
         This_Player.NotifyClientCommitItem(0,'�������ȥ���ͱ������ȸ���10���ң��Ͽ���Ұɡ�'); 
        end;
end;

var
  JLTem, iDayWt, iChae , nowDay : integer;
  sDay : double;
  mail_str , day_Mstr : string;
Begin

   This_Npc.NpcDialog(This_Player,
   'Ϊ�����ڶ����ʿ�Ǹ����������������������������䲼��\'+
   'һϵ�еķ���Դ���������ʿ�Ǹ��������Լ���������\ '+
        
   '|{cmd}<���¶ᱦ�/@gohuan7>               ^<���ضᱦ�/@guanduobao> \'+
   '|{cmd}<���Ի/@luandou>                     ^<���﹥��/@guaiwu> \'+
   '|{cmd}<ģ�⹥��/@gongsha>             ^<�ؾ�Ͽ��/@cj> \'
   + '|{cmd}<��ҳ�һ�/@shuye>            ^<��ս�þ�/@move>\'         
   
   );
END.