{********************************************************************

*******************************************************************}

PROGRAM Mir2;

{$I common.pas}
{$I WarehouseAndMbind.pas}
{$I ActiveValidateCom.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '���ҿ�����Ķ�����\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '�������ʲôҩƷ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;

//******************��ҩ****************** 
Procedure _DoDrugNow;
Begin
   This_Npc.NpcDialog(This_Player,
   '�������������ҵ��ǰɡ����ģ������ռ����ط����ң��ҿ��Խ�\'+
   '��������ЩҩƷ��֮��׼��һЩ���Ϻ�Ǯ����Ϳ���������������\'+
   'ҩƷ�ˡ�������ƹ�����ʧ���ˣ����ģ�ҩƷ�������Ǻ������\'+
   '�յġ�\ \'+ 
   '|{cmd}<�˽���ҩ/@DoDrugNowAbout>            ^<ѧϰ��ҩ/@DoDrugNowLearn>\'+
   '|{cmd}<��ʼ��ҩ/@DoDrugNowBegin>            ^<��ȡ���ҩƷ/@DoDrugNowGet>\'+
   '|{cmd}<���۲���/@DoDrugNowSell>\'
   );
end;

Procedure _DoDrugNowAbout;
Begin
   This_Npc.NpcDialog(This_Player,
   '����ҽ�����ղ��кܶ�ǳ������ҩƷ�ط�������ǿЧ̫��ˮ�ط���\'+
   '����ѩ˪�ط�������ҩ�ط�����˵�������ҩ��ʦ����ȥ��������\'+
   '���������Ը�Ļ������ͻ������ҩƷ�ط����͸��㡣����ط�\'+
   '�����ң��ҿ��Խ�����ЩҩƷ�����ƣ���ҩ��Ҫ����һЩ���ϣ���\'+ 
   'Щ���Ͽ�����<��������/c=red>��<�����Թ�/c=red>���ռ������������Ҳֻ������\'+
   '��ҩ���ط������Ը��߼���ҩƷ���Ҷ��������ơ�������Ҫ�����㣬\'+
   '��ʹѧ���ط���ҩҲ���з��յģ������ͨ��һ����һ�ε���ҩ��\'+
   '���Լ�������������ҩ�ȼ���������ĳɹ���Ҳ����Ӧ��ߡ�\'+ 
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowLearn;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����ˣ�Ҫѧϰ����ʲôҩƷ�أ�\ \'+
   '|{cmd}<ѧϰ����ǿЧ̫��ˮ/@DoDrugNowLearn1>����ҪǿЧ̫��ˮ�ط����ȼ�35����\ \'+
   '|{cmd}<ѧϰ��������ѩ˪/@DoDrugNowLearn2>����Ҫ����ѩ˪�ط����ȼ�40�����������÷ִ�\'+
   '                  ��30�֣�\'+
   '|{cmd}<ѧϰ��������ҩ/@DoDrugNowLearn3>����Ҫ����ҩ�ط����ȼ�43��,�������÷ִﵽ30�֣�\ \'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowLearn1;
Begin
   if This_Player.GetS(80,14) <> 1 then     //ǿЧ̫��ˮ����
   begin
     if This_Player.GetBagItemCount('ǿЧ̫��ˮ�ط�') > 0 then
     begin
       if This_Player.Level >= 35 then
       begin
       This_Player.SetS(80,14,1);
       This_Player.Take('ǿЧ̫��ˮ�ط�',1); 
       This_Npc.NpcDialog(This_Player,
       '��ϲ��ѧ�������ƣ�<ǿЧ̫��ˮ/c=red>\ \'+
       '|{cmd}<����/@DoDrugNow>\'
       ); 
       end else
       This_Npc.NpcDialog(This_Player,
       'ѧϰ��������ǿЧ̫��ˮ��Ҫ�ﵽ35����\ \'+ 
       '|{cmd}<����/@DoDrugNowLearn>\'
       );  
     end else
     This_Npc.NpcDialog(This_Player,
     '��û��ǿЧ̫��ˮ�ط���\ \'+
     '|{cmd}<����/@DoDrugNowLearn>\'
     );  
   end else
   This_Npc.NpcDialog(This_Player,
   '���Ѿ�ѧ��������ǿЧ̫��ˮ��\ \'+
   '|{cmd}<����/@DoDrugNowLearn>\'
   ); 
end;

Procedure _DoDrugNowLearn2;
Begin
   if This_Player.GetS(80,20) <> 1 then      //����ѩ˪����
   begin
     if This_Player.GetBagItemCount('����ѩ˪�ط�') > 0 then
     begin
       if This_Player.Level >= 40 then
       begin
         if This_Player.GetActivePoint + This_Player.GetTmpActivePoint >= 30 then 
         begin
         This_Player.SetS(80,20,1); 
         This_Player.Take('����ѩ˪�ط�',1);
         This_Npc.NpcDialog(This_Player,
         '��ϲ��ѧ�������ƣ�<����ѩ˪/c=red>\ \'+
         '|{cmd}<����/@DoDrugNow>\'
         ); 
         end else
         This_Npc.NpcDialog(This_Player,
         'ѧϰ������������ѩ˪��Ҫ�������÷ִﵽ30�֡�\ \'+ 
         '|{cmd}<����/@DoDrugNowLearn>\'
         );  
       end else
       This_Npc.NpcDialog(This_Player,
       'ѧϰ������������ѩ˪��Ҫ�ﵽ40����\ \'+ 
       '|{cmd}<����/@DoDrugNowLearn>\'
       );  
     end else
     This_Npc.NpcDialog(This_Player,
     '��û������ѩ˪�ط���\ \'+
     '|{cmd}<����/@DoDrugNowLearn>\'
     );  
   end else
   This_Npc.NpcDialog(This_Player,
   '���Ѿ�ѧ������������ѩ˪��\ \'+
   '|{cmd}<����/@DoDrugNowLearn>\'
   ); 
end;

Procedure _DoDrugNowLearn3;
Begin
   if This_Player.GetS(80,26) <> 1 then   //����ҩ���� 
   begin
     if This_Player.GetBagItemCount('����ҩ�ط�') > 0 then
     begin
       if This_Player.Level >= 43 then
       begin
         if This_Player.GetActivePoint + This_Player.GetTmpActivePoint >= 30 then 
         begin
         This_Player.SetS(80,26,1); 
         This_Player.Take('����ҩ�ط�',1);
         This_Npc.NpcDialog(This_Player,
         '��ϲ��ѧ�������ƣ�<����ҩ/c=red>\ \'+
         '|{cmd}<����/@DoDrugNow>\'
         ); 
         end else
         This_Npc.NpcDialog(This_Player,
         'ѧϰ������������ҩ��Ҫ�������÷ִﵽ30�֡�\ \'+ 
         '|{cmd}<����/@DoDrugNowLearn>\'
         );  
       end else
       This_Npc.NpcDialog(This_Player,
       'ѧϰ������������ҩ��Ҫ�ﵽ43����\ \'+ 
       '|{cmd}<����/@DoDrugNowLearn>\'
       );  
     end else
     This_Npc.NpcDialog(This_Player,
     '��û������ҩ�ط���\ \'+
     '|{cmd}<����/@DoDrugNowLearn>\'
     );  
   end else
   This_Npc.NpcDialog(This_Player,
   '���Ѿ�ѧ������������ҩ��\ \'+
   '|{cmd}<����/@DoDrugNowLearn>\'
   ); 
end;



Procedure _DoDrugNowBegin;
var
Drug_lv1,Drug_lv2,Drug_lv3,Drug_exp1,Drug_exp2,Drug_exp3:integer;
Drug_str1,Drug_str2,Drug_str3:string;
Begin
   if This_Player.GetS(80,15) < 0 then This_Player.SetS(80,15,0);
   if This_Player.GetS(80,16) < 0 then This_Player.SetS(80,16,0);
   if This_Player.GetS(80,21) < 0 then This_Player.SetS(80,21,0);
   if This_Player.GetS(80,22) < 0 then This_Player.SetS(80,22,0);
   if This_Player.GetS(80,27) < 0 then This_Player.SetS(80,27,0);
   if This_Player.GetS(80,28) < 0 then This_Player.SetS(80,28,0);
   
   Drug_lv1:= This_Player.GetS(80,15);   //ǿЧ̫��ˮ�ȼ� 
   Drug_lv2:= This_Player.GetS(80,21);   //����ѩ˪�ȼ�
   Drug_lv3:= This_Player.GetS(80,27);   //����ҩ�ȼ�
   
   Drug_exp1:= This_Player.GetS(80,16);   //ǿЧ̫��ˮ����
   Drug_exp2:= This_Player.GetS(80,22);   //����ѩ˪����
   Drug_exp3:= This_Player.GetS(80,28);   //����ҩ����
   
   if This_Player.GetS(80,14) <> 1 then Drug_str1:='δѧϰ' else Drug_str1:='��ǰ��ҩ�ȼ�Ϊ'+inttostr(Drug_lv1)+'����������'+inttostr(Drug_exp1); 
   if This_Player.GetS(80,20) <> 1 then Drug_str2:='δѧϰ' else Drug_str2:='��ǰ��ҩ�ȼ�Ϊ'+inttostr(Drug_lv2)+'����������'+inttostr(Drug_exp2); 
   if This_Player.GetS(80,26) <> 1 then Drug_str3:='δѧϰ' else Drug_str3:='��ǰ��ҩ�ȼ�Ϊ'+inttostr(Drug_lv3)+'����������'+inttostr(Drug_exp3); 
   
   This_Npc.NpcDialog(This_Player,
   'Ҫ����ʲô����ҩƷ��\ \'+
   '|{cmd}<ǿЧ̫��ˮ/@DoDrugNowBegin1>��'+Drug_str1+'��\ \'+
   '|{cmd}<����ѩ˪/@DoDrugNowBegin2>��'+Drug_str2+'��\ \'+
   '|{cmd}<����ҩ/@DoDrugNowBegin3>��'+Drug_str3+'��\ \'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowBegin1;
Begin  
   if This_Player.GetS(80,14) = 1 then 
   begin
   This_Npc.NpcDialog(This_Player,
   '�����ڱ���һ����������ϣ�  '+inttostr(This_Player.GetBagItemCount('���'))+' ��\ \'+
   '|{cmd}<ʹ��1���������1ƿǿЧ̫��ˮ/@DoDrugNowBegin1S~1>\'+
   '|{cmd}<ʹ��10���������10ƿǿЧ̫��ˮ/@DoDrugNowBegin1S~2>\'+
   '|{cmd}<ʹ��30���������30ƿǿЧ̫��ˮ/@DoDrugNowBegin1S~3>\'+
   '|{cmd}<����/@DoDrugNow>\'
   );
   end else 
   This_Npc.NpcDialog(This_Player,
   '�㻹û��ѧ�����ƴ���ҩƷ��\ \'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowBegin2;
Begin  
   if This_Player.GetS(80,20) = 1 then 
   begin
   This_Npc.NpcDialog(This_Player,
   '�����ڱ���һ���ж�ħҶ���ϣ�  '+inttostr(This_Player.GetBagItemCount('��ħҶ'))+' ��\ \'+
   '|{cmd}<ʹ��1����ħҶ����1������ѩ˪/@DoDrugNowBegin2S~1>\'+
   '|{cmd}<ʹ��10����ħҶ����10������ѩ˪/@DoDrugNowBegin2S~2>\'+
   '|{cmd}<ʹ��30����ħҶ����30������ѩ˪/@DoDrugNowBegin2S~3>\'+
   '|{cmd}<����/@DoDrugNow>\'
   );
   end else 
   This_Npc.NpcDialog(This_Player,
   '�㻹û��ѧ�����ƴ���ҩƷ��\ \'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowBegin3;
Begin  
   if This_Player.GetS(80,26) = 1 then 
   begin
   This_Npc.NpcDialog(This_Player,
   '�����ڱ���һ���г��������ϣ�  '+inttostr(This_Player.GetBagItemCount('������'))+' ��\ \'+
   '|{cmd}<ʹ��1������������1ƿ����ҩ/@DoDrugNowBegin3S~1>\'+
   '|{cmd}<ʹ��10������������10ƿ����ҩ/@DoDrugNowBegin3S~2>\'+
   '|{cmd}<ʹ��30������������30ƿ����ҩ/@DoDrugNowBegin3S~3>\'+
   '|{cmd}<����/@DoDrugNow>\'
   );
   end else 
   This_Npc.NpcDialog(This_Player,
   '�㻹û��ѧ�����ƴ���ҩƷ��\ \'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowBegin1S(kind:string);
var
temp_kind,time_kind,num_kind,gold_kind,Drug_lv1,Drug_exp1:integer;
Begin  
   if This_Player.GetS(80,14) <> 1 then exit;
   temp_kind:= strtointdef(kind,-1);
   if (temp_kind < 1) or (temp_kind > 3) then exit;
   if This_Player.GetS(80,15) < 0 then This_Player.SetS(80,15,0);
   if This_Player.GetS(80,16) < 0 then This_Player.SetS(80,16,0);
   
   Drug_lv1:= This_Player.GetS(80,15);   //ǿЧ̫��ˮ�ȼ�    
   Drug_exp1:= This_Player.GetS(80,16);   //ǿЧ̫��ˮ����

   case temp_kind of
   1:num_kind:=1;
   2:num_kind:=10;
   3:num_kind:=30;
   end;

   case Drug_lv1 of
   0:time_kind:= 5*num_kind;
   1:time_kind:= 4*num_kind;
   2:time_kind:= 3*num_kind;
   3:time_kind:= 1*num_kind;
   end;
   gold_kind:= 1100*num_kind;
   This_Npc.NpcDialog(This_Player,
   '�㽫Ҫ���� '+inttostr(num_kind)+' ƿǿЧ̫��ˮ����ʱ  '+inttostr(time_kind)+' ����\ \'+
   '���Ľ�� '+inttostr(gold_kind)+' ���\ \'+
   '|{cmd}<��ʼ����/@DoDrugNowBegin1T~'+kind+'>\'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowBegin1T(kind:string);
var
i,temp_kind,time_kind,num_kind1,num_kind,gold_kind,rand_kind,Drug_lv1,Drug_exp1:integer;
Begin  
   if This_Player.GetS(80,14) <> 1 then exit;
   temp_kind:= strtointdef(kind,-1);
   if (temp_kind < 1) or (temp_kind > 3) then exit;
   if This_Player.GetS(80,15) < 0 then This_Player.SetS(80,15,0);
   if This_Player.GetS(80,16) < 0 then This_Player.SetS(80,16,0);
   
   Drug_lv1:= This_Player.GetS(80,15);   //ǿЧ̫��ˮ�ȼ�    
   Drug_exp1:= This_Player.GetS(80,16);   //ǿЧ̫��ˮ����

   case temp_kind of
   1:num_kind:=1;
   2:num_kind:=10;
   3:num_kind:=30;
   end;

   case Drug_lv1 of
   0:
   begin 
   time_kind:= 5*num_kind;
   rand_kind:=40;
   end;
   1:
   begin 
   time_kind:= 4*num_kind;
   rand_kind:=50;
   end;
   2:
   begin 
   time_kind:= 3*num_kind;
   rand_kind:=60;
   end;
   3:
   begin 
   time_kind:= 1*num_kind;
   rand_kind:=70;
   end;
   end;
   gold_kind:= 1100*num_kind;
   
   if This_Player.GetS(80,17) > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ȡ���ϴ����Ƶ�ҩƷ��'
   ); 
   end else
   if This_Player.GetBagItemCount('���') < num_kind then
   begin
   This_Npc.NpcDialog(This_Player,
   'ȱ���㹻�Ĳ��ϣ������'
   ); 
   end else
   if This_Player.GoldNum < gold_kind then
   begin
   This_Npc.NpcDialog(This_Player,
   'ȱ���㹻�Ĳ��ϣ���ң�'
   ); 
   end else
   begin
     This_Player.Take('���',num_kind);
     This_Player.DecGold(gold_kind);
     This_Player.SetS(80,17,ConvertDateTimeToDB(GetNow) div 60);   //��ǰʱ��
     This_Player.SetS(80,18,num_kind);     //��ҩ���� 
     This_Player.SetS(80,32,time_kind);     //��ҩʱ�� 
     This_Player.AddLogRec(9, '���', 811152, num_kind, '��ҩ����');
     num_kind1 := num_kind;
     for i:= 1 TO num_kind1 do
     begin
       if random(100) < rand_kind then  num_kind:= num_kind -1;
     end;
     This_Player.SetS(80,19,num_kind);     //�������� 
     This_Npc.NpcDialog(This_Player,
     '����ҩƷ����'+inttostr(time_kind)+'���Ӻ�������ɣ���ʱ�������ɡ�\ \'
     );
   end; 
end;

Procedure _DoDrugNowBegin2S(kind:string);
var
temp_kind,time_kind,num_kind,gold_kind,Drug_lv1,Drug_exp1:integer;
Begin  
   if This_Player.GetS(80,20) <> 1 then exit;
   temp_kind:= strtointdef(kind,-1);
   if (temp_kind < 1) or (temp_kind > 3) then exit;
   if This_Player.GetS(80,21) < 0 then This_Player.SetS(80,21,0);
   if This_Player.GetS(80,22) < 0 then This_Player.SetS(80,22,0);
   
   Drug_lv1:= This_Player.GetS(80,21);   //����ѩ˪�ȼ�    
   Drug_exp1:= This_Player.GetS(80,22);   //����ѩ˪����

   case temp_kind of
   1:num_kind:=1;
   2:num_kind:=10;
   3:num_kind:=30;
   end;

   case Drug_lv1 of
   0:time_kind:= 5*num_kind;
   1:time_kind:= 4*num_kind;
   2:time_kind:= 3*num_kind;
   3:time_kind:= 2*num_kind;
   4:time_kind:= 1*num_kind;
   end;
   gold_kind:= 5000*num_kind;
   This_Npc.NpcDialog(This_Player,
   '�㽫Ҫ���� '+inttostr(num_kind)+' ������ѩ˪����ʱ  '+inttostr(time_kind)+' ����\ \'+
   '���Ľ�� '+inttostr(gold_kind)+' ���\ \'+
   '|{cmd}<��ʼ����/@DoDrugNowBegin2T~'+kind+'>\'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowBegin2T(kind:string);
var
i,temp_kind,time_kind,num_kind,num_kind1,gold_kind,rand_kind,Drug_lv1,Drug_exp1:integer;
Begin  
   if This_Player.GetS(80,20) <> 1 then exit;
   temp_kind:= strtointdef(kind,-1);
   if (temp_kind < 1) or (temp_kind > 3) then exit;
   if This_Player.GetS(80,21) < 0 then This_Player.SetS(80,21,0);
   if This_Player.GetS(80,22) < 0 then This_Player.SetS(80,22,0);
   
   Drug_lv1:= This_Player.GetS(80,21);   //����ѩ˪�ȼ�    
   Drug_exp1:= This_Player.GetS(80,22);   //����ѩ˪����

   case temp_kind of
   1:num_kind:=1;
   2:num_kind:=10;
   3:num_kind:=30;
   end;

   case Drug_lv1 of
   0:
   begin 
   time_kind:= 5*num_kind;
   rand_kind:=40;
   end;
   1:
   begin 
   time_kind:= 4*num_kind;
   rand_kind:=45;
   end;
   2:
   begin 
   time_kind:= 3*num_kind;
   rand_kind:=50;
   end;
   3:
   begin 
   time_kind:= 2*num_kind;
   rand_kind:=60;
   end;
   4:
   begin 
   time_kind:= 1*num_kind;
   rand_kind:=70;
   end;
   end;
   gold_kind:= 5000*num_kind;
   
   if This_Player.GetS(80,23) > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ȡ���ϴ����Ƶ�ҩƷ��'
   ); 
   end else
   if This_Player.GetBagItemCount('��ħҶ') < num_kind then
   begin
   This_Npc.NpcDialog(This_Player,
   'ȱ���㹻�Ĳ��ϣ���ħҶ��'
   ); 
   end else
   if This_Player.GoldNum < gold_kind then
   begin
   This_Npc.NpcDialog(This_Player,
   'ȱ���㹻�Ĳ��ϣ���ң�'
   ); 
   end else
   begin
     This_Player.Take('��ħҶ',num_kind);
     This_Player.DecGold(gold_kind);
     This_Player.SetS(80,23,ConvertDateTimeToDB(GetNow) div 60);   //��ǰʱ��
     This_Player.SetS(80,24,num_kind);     //��ҩ���� 
     This_Player.SetS(80,33,time_kind);     //��ҩʱ�� 
     This_Player.AddLogRec(9, '��ħҶ', 811152, num_kind, '��ҩ����');
     num_kind1 := num_kind;
     for i:= 1 TO num_kind1 do
     begin
       if random(100) < rand_kind then  num_kind:= num_kind -1;
     end;
     This_Player.SetS(80,25,num_kind);     //�������� 
     This_Npc.NpcDialog(This_Player,
     '����ҩƷ����'+inttostr(time_kind)+'���Ӻ�������ɣ���ʱ�������ɡ�\ \'
     );
   end; 
end;

Procedure _DoDrugNowBegin3S(kind:string);
var
temp_kind,time_kind,num_kind,gold_kind,Drug_lv1,Drug_exp1:integer;
Begin  
   if This_Player.GetS(80,26) <> 1 then exit;
   temp_kind:= strtointdef(kind,-1);
   if (temp_kind < 1) or (temp_kind > 3) then exit;
   if This_Player.GetS(80,27) < 0 then This_Player.SetS(80,27,0);
   if This_Player.GetS(80,28) < 0 then This_Player.SetS(80,28,0);
   
   Drug_lv1:= This_Player.GetS(80,27);   //����ҩ�ȼ�    
   Drug_exp1:= This_Player.GetS(80,28);   //����ҩ����

   case temp_kind of
   1:num_kind:=1;
   2:num_kind:=10;
   3:num_kind:=30;
   end;

   case Drug_lv1 of
   0:time_kind:= 5*num_kind;
   1:time_kind:= 4*num_kind;
   2:time_kind:= 3*num_kind;
   3:time_kind:= 2*num_kind;
   4:time_kind:= 1*num_kind;
   5:time_kind:= 1*num_kind;
   end;
   gold_kind:= 20000*num_kind;
   This_Npc.NpcDialog(This_Player,
   '�㽫Ҫ���� '+inttostr(num_kind)+' ������ҩ����ʱ  '+inttostr(time_kind)+' ����\ \'+
   '���Ľ�� '+inttostr(gold_kind)+' ���\ \'+
   '|{cmd}<��ʼ����/@DoDrugNowBegin3T~'+kind+'>\'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowBegin3T(kind:string);
var
i,temp_kind,time_kind,num_kind,num_kind1,gold_kind,rand_kind,Drug_lv1,Drug_exp1:integer;
Begin  
   if This_Player.GetS(80,26) <> 1 then exit;
   temp_kind:= strtointdef(kind,-1);
   if (temp_kind < 1) or (temp_kind > 3) then exit;
   if This_Player.GetS(80,27) < 0 then This_Player.SetS(80,27,0);
   if This_Player.GetS(80,28) < 0 then This_Player.SetS(80,28,0);
   
   Drug_lv1:= This_Player.GetS(80,27);   //����ҩ�ȼ�    
   Drug_exp1:= This_Player.GetS(80,28);   //����ҩ����

   case temp_kind of
   1:num_kind:=1;
   2:num_kind:=10;
   3:num_kind:=30;
   end;

   case Drug_lv1 of
   0:
   begin 
   time_kind:= 5*num_kind;
   rand_kind:=40;
   end;
   1:
   begin 
   time_kind:= 4*num_kind;
   rand_kind:=45;
   end;
   2:
   begin 
   time_kind:= 3*num_kind;
   rand_kind:=50;
   end;
   3:
   begin 
   time_kind:= 2*num_kind;
   rand_kind:=60;
   end;
   4:
   begin 
   time_kind:= 1*num_kind;
   rand_kind:=65;
   end;
   5:
   begin 
   time_kind:= 1*num_kind;
   rand_kind:=70;
   end;
   end;
   gold_kind:= 20000*num_kind;
   
   if This_Player.GetS(80,29) > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ȡ���ϴ����Ƶ�ҩƷ��'
   ); 
   end else
   if This_Player.GetBagItemCount('������') < num_kind then
   begin
   This_Npc.NpcDialog(This_Player,
   'ȱ���㹻�Ĳ��ϣ���������'
   ); 
   end else
   if This_Player.GoldNum < gold_kind then
   begin
   This_Npc.NpcDialog(This_Player,
   'ȱ���㹻�Ĳ��ϣ���ң�'
   ); 
   end else
   begin
     This_Player.Take('������',num_kind);
     This_Player.DecGold(gold_kind);
     This_Player.SetS(80,29,ConvertDateTimeToDB(GetNow) div 60);   //��ǰʱ��
     This_Player.SetS(80,30,num_kind);     //��ҩ���� 
     This_Player.SetS(80,34,time_kind);     //��ҩʱ��
     This_Player.AddLogRec(9, '������', 811152, num_kind, '��ҩ����');
     num_kind1 := num_kind; 
     for i:= 1 TO num_kind1 do
     begin
       if random(100) < rand_kind then  num_kind:= num_kind -1;
     end;
     This_Player.SetS(80,31,num_kind);     //�������� 
     This_Npc.NpcDialog(This_Player,
     '����ҩƷ����'+inttostr(time_kind)+'���Ӻ�������ɣ���ʱ�������ɡ�\ \'
     );
   end; 
end;

Procedure _DoDrugNowGet;
var
Drug_time1,Drug_time2,Drug_time3,Drug_time:integer;
Drug_str1,Drug_str2,Drug_str3:string;
Begin   
   Drug_time := ConvertDateTimeToDB(GetNow) div 60; 
   Drug_time1:= This_Player.GetS(80,32) - (Drug_time - This_Player.GetS(80,17));   //ǿЧ̫��ˮʣ��ʱ�� 
   Drug_time2:= This_Player.GetS(80,33) - (Drug_time - This_Player.GetS(80,23));   //����ѩ˪ʣ��ʱ�� 
   Drug_time3:= This_Player.GetS(80,34) - (Drug_time - This_Player.GetS(80,29));   //����ҩʣ��ʱ�� 
   
   if This_Player.GetS(80,17) <= 0 then Drug_str1:='δ����' else if Drug_time1 > 0 then Drug_str1:= inttostr(Drug_time1)+'���Ӻ����' else Drug_str1:='�����'; 
   if This_Player.GetS(80,23) <= 0 then Drug_str2:='δ����' else if Drug_time2 > 0 then Drug_str2:= inttostr(Drug_time2)+'���Ӻ����' else Drug_str2:='�����';
   if This_Player.GetS(80,29) <= 0 then Drug_str3:='δ����' else if Drug_time3 > 0 then Drug_str3:= inttostr(Drug_time3)+'���Ӻ����' else Drug_str3:='�����';
   
   This_Npc.NpcDialog(This_Player,
   'Ҫ��ȡ�����������ҩƷ�أ�\ \'+
   '|{cmd}<��ȡǿЧ̫��ˮ/@DoDrugNowGet1>��'+Drug_str1+'��\ \'+
   '|{cmd}<��ȡ����ѩ˪/@DoDrugNowGet2>��'+Drug_str2+'��\ \'+
   '|{cmd}<��ȡ����ҩ/@DoDrugNowGet3>��'+Drug_str3+'��\ \'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowGet1;
var
Drug_time,Drug_time1,Drug_num,Drug_num1,Drug_num2,Drug_lv1,Drug_exp1,Drug_exp:integer;
Begin  
   
   if This_Player.GetS(80,17) <= 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '�㲢û�����Ұ�����������ҩƷ����û�뵽���������\'+
   '���Ի������Ҹ���ͷ���ء�'
   ); 
   exit;
   end;
   Drug_time := ConvertDateTimeToDB(GetNow) div 60; 
   Drug_time1:= This_Player.GetS(80,32) - (Drug_time - This_Player.GetS(80,17));   //ǿЧ̫��ˮʣ��ʱ��   
   if Drug_time1 > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ҩƷ����'+inttostr(Drug_time1)+'���Ӻ�������ɣ���ʱ�������ɡ�'
   ); 
   exit;
   end; 
   
   if This_Player.GetS(80,15) < 0 then This_Player.SetS(80,15,0);
   if This_Player.GetS(80,16) < 0 then This_Player.SetS(80,16,0); 
   Drug_lv1:= This_Player.GetS(80,15);   //ǿЧ̫��ˮ�ȼ�    
   Drug_exp1:= This_Player.GetS(80,16);   //ǿЧ̫��ˮ����
    
   Drug_num:= This_Player.GetS(80,18);    //��ҩ���� 
   Drug_num1:= This_Player.GetS(80,19);   //��������
   Drug_num2:= Drug_num - Drug_num1;      //��Ʒ���� 
   
   case Drug_lv1 of
   0: Drug_exp:= 12;
   1: Drug_exp:= 60;
   2: Drug_exp:= 200;
   3: Drug_exp:= 0;
   end; 
   
   if Drug_lv1 = 3 then
   begin
   Drug_exp:= 0;
   end else
   if Drug_exp1 + Drug_num2 >= Drug_exp then
   begin
     if (This_Player.Level >= 35) and (Drug_lv1 = 0) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 36) and (Drug_lv1 = 1) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 38) and (Drug_lv1 = 2) then
     begin
     Drug_exp:= Drug_exp - Drug_exp1;
     end else
     begin
     Drug_exp:= Drug_exp - Drug_exp1;
     end; 
   end else
   begin
   Drug_exp:= Drug_num2;
   end;
   
   This_Npc.NpcDialog(This_Player,
   '�����Ƴ��ˣ�\ \'+
   '|<ǿЧ̫��ˮx'+inttostr(Drug_num2)+'/c=red>\'+
   '|<�������x'+inttostr(Drug_num1)+'/c=red>\'+
   '|<����������'+inttostr(Drug_exp)+'��/c=red>\ \'+
   '|{cmd}<���뱳��/@DoDrugNowGet1_1>'
   ); 
end;

Procedure _DoDrugNowGet1_1;
var
Drug_time,Drug_time1,Drug_num,Drug_num1,Drug_num2,Drug_lv1,Drug_exp1,Drug_exp:integer;
Begin  
   
   if This_Player.GetS(80,17) <= 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '�㲢û�����Ұ�����������ҩƷ����û�뵽���������\'+
   '���Ի������Ҹ���ͷ���ء�'
   ); 
   exit;
   end;
   Drug_time := ConvertDateTimeToDB(GetNow) div 60; 
   Drug_time1:= This_Player.GetS(80,32) - (Drug_time - This_Player.GetS(80,17));   //ǿЧ̫��ˮʣ��ʱ��   
   if Drug_time1 > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ҩƷ����'+inttostr(Drug_time1)+'���Ӻ�������ɣ���ʱ�������ɡ�'
   ); 
   exit;
   end; 
   
   if This_Player.GetS(80,15) < 0 then This_Player.SetS(80,15,0);
   if This_Player.GetS(80,16) < 0 then This_Player.SetS(80,16,0); 
   Drug_lv1:= This_Player.GetS(80,15);   //ǿЧ̫��ˮ�ȼ�    
   Drug_exp1:= This_Player.GetS(80,16);   //ǿЧ̫��ˮ����
    
   Drug_num:= This_Player.GetS(80,18);    //��ҩ���� 
   Drug_num1:= This_Player.GetS(80,19);   //��������
   Drug_num2:= Drug_num - Drug_num1;      //��Ʒ����  
   
   
   if This_Player.FreeBagNum > Drug_num2 then 
   begin
     case Drug_lv1 of
     0: Drug_exp:= 12;
     1: Drug_exp:= 60;
     2: Drug_exp:= 200;
     3: Drug_exp:= 0;
     end; 
     
     if Drug_lv1 = 3 then
     begin
     This_Player.SetS(80,16,0);
     Drug_exp:= 0;
     end else
     if Drug_exp1 + Drug_num2 >= Drug_exp then
     begin
       if (This_Player.Level >= 35) and (Drug_lv1 = 0) then
       begin
       This_Player.SetS(80,15,Drug_lv1 + 1);
       This_Player.SetS(80,16,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 36) and (Drug_lv1 = 1) then
       begin
       This_Player.SetS(80,15,Drug_lv1 + 1);
       This_Player.SetS(80,16,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 38) and (Drug_lv1 = 2) then
       begin
       This_Player.SetS(80,15,Drug_lv1 + 1);
       This_Player.SetS(80,16,0);
       Drug_exp:= Drug_exp - Drug_exp1;
       end else
       begin
       This_Player.SetS(80,16,Drug_exp);
       Drug_exp:= Drug_exp - Drug_exp1;
       end; 
     end else
     begin
     This_Player.SetS(80,16,Drug_exp1 + Drug_num2);
     Drug_exp:= Drug_num2;
     end;
     if Drug_num2 > 0 then 
     begin
     This_Player.Give('ǿЧ̫��ˮ',Drug_num2);
     This_Player.AddLogRec(9, 'ǿЧ̫��ˮ', 811152, Drug_num2, '��ҩģ��');
       if GetG(35,44) <> GetDateNum(GetNow) then
       begin
       SetG(35,44,GetDateNum(GetNow));
       SetG(35,45,GetG(35,46));
       SetG(35,47,GetG(35,48));
       SetG(35,49,GetG(35,50));
       SetG(35,46,0);
       SetG(35,48,0);
       SetG(35,50,0);
       end;
       SetG(35,50, GetG(35,50) + Drug_num2);
     end;
     if Drug_num1 > 0 then 
     begin 
     This_Player.Give('�������',Drug_num1);
     This_Player.AddLogRec(9, '�������', 811152, Drug_num1, '��ҩģ��');
     end;
     This_Player.SetS(80,17,0);
     This_Player.SetS(80,18,0);
     This_Player.SetS(80,19,0);
     This_Player.SetS(80,32,0);
     This_Npc.NpcDialog(This_Player,
     '������ˣ�\ \'+
     '|<ǿЧ̫��ˮx'+inttostr(Drug_num2)+'/c=red>\'+
     '|<�������x'+inttostr(Drug_num1)+'/c=red>\'+
     '|<����������'+inttostr(Drug_exp)+'��/c=red>\ \'
     ); 
   end else 
   This_Npc.NpcDialog(This_Player,
   '���ı����ռ䲻��'+inttostr(Drug_num2 + 1)+'��������������\'
   ); 
end;

Procedure _DoDrugNowGet2;
var
Drug_time,Drug_time1,Drug_num,Drug_num1,Drug_num2,Drug_lv1,Drug_exp1,Drug_exp:integer;
Begin  
   
   if This_Player.GetS(80,23) <= 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '�㲢û�����Ұ�����������ҩƷ����û�뵽���������\'+
   '���Ի������Ҹ���ͷ���ء�'
   ); 
   exit;
   end;
   Drug_time := ConvertDateTimeToDB(GetNow) div 60; 
   Drug_time1:= This_Player.GetS(80,33) - (Drug_time - This_Player.GetS(80,23));   //����ѩ˪ʣ��ʱ��   
   if Drug_time1 > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ҩƷ����'+inttostr(Drug_time1)+'���Ӻ�������ɣ���ʱ�������ɡ�'
   ); 
   exit;
   end; 
   
   if This_Player.GetS(80,21) < 0 then This_Player.SetS(80,21,0);
   if This_Player.GetS(80,22) < 0 then This_Player.SetS(80,22,0); 
   Drug_lv1:= This_Player.GetS(80,21);   //����ѩ˪�ȼ�    
   Drug_exp1:= This_Player.GetS(80,22);   //����ѩ˪����
    
   Drug_num:= This_Player.GetS(80,24);    //��ҩ���� 
   Drug_num1:= This_Player.GetS(80,25);   //��������
   Drug_num2:= Drug_num - Drug_num1;      //��Ʒ���� 
   
   case Drug_lv1 of
   0: Drug_exp:= 25;
   1: Drug_exp:= 120;
   2: Drug_exp:= 400;
   3: Drug_exp:= 3000;
   4: Drug_exp:= 0;
   end; 
   
   if Drug_lv1 = 4 then
   begin
   Drug_exp:= 0;
   end else
   if Drug_exp1 + Drug_num2 >= Drug_exp then
   begin
     if (This_Player.Level >= 40) and (Drug_lv1 = 0) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 41) and (Drug_lv1 = 1) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 42) and (Drug_lv1 = 2) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 43) and (Drug_lv1 = 3) then
     begin
     Drug_exp:= Drug_exp - Drug_exp1;
     end else
     begin
     Drug_exp:= Drug_exp - Drug_exp1;
     end; 
   end else
   begin
   Drug_exp:= Drug_num2;
   end;
   
   This_Npc.NpcDialog(This_Player,
   '�����Ƴ��ˣ�\ \'+
   '|<����ѩ˪x'+inttostr(Drug_num2)+'/c=red>\'+
   '|<��ħҶ����x'+inttostr(Drug_num1)+'/c=red>\'+
   '|<����������'+inttostr(Drug_exp)+'��/c=red>\ \'+
   '|{cmd}<���뱳��/@DoDrugNowGet2_1>'
   ); 
