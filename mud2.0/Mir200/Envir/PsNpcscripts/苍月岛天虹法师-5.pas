{
/*******************************************************************************
}


Program Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

//���Ӣ��ʥˮ���� 
Procedure ExtraMis(EMItemName : string ; EMNum :integer);
begin
   if (This_Player.GetV(13,18)>=1) and (This_Player.GetV(13,18)<=13) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
      '���и�С�������鷳���æ������'+'|{cmd}<'+EMItemName+'>'+'��\'+
      '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
      '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception>\'+
      '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
      '���и�С�������鷳���æ������'+'|{cmd}<'+EMItemName+'>'+'��\'+
      '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
      '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception>\'+
      '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
      This_Player.SetV(13,18,EMNum);
   end;
end;

 
Procedure ExtraMis_02(EMItemName_02 : string);
begin
   This_Npc.NpcDialog(This_Player,
   '����û�а����ҵ�'+'|{cmd}<'+EMItemName_02+'>'+'����\ \'+
   '|{cmd}<�Ѿ��ҵ��ˣ����ھ͸���/@give>\' +
   '|{cmd}<�һ�������/@doexit>');
end;


Procedure _acception;
var
R6 : integer;
begin
   R6 := This_Player.GetV(13,18);
   This_Player.SetV(13,19,R6);
   This_Npc.CloseDialog(This_Player);
end;  
   


Procedure _xiansuo;
var
R5 : integer;
begin
   if (This_Player.GetV(13,1) = 11) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '������ȥ��<����������ص��ϱ�>�����ǻ����Ӣ��ʥˮ��\ \'+
      '|{cmd}<�õ�/@doexit>\');
      This_Player.SetV(13,1,13);
   end;
end;


Procedure ExtraMis_jiang(EMItemName_02 : string ;EMItemNum : integer);
begin
   if (This_Player.GetV(13,19) = 9) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if This_Player.GoldNum >= 6666 then
      begin
         This_Player.DecGold(6666);
         This_Player.SetV(13,20,1);
         _xiansuo;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�����û������Ҹ�������飬�������������������Ұɡ�\');
      end;
   end else if (This_Player.GetV(13,19) >= 1) and (This_Player.GetV(13,19) <= 8) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if This_Player.GetBagItemCount(EMItemName_02) >= EMItemNum then
      begin
         This_Player.Take(EMItemName_02,EMItemNum);
         This_Player.SetV(13,20,1);
         _xiansuo;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�����û������Ҹ�������飬�������������������Ұɡ�\');
      end;
   end else
   begin 
      This_Npc.NpcDialog(This_Player,
      '�����û������Ҹ�������飬�������������������Ұɡ�\');
   end;
end;



procedure _give;
var
  R7 : integer;
begin
  R7 := This_Player.GetV(13,19);
  if (R7 >= 1) and (R7 <= 9) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
  begin
    case R7 of
       1:ExtraMis_jiang('��ҩ(С��)',9);
       2:ExtraMis_jiang('��Ʊ',5);
       3:ExtraMis_jiang('�����',6);
       4:ExtraMis_jiang('ʳ����Ҷ',4);
       5:ExtraMis_jiang('ʳ�����Ĺ�ʵ',2);
       6:ExtraMis_jiang('��',7);
       7:ExtraMis_jiang('����',7);
       8:ExtraMis_jiang('���',1);
       9:ExtraMis_jiang('���',6666);
    end;
  end;
end;


Procedure NextOfCall21;
begin
   if compareText(This_Player.MapName, 'T140~21') = 0 then 
   begin
      If CheckOtherMapMon('T140~21') > 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�ܿ�ϧ����û����ս�ɹ���');
         This_Player.Flyto('5',140,330);
      end else if CheckOtherMapMon('T140~21') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,20,1);
         This_Player.SetV(13,21,13);
         This_Player.Flyto('5',140,330);
      end;
   end;
end;

Procedure NextOfCall22;
begin
   if compareText(This_Player.MapName, 'T140~22') = 0 then 
   begin
      If CheckOtherMapMon('T140~22') > 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�ܿ�ϧ����û����ս�ɹ���');
         This_Player.Flyto('5',140,330);
      end else if CheckOtherMapMon('T140~22') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,20,1);
         This_Player.SetV(13,21,13);
         This_Player.Flyto('5',140,330);
      end;
   end;
end;

Procedure NextOfCall23;
begin
   if compareText(This_Player.MapName, 'T140~23') = 0 then 
   begin
      If CheckOtherMapMon('T140~23') > 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�ܿ�ϧ����û����ս�ɹ���');
         This_Player.Flyto('5',140,330);
      end else if CheckOtherMapMon('T140~23') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,20,1);
         This_Player.SetV(13,21,13);
         This_Player.Flyto('5',140,330);
      end;
   end;
end;

Procedure NextOfCall24;
begin
   if compareText(This_Player.MapName, 'T140~24') = 0 then 
   begin
      If CheckOtherMapMon('T140~24') > 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�ܿ�ϧ����û����ս�ɹ���');
         This_Player.Flyto('5',140,330);
      end else if CheckOtherMapMon('T140~24') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,20,1);
         This_Player.SetV(13,21,13);
         This_Player.Flyto('5',140,330);
      end;
   end;
end;


Procedure _give13;
begin
   if This_Player.GetV(13,20) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 11) and (This_Player.GetV(13,19) = 13) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if (CheckOtherMapHum('T140~21') = 0) and (compareText(This_Player.MapName, '5') = 0) then
      begin
         This_Player.RandomFlyTo('T140~21');
         This_Player.CallOut(This_Npc,1200,'NextOfCall21');
      end else if CheckOtherMapHum('T140~22') =0 then
      begin
         This_Player.RandomFlyTo('T140~22');
         This_Player.CallOut(This_Npc,1200,'NextOfCall22'); 
      end else if CheckOtherMapHum('T140~23') = 0 then
      begin
         This_Player.RandomFlyTo('T140~23');
         This_Player.CallOut(This_Npc,1200,'NextOfCall23'); 
      end else if CheckOtherMapHum('T140~24') = 0 then
      begin
         This_Player.RandomFlyTo('T140~24');
         This_Player.CallOut(This_Npc,1200,'NextOfCall24'); 
      end else
      begin
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô������');
   end;
end;


Procedure _give12;
begin
   if This_Player.GetV(13,20) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 11) and (This_Player.GetV(13,19) = 12) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if (This_Player.IsGroupOwner) or (This_Player.IsTeamMember) then
      begin
         This_Player.SetV(13,20,1);
         _xiansuo;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�����û������Ҹ�������飬�������������������Ұɡ�');
      end; 
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô������');
   end;
end;



Procedure _give11;
begin
   if This_Player.GetV(13,20) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 11) and (This_Player.GetV(13,19) = 11) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ţ�������<��ʼ/@touzi>Ͷ���Ӱɣ�');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����û������Ҹ�������飬�������������������Ұɡ�');
   end;
end;

Procedure _touzi;
begin
   if  (This_Player.GetV(13,1) = 11) and (This_Player.GetV(13,19) = 11) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      This_Player.SetV(0,1,(Random(6)+1));
      This_Npc.PlayDice(This_Player,1,'@AfterCube'); 
   end;
end;


Procedure _AfterCube;
begin
   if This_Player.GetV(0,1) = 6 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���ӵĵ�����<6/c=red> ������������������\'+
      '�Ұ���һ���ص������ɣ�\'+
      'ȥ��<����������ص��ϱ�>�ɣ����ǻ����Ӣ��ʥˮ��\ \'+
      '|{cmd}<�õ�/@doexit>');
      This_Player.SetV(13,20,1);
      This_Player.SetV(13,21,11);
   end else if (This_Player.GetV(0,1) >= 1) and (This_Player.GetV(0,1) < 6) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ܿ�ϧ�����ӵĵ�����Ϊ6������Ͷ���Ӱɡ�\ \'+
      '|{cmd}<������/@touzi>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����û��Ͷ���Ӱɣ�');
   end;
end;

Procedure _give10;
begin
   if This_Player.GetV(13,20) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 11) and (This_Player.GetV(13,19) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ã������������ɣ�����˭����������\'+ 
      '��������˵���ˣ���ƽҲ������Ŷ��\ \'+
      '|{cmd}<������/@cjd>       ^<��ʯͷ/@cst>       ^<����/@cbp>\');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����û������Ҹ�������飬�������������������Ұɡ�');
   end;
end;

Procedure _cjd;
var
R801 : Integer;
begin
   if  (This_Player.GetV(13,1) = 11) and (This_Player.GetV(13,19) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      R801 := Random(3);
      if R801 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�������������Ҳ�Ǽ���������ƽ���������䣬�Ǻǣ�\'+
         '���Ǽ�������ȭ������˭���������ã�\ \'+
         '|{cmd}<������/@cjd>       ^<��ʯͷ/@cst>       ^<����/@cbp>\');
      end else if R801 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '������������ҳ�ʯͷ���������������ˣ�\'+
         '���Ǽ�������ȭ������˭���������ã�\ \'+
         '|{cmd}<������/@cjd>       ^<��ʯͷ/@cst>       ^<����/@cbp>\');
      end else if R801 = 2 then
      begin
         This_Npc.NpcDialog(This_Player,
         '������������ҳ���������ѽ�������ˣ�\'+
         '�Ұ���һ���ص������ɡ�\'+
         'ȥ��<����������ص��ϱ�>�ɣ����ǻ����Ӣ��ʥˮ��\ \'+
         '|{cmd}<�õ�/@doexit>');
         This_Player.SetV(13,20,1);
         This_Player.SetV(13,21,10);
      end;
   end;
end;


Procedure _cst;
var
R802 : Integer;
begin
   if  (This_Player.GetV(13,1) = 11) and (This_Player.GetV(13,19) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      R802 := Random(3);
      if R802 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '���ʯͷ������Ҳ��ʯͷ������ƽ���������䣬�Ǻǣ�\'+
         '���Ǽ�������ȭ������˭���������ã�\ \'+
         '|{cmd}<������/@cjd>       ^<��ʯͷ/@cst>       ^<����/@cbp>\');
      end else if R802 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '���ʯͷ�����ҳ������������������ˣ�\'+
         '���Ǽ�������ȭ������˭���������ã�\ \'+
         '|{cmd}<������/@cjd>       ^<��ʯͷ/@cst>       ^<����/@cbp>\');
      end else if R802 = 2 then
      begin
         This_Npc.NpcDialog(This_Player,
         '���ʯͷ�����ҳ�����������ѽ�������ˣ�\'+
         '�Ұ���һ���ص������ɡ�\'+
         'ȥ��<����������ص��ϱ�>�ɣ����ǻ����Ӣ��ʥˮ��\ \'+
         '|{cmd}<�õ�/@doexit>');
         This_Player.SetV(13,20,1);
         This_Player.SetV(13,21,10);
      end;
   end;
end;


Procedure _cbp;
var
R803 : Integer;
begin
   if  (This_Player.GetV(13,1) = 11) and (This_Player.GetV(13,19) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      R803 := Random(3);
      if R803 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�����������Ҳ����������ƽ,�������䣬�Ǻǣ�\'+
         '���Ǽ�������ȭ������˭���������ã�\ \'+
         '|{cmd}<������/@cjd>       ^<��ʯͷ/@cst>       ^<����/@cbp>\');
      end else if R803 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����������ҳ��������������������ˣ�\'+
         '���Ǽ�������ȭ������˭���������ã�\ \'+
         '|{cmd}<������/@cjd>       ^<��ʯͷ/@cst>       ^<����/@cbp>\');
      end else if R803 = 2 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����������ҳ�ʯͷ������ѽ�������ˣ�\'+
         '�Ұ���һ���ص������ɡ�\'+
         'ȥ��<����������ص��ϱ�>�ɣ����ǻ����Ӣ��ʥˮ��\ \'+
         '|{cmd}<�õ�/@doexit>');
         This_Player.SetV(13,20,1);
         This_Player.SetV(13,21,10);
      end;
   end;
end;



Procedure _gonext;
var
R1 : integer; 
R2 : integer;
R3 : Integer;
R4 : integer;
begin
  if (This_Player.GetV(13,1) = 11) or (This_Player.GetV(13,1) = 13) then
  begin 
    if (This_Player.GetV(13,1) = 13) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
    begin
       This_Npc.NpcDialog(This_Player,
       '����<�귨��֤>������֪����ô���������ھ�ǩ�֡�\'+
       '�����ڿ���ȥ��<����������ص��ϱ�>�����ǻ����Ӣ��ʥˮ�ģ�\');
    end else if This_Player.GetV(13,21) = 13 then
    begin
       This_Npc.NpcDialog(This_Player,
       '�������Ȼ�к�ǿ��ʵ����������ȫ�����\'+
       '�����ڿ���ȥ��<����������ص��ϱ�>�����ǻ����Ӣ��ʥˮ�ģ�');
       This_Player.SetV(13,1,13); 
    end else if (This_Player.GetV(13,21) = 10) or (This_Player.GetV(13,21) = 11) then
    begin
       This_Npc.NpcDialog(This_Player,
       '��Ӯ�ˣ�лл����������ô�ã�\'+
       '��㵢���������£����Ѿ���<�귨��֤>ǩ�����ˡ�\'+
       '�����ڿ���ȥ��<����������ص��ϱ�>�����ǻ����Ӣ��ʥˮ�ģ�');
       This_Player.SetV(13,1,13); 
    end else if This_Player.GetV(13,20) =1 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ�������Ҹ��������\'+
       '����<�귨��֤>������֪����ô���������ھ�ǩ�֡�\'+
       '�����ڿ���ȥ��<����������ص��ϱ�>�����ǻ����Ӣ��ʥˮ�ģ�\');
       This_Player.SetV(13,1,13); 
    end else if (This_Player.GetV(13,19) >= 1) then
    begin
       R4 := This_Player.GetV(13,19);
       if (R4 >= 1) and (R4 <= 9) then
       begin
          case R4 of
             1:ExtraMis_02('9ƿ��ҩ(С��)');
             2:ExtraMis_02('5�Ų�Ʊ');
             3:ExtraMis_02('6�Ѻ����');
             4:ExtraMis_02('4��ʳ����Ҷ');
             5:ExtraMis_02('2��ʳ�����Ĺ�ʵ');
             6:ExtraMis_02('7����');
             7:ExtraMis_02('7������');
             8:ExtraMis_02('1����');
             9:ExtraMis_02('6666���');
          end;
       end else if R4 = 10 then
       begin
          This_Npc.NpcDialog(This_Player,
          '��Ը��Ը����Ҳ�ȭ�أ�\ \'+
          '|{cmd}<�õ�/@give10>\'+
          '|{cmd}<����������/@doexit>');
       end else if R4 = 11 then
       begin
          This_Npc.NpcDialog(This_Player,
          '��Ը��Ը�����Ͷ���ӣ�Ͷ����������Ӯ��\ \'+
          '|{cmd}<�õ�/@give11>\'+
          '|{cmd}<����������/@doexit>');
       end else if R4 = 12 then
       begin
          This_Npc.NpcDialog(This_Player,
          '���ǲ����Ѿ��ҵ�־ͬ���ϵĶ����ˣ�\ \'+
          '|{cmd}<�Ѿ��ҵ���/@give12>\'+
          '|{cmd}<�һ�������/@doexit>');
       end else if R4 = 13 then
       begin
          This_Npc.NpcDialog(This_Player,
          '���Ƿ�Ը�������ս��ǰ��������\ \'+
          '|{cmd}<�õ�/@give13>\'+
          '|{cmd}<����������/@doexit>');
       end;
    end else if (This_Player.GetV(13,18) >= 1) then
    begin
       R3 := This_Player.GetV(13,18);
       if (R3 >= 1) and (R3 <= 9) then
       begin
          case R3 of
             1:ExtraMis('9ƿ��ҩ(С��)',R3);
             2:ExtraMis('5�Ų�Ʊ',R3);
             3:ExtraMis('6�Ѻ����',R3);
             4:ExtraMis('4��ʳ����Ҷ',R3);
             5:ExtraMis('2��ʳ�����Ĺ�ʵ',R3);
             6:ExtraMis('7����',R3);
             7:ExtraMis('7������',R3);
             8:ExtraMis('1����',R3);
             9:ExtraMis('6666���',R3);
          end;
       end else if R3 = 10 then
       begin
          This_Npc.NpcDialog(This_Player,
          '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ���и�С����\'+
          '�ܷ�������һ�ᣬ���Ҳ�ȭ��ֻҪӮ���ҾͿ��ԣ�\'+
          '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
          '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
          '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
       end else if R3 = 11 then
       begin
          This_Npc.NpcDialog(This_Player,
          '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
          '���и�С�����ܷ�������һ��Ͷ���ӣ��������ſ��ԣ�\'+
          '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
          '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
          '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
       end else if R3 = 12 then
       begin
          This_Npc.NpcDialog(This_Player,
          '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
          '���и�С������ϲ�����֣�������Щ������������İɣ�\'+
          '��ȥ��1֧�����������Լ����ӳ���\'+
          '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
          '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
          '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
       end else if R3 = 13 then
       begin
          This_Npc.NpcDialog(This_Player,
          '��Ҫ�������ս������ȫ�����Ｔ�ɣ���ʱ20���ӣ�\'+
          '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
          '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
         '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
       end;
    end else if (This_Player.GetV(13,4) =1) or (This_Player.GetV(13,8) =1) or (This_Player.GetV(13,12) =1) then
    begin
        _xiansuo;
    end else
    begin
        R1 := Random(100);
        if R1 < 20 then
        begin
           R2 := Random(12) + 1;
           if (R2 >= 1) and (R2 <= 9) then
           begin
              case R3 of
                 1:ExtraMis('9ƿ��ҩ(С��)',R2);
                 2:ExtraMis('5�Ų�Ʊ',R2);
                 3:ExtraMis('6�Ѻ����',R2);
                 4:ExtraMis('4��ʳ����Ҷ',R2);
                 5:ExtraMis('2��ʳ�����Ĺ�ʵ',R2);
                 6:ExtraMis('7����',R2);
                 7:ExtraMis('7������',R2);
                 8:ExtraMis('1����',R2);
                 9:ExtraMis('6666���',R2);
              end;
           end else if R2 = 10 then
           begin
              This_Npc.NpcDialog(This_Player,
              '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ���и�С����\'+
              '�ܷ�������һ�ᣬ���Ҳ�ȭ��ֻҪӮ���ҾͿ��ԣ�\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,18,10);
           end else if R2 = 11 then
           begin
              This_Npc.NpcDialog(This_Player,
              '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
              '���и�С�����ܷ�������һ��Ͷ���ӣ��������ſ��ԣ�\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,18,11);
           end else if R2 = 12 then
           begin
              This_Npc.NpcDialog(This_Player,
              '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
              '���и�С������ϲ�����֣�������Щ������������İɣ�\'+
              '��ȥ��1֧�����������Լ����ӳ���\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,18,12);
           end else if R2 = 13 then
           begin
              This_Npc.NpcDialog(This_Player,
              '��Ҫ�������ս������ȫ�����Ｔ�ɣ���ʱ20���ӣ�\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,18,13);
           end;
        end else
        begin
           _xiansuo;
        end;
    end;
  end;  
end;

Procedure _acception_02;
var
R60 : integer;
begin
   R60 := This_Player.GetV(13,18);
   This_Player.SetV(13,19,R60);
   This_Npc.CloseDialog(This_Player);
end;  




//ԭ���ݣ� 
Procedure _join;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ȼ���Ѿ�������ս�ľ�����ô�Ҿ͸�����ɣ�\'+
   '���Ķ������������ϵġ�ħ���ǡ��������������ʵ����\'+
   '�����ţ��ֻ���ҪȥѰ���Ǵ�˵��Զ��������Ҫ�����������\'+
   '��ô��ħ���Ǹ�����ȥ���Եĵط���\ \'+
   '|{cmd}<ȥħ����/@gomol>\'+
   '|{cmd}<�뿪/@doexit>');
end;

Procedure _gomol;
begin
   if This_Player.Level >= 48 then
   begin
      This_Player.FlyTo('6',123,158);
   end else 
   
   begin
      This_Npc.NpcDialog(This_Player,
      '���ʵ�������㣬��ﵽ48����������!'   );
   end;
end;


Begin
   if (This_Player.GetV(13,1) = 5) or (This_Player.GetV(13,1) = 7) or (This_Player.GetV(13,1) = 9) or (This_Player.GetV(13,1) = 11) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����һ� �Ĺۺ��������̶����أ������λã������ˣ�\'+
      '���ѵ����Ժ��Ķ�������ź�������һ���޼ʵĺ���������ӣ�\'+
      '�������޹�����~\'+
      '���߶�������������׷���Ӧ�����һ�������޾���\'+
      '�÷������纣һ�����䣬���纣һ���㣡\'+
      '����Ը��Ը��ȥ��ս�Լ�����Ϊ��һ����ˣ�\ \'+
      '|{cmd}<Ŷ���õģ��������ԣ�/@join>'+addspace(' ',18)+'|{cmd}<��ʾ�귨��֤/@gonext>\'+
      '|{cmd}<���ˣ��һ����뿪��/@doexit>\');
      This_Player.SetV(13,1,11);
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����һ� �Ĺۺ��������̶����أ������λã������ˣ�\'+
      '���ѵ����Ժ��Ķ�������ź�������һ���޼ʵĺ���������ӣ�\'+
      '�������޹�����~\'+
      '���߶�������������׷���Ӧ�����һ�������޾���\'+
      '�÷������纣һ�����䣬���纣һ���㣡\'+
      '����Ը��Ը��ȥ��ս�Լ�����Ϊ��һ����ˣ�\ \'+
      '|{cmd}<Ŷ���õģ��������ԣ�/@join>\'+
      '|{cmd}<���ˣ��һ����뿪��/@doexit>\');
   end;
end.