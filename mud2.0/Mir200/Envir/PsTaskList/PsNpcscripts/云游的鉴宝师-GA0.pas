{********************************************************************

*******************************************************************}

program mir2;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

var
ck_name : array[1..66] of string;
ck_value : array[1..66] of integer; 

procedure OnInitialize;
begin

ck_name[1] :='ս������';
ck_name[2] :='ս������';
ck_name[3] :='ս���ָ';
ck_name[4] :='����ָ';
ck_name[5] :='�������';
ck_name[6] :='�������';
ck_name[7] :='ʥħ��ָ';
ck_name[8] :='ʥħ����';
ck_name[9] :='ʥħ����';
ck_name[10] :='��ħ����';
ck_name[11] :='��֮����';
ck_name[12] :='�ϱ���';
ck_name[13] :='��������';
ck_name[14] :='̩̹��ָ';
ck_name[15] :='�������';
ck_name[16] :='��ɫ����';
ck_name[17] :='������ָ';
ck_name[18] :='��ʿ����';
ck_name[19] :='����ͷ��';
ck_name[20] :='����ͷ��';
ck_name[21] :='�����ָ';
ck_name[22] :='��������';
ck_name[23] :='��������';
ck_name[24] :='ʥս����';
ck_name[25] :='ʥս����';
ck_name[26] :='ʥս��ָ';
ck_name[27] :='ʥսͷ��';
ck_name[28] :='����ͷ��';
ck_name[29] :='��������';
ck_name[30] :='�����ָ';
ck_name[31] :='��������';
ck_name[32] :='��������';
ck_name[33] :='����ս��';
ck_name[34] :='��������';
ck_name[35] :='���滤��';
ck_name[36] :='����ħ��';
ck_name[37] :='��â����';
ck_name[38] :='��â����';
ck_name[39] :='��â����';
ck_name[40] :='�ܻ�ѥ';
ck_name[41] :='��������';
ck_name[42] :='ʥս����';
ck_name[43] :='�ϳ�ѥ';
ck_name[44] :='��ͭ����';
ck_name[45] :='��������';
ck_name[46] :='��ʦ����';
ck_name[47] :='�������';
ck_name[48] :='��ħ���';
ck_name[49] :='��������';
ck_name[50] :='��ͭ����';
ck_name[51] :='��������';
ck_name[52] :='��ħ����(Ů)';
ck_name[53] :='��ħ����(��)';
ck_name[54] :='����ս��(Ů)';
ck_name[55] :='����ս��(��)';
ck_name[56] :='ս�����(��)';
ck_name[57] :='ս�����(Ů)';
ck_name[58] :='��������';
ck_name[59] :='����սѥ';
ck_name[60] :='��������';
ck_name[61] :='����ħѥ';
ck_name[62] :='��â����';
ck_name[63] :='��â��ѥ';
ck_name[64] :='��������';
ck_name[65] :='��������';
ck_name[66] :='��ɫ��������';




ck_value[1] :=88;
ck_value[2] :=88;
ck_value[3] :=88;
ck_value[4] :=88;
ck_value[5] :=88;
ck_value[6] :=88;
ck_value[7] :=88;
ck_value[8] :=88;
ck_value[9] :=88;
ck_value[10] :=88;
ck_value[11] :=88;
ck_value[12] :=88;
ck_value[13] :=88;
ck_value[14] :=88;
ck_value[15] :=88;
ck_value[16] :=88;
ck_value[17] :=88;
ck_value[18] :=88;
ck_value[19] :=88;
ck_value[20] :=88;
ck_value[21] :=88;
ck_value[22] :=88;
ck_value[23] :=88;
ck_value[24] :=88;
ck_value[25] :=88;
ck_value[26] :=88;
ck_value[27] :=88;
ck_value[28] :=88;
ck_value[29] :=88;
ck_value[30] :=88;
ck_value[31] :=88;
ck_value[32] :=88;
ck_value[33] :=88;
ck_value[34] :=88;
ck_value[35] :=88;
ck_value[36] :=88;
ck_value[37] :=88;
ck_value[38] :=88;
ck_value[39] :=88;
ck_value[40] :=88;
ck_value[41] :=88;
ck_value[42] :=88;
ck_value[43] :=88;
ck_value[44] :=88;
ck_value[45] :=88;
ck_value[46] :=88;
ck_value[47] :=88;
ck_value[48] :=88;
ck_value[49] :=88;
ck_value[50] :=88;
ck_value[51] :=88;
ck_value[52] :=88;
ck_value[53] :=88;
ck_value[54] :=88;
ck_value[55] :=88;
ck_value[56] :=88;
ck_value[57] :=88;
ck_value[58] :=88;
ck_value[59] :=88;
ck_value[60] :=88;
ck_value[61] :=88;
ck_value[62] :=88;
ck_value[63] :=88;
ck_value[64] :=88;
ck_value[65] :=88;
ck_value[66] :=88;



end; 

procedure _Checkup;
begin
  This_Npc.NpcDialog(This_Player,
  '���Լ�����װ����\'
  +'<���꼶��������/c=red>\'
  +'�����ɹ��м��������������ԣ�\'
  +'<������ħ��������/c=red>\'
  +'<�������Լ��������ֵ������6��/c=red>\'
  +'ÿ�μ�������88Ԫ�����м���ʧ�ܣ�����\'
  +'<ʧ�ܲ�����װ����������ȡԪ��������/c=red>\'
  +'|{cmd}<��ʼ����/@Checkup_1>        ^<�ر�/@doexit>' 
  );
  