end;

Procedure _DoDrugNowGet2_1;
var
Drug_time,Drug_time1,Drug_num,Drug_num1,Drug_num2,Drug_lv1,Drug_exp1,Drug_exp:integer;
Begin  
   
   if This_Player.GetS(80,23) <= 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '�㲢û�����Ұ�����������ҩƷ����û�뵽���������\'+
   '���Ի������Ҹ���ͷ���ء�'
   ); 
   exit;
   end;
   Drug_time := ConvertDateTimeToDB(GetNow) div 60; 
   Drug_time1:= This_Player.GetS(80,33) - (Drug_time - This_Player.GetS(80,23));   //����ѩ˪ʣ��ʱ��   
   if Drug_time1 > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ҩƷ����'+inttostr(Drug_time1)+'���Ӻ�������ɣ���ʱ�������ɡ�'
   ); 
   exit;
   end; 
   
   if This_Player.GetS(80,21) < 0 then This_Player.SetS(80,21,0);
   if This_Player.GetS(80,22) < 0 then This_Player.SetS(80,22,0); 
   Drug_lv1:= This_Player.GetS(80,21);   //����ѩ˪�ȼ�    
   Drug_exp1:= This_Player.GetS(80,22);   //����ѩ˪����
    
   Drug_num:= This_Player.GetS(80,24);    //��ҩ���� 
   Drug_num1:= This_Player.GetS(80,25);   //��������
   Drug_num2:= Drug_num - Drug_num1;      //��Ʒ����  
   
   
   if This_Player.FreeBagNum > Drug_num2 then 
   begin
     case Drug_lv1 of
     0: Drug_exp:= 25;
     1: Drug_exp:= 120;
     2: Drug_exp:= 400;
     3: Drug_exp:= 3000;
     4: Drug_exp:= 0;
     end; 
     
     if Drug_lv1 = 4 then
     begin
     Drug_exp:= 0;
     end else
     if Drug_exp1 + Drug_num2 >= Drug_exp then
     begin
       if (This_Player.Level >= 40) and (Drug_lv1 = 0) then
       begin
       This_Player.SetS(80,21,Drug_lv1 + 1);
       This_Player.SetS(80,22,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 41) and (Drug_lv1 = 1) then
       begin
       This_Player.SetS(80,21,Drug_lv1 + 1);
       This_Player.SetS(80,22,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 42) and (Drug_lv1 = 2) then
       begin
       This_Player.SetS(80,21,Drug_lv1 + 1);
       This_Player.SetS(80,22,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 43) and (Drug_lv1 = 3) then
       begin
       This_Player.SetS(80,21,Drug_lv1 + 1);
       This_Player.SetS(80,22,0);
       Drug_exp:= Drug_exp - Drug_exp1;
       end else
       begin
       This_Player.SetS(80,22,Drug_exp);
       Drug_exp:= Drug_exp - Drug_exp1;
       end; 
     end else
     begin
     This_Player.SetS(80,22,Drug_exp1 + Drug_num2);
     Drug_exp:= Drug_num2;
     end;
     if Drug_num2 > 0 then 
     begin
     This_Player.Give('����ѩ˪',Drug_num2);
     This_Player.AddLogRec(9, '����ѩ˪', 811152, Drug_num2, '��ҩģ��');
       if GetG(35,44) <> GetDateNum(GetNow) then
       begin
       SetG(35,44,GetDateNum(GetNow));
       SetG(35,45,GetG(35,46));
       SetG(35,47,GetG(35,48));
       SetG(35,49,GetG(35,50));
       SetG(35,46,0);
       SetG(35,48,0);
       SetG(35,50,0);
       end;
       SetG(35,48, GetG(35,48) + Drug_num2);
     end;
     if Drug_num1 > 0 then 
     begin 
     This_Player.Give('��ħҶ����',Drug_num1);
     This_Player.AddLogRec(9, '��ħҶ����', 811152, Drug_num1, '��ҩģ��');
     end;
     This_Player.SetS(80,23,0);
     This_Player.SetS(80,24,0);
     This_Player.SetS(80,25,0);
     This_Player.SetS(80,33,0);
     This_Npc.NpcDialog(This_Player,
     '������ˣ�\ \'+
     '|<����ѩ˪x'+inttostr(Drug_num2)+'/c=red>\'+
     '|<��ħҶ����x'+inttostr(Drug_num1)+'/c=red>\'+
     '|<����������'+inttostr(Drug_exp)+'��/c=red>\ \'
     ); 
   end else 
   This_Npc.NpcDialog(This_Player,
   '���ı����ռ䲻��'+inttostr(Drug_num2 + 1)+'��������������\'
   ); 
