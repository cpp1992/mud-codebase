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
ck_name : array[1..17] of string;
ck_value : array[1..17] of integer; 
procedure OnInitialize;
begin
ck_name[1] :='��������';
ck_name[2] :='��������';
ck_name[3] :='�����ָ';
ck_name[4] :='����ͷ��';
ck_name[5] :='ʥս����';
ck_name[6] :='ʥս����';
ck_name[7] :='ʥս��ָ';
ck_name[8] :='ʥսͷ��';
ck_name[9] :='��������';
ck_name[10] :='��������';
ck_name[11] :='�����ָ';
ck_name[12] :='����ͷ��';
ck_name[13] :='��֮��������';
ck_name[14] :='��֮��������';
ck_name[15] :='��֮�����ָ';
ck_name[16] :='��֮����ͷ��';
ck_name[17] :='��֮ʥս����';
ck_name[18] :='��֮ʥս����';
ck_name[19] :='��֮ʥս��ָ';
ck_name[20] :='��֮ʥսͷ��';
ck_name[21] :='��֮��������';
ck_name[22] :='��֮��������';
ck_name[23] :='��֮�����ָ';
ck_name[24] :='��֮����ͷ��';
ck_name[25] :='��������';
ck_name[26] :='��������';
ck_name[27] :='����ս��';
ck_name[28] :='��������';
ck_name[29] :='���滤��';
ck_name[30] :='����ħ��';
ck_name[31] :='��â����';
ck_name[32] :='��â����';
ck_name[33] :='��â����';
ck_name[34] :='ս���ָ';   
ck_name[35] :='ʥħ��ָ';
ck_name[36] :='����ָ';
ck_name[37] :='ս������';   
ck_name[38] :='ʥħ����';
ck_name[39] :='�������';
ck_name[40] :='ս������';   
ck_name[41] :='ʥħ����';
ck_name[42] :='�������';






ck_value[1] :=10000;
ck_value[2] :=10000;
ck_value[3] :=10000;
ck_value[4] :=10000;
ck_value[5] :=10000;
ck_value[6] :=10000;
ck_value[7] :=10000;
ck_value[8] :=100;
ck_value[9] :=100;
ck_value[10] :=100;
ck_value[11] :=100;
ck_value[12] :=100;
ck_value[13] :=100;
ck_value[14] :=100;
ck_value[15] :=100;
ck_value[16] :=100;
ck_value[17] :=100;


end; 

procedure _Checkup;
begin
  This_Npc.NpcDialog(This_Player,
  '����������װ����\'
  +'<������������/c=red>\'
  +'����ÿ����Ҫ100Ԫ����\'
  +'<����������������ֵ�����+9/c=red>\'

  +'|{cmd}<��ʼ����/@Checkup_1>        ^<�ر�/@doexit>' 
  );
  
end; 

procedure _Checkup_1;
begin
   This_NPC.Click_CommitItem(This_Player,1,'������������'); 
end; 


procedure CommitItem(AType:word);
var
i,ck_num,ck_kind,ck_gold,ck_rand:integer; 
ck_str,ck_red:string;
ForgeDiaYB:string;
begin
     ck_gold := 0;  //��ʼ�� 
     ck_str := '';  //��ʼ��
     ck_red := '';  //��ʼ��

     for ck_kind := 1 to 17 do
     
     begin

       if ck_name[ck_kind] = This_Item.ItemName then 
       begin                             
         ck_num := This_Item.AddPa4 ; 
         ck_gold := ck_value[ck_kind];
         if (ck_num > 0) and (ck_num < 8) then
         begin
           for i:= 1 to ck_num do
           begin
           ck_gold := ck_gold;
           end;
         end;  
       end;
     end;
     
     if ck_num > 7 then

     begin
     This_Player.NotifyClientCommitItem(0,'�޷����������'+This_Item.ItemName+'�Ѽ������������ԣ�');  
     end else
     if ck_gold > 0 then
     begin                                                                                             
       if This_Player.YBNum >= ck_gold then
 
       begin
         ck_rand := random(100);
      
         if ck_rand < 99 then
         begin 
         This_Item.AddPa4 := This_Item.AddPa4 + 1;   //����+1 
         ck_str :='����+1'; 
         ck_red :='���ֹ���';
     
        
         end;  
       

         This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20150,30,1); 
       
         if ck_str <> '' then 
         begin
         This_Player.NotifyClientCommitItem(0,'�����ɹ������'+This_Item.ItemName+'������'+ck_str+'��');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         end;   
         if ck_red <> '' then This_NPC.NpcNotice('��ϲ��'+This_Player.Name+'����������'+This_Item.ItemName+'ʱ������'+ck_str+'��');
         This_Player.AddLogRec(9, This_Item.ItemName, 811152, ck_gold, ck_str);
       end else
       begin
       This_Player.NotifyClientCommitItem(0,'�޷����������Ԫ�����㣬��Ҫ'+inttostr(ck_gold)+'Ԫ����'); 
       end;
     end else 
     begin
        This_Player.NotifyClientCommitItem(0,'����Ʒ������������Ͷ���������װ����');   
     end;   
end;
procedure _CheckupRule;
begin
  This_Npc.NpcDialog(This_Player,
  '����������װ����\'
  +'<������������/c=red>\'
  +'����ÿ����Ҫ100Ԫ����\'
  +'<����������������ֵ�����+7/c=red>\'

  +'|{cmd}<����/@main>' 
  );
end; 

begin
  This_Npc.NpcDialog(This_Player,
  '������һ������ʶ���귨��½�ϵĸ��������챦������ֻ����������Ȥ\'
  +'����������װ����\'
  +'<������������/c=red>\'
  +'����ÿ����Ҫ100Ԫ����\'
  +'<����������������ֵ�����+7/c=red>\'

  +'|{cmd}<��ʼ����/@Checkup>          ^<�鿴��������/@CheckupRule>\' 
  );
end.
   