end; 

procedure _Checkup_1;
begin
   This_NPC.Click_CommitItem(This_Player,1,'������װ����'); 
end; 

procedure CommitItem(AType:word);
var
i,ck_num,ck_kind,YBNum,ck_gold,ck_rand:integer;
 
ck_str,ck_red:string; 
begin
     ck_gold := 0;  //��ʼ�� 
     ck_str := '';  //��ʼ��
     ck_red := '';  //��ʼ��
     
     for ck_kind := 1 to 66 do
     begin
       if ck_name[ck_kind] = This_Item.ItemName then 
       begin                             
         ck_num := This_Item.AddPa1 + This_Item.AddPa2 + This_Item.AddPa3 + This_Item.AddPa4 + This_Item.AddPa5; 
         ck_gold := ck_value[ck_kind];
         if (ck_num > 0) and (ck_num < 6) then
         begin
           for i:= 1 to ck_num do
           begin
           ck_gold := ck_gold;
           end;
         end;  
       end;
     end;
     
     if ck_num > 5 then
     begin
     This_Player.NotifyClientCommitItem(0,'�޷����������'+This_Item.ItemName+'�Ѽ������������ԣ�');  
     end else
     if ck_gold > 0 then
     begin                                                                                             
      if This_Player.YBNum >= ck_gold then
       begin
         ck_rand := random(10000);
         if ck_rand < 6024 then
         begin
         This_Player.NotifyClientCommitItem(0,'����ʧ�ܣ������������δ�����仯');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         
         end else
         if ck_rand < 7874 then
         begin 
         This_Item.AddPa3 := This_Item.AddPa3 + 1;   //����+1 
         ck_str :='����+1';
         ck_red :='���ֹ���'; 
         end else
         if ck_rand < 8724 then
         begin 
         This_Item.AddPa4 := This_Item.AddPa4 + 1;   //ħ��+1 
         ck_str :='ħ��+1';
         ck_red :='���ֹ���'; 
         end else
         if ck_rand < 9574 then
         begin 
         This_Item.AddPa5 := This_Item.AddPa5 + 1;   //����+1 
         ck_str :='����+1';
         ck_red :='���ֹ���'; 
         end else
         if ck_rand < 9742 then
         begin 
         This_Item.AddPa3 := This_Item.AddPa3 + 2;   //����+2 
         ck_str :='����+2'; 
         ck_red :='���ֹ���'; 
         end else
         if ck_rand < 9870 then
         begin 
         This_Item.AddPa4 := This_Item.AddPa4 + 2;   //ħ��+2 
         ck_str :='ħ��+2';
         ck_red :='���ֹ���'; 
         end else
         if ck_rand < 9998 then
         begin 
         This_Item.AddPa5 := This_Item.AddPa5 + 2;   //����+2 
         ck_str :='����+2'; 
         ck_red :='���ֹ���';
         end; 

         This_Player.PsYBConsum(This_NPC,'xin',20159,88,1);
         if ck_str <> '' then 
         begin
         This_Player.NotifyClientCommitItem(0,'�����ɹ������'+This_Item.ItemName+'������'+ck_str+'��');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         end;   
         if ck_red <> '' then This_NPC.NpcNotice('��ϲ��'+This_Player.Name+'��ׯ԰���μ���ʦ����'+This_Item.ItemName+'ʱ������'+ck_str+'��');
         This_Player.AddLogRec(9, This_Item.ItemName, 811152, ck_gold, ck_str);
       end else
       begin
       This_Player.NotifyClientCommitItem(0,'�޷����������Ԫ�����㲻�㣬��Ҫ'+inttostr(ck_gold)+'Ԫ����'); 
       end;
     end else 
     begin
        This_Player.NotifyClientCommitItem(0,'����Ʒ���ɼ�������Ͷ��ɼ�����װ����');   
     end;   
end;
procedure _CheckupRule;
begin
  This_Npc.NpcDialog(This_Player,
  '���Լ�����װ����\'
  +'<���ꡢ���ꡢ���µ�/c=red>\'
  +'�����ɹ��м��������������ԣ�\'
  +'<������ħ��������/c=red>\'
  +'ÿ�μ�������һ��������Ԫ����\'
 
  +'|{cmd}<����/@main>' 
  );
end;
function xin(price, num: Integer):boolean; 
begin
   result := true; 
 
end;

 

begin
  This_Npc.NpcDialog(This_Player,
  '������һ������ʶ���귨��½�ϵĸ��������챦\'
  +'ѧ���˼������ε�ǿ���ܣ�������������꼶\'
  +'���ϵ����Σ����Ե��������������Ʒ���ԣ�����\'
  +'���������ù�����ħ�������������ԣ�ÿ����ȡ88\'
  +'Ԫ������Ȼ����ʧ�ܵļ��ʣ�ʧ�ܲ���װ����ֻ��ȡԪ��\ \'
  +'|{cmd}<��ʼ����/@Checkup>   |{cmd}<�鿴���������ķ���/@CheckupRule>    \' 
  );
end.
   