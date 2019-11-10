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
ck_name : array[1..15 ]of string;
ck_value : array[1..15] of integer; 

procedure OnInitialize;
begin
ck_name[1] :='ʥս����';
ck_name[2] :='��������';
ck_name[3] :='��������';
ck_name[4] :='��������';
ck_name[5] :='��������';
ck_name[6] :='��â����';
ck_name[7] :='ս������';
ck_name[8] :='ʥħ����';
ck_name[9] :='�������';
ck_name[10] :='��������(ս)' ;
ck_name[11] :='��������(��)';
ck_name[12] :='��������(��)';
ck_name[13] :='��������(ս)';
ck_name[14] :='��������(��)';
ck_name[15] :='��������(��)';


ck_value[1] :=200;
ck_value[2] :=200;
ck_value[3] :=200;
ck_value[4] :=200;
ck_value[5] :=200;
ck_value[6] :=200;
ck_value[7] :=200;
ck_value[8] :=200;
ck_value[9] :=200;
ck_value[10] :=300;
ck_value[11] :=300;
ck_value[12] :=300;
ck_value[13] :=300;
ck_value[14] :=300;
ck_value[15] :=300;

end; 

procedure _Checkup;
begin
  This_Npc.NpcDialog(This_Player,
  '���Լ�����װ����\'
  +'<���¼���������/c=red>\|'
  +'�����ɹ��м��������������ԣ�\'
  +'<����/c=red>\|'
  +'ÿ�μ�������һ��������Ԫ����\'
  +'��һ��������200Ԫ��,ÿ����һ������Ԫ��������2�������4�����ԣ�\'
  +'<������װ���ȼ�Խ�ߣ��������ĵ�Ԫ��ҲԽ�ࡣ/c=red>\'
  +'|{cmd}<��ʼ����/@Checkup_1>        ^<�ر�/@doexit>' 
  );
  
end; 

procedure _Checkup_1;
begin
   This_NPC.Click_CommitItem(This_Player,1,'������װ����'); 
end; 

procedure CommitItem(AType:word);
var
i,ck_num,ck_kind,ck_gold,ck_rand:integer;
ck_str,ck_red:string; 
begin
     ck_gold := 0;  //��ʼ�� 
     ck_str := '';  //��ʼ��
     ck_red := '';  //��ʼ��
     
     for ck_kind := 1 to 15 do
     begin
       if ck_name[ck_kind] = This_Item.ItemName then 
       begin                             
         ck_num := This_Item.AddPa1 + This_Item.AddPa2 + This_Item.AddPa3 + This_Item.AddPa4 + This_Item.AddPa5; 
         ck_gold := ck_value[ck_kind];
         if (ck_num > 0) and (ck_num < 4) then
         begin
           for i:= 1 to ck_num do
           begin
           ck_gold := ck_gold*2;
           end;
         end;  
       end;
     end;
     
     if ck_num > 3 then
     begin
     This_Player.NotifyClientCommitItem(0,'�޷����������'+This_Item.ItemName+'�Ѽ������������ԣ�');  
     end else
     if ck_gold > 0 then
     begin                                                                                             
       if This_Player.GoldNum>= ck_gold then
       begin
         ck_rand := random(100);
         if ck_rand < 29 then
         begin
         This_Player.PsYBConsum(This_NPC,'xin',20151,ck_gold,1);  
         This_Player.NotifyClientCommitItem(0,'����ʧ�ܣ������������δ�����仯');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         end else
         if ck_rand < 69 then
         begin 
         This_Item.AddPa2 := This_Item.AddPa2 + 1;   //����+1 
         ck_str :='����+1';
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1); 
         ck_red :='���ֹ���'; 
        
         end; 
         
     
         if ck_str <> '' then 
         begin
         This_Player.NotifyClientCommitItem(0,'�����ɹ������'+This_Item.ItemName+'������'+ck_str+'��');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         end;   
         if ck_red <> '' then This_NPC.NpcNotice('��ϲ��'+This_Player.Name+'��ׯ԰������������'+This_Item.ItemName+'ʱ������'+ck_str+'��');
         This_Player.AddLogRec(9, This_Item.ItemName, 811152, ck_gold, ck_str);
       end else
       begin
       This_Player.NotifyClientCommitItem(0,'�޷����������Ԫ�����㣬��Ҫ'+inttostr(ck_gold)+'Ԫ����'); 
       end;
     end else 
     begin
        This_Player.NotifyClientCommitItem(0,'����Ʒ���ɼ�������Ͷ��ɼ�����װ����');   
     end;   
end;
function xin(price, num: Integer):boolean; 
begin
   result := true; 
 
end;


begin
  This_Npc.NpcDialog(This_Player,
  '���������Ǹ��������μ���ʦ��ʦ�����������������ħ����������������\'
 
  +'��Ȼ���һ���ȡ��һ��Զ�̵������ѣ����ʧ����Ҳǧ��Ҫ���ҡ�\ \'
  +'|{cmd}<��ʼ����/@Checkup>\' 
  );
end.
   