end;

Procedure _DoDrugNowGet3;
var
Drug_time,Drug_time1,Drug_num,Drug_num1,Drug_num2,Drug_lv1,Drug_exp1,Drug_exp:integer;
Begin  
   
   if This_Player.GetS(80,29) <= 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '�㲢û�����Ұ�����������ҩƷ����û�뵽���������\'+
   '���Ի������Ҹ���ͷ���ء�'
   ); 
   exit;
   end;
   Drug_time := ConvertDateTimeToDB(GetNow) div 60; 
   Drug_time1:= This_Player.GetS(80,34) - (Drug_time - This_Player.GetS(80,29));   //����ҩʣ��ʱ��   
   if Drug_time1 > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ҩƷ����'+inttostr(Drug_time1)+'���Ӻ�������ɣ���ʱ�������ɡ�'
   ); 
   exit;
   end; 
   
   if This_Player.GetS(80,27) < 0 then This_Player.SetS(80,27,0);
   if This_Player.GetS(80,28) < 0 then This_Player.SetS(80,28,0); 
   Drug_lv1:= This_Player.GetS(80,27);   //����ҩ�ȼ�    
   Drug_exp1:= This_Player.GetS(80,28);   //����ҩ����
    
   Drug_num:= This_Player.GetS(80,30);    //��ҩ���� 
   Drug_num1:= This_Player.GetS(80,31);   //��������
   Drug_num2:= Drug_num - Drug_num1;      //��Ʒ���� 
   
   case Drug_lv1 of
   0: Drug_exp:= 20;
   1: Drug_exp:= 150;
   2: Drug_exp:= 900;
   3: Drug_exp:= 3800;
   4: Drug_exp:= 5000;
   5: Drug_exp:= 0;
   end; 
   
   if Drug_lv1 = 5 then
   begin
   Drug_exp:= 0;
   end else
   if Drug_exp1 + Drug_num2 >= Drug_exp then
   begin
     if (This_Player.Level >= 43) and (Drug_lv1 = 0) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 43) and (Drug_lv1 = 1) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 44) and (Drug_lv1 = 2) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 45) and (Drug_lv1 = 3) then
     begin
     Drug_exp:= Drug_num2;
     end else
     if (This_Player.Level >= 47) and (Drug_lv1 = 4) then
     begin
     Drug_exp:= Drug_exp - Drug_exp1;
     end else
     begin
     Drug_exp:= Drug_exp - Drug_exp1;
     end; 
   end else
   begin
   Drug_exp:= Drug_num2;
   end;
   
   This_Npc.NpcDialog(This_Player,
   '�����Ƴ��ˣ�\ \'+
   '|<����ҩx'+inttostr(Drug_num2)+'/c=red>\'+
   '|<����������x'+inttostr(Drug_num1)+'/c=red>\'+
   '|<����������'+inttostr(Drug_exp)+'��/c=red>\ \'+
   '|{cmd}<���뱳��/@DoDrugNowGet3_1>'
   ); 
