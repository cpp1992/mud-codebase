{********************************************************************

*******************************************************************}

PROGRAM Mir2;

{$I ActiveValidateCom.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

var
tm_name : array[1..26] of string; 

procedure OnInitialize;
begin
tm_name[1] :='�ر�ͼ301';
tm_name[2] :='�ر�ͼ302';
tm_name[3] :='�ر�ͼ303';
tm_name[4] :='�ر�ͼ304';
tm_name[5] :='�ر�ͼ305';
tm_name[6] :='�ر�ͼ306';
tm_name[7] :='�ر�ͼ307';
tm_name[8] :='�ر�ͼ308';
tm_name[9] :='�ر�ͼ309';
tm_name[10] :='�ر�ͼ310';
tm_name[11] :='�ر�ͼ311';
tm_name[12] :='�ر�ͼ312';
tm_name[13] :='�ر�ͼ313';
tm_name[14] :='�ر�ͼ314';
tm_name[15] :='�ر�ͼ315';
tm_name[16] :='�ر�ͼ316';
tm_name[17] :='�ر�ͼ317';
tm_name[18] :='�ر�ͼ318';
tm_name[19] :='�ر�ͼ319';
tm_name[20] :='�ر�ͼ320';
tm_name[21] :='�ر�ͼ321';
tm_name[22] :='�ر�ͼ322';
tm_name[23] :='�ر�ͼ323';
tm_name[24] :='�ر�ͼ324';
tm_name[25] :='�ر�ͼ325';
tm_name[26] :='�ر�ͼ326';
end; 

procedure _TreasureMapFx;
begin
  This_Npc.NpcDialog(This_Player,
   '�޸��ر�ͼ��Ҫ�ķѴ����Ľ��ʯ�Ͳر�ͼ��Ƭ����ʿ���Ը��\'
   +'�ṩһЩ����������Ȼ�м�������\'
   +'����ܳɹ��޸�����Ը�Բر�ͼ������\'
   +'����޸�ʧ�ܿ��ܻ�һ�����񣬻�����ʿ������Ϊ��\ \'
   +'|{cmd}<�ݽ�10�Ž��ʯ/@TreasureMapFx1>\ \'
   +'|{cmd}<�ݽ�1�Ųر�ͼ��Ƭ/@TreasureMapFx2>\'
   +'|{cmd}<����/@main>'
   );
end; 

procedure TreasureMapFxGo;
var 
temp,temp_gold:integer;
str:string;
begin
   temp:= random(300);
   if temp < 1 then
   begin
     str:= tm_name[random(26)+1];
     This_Player.Give(str,1); 
     This_Npc.NpcDialog(This_Player,
     '���Ȼ����Ե֮�ˣ��ر�ͼ�Ѿ��޸��ˣ����Ųر�ͼ�������ˣ�\'
     +'<��ã�'+str+'/c=red>\ \ \'
     +'|{cmd}<�����ݽ�10�Ž��ʯ/@TreasureMapFx1>\ \'
     +'|{cmd}<�����ݽ�1�Ųر�ͼ��Ƭ/@TreasureMapFx2>\'
     +'|{cmd}<����/@main>'
     );
     This_NPC.NpcNotice('��ϲ'+This_Player.Name+'�ڲ��µ��·���������صĲ÷�ʱ��ã�'+str+'��'); 
     This_Player.AddLogRec(9, str, 811156, 1, 'ħ���ر�ͼ');
   end else
   if temp < 76 then
   begin
   This_Player.MyShengwan := This_Player.MyShengwan + 1;
   This_Player.PlayerNotice('������1������',2);
   This_Npc.NpcDialog(This_Player,
   'лл��İ�����������ʧ���ˣ��ر�ͼ�Ѿ��𻵣�\'
   +'��Ϊ�������������ҵ�һ�����⡣\' 
   +'<��ã�1������/c=red>\ \'
   +'|{cmd}<�����ݽ�10�Ž��ʯ/@TreasureMapFx1>\ \'
   +'|{cmd}<�����ݽ�1�Ųر�ͼ��Ƭ/@TreasureMapFx2>\'
   +'|{cmd}<����/@main>'
   );
   end else
   begin
   temp_gold := random(50000)+1;
   This_Player.AddGold(temp_gold);
   This_Player.PlayerNotice('������'+inttostr(temp_gold)+'���',2);
   This_Npc.NpcDialog(This_Player,
   'лл��İ�����������ʧ���ˣ��ر�ͼ�Ѿ��𻵣�\'
   +'���ź���û��ʲô���������ˣ���Щ��һ������¡�\'
   +'<��ã�'+inttostr(temp_gold)+'���/c=red>\ \' 
   +'|{cmd}<�����ݽ�10�Ž��ʯ/@TreasureMapFx1>\ \'
   +'|{cmd}<�����ݽ�1�Ųر�ͼ��Ƭ/@TreasureMapFx2>\'
   +'|{cmd}<����/@main>'
   );
   end;
   //This_Player.IncActivePoint(1);  //���ӻ�Ծ��1
end;

procedure _TreasureMapFx1;
begin
  if not AutoOpen(4) then exit;
  if This_Player.GetBagItemCount('���ʯ') >= 10 then
  begin
    if This_Player.GoldNum > 49950000 then
    begin
    This_Npc.NpcDialog(This_Player,
    '��Я���Ľ��̫���ˡ�\'
    ); 
    exit;
    end;
    if (This_Player.CheckAuthen(1,100) = false) and (This_Player.GoldNum > 1950000) then
    begin
    This_Npc.NpcDialog(This_Player,
    '��Я���Ľ��̫���ˡ�\'
    ); 
    exit;
    end;
    if This_Player.FreeBagNum > 0 then
    begin
    This_Player.Take('���ʯ',10);
    TreasureMapFxGo; 
    This_Player.AddLogRec(9, '���ʯ', 811156, 10, 'ħ���ر�ͼ');
    end else
    This_Npc.NpcDialog(This_Player,
    '��İ���̫���ˡ�\'
    ); 
  end else
  This_Npc.NpcDialog(This_Player,
  '��û���㹻�Ľ��ʯ��\'
  ); 
end; 

procedure _TreasureMapFx2;
begin
  if not AutoOpen(4) then exit;
  if This_Player.GetBagItemCount('�ر�ͼ��Ƭ') > 0 then
  begin
    if This_Player.GoldNum > 49950000 then
    begin
    This_Npc.NpcDialog(This_Player,
    '��Я���Ľ��̫���ˡ�\'
    ); 
    exit;
    end;
    if (This_Player.CheckAuthen(1,100) = false) and (This_Player.GoldNum > 1950000) then
    begin
    This_Npc.NpcDialog(This_Player,
    '��Я���Ľ��̫���ˡ�\'
    ); 
    exit;
    end;
    if This_Player.FreeBagNum > 0 then
    begin
    This_Player.Take('�ر�ͼ��Ƭ',1);
    TreasureMapFxGo; 
    end else
    This_Npc.NpcDialog(This_Player,
    '��İ���̫���ˡ�\'
    ); 
  end else
  This_Npc.NpcDialog(This_Player,
  '��û�вر�ͼ��Ƭ��\'
  ); 
end;

procedure _TreasureMapCt;
begin
   This_Npc.NpcDialog(This_Player,
   '������ж���Ĳر�ͼ�����Խ����ҡ�\ \'
   +'<ÿ�Ųر�ͼ�һ�ʹ��588�Ž��ʯ���㽻����/c=red>\ \'
   +'�뽫Ҫ�����ҵĲر�ͼ������ڣ����ȷ�����ɡ�\ \'
   +'|{cmd}<����/@main>'
  );
  This_NPC.Click_CommitItem(This_Player,1,'��Ͷ��ر�ͼ��'); 
end; 

procedure CommitItem(AType:word);
var
tm_kind,dm_num:integer;
begin
   dm_num:=0;
   for tm_kind := 1 to 26 do
   begin
   if tm_name[tm_kind] = This_Item.ItemName then dm_num := 588;
   end;
   
   if dm_num > 0 then
   begin
   This_Player.TakeByClientID(This_Item.ClientItemID);
   This_Player.Give('���ʯ',dm_num);   
   This_Player.NotifyClientCommitItem(1,'');
   end else 
   begin
   This_Player.NotifyClientCommitItem(0,'�Ҳ�Ҫ�����Ʒ����Ͷ��ر�ͼ��');   
   end;   
end;

procedure _TreasureMapR1;
begin
   This_Npc.NpcDialog(This_Player,
   '|1.ʹ��10�Ž��ʯ���԰����÷��޸��ر�ͼ��\'
   +'|2.ʹ��1�Ųر�ͼ��Ƭ���԰����÷��޸��ر�ͼ��\'
   +'|3.�޸��ɹ����ɻ��ħ���·��ر�ͼ��\'
   +'|4.�޸�ʧ���м��ʻ������������\'
   +'|5.����Ĳر�ͼ�ɽ������صĲ÷�һ�588�Ž��ʯ��\ \' 
   +'|{cmd}<����/@main>'
   );
end; 

procedure _TreasureMapR2;
begin
   This_Npc.NpcDialog(This_Player,
   '����ħ����ף���ֻ��˵������ǿ�󣬾�����λ�ã�������\'
   +'�����·����ϰ����һ����\ \'
   +'|{cmd}<�鿴����ս��/@TreasureMapR2_1>      ^<�鿴����ħ��/@TreasureMapR2_2>\ \' 
   +'|{cmd}<�鿴��â����/@TreasureMapR2_3>      ^<����/@main>'
  );
end; 

procedure _TreasureMapR2_1;
begin
   This_Npc.NpcDialog(This_Player,
   '����ս��(��)������5-12��ħ��4-8������1-3����Ҫ42��\'
   +'��˵ӵ�����²ر�ͼ���ܺϳ�����ս��(��)��\'
   +'�ر�ͼ301���ر�ͼ302���ر�ͼ303���ر�ͼ304��\' 
   +'�ر�ͼ305���ر�ͼ306���ر�ͼ307���ر�ͼ308\'
   +'����ս��(Ů)������5-12��ħ��4-8������1-3����Ҫ42��\'
   +'��˵ӵ�����²ر�ͼ���ܺϳ�����ս��(Ů)��\'
   +'�ر�ͼ301���ر�ͼ302���ر�ͼ309���ر�ͼ310��\'
   +'�ر�ͼ311���ر�ͼ312���ر�ͼ313���ر�ͼ314\'
   +'|{cmd}<����/@TreasureMapR2>'
  );
end; 

procedure _TreasureMapR2_2;
begin
   This_Npc.NpcDialog(This_Player,
   '����ħ��(��)������5-12��ħ��4-8��ħ��3-5����Ҫ42��\'
   +'��˵ӵ�����²ر�ͼ���ܺϳ�����ħ��(��)��\'
   +'�ر�ͼ305���ر�ͼ306���ر�ͼ307���ر�ͼ308��\' 
   +'�ر�ͼ315���ر�ͼ316���ر�ͼ317���ر�ͼ318\'
   +'����ħ��(Ů)������5-12��ħ��4-8��ħ��3-5����Ҫ42��\'
   +'��˵ӵ�����²ر�ͼ���ܺϳ�����ħ��(Ů)��\'
   +'�ر�ͼ311���ر�ͼ312���ر�ͼ313���ر�ͼ314��\'
   +'�ر�ͼ315���ر�ͼ316���ر�ͼ319���ر�ͼ320\'
   +'|{cmd}<����/@TreasureMapR2>'
  );
end; 

procedure _TreasureMapR2_3;
begin
   This_Npc.NpcDialog(This_Player,
   '��â����(��)������5-12��ħ��4-8������3-5����Ҫ42��\'
   +'��˵ӵ�����²ر�ͼ���ܺϳɹ�â����(��)��\'
   +'�ر�ͼ305���ر�ͼ306���ر�ͼ307���ر�ͼ308��\' 
   +'�ر�ͼ321���ر�ͼ322���ر�ͼ323���ر�ͼ324 \'
   +'��â����(Ů)������5-12��ħ��4-8������3-5����Ҫ42��\'
   +'��˵ӵ�����²ر�ͼ���ܺϳɹ�â����(Ů)��\'
   +'�ر�ͼ311���ر�ͼ312���ر�ͼ313���ر�ͼ314��\'
   +'�ر�ͼ321���ر�ͼ322���ر�ͼ325���ر�ͼ326\'
   +'|{cmd}<����/@TreasureMapR2>'
  );
end; 

Begin
   if AutoOpen(4) then
   begin 
   This_Npc.NpcDialog(This_Player,
   'ħ�����һֱ���귨��ʿ��������ı����������������\'
   +'�����귨��½������ս����Щ���Ҳ������֪���١�\'
   +'���㾡������Ѫ��ֻԸ�ܸ�ԭ��д�Ĳر�ͼ��Ѱ����׵����䡣\'
   +'ֻ�����޸�������Ҫ�ķѴ����Ľ��ʯ�Ͳر�ͼ��Ƭ���������ķ�\'
   +'Ҳδ�������Ը����ʿ�ܷ�����һ��֮����\ \'
   +'|{cmd}<�޸��ر�ͼ/@TreasureMapFx>            ^<���ղر�ͼ/@TreasureMapCt>\ \'
   +'|{cmd}<�鿴��ϸ��Ϣ/@TreasureMapR1>          ^<�鿴ħ�����/@TreasureMapR2>'
   );
   end else
   This_Npc.NpcDialog(This_Player,
   'ħ�����һֱ���귨��ʿ��������ı����������������\'
   +'�����귨��½������ս����Щ���Ҳ������֪���١�\'
   +'���㾡������Ѫ��ֻԸ�ܸ�ԭ��д�Ĳر�ͼ��Ѱ����׵����䡣\ \'
   +'|<��'+inttostr(AutoOpenDay(4))+'��󽫿�ʼ�޸��ر�ͼ��/c=red>\ \'
   );
end.