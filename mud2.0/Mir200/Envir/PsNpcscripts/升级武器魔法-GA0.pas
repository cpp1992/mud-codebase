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
ck_name : array[1..22] of string;         //����22 Ҫ������װ��[]�������һ������һ�� 
ck_value : array[1..22] of integer; 
procedure OnInitialize;
begin
ck_name[1] :='����';
ck_name[2] :='����';
ck_name[3] :='����';
ck_name[4] :='����';
ck_name[5] :='����';
ck_name[6] :='��ң��';
ck_name[7] :='ŭն';
ck_name[8] :='������';
ck_name[9] :='�þ�֮��';
ck_name[10] :='����Ȩ��';
ck_name[11] :='����֮��';
ck_name[12] :='����֮��';
ck_name[13] :='����֮��';
ck_name[14] :='����֮��';
ck_name[15] :='���ƽ�';
ck_name[16] :='Ѫ��';
ck_name[17] :='�޼���';
ck_name[18] :='�ƽ�þ�';
ck_name[19] :='��֮����Ȩ��';
ck_name[20] :='��֮��ң��';
ck_name[21] :='��֮����';
ck_name[22] :='��֮�Ȼ귨��';            //��������������[]�����ְ�˳�� 


ck_value[1] :=10;
ck_value[2] :=10;
ck_value[3] :=10;
ck_value[4] :=10;             //�������ü����Ҫ����Ԫ�� 
ck_value[5] :=10;
ck_value[6] :=10;
ck_value[7] :=10;
ck_value[8] :=10;
ck_value[9] :=10;
ck_value[10] :=10;
ck_value[11] :=10;
ck_value[12] :=10;
ck_value[13] :=10;
ck_value[14] :=10;
ck_value[15] :=10;
ck_value[16] :=10;
ck_value[17] :=10;
ck_value[18] :=10;
ck_value[19] :=10;              //�������װ������Ҳ�ü�  ck_value[22] :=10;  ���������ְ�˳�� 
ck_value[20] :=10;
ck_value[21] :=10;
ck_value[22] :=10;




end; 

procedure _Checkup;
begin
  This_Npc.NpcDialog(This_Player,
  '����������װ����\'
  +'<������������/c=red>\'
  +'����ÿ����Ҫ5000Ԫ����\'
  +'<������������ħ�������+7/c=red>\'

  +'|{cmd}<��ʼ��������ħ��/@Checkup_1> \'
  
        
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

     for ck_kind := 1 to 22 do   //����22 ���ָ��������һ��һ�� 
     
     begin

       if ck_name[ck_kind] = This_Item.ItemName then 
       begin                             
         ck_num := This_Item.AddPa1+This_Item.AddPa2+This_Item.AddPa3 ; 
         ck_gold := ck_value[ck_kind];
         if (ck_num > 0) and (ck_num < 7) then
         begin
           for i:= 1 to ck_num do
           begin
           ck_gold := ck_gold;
           end;
         end;  
       end;
     end;
     
     if ck_num > 6 then

     begin
     This_Player.NotifyClientCommitItem(0,'�޷����������'+This_Item.ItemName+'�Ѽ������������ԣ�');  
     end else
     if ck_gold > 0 then
     begin                                                                                             
       if This_Player.YBNum >= ck_gold then
 
       begin
         ck_rand := random(100);
         if ck_rand < 10 then       //ʧ�ܼ��� 11 
         begin 
       
           
         This_Player.PlayerNotice('����ʧ��',2);
         end else
         if ck_rand < 99 then         //�ɹ�����100 
         
         begin 
         This_Item.AddPa2 := This_Item.AddPa1 + 2;   //����+1 
         ck_str :='ħ��+1'; 
         ck_red :='���ֹ���';
     
        
         end;  
       

         This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20150,10,1); 
       
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
  +'����ÿ����Ҫ10Ԫ����\'
  +'<������������ħ�������+7/c=red>\'

  +'|{cmd}<����/@main>' 
  );
end; 

begin
  This_Npc.NpcDialog(This_Player,
  '������һ������ʶ���귨��½�ϵĸ��������챦������ֻ����������Ȥ\'
  +'����������װ����\'
  +'<������������/c=red>\'
  +'����ÿ����Ҫ10Ԫ����\'
  +'<�����������������ħ�������+7/c=red>\'

  +'|{cmd}<��ʼ����/@Checkup>          \' 
  );
end.
   