end;

Procedure _DoDrugNowGet3_1;
var
Drug_time,Drug_time1,Drug_num,Drug_num1,Drug_num2,Drug_lv1,Drug_exp1,Drug_exp:integer;
Begin  
   
   if This_Player.GetS(80,29) <= 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '�㲢û�����Ұ�����������ҩƷ����û�뵽���������\'+
   '���Ի������Ҹ���ͷ���ء�'
   ); 
   exit;
   end;
   Drug_time := ConvertDateTimeToDB(GetNow) div 60; 
   Drug_time1:= This_Player.GetS(80,34) - (Drug_time - This_Player.GetS(80,29));   //����ҩʣ��ʱ��   
   if Drug_time1 > 0 then
   begin
   This_Npc.NpcDialog(This_Player,
   '����ҩƷ����'+inttostr(Drug_time1)+'���Ӻ�������ɣ���ʱ�������ɡ�'
   ); 
   exit;
   end; 
   
   if This_Player.GetS(80,27) < 0 then This_Player.SetS(80,27,0);
   if This_Player.GetS(80,28) < 0 then This_Player.SetS(80,28,0); 
   Drug_lv1:= This_Player.GetS(80,27);   //����ҩ�ȼ�    
   Drug_exp1:= This_Player.GetS(80,28);   //����ҩ����
    
   Drug_num:= This_Player.GetS(80,30);    //��ҩ���� 
   Drug_num1:= This_Player.GetS(80,31);   //��������
   Drug_num2:= Drug_num - Drug_num1;      //��Ʒ����  
   
   
   if This_Player.FreeBagNum > Drug_num2 then 
   begin
     case Drug_lv1 of
     0: Drug_exp:= 20;
     1: Drug_exp:= 150;
     2: Drug_exp:= 900;
     3: Drug_exp:= 3800;
     4: Drug_exp:= 5000;
     5: Drug_exp:= 0;
     end; 
     
     if Drug_lv1 = 5 then
     begin
     Drug_exp:= 0;
     end else
     if Drug_exp1 + Drug_num2 >= Drug_exp then
     begin
       if (This_Player.Level >= 43) and (Drug_lv1 = 0) then
       begin
       This_Player.SetS(80,27,Drug_lv1 + 1);
       This_Player.SetS(80,28,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 43) and (Drug_lv1 = 1) then
       begin
       This_Player.SetS(80,27,Drug_lv1 + 1);
       This_Player.SetS(80,28,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 44) and (Drug_lv1 = 2) then
       begin
       This_Player.SetS(80,27,Drug_lv1 + 1);
       This_Player.SetS(80,28,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 45) and (Drug_lv1 = 3) then
       begin
       This_Player.SetS(80,27,Drug_lv1 + 1);
       This_Player.SetS(80,28,Drug_exp1 + Drug_num2 - Drug_exp);
       Drug_exp:= Drug_num2;
       end else
       if (This_Player.Level >= 47) and (Drug_lv1 = 4) then
       begin
       This_Player.SetS(80,27,Drug_lv1 + 1);
       This_Player.SetS(80,28,0);
       Drug_exp:= Drug_exp - Drug_exp1;
       end else
       begin
       This_Player.SetS(80,28,Drug_exp);
       Drug_exp:= Drug_exp - Drug_exp1;
       end; 
     end else
     begin
     This_Player.SetS(80,28,Drug_exp1 + Drug_num2);
     Drug_exp:= Drug_num2;
     end;
     if Drug_num2 > 0 then 
     begin
     This_Player.Give('����ҩ',Drug_num2);
     This_Player.AddLogRec(9, '����ҩ', 811152, Drug_num2, '��ҩģ��');
       if GetG(35,44) <> GetDateNum(GetNow) then
       begin
       SetG(35,44,GetDateNum(GetNow));
       SetG(35,45,GetG(35,46));
       SetG(35,47,GetG(35,48));
       SetG(35,49,GetG(35,50));
       SetG(35,46,0);
       SetG(35,48,0);
       SetG(35,50,0);
       end;
       SetG(35,46, GetG(35,46) + Drug_num2);
     end;
     if Drug_num1 > 0 then 
     begin 
     This_Player.Give('����������',Drug_num1);
     This_Player.AddLogRec(9, '����������', 811152, Drug_num1, '��ҩģ��');
     end;
     This_Player.SetS(80,29,0);
     This_Player.SetS(80,30,0);
     This_Player.SetS(80,31,0);
     This_Player.SetS(80,34,0);
     This_Npc.NpcDialog(This_Player,
     '������ˣ�\ \'+
     '|<����ҩx'+inttostr(Drug_num2)+'/c=red>\'+
     '|<����������x'+inttostr(Drug_num1)+'/c=red>\'+
     '|<����������'+inttostr(Drug_exp)+'��/c=red>\ \'
     ); 
   end else 
   This_Npc.NpcDialog(This_Player,
   '���ı����ռ䲻��'+inttostr(Drug_num2 + 1)+'��������������\'
   ); 
