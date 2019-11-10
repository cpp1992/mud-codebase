{
*******************************************************************}

PROGRAM Mir2;


{$I common.pas}



Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

//Ӣ��ʥˮ���񲿷֣�
Procedure ExtraMis(EMItemName : string ; EMNum :integer);
begin
   if (This_Player.GetV(13,10)>=1) and (This_Player.GetV(13,10)<=13) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
      This_Player.SetV(13,10,EMNum);
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
   R6 := This_Player.GetV(13,10);
   This_Player.SetV(13,11,R6);
   This_Npc.CloseDialog(This_Player);
end;  



Procedure _nextnpc;
var
R9 : integer;
begin
   if This_Player.GetV(13,12) = 1 then
   begin
      R9 := random(2);
      if R9 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
         '����ȥ��һ�� <ɳ�Ϳ˵�����>�ɡ�\');
         This_Player.SetV(13,1,8);
      end else if R9 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
         '����ȥ��һ�� <���µ�����編ʦ>�ɡ�\');
         This_Player.SetV(13,1,9);
      end;
   end;
end;
   



Procedure _xiansuo;
var
R5 : integer;
begin
   if (This_Player.GetV(13,1) = 1) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      R5 := random(2);
      if R5 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
         '����ȥ��һ�� <ɳ�Ϳ˵�����>�ɡ�\');
         This_Player.SetV(13,1,8);
      end else if R5 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
         '����ȥ��һ�� <���µ�����編ʦ>�ɡ�\');
         This_Player.SetV(13,1,9);
      end;
   end;
end;


Procedure ExtraMis_jiang(EMItemName_02 : string ;EMItemNum : integer);
begin
   if (This_Player.GetV(13,11) = 9) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if This_Player.GoldNum >= 6666 then
      begin
         This_Player.DecGold(6666);
         This_Player.SetV(13,12,1);
         _xiansuo;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�����û������Ҹ�������飬�������������������Ұɡ�\');
      end;
   end else if (This_Player.GetV(13,11) >= 1) and (This_Player.GetV(13,11) <= 8) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if This_Player.GetBagItemCount(EMItemName_02) >= EMItemNum then
      begin
         This_Player.Take(EMItemName_02,EMItemNum);
         This_Player.SetV(13,12,1);
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
  R7 := This_Player.GetV(13,11);
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
         This_Player.Flyto('11',223,274);
      end else if CheckOtherMapMon('T140~21') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,12,1);
         This_Player.SetV(13,13,13);
         This_Player.Flyto('11',223,274);
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
         This_Player.Flyto('11',223,274);
      end else if CheckOtherMapMon('T140~22') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,12,1);
         This_Player.SetV(13,13,13);
         This_Player.Flyto('11',223,274);
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
         This_Player.Flyto('11',223,274);
      end else if CheckOtherMapMon('T140~23') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,12,1);
         This_Player.SetV(13,13,13);
         This_Player.Flyto('11',223,274);
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
         This_Player.Flyto('11',223,274);
      end else if CheckOtherMapMon('T140~24') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,12,1);
         This_Player.SetV(13,13,13);
         This_Player.Flyto('11',223,274);
      end;
   end;
end;


Procedure _give13;
begin
   if This_Player.GetV(13,12) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 1) and (This_Player.GetV(13,11) = 13) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if (CheckOtherMapHum('T140~21') = 0) and (compareText(This_Player.MapName, '11') = 0) then
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
   if This_Player.GetV(13,12) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 1) and (This_Player.GetV(13,11) = 12) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if (This_Player.IsGroupOwner) or (This_Player.IsTeamMember) then
      begin
         This_Player.SetV(13,12,1);
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
   if This_Player.GetV(13,12) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 1) and (This_Player.GetV(13,11) = 11) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
   if  (This_Player.GetV(13,1) = 1) and (This_Player.GetV(13,11) = 11) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
      '�Ұ���һ���ص������ɣ�\ \'+
      '|{cmd}<�õ�/@nextnpc>');
      This_Player.SetV(13,12,1);
      This_Player.SetV(13,13,11);
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
   if This_Player.GetV(13,12) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 1) and (This_Player.GetV(13,11) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
   if  (This_Player.GetV(13,1) = 1) and (This_Player.GetV(13,11) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
         '�Ұ���һ���ص������ɡ�\ \'+
         '|{cmd}<�õ�/@nextnpc>');
         This_Player.SetV(13,12,1);
         This_Player.SetV(13,13,10);
      end;
   end;
end;


Procedure _cst;
var
R802 : Integer;
begin
   if  (This_Player.GetV(13,1) = 1) and (This_Player.GetV(13,11) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
         '�Ұ���һ���ص������ɡ�\ \'+
         '|{cmd}<�õ�/@nextnpc>');
         This_Player.SetV(13,12,1);
         This_Player.SetV(13,13,10);
      end;
   end;
end;


Procedure _cbp;
var
R803 : Integer;
begin
   if  (This_Player.GetV(13,1) = 1) and (This_Player.GetV(13,11) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
         '�Ұ���һ���ص������ɡ�\ \'+
         '|{cmd}<�õ�/@nextnpc>');
         This_Player.SetV(13,12,1);
         This_Player.SetV(13,13,10);
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
  if (This_Player.GetV(13,1) = 1) or (This_Player.GetV(13,1) = 8) or (This_Player.GetV(13,1) = 9) then
  begin 
    if This_Player.GetV(13,1) = 8 then
    begin
       This_Npc.NpcDialog(This_Player,
       '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
       '����ȥ��һ�� <ɳ�Ϳ˵�����>����\');
    end else if This_Player.GetV(13,1) = 9 then
    begin
       This_Npc.NpcDialog(This_Player,
       '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
       '����ȥ��һ�� <���µ���編ʦ>����\ \');
    end else if This_Player.GetV(13,13) = 13 then
    begin
       This_Npc.NpcDialog(This_Player,
       '�������Ȼ�к�ǿ��ʵ����������ȫ������ҾͰ�����ĸ����㡣\ \'+
       '|{cmd}<��������һ��/@nextnpc>\'+
       '|{cmd}<�˳�/@doexit>');
    end else if (This_Player.GetV(13,13) = 10) or (This_Player.GetV(13,13) = 11) then
    begin
       This_Npc.NpcDialog(This_Player,
       'û�뵽�㾹ȻӮ���ң��ðɣ��ҾͰ�����ĸ����㡣\ \'+
       '|{cmd}<��������һ��/@nextnpc>\'+
       '|{cmd}<�˳�/@doexit>');
    end else if This_Player.GetV(13,12) =1 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ�������Ҹ���������Ұ�����ĸ�����ɡ�\ \'+
       '|{cmd}<�õ�/@nextnpc>\'+
       '|{cmd}<�˳�/@doexit>');
    end else if (This_Player.GetV(13,11) >= 1) then
    begin
       R4 := This_Player.GetV(13,11);
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
    end else if (This_Player.GetV(13,10) >= 1) then
    begin
       R3 := This_Player.GetV(13,10);
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
    end else
    begin
        R1 := Random(100);
        if R1 < 20 then
        begin
           R2 := Random(12)+1;
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
              This_Player.SetV(13,10,10);
           end else if R2 = 11 then
           begin
              This_Npc.NpcDialog(This_Player,
              '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
              '���и�С�����ܷ�������һ��Ͷ���ӣ��������ſ��ԣ�\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,10,11);
           end else if R2 = 12 then
           begin
              This_Npc.NpcDialog(This_Player,
              '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
              '���и�С������ϲ�����֣�������Щ������������İɣ�\'+
              '��ȥ��1֧�����������Լ����ӳ���\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,10,12);
           end else if R2 = 13 then
           begin
              This_Npc.NpcDialog(This_Player,
              '��Ҫ�������ս������ȫ�����Ｔ�ɣ���ʱ20���ӣ�\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,10,13);
           end;
        end else
        begin
           _xiansuo;
        end;
    end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�ţ���Ϣͦ������ô����ҵ����⣡����ȥ��ս\'+
     'ǿ��Ĺ����𣿲���Ϊ����İ�ȫ�һ��ǲ��������ȥ��\ \'+
     '|{cmd}<�ر�/@doexit>');
  end;  
end;

Procedure _acception_02;
var
R60 : integer;
begin
   R60 := This_Player.GetV(13,10);
   This_Player.SetV(13,11,R60);
   This_Npc.CloseDialog(This_Player);
end;  



 
//ԭ���ݣ� 
Procedure _huwei;
begin
   This_Npc.NpcDialog(This_Player,
   '������λ�ĺ�����ڳ���������ӣ����������İ���\'+
   '��˵������һ�������ֵ������ڴ������˭�ܰ�������\'+
   '�ָ������أ�\ \'+
   '|{cmd}<ȷ��/@doexit>');
end;

Procedure _superamo;
begin
   This_Npc.NpcDialog(This_Player,
   '�������صĲ��µ����ڿ���ٵس�����ʱ��������ħ��\'+
   'ս����ʱ����ʧ�����ڲ��µ����ٴγ��֣�ħ��������\'+
   '......������˵��6��ʥ���ѵ�Ҫ�������䣿\'+
   '�����˶��Ŭ���ɣ����Ų��µ��ĳ��ֻ��и��಻��˼\'+
   '������鷢�����귨��½��δ���������ǣ�\ \'+
   '|{cmd}<����!���������ħ������/@join>\'+
   '|{cmd}<����,�һ����뿪��/@doexit>\');
end;

Procedure _join;
begin
   This_Npc.NpcDialog(This_Player,
   '���Ȼ�¶��˾��ģ��Ǿ�ȥѰ�Ұ����ŵ��Ĳ�ʯ����\'+
   '���е�һ����ͨ������֮�ص�ͨ�����ҵ�����սʤ����Ķ�ħ�ɣ�\ \'+
   '|{cmd}<�뿪/@doexit>');
end;


Procedure _huishou;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ������һ�䣬��Щ��Ʒ�����൱��Ҫ�ģ�\' +
   '��ȷ���㲻����Ҫ�����е���Щ��Ʒ����\' +
   '�����ȷ�ϵĻ������ҾͰ�������Щ�����е���Ʒȫ���ջ��ˡ�\ \'+
   '|{cmd}<��ȷ�ϣ��Ҳ�����Ҫ��Щ������Ʒ��/@geidaoju>\' +
   '|{cmd}<����/@main>');
end;

Procedure _geidaoju;
var
a,b,c,d,e,f,g,h,i,j,k,l : integer;
begin
   a := This_Player.GetBagItemCount('�ƽ�Կ��');
   b := This_Player.GetBagItemCount('��������������');
   c := This_Player.GetBagItemCount('��������');
   d := This_Player.GetBagItemCount('����������');
   e := This_Player.GetBagItemCount('��ҽҩ��');
   f := This_Player.GetBagItemCount('�嶾��ҩ');
   g := This_Player.GetBagItemCount('��');
   h := This_Player.GetBagItemCount('����');
   i := This_Player.GetBagItemCount('С������');
   j := This_Player.GetBagItemCount('����ҩ������');
   k := This_Player.GetBagItemCount('����ָ��');
   l := This_Player.GetBagItemCount('�������');
   This_Player.Take('�ƽ�Կ��',a);
   This_Player.Take('��������������',b);
   This_Player.Take('��������',c);
   This_Player.Take('����������',d);
   This_Player.Take('��ҽҩ��',e);
   This_Player.Take('�嶾��ҩ',f);
   This_Player.Take('��',g);
   This_Player.Take('����',h);
   This_Player.Take('С������',i);
   This_Player.Take('����ҩ������',j);
   This_Player.Take('����ָ��',k);
   This_Player.Take('�������',l);
   This_Npc.NpcDialog(This_Player,
   '�ðɣ���Щ�����Ҿ������ˣ�');
end;

//------------------------------------------------------------------------------
//�ɳ�����ģ��
procedure _mission106_1;
begin
  if (This_Player.Level >= 27) and (This_Player.GetV(105,1) = 10) then
  begin
     This_Npc.NpcDialog(This_Player,
     '�����ս����������ȴ�Ӳ�����ս����\'
     +'����ֻ��ս�������ܱ������ǵ����ˣ��������ǵļ�԰��\'
     +'Ϊ����Щ��������ʿ�ǣ����Ǹ�Ӧ��������\ \'
     +'|{cmd}<���𡭡�/@mission106_1_1>'
     ); 
   end
   else
   exit;
end;

procedure _mission106_1_1;
begin
  if (This_Player.Level >= 27) and (This_Player.GetV(105,1) = 10) then
  begin
     This_Npc.NpcDialog(This_Player,
     '������ֵ�����Ϊѩɽ��������������Ǻ������۹�����ϵ��\'
     +'���������Ȼ����Ŭ������ļ���£�����Ҫѵ����һֻ��ս������\'
     +'��������һ��һĺ֮����\'
     +'�������µ���ͽȴ��ս��������������������\'
     +'��������������һս����������١��������˵��ǰ���\ \'
     +'|{cmd}<�����۹������𣬿��Ը��ҽ���ô��/@mission106_1_2>'
     ); 
   end
   else
   exit;
end;

procedure _mission106_1_2;
begin
  if (This_Player.Level >= 27) and (This_Player.GetV(105,1) = 10) then
  begin
     This_Npc.NpcDialog(This_Player,
     '����¼���Ҳ�������š�˵����Ҳ����Ϊ�˱�����԰��ͬһ��Ŀ�ġ�\'
     +'���Ҿ�����֪���ɡ������۹������ǵ�ĸ����\'
     +'���ǵ����������۹��ɹ���֧Ԯ���������֮һ��\'
     +'˵������������Ϊ�˱�֤����İ�ȫ���ҽ��ҵ����˱�����·ȥ\'
     +'����ɭ�����տֲ�֩���ԶԿ����ˡ�\'
     +'������Ϊ�ڴ�������ʧ�˷����Ҵ������ֻ�����ֻ���ڴ�פ����\'
     +'|{cmd}<��������������/@mission106_1_3>����������������˿�����Ƭɭ���еĶ��\'
     +'��Ȼ�����Ǵ������ֱ��棬���ǻ���ս��ѩ�ϼ�˪��'
     ); 
   end
   else
   exit;
end;

procedure _mission106_1_3;
begin
  if (This_Player.Level >= 27) and (This_Player.GetV(105,1) = 10) then
  begin
     This_Npc.NpcDialog(This_Player,
     '��������ļ��һ����ͽ����������ĥ��̫�٣��������Ե������Ρ�\'
     +'��ʿ���������ڼ���ϰ���ܣ� ���ܰ�����ѵ�����ǡ�\ \'
     +'|{cmd}<����ô��/@mission106_1_4>\'
    ); 
  end
  else
   exit;
end;

procedure _mission106_1_4;
begin
  if (This_Player.Level >= 27) and (This_Player.GetV(105,1) = 10) then
  begin
     This_Npc.NpcDialog(This_Player,
     'ȥ�����������ϱ��ɣ�����ָ����ģ�\ \'
     +'|{cmd}<�����㱣�أ��һ�Ŭ�������Լ���/@mission106_1_5>��\'
     ); 
   end
   else
   exit;
end;

procedure _mission106_1_5;
begin
  if This_Player.GetV(106,1) = 1 then
  begin
    This_npc.CloseDialog(This_Player);
  end
  else if (This_Player.Level >= 27) and (This_Player.GetV(105,1) = 10) then
  begin
    This_Player.SetV(106,1,1);
    This_Player.Give('����',200000);
    //#This_Player.DeleteTaskFromUIList(105);
    //#This_Player.AddTaskToUIList(106); 
    This_Player.UpdateTaskDetail(106,1);
    This_npc.CloseDialog(This_Player);
  end
  else
  exit;
end;  

//------------------------------------------------------------------------------
 

procedure _normal;
begin
  if (This_Player.GetV(13,1) = 1) or (This_Player.GetV(13,1) = 8) or (This_Player.GetV(13,1) = 9) then
   begin 
      This_Npc.NpcDialog(This_Player,
      '���¶�ħ������������չ����������ٽ���\'+
      '�����ˣ����Ѿ�����Σ�յı�Ե����Ը��Զ��������Ͽ����\'+
      '���޷��������κ��书�����ҿ���͸¶����һ�����ܣ�\'+
      '���¶�ħ��Ψһ�������......\'+
      '�������𣿺��ˣ���ȥ�ɡ�\ \'+
      '|{cmd}<����/@huwei>������ӥ������Ϣ'+addspace(' ',14)+'|{cmd}<�������µ�����������/@superamo>\'+
      '|{cmd}<���������ж������Ʒ/@huishou>\'+
      '|{cmd}<��ʾ�귨��֤/@gonext>'+addspace(' ',22)+'|{cmd}<�˳�/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '���¶�ħ������������չ����������ٽ���\'+
      '�����ˣ����Ѿ�����Σ�յı�Ե����Ը��Զ��������Ͽ����\'+
      '���޷��������κ��书�����ҿ���͸¶����һ�����ܣ�\'+
      '���¶�ħ��Ψһ�������......\'+
      '�������𣿺��ˣ���ȥ�ɡ�\ \'+
      '|{cmd}<����/@huwei>������ӥ������Ϣ'+addspace(' ',14)+'|{cmd}<�������µ�����������/@superamo>\'+
      //��������Ĳ�����Ϊ��δ���ֺ�ϸ�ڣ����Ի�δ��ɣ� 
      '|{cmd}<���������ж������Ʒ/@huishou>\'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;

Begin
   if This_Player.GetV(106,1) >= 1 then
   begin
      _normal; 
   end else if This_Player.GetV(105,1) = 10 then
   begin
      if This_Player.Level >= 27 then
      begin
         This_Npc.NpcDialog(This_Player,
         '���ǰ����ŵ������ô���������ϣ�Ī�ǡ���\ \'
         +'|{cmd}<��ͽ��Ϊ���ƻ������ǵļƻ�����������/@mission106_1>\ \'
         +'|{cmd}<���б����������/@normal>');
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��ĵȼ���û�дﵽ27����\��ô��Ҫ���������ǲ��ύ����ȥ��ɵġ���\ \'+
         '|{cmd}<���б����������/@normal>');
      end; 
   end else
   begin
     _normal;
   end;
end.
