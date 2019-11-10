{
/*******************************************************************************
}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//�귨��֤��Ӳ��֣�

Procedure ExtraMis(EMItemName : string ; EMNum :integer);
begin
   if (This_Player.GetV(13,6)>=1) and (This_Player.GetV(13,6)<=13) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
      This_Player.SetV(13,6,EMNum);
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
   R6 := This_Player.GetV(13,6);
   This_Player.SetV(13,7,R6);
   This_Npc.CloseDialog(This_Player);
end;  


Procedure _nextnpc;
var
R9 : integer;
begin
   if This_Player.GetV(13,8) = 1 then
   begin
      R9 := random(2);
      if R9 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
         '����ȥ��һ�� <ɳ�Ϳ˵�����>�ɡ�\');
         This_Player.SetV(13,1,6);
      end else if R9 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
         '����ȥ��һ�� <���µ�����編ʦ>�ɡ�\');
         This_Player.SetV(13,1,7);
      end;
   end;
end;
   



Procedure _xiansuo;
var
R5 : integer;
begin
   if (This_Player.GetV(13,1) = 2) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      R5 := random(2);
      if R5 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
         '����ȥ��һ�� <ɳ�Ϳ˵�����>�ɡ�\');
         This_Player.SetV(13,1,6);
      end else if R5 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
         '����ȥ��һ�� <���µ�����編ʦ>�ɡ�\');
         This_Player.SetV(13,1,7);
      end;
   end;
end;


Procedure ExtraMis_jiang(EMItemName_02 : string ;EMItemNum : integer);
begin
   if (This_Player.GetV(13,7) = 9) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if This_Player.GoldNum >= 6666 then
      begin
         This_Player.DecGold(6666);
         This_Player.SetV(13,8,1);
         _xiansuo;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�����û������Ҹ�������飬�������������������Ұɡ�\');
      end;
   end else if (This_Player.GetV(13,7) >= 1) and (This_Player.GetV(13,7) <= 8) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if This_Player.GetBagItemCount(EMItemName_02) >= EMItemNum then
      begin
         This_Player.Take(EMItemName_02,EMItemNum);
         This_Player.SetV(13,8,1);
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
  R7 := This_Player.GetV(13,7);
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
         This_Player.Flyto('0',333,273);
      end else if CheckOtherMapMon('T140~21') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,8,1);
         This_Player.SetV(13,9,13);
         This_Player.Flyto('0',333,273);
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
         This_Player.Flyto('0',333,273);
      end else if CheckOtherMapMon('T140~22') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,8,1);
         This_Player.SetV(13,9,13);
         This_Player.Flyto('0',333,273);
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
         This_Player.Flyto('0',333,273);
      end else if CheckOtherMapMon('T140~23') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,8,1);
         This_Player.SetV(13,9,13);
         This_Player.Flyto('0',333,273);
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
         This_Player.Flyto('0',333,273);
      end else if CheckOtherMapMon('T140~24') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         'ף����ɹ�ͨ�����飡');
         This_Player.SetV(13,8,1);
         This_Player.SetV(13,9,13);
         This_Player.Flyto('0',333,273);
      end;
   end;
end;


Procedure _give13;
begin
   if This_Player.GetV(13,8) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 2) and (This_Player.GetV(13,7) = 13) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if (CheckOtherMapHum('T140~21') = 0) and (This_Player.MapName = '0') then
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
   if This_Player.GetV(13,8) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 2) and (This_Player.GetV(13,7) = 12) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
   begin
      if (This_Player.IsGroupOwner) or (This_Player.IsTeamMember) then
      begin
         This_Player.SetV(13,8,1);
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
   if This_Player.GetV(13,8) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 2) and (This_Player.GetV(13,7) = 11) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
   if  (This_Player.GetV(13,1) = 2) and (This_Player.GetV(13,7) = 11) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
      This_Player.SetV(13,8,1);
      This_Player.SetV(13,9,11);
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
   if This_Player.GetV(13,8) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 2) and (This_Player.GetV(13,7) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
   if  (This_Player.GetV(13,1) = 2) and (This_Player.GetV(13,7) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
         This_Player.SetV(13,8,1);
         This_Player.SetV(13,9,10);
      end;
   end;
end;


Procedure _cst;
var
R802 : Integer;
begin
   if  (This_Player.GetV(13,1) = 2) and (This_Player.GetV(13,7) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
         This_Player.SetV(13,8,1);
         This_Player.SetV(13,9,10);
      end;
   end;
end;


Procedure _cbp;
var
R803 : Integer;
begin
   if  (This_Player.GetV(13,1) = 2) and (This_Player.GetV(13,7) = 10) and (This_Player.GetBagItemCount('�귨��֤')>=1) then
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
         This_Player.SetV(13,8,1);
         This_Player.SetV(13,9,10);
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
  if (This_Player.GetV(13,1) = 2) or (This_Player.GetV(13,1) = 6) or (This_Player.GetV(13,1) = 7) then
  begin 
    if This_Player.GetV(13,1) = 6 then
    begin
       This_Npc.NpcDialog(This_Player,
       '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
       '����ȥ��һ�� <ɳ�Ϳ˵�����>����\');
    end else if This_Player.GetV(13,1) = 7 then
    begin
       This_Npc.NpcDialog(This_Player,
       '����<�귨��֤>������֪����ô���������ھ�ǩ�֣�\'+
       '����ȥ��һ�� <���µ���編ʦ>����\ \');
    end else if This_Player.GetV(13,9) = 13 then
    begin
       This_Npc.NpcDialog(This_Player,
       '�������Ȼ�к�ǿ��ʵ����������ȫ������ҾͰ�����ĸ����㡣\ \'+
       '|{cmd}<��������һ��/@nextnpc>\'+
       '|{cmd}<�˳�/@doexit>');
    end else if (This_Player.GetV(13,9) = 10) or (This_Player.GetV(13,9) = 11) then
    begin
       This_Npc.NpcDialog(This_Player,
       'û�뵽�㾹ȻӮ���ң��ðɣ��ҾͰ�����ĸ����㡣\ \'+
       '|{cmd}<��������һ��/@nextnpc>\'+
       '|{cmd}<�˳�/@doexit>');
    end else if This_Player.GetV(13,8) =1 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ�������Ҹ���������Ұ�����ĸ�����ɡ�\ \'+
       '|{cmd}<�õ�/@nextnpc>\'+
       '|{cmd}<�˳�/@doexit>');
    end else if (This_Player.GetV(13,7) >= 1) then
    begin
       R4 := This_Player.GetV(13,7);
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
    end else if (This_Player.GetV(13,6) >= 1) then
    begin
       R3 := This_Player.GetV(13,6);
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
          '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception>_02\'+
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
              This_Player.SetV(13,6,10);
           end else if R2 = 11 then
           begin
              This_Npc.NpcDialog(This_Player,
              '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
              '���и�С�����ܷ�������һ��Ͷ���ӣ��������ſ��ԣ�\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,6,11);
           end else if R2 = 12 then
           begin
              This_Npc.NpcDialog(This_Player,
              '����<�귨��֤>�ɣ���һ���ҾͰ���ǩ��\'+
              '���и�С������ϲ�����֣�������Щ������������İɣ�\'+
              '��ȥ��1֧�����������Լ����ӳ���\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,6,12);
           end else if R2 = 13 then
           begin
              This_Npc.NpcDialog(This_Player,
              '��Ҫ�������ս������ȫ�����Ｔ�ɣ���ʱ20���ӣ�\'+
              '�����ʵ��̫æ,Ҳ���Բ�����,�����ϰ���ǩ����\ \'+ 
              '|{cmd}<�ã���������Ҫ�󣬵Ȼ���ǩ����/@acception_02>\'+
              '|{cmd}<�Һ�æ����ǩ����/@xiansuo>');
              This_Player.SetV(13,6,13);
           end;
        end else
        begin
           _xiansuo;
        end;
    end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '��������ʲô������');
  end;  
end;
 
Procedure _acception_02;
var
R60 : integer;
begin
   R60 := This_Player.GetV(13,6);
   This_Player.SetV(13,7,R60);
   _gonext;
end;  











//���±߽�ҩ��ԭ�й��ܣ� 
procedure _questionprize;
begin
  This_Npc.NpcDialog(This_Player,
  '����ֻ��Ӫ <�������Ѿ�/@teleport>��\��������˵�� <������;�/@teleport2>��\|{cmd}<�سǾ�/@steleport>��<�޸���/@repairoil>֮��Ķ�����\���ǿ��Դ���������Ū����������ط��򵽡�\ \ |{cmd}<����/@main>'
  );
end;

procedure _teleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�������Ѿ���һ�ֿ���\���㴫�������ȥ���ĳ��򸽽��ľ��ᡣ\�����������ܱȻسǾ�Ҫ��һЩ��\���ܹ��ܴ�Σ���о��������\ \ |{cmd}<����/@questionprize>'
  );
end;

procedure _teleport2;
begin
  This_Npc.NpcDialog(This_Player,
  '������;���һ�ֿ���\���㴫����ǰ��ͼ���λ�õľ��ᡣ\���Σ�գ�������㻹ʣ�кܶ�ҩ�������������Զ�����ԣ�\��ʱ����Ƿǳ����õġ�\ \ |{cmd}<����/@questionprize>'
  );
end;

procedure _steleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�سǾ��˵����Զ��\��һ�����淨���������ҵ��ǣ������Ѿ���ʧ�ˡ�\��������˵��Щ���ﻹ�����־��ᣬ\���ʹ������������̷��ش�ׯ��\ \ |{cmd}<����/@questionprize>'
  ); 
end;

procedure _repairoil;
begin
  This_Npc.NpcDialog(This_Player,
  '�޸��Ϳ��Իָ����б������;�����\�Ⲣ���������޸�������������õĻ�\��Ҫ�����������;����ὥ���ļ��١�\�����������̫��Ļ���\�ڳ�ʱ�����Ե�ʱ���һƿ�������õġ�\���߸ɴ������ƿ��\ \ |{cmd}<����/@questionprize>'
  );
end;

//==============================================================�������� 

procedure dorenwu8;
begin
 This_Npc.NpcDialog(This_Player,
  '���ˣ�����һ���ȥ������лл���������ң�\'+
  'Ŷ�����ˣ���������Ա�ղ�����߻��ƣ���֪���ǲ��������㡣\ \'+
  '|{cmd}<�õ� �����ȥ/@renwu9>'
  );
end;

procedure _renwu9;
begin
if (This_Player.GetV(102,1)=5) then
 begin
 This_Npc.NpcDialog(This_Player,
 '���ˣ���������Ա�ղ�����߻��ƣ���֪���ǲ��������㡣\ \ \'+
 '|{cmd}<�����ȥ����(����)/@doexit>\'
 );
 end else
 begin
  This_Player.SetV(102,1,5);        //������
  This_Player.UpdateTaskDetail(102,1);
  This_Player.Give('����',800);
  This_Npc.CloseDialog(This_Player);
  //This_player.AutoGotoMap('0',332,270);//�Զ�Ѱ·��������Ա 
 end;  
end; 

procedure dorenwu9;
begin
 if (This_Player.GetV(102,1)=5) then
 begin
 dorenwu9;
 end
 else if (This_Player.GetV(102,1)=4) then
 begin
 dorenwu8;
 end
 else
 begin
 if (This_Player.GetV(102,1)=5) then
  begin
  This_Npc.NpcDialog(This_Player,
  '���ˣ���������Ա�ղ�����߻��ƣ���֪���ǲ��������㡣\ \ \'+
  '|{cmd}<�����ȥ����(����)/@doexit>\'
  );
  end;
 end; 
end; 
//==============================================================��������
  
procedure _YXDoMainExtra;
var
  YXRW102 : integer; 
begin
   YXRW102 := This_Player.GetV(102,1);
   if YXRW102 = 5 then
   begin
      dorenwu9;
   end
   else if YXRW102 = 4 then
   begin
      dorenwu8;
   end; 
end;

procedure _hecheng;
begin
  This_Npc.NpcDialog(This_Player,
  '�һ�û����ȫ��͸���е����ܣ����Ժϳɵ���Ʒ�������ޣ�\��͸���������ϳ�ʲôҩƷ�ɡ�\ \'
  +'|{cmd}<�Ż���¶/@yulu>'+ addSpace('', 16) + '|{cmd}<�Ż�ѩ¶/@xuelu>\'
  +'|{cmd}<Ԫ��/@qidan>'+ addSpace('', 16) + '|{cmd}<������/@qigao>\'
  +'|{cmd}<�鿴�ϳ��䷽/@lookfor>\'
  +'|{cmd}<�ر�/@doexit>'
  );
end;

procedure _yulu;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɾŻ���¶��Ҫ�ϱ�������������������ɲݸ�1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<��ʼ�ϳ�/@yulu1>\ \'
  +'|{cmd}<����/@hecheng>'+ addSpace('', 16) + '|{cmd}<�˳�/@doexit>'
  );
end;

procedure _yulu1;
begin
  if This_Player.GetBagItemCount('�ϱ����') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('������') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('�����ɲ�') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else
  begin
    This_Player.Take('�ϱ����',1);
    This_Player.Take('������',1);
    This_Player.Take('�����ɲ�',1);
    This_Player.Give('�Ż���¶',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ�����Ż���¶�Ѿ��ϳɺ��ˣ�'
     ); 
  end;
end;

procedure _xuelu;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɾŻ���¶��Ҫ��ɫ��֦�����޲���Ҷ��\�ؿ൨, ��Ҷ�������ֲ�ҩ��1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<��ʼ�ϳ�/@xuelu1>\ \'
  +'|{cmd}<����/@hecheng>'+ addSpace('', 16) + '|{cmd}<�˳�/@doexit>'
  );
end;

procedure _xuelu1;
begin
  if This_Player.GetBagItemCount('��ɫ��֦��') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('�޲���Ҷ') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('�ؿ൨') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('��Ҷ��') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else
  begin
    This_Player.Take('��ɫ��֦��',1);
    This_Player.Take('�޲���Ҷ',1);
    This_Player.Take('�ؿ൨',1);
    This_Player.Take('��Ҷ��',1);
    This_Player.Give('�Ż�ѩ¶',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ�����Ż�ѩ¶�Ѿ��ϳɺ��ˣ�'
     ); 
  end;
end;

procedure _qidan;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳ�Ԫ����Ҫ��֩�����ݡ����ѡ�Ы�ӵ�β�͸�4����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<��ʼ�ϳ�/@qidan1>\ \'
  +'|{cmd}<����/@hecheng>'+ addSpace('', 16) + '|{cmd}<�˳�/@doexit>'
  );
end;

procedure _qidan1;
begin
  if This_Player.GetBagItemCount('��֩������') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('����') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('Ы�ӵ�β��') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else
  begin
    This_Player.Take('��֩������',4);
    This_Player.Take('����',4);
    This_Player.Take('Ы�ӵ�β��',4);
    This_Player.Give('Ԫ��',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ����Ԫ���Ѿ��ϳɺ��ˣ�'
     ); 
  end;
end;

procedure _qigao;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɻ�������Ҫ��Ҫ���⡢�⡢ʳ����Ҷ��4����\ͬʱ����Ҫʳ�����Ĺ�ʵ1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<��ʼ�ϳ�/@qigao1>\ \'
  +'|{cmd}<����/@hecheng>'+ addSpace('', 16) + '|{cmd}<�˳�/@doexit>'
  );
end;

procedure _qigao1;
begin
  if This_Player.GetBagItemCount('����') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('��') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('ʳ����Ҷ') < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else if This_Player.GetBagItemCount('ʳ�����Ĺ�ʵ') = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
     '�ܿ�ϧ����û���㹻�ϳ���Ҫ�Ĳ��ϡ�\ \|{cmd}<�˳�/@doexit>'
     );
  end
  else
  begin
    This_Player.Take('����',4);
    This_Player.Take('��',4);
    This_Player.Take('ʳ����Ҷ',4);
    This_Player.Take('ʳ�����Ĺ�ʵ',1);
    This_Player.Give('������',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ�����������Ѿ��ϳɺ��ˣ�'
     ); 
  end;
end;

procedure _lookfor;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϻ�����ǿ�󣬵�ʹ����������Ҫӵ�С�����֮�ġ�\��֪������˵��������֮�ġ������Ҷ϶���֪��һ��֪���\������֮�ġ�����������ŭ���ģ���������ʹ�úϻ�\�ڡ�����֮�ġ��з��������Ʒ��ŭ�����������\��Ʒ��ʵ�кܶ��֣���ͬ���䷽�ܺϳɳ���ͬ�Ļ�����Ʒ\�һ������ܶ��֡�����֮�ġ�����������������Ҫ���ְɡ�\'
  +'|{cmd}<�Ż���¶/@yulu2>'+ addSpace('', 16) + '|{cmd}<�Ż�ѩ¶/@xuelu2>\'
  +'|{cmd}<Ԫ��/@qidan2>'+ addSpace('', 18) + '|{cmd}<������/@qigao2>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _yulu2;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɾŻ���¶��Ҫ�ϱ�������������������ɲݸ�1��\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<����/@main>'+ addSpace('', 16) +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _xuelu2;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɾŻ�ѩ¶��Ҫ��ɫ��֦�����޲���Ҷ��\�ؿ൨, ��Ҷ�������ֲ�ҩ��1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<����/@main>'+ addSpace('', 16) +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _qidan2;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳ�Ԫ����Ҫ��֩�����ݡ����ѡ�Ы�ӵ�β�͸�4����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<����/@main>'+ addSpace('', 16) +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _qigao2;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳɻ�������Ҫ��Ҫ���⡢�⡢ʳ����Ҷ��4����\ͬʱ����Ҫʳ�����Ĺ�ʵ1����\������Ѿ�������Щ��Ʒ���ҾͿ��԰������кϳɡ�\ \'
  +'|{cmd}<����/@main>'+ addSpace('', 16) +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _huolong;
begin
  This_Npc.NpcDialog(This_Player,
  '������֮�ġ�����������ŭ���ģ���������ʹ�úϻ���\�ڡ�����֮�ġ��з��������Ʒ��ŭ����������ӣ�\�ܶ���Ʒ����������ŭ��ֵ�������ż�����ɴ�������ŭ����\���⡢ʳ����Ҷ���ؿ൨����ҳ�ȶ��ɲ�ͬ�̶�����ŭ����\�Ż�ѩ¶���Ż���¶��Ԫ�񵤡������ࡢ��������Щ��Ʒ��\���ԴӶ����ٲ�ͬ��������ŭ��ֵ��\'
  +'|{cmd}<�ϳɻ�����Ʒ/@hecheng>'+ addSpace('', 16) +'|{cmd}<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _talk;
begin
  This_Npc.NpcDialog(This_Player,
  '��Щҩˮ����������Ĺ������ٶȣ�����ֵ�ȵȣ�\��˵�������������ǻ�ȡһ��ħ����\��ô�õĶ�����Ȼ�������׾Ϳ��Եõ��ģ�\��������Ͽ�Ⱥ��񾭳�����֡�\\ <����/@main>'
  );
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��Ҫʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�����Ҫ���Ķ������һ���ü�Ǯ�ġ�\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;


//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(42);
  This_Npc.FillGoods('��ҩ(С��)',200,1);
  This_Npc.FillGoods('ħ��ҩ(С��)',200,1);
  This_Npc.FillGoods('��ҩ(С)��',100,1); 
  This_Npc.FillGoods('ħ��ҩ(С)��',100,1);
  This_Npc.FillGoods('�������Ѿ�',1000,1);
  This_Npc.FillGoods('�������Ѿ��',100,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
var
  YXRW102 : integer; 
begin
  YXRW102 := This_Player.GetV(102,1);
  {$IFDEF Q136_hero}
  if (YXRW102 = 5) or (YXRW102 = 4) then
  begin
    if (This_Player.GetV(13,1) = 2) or (This_Player.GetV(13,1) = 6) or (This_Player.GetV(13,1) = 7) then
    begin
      This_Npc.NpcDialog(This_Player,
      '��л������Ϊ������ʲô��\ \'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize> '+ addSpace('', 11) 
      //+ '|{cmd}<�ɳ�������γ�Ϊ�귨��ʿ/@YXDoMainExtra>\'
      +'|{cmd}<�˳�/@doexit>');
    end else
    begin
      This_Npc.NpcDialog(This_Player,
      '��л������Ϊ������ʲô��\ \'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize>               \'//^<�ɳ�������γ�Ϊ�귨��ʿ/@YXDoMainExtra>\'
      +'|{cmd}<�˳�/@doexit>');
    end;
  end else
  begin
    if (This_Player.GetV(13,1) = 2) or (This_Player.GetV(13,1) = 6) or (This_Player.GetV(13,1) = 7) then
    begin
      This_Npc.NpcDialog(This_Player,
      '��л������Ϊ������ʲô��\ \'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize> \'
      +'|{cmd}<�˳�/@doexit>');
    end else
    begin
      This_Npc.NpcDialog(This_Player,
      '��л������Ϊ������ʲô��\ \'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize> \'
      +'|{cmd}<�˳�/@doexit>');
    end;
  end;
  {$ELSE}
  if (YXRW102 = 5) or (YXRW102 = 4) then
  begin
    if (This_Player.GetV(13,1) = 2) or (This_Player.GetV(13,1) = 6) or (This_Player.GetV(13,1) = 7) then
    begin
      This_Npc.NpcDialog(This_Player,
      '��л������Ϊ������ʲô��\ \'
      +'|{cmd}<�ϳɻ�����Ʒ/@hecheng>'+ addSpace('', 16) + '|{cmd}<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'
      +'|{cmd}<����������֮�ġ�������/@huolong>       ^<��ʾ�귨��֤/@gonext>\'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize> '+ addSpace('', 11) 
      //+ '|{cmd}<�ɳ�������γ�Ϊ�귨��ʿ/@YXDoMainExtra>\'
      +'|{cmd}<�˳�/@doexit>');
    end else
    begin
      This_Npc.NpcDialog(This_Player,
      '��л������Ϊ������ʲô��\ \'
      +'|{cmd}<�ϳɻ�����Ʒ/@hecheng>'+ addSpace('', 18) + '|{cmd}<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'
      +'|{cmd}<����������֮�ġ�������/@huolong>\'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize>               \'//^<�ɳ�������γ�Ϊ�귨��ʿ/@YXDoMainExtra>\'
      +'|{cmd}<�˳�/@doexit>');
    end;
  end else
  begin
    if (This_Player.GetV(13,1) = 2) or (This_Player.GetV(13,1) = 6) or (This_Player.GetV(13,1) = 7) then
    begin
      This_Npc.NpcDialog(This_Player,
      '��л������Ϊ������ʲô��\ \'
      +'|{cmd}<�ϳɻ�����Ʒ/@hecheng>'+ addSpace('', 16) + '|{cmd}<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'
      +'|{cmd}<����������֮�ġ�������/@huolong>       ^<��ʾ�귨��֤/@gonext>\'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize> \'
      +'|{cmd}<�˳�/@doexit>');
    end else
    begin
      This_Npc.NpcDialog(This_Player,
      '��л������Ϊ������ʲô��\ \'
      +'|{cmd}<�ϳɻ�����Ʒ/@hecheng>'+ addSpace('', 18) + '|{cmd}<�鿴�ϳɻ�����Ʒ�䷽/@lookfor>\'
      +'|{cmd}<����������֮�ġ�������/@huolong>\'
      +'|{cmd}<��ҩ/@buy>\'
      +'|{cmd}<��ҩ/@sell>\'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize> \'
      +'|{cmd}<�˳�/@doexit>');
    end;
  end;
  {$ENDIF}
end.