end;

Procedure _DoDrugNowSell;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Щ����ҩ�õ������ϣ��������������\ \'+
   '|{cmd}<���۱������������/@DoDrugNowSellAll~1>       |{cmd}<���۱����������������/@DoDrugNowSellAll~4>\'+
   '|{cmd}<���۱��������ж�ħҶ/@DoDrugNowSellAll~2>     |{cmd}<���۱��������ж�ħҶ����/@DoDrugNowSellAll~5>\'+
   '|{cmd}<���۱��������г�����/@DoDrugNowSellAll~3>     |{cmd}<���۱��������г���������/@DoDrugNowSellAll~6>\ \'+
   '|{cmd}<����/@DoDrugNow>\'
   );
end;

Procedure _DoDrugNowSellAll(kind:string);
var
temp_kind,Gold_kind,Num_kind:integer;
name_kind:string;
Begin
   temp_kind:= strtointdef(kind,-1);
   if (temp_kind < 1) or (temp_kind > 6) then exit;
   case temp_kind of
     1:
     begin
     name_kind:='���';
     Gold_kind:=50;
     end;
     2:
     begin
     name_kind:='��ħҶ';
     Gold_kind:=100;
     end;
     3:
     begin
     name_kind:='������';
     Gold_kind:=120;
     end;
     4:
     begin
     name_kind:='�������';
     Gold_kind:=1000;
     end;
     5:
     begin
     name_kind:='��ħҶ����';
     Gold_kind:=5000;
     end;
     6:
     begin
     name_kind:='����������';
     Gold_kind:=20000;
     end;
   end;
   Num_kind:= This_Player.GetBagItemCount(name_kind);
   if Num_kind > 0 then
   begin
     if This_Player.GoldNum + Num_kind*Gold_kind < 50000000 then 
     begin
     This_Player.Take(name_kind,Num_kind); 
     This_Player.AddGold(Num_kind*Gold_kind);
     This_Player.PlayerNotice('����'+inttostr(Num_kind)+'��'+name_kind+'����ã�'+inttostr(Num_kind*Gold_kind)+'��ҡ�',2);
     This_Player.AddLogRec(9, name_kind, 811152, num_kind, '��һ���');
     end else
     begin
     This_Player.PlayerNotice('��Я����ҳ������ޡ�',2);
     end;
   end else
   begin
   This_Player.PlayerNotice('û�пɳ��۵���Ʒ��',2);
   end;   
   _DoDrugNowSell;
end;

//******************��ҩ****************** 

procedure _GoToBai;
begin
  if This_Player.MapName = '1006' then
  This_Player.Flyto('11',185,305); 
end;

procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 200, 1); 
  This_NPC.FillGoods('��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);
  This_NPC.FillGoods('��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('��ҩ(��)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(��)��', 100, 1);  
  This_NPC.FillGoods('������ҩ', 100, 1);
  This_NPC.FillGoods('����ħ��ҩ', 100, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1); 
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  //����stdmode  
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(25);
  This_NPC.AddStdMode(30);
  This_NPC.AddStdMode(42);
end;




Begin
   This_Npc.NpcDialog(This_Player,
   '��ӭ���������������һЩ������ҩƷ��\ \'+
   '|{cmd}<��ҩƷ/@buy> ' + addspace(' ',20) + '^<��ҩƷ/@sell> \'+
   '|{cmd}<����ҩƷ/@DoDrugNow>' + addspace(' ',20) + ActiveValidateStr + '\ \'+
   '|{cmd}<�˳�/@doexit>' + addspace(' ',22) + '^<���ذ�����/@GoToBai>'
   );
end.