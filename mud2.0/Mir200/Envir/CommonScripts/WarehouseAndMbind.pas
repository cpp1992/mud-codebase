{********************************************************************

*******************************************************************}
   



//=========================  ҩƷ�ֿ�   ======================================== 
Procedure _CangKuMed;
begin
   This_NPC.NpcDialog(This_Player,
   'ҩƷ�ֿ⣺ֻ�ܴ洢����ҩ������ѩ˪��ǿЧ̫��ˮ��\ \'+
   '|{cmd}<�洢ҩƷ/@CKMed_sto>                ^<ȡ��ҩƷ/@CKMed_GeBak>\ \'+
   '|{cmd}<ʹ��ҩ��/@CangKuMedGZ1>                ^<���ҩ��/@CangKuMedGZ2>\ \'+
   '|{cmd}<����/@main>'
   );
end;

//ҩƷ�ֿ⡪���洢�� 
Procedure _CKMed_sto;
var
  iMed01,iMed02, iMed03: integer;
begin
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);

   if iMed01 < 0 then
   begin
      iMed01 := 0;
   end;

   if iMed02 < 0 then
   begin
      iMed02 := 0;
   end;
   
   if iMed03 < 0 then
   begin
      iMed03 := 0;
   end;    

   This_NPC.NpcDialog(This_Player,
   '����ҩƷ�ֿ�洢��ҩƷ����Ϊ����ҩƷ�ֿ�ɴ洢����Ϊ500����\'+
   '����Ҫ�洢ʲôҩƷ�أ�\'+
   '|����ҩ��       <' + inttostr(iMed01) + '/c=red>\'+ 
   '^����ѩ˪��     <' + inttostr(iMed02) + '/c=red>\'+
   '|ǿЧ̫��ˮ��   <' + inttostr(iMed03) + '/c=red>\'+ 
   '|{cmd}<��1ƿ����ҩ/@CKMed_sto01>     ^<��5ƿ����ҩ/@CKMed_sfv01>\'+ 
   '|{cmd}<��1������ѩ˪/@CKMed_sto02>   ^<��5������ѩ˪/@CKMed_sfv02>\'+
   '|{cmd}<��1ƿǿЧ̫��ˮ/@CKMed_sto03> ^<��5ƿǿЧ̫��ˮ/@CKMed_sfv03>\'+ 
   '|{cmd}<����/@CangKuMed>'
   );
end;

//����1=��Ʒ���ƣ�  ����2=��Ӧ99������ŵ��ֶΣ�  ����3=�ֶκŴ�2��ʼ������ ����4=�洢��Ʒ������ 
procedure CKMStorage(STItm : string; iVval, ihigh, iTKNum: integer);
var
  iGtv01, iGtv02, iTemp, iST0,iMed01, iMed02, iMed03: integer;
begin
   if not(This_Player.CheckAuthen(1,100)) then exit;
   iGtv01 := 0;
   //����ֿ�����ҩƷ�������� 
   for iTemp := 1 to ihigh do
   begin
      iST0 := This_Player.GetV(98,iTemp);
      //Ϊ����������Ʒ�������֮�󣨿�����-1����С1�������㡣 
      if iST0 < 0 then
      begin
         This_Player.SetV(98,iTemp,0);
         iST0 := 0;
      end;
      
      iGtv01 := iGtv01 + iST0;
   end;
   //������500��������
   if iGtv01 >= 500 then
   begin
      This_NPC.NpcDialog(This_Player,
      '���ҩƷ�ֿ������������ٴ洢ҩƷ�ˣ�\ \'+
      '|{cmd}<����/@CangKuMed>');
      Exit;
   end;
   //�����˵�ǰ��������Ʒ�����500�����ɴ棻 
   if iGtv01 > 500 - iTKNum then
   begin
      This_NPC.NpcDialog(This_Player,
      '���ҩƷ�ֿ�̫�����㲻���ٴ洢��ô���ҩƷ�ˣ�\ \'+
      '|{cmd}<����/@CangKuMed>');
      Exit;
   end;
   
   //��������ҩƷ���������� 
   if This_Player.GetBagItemCount(STItm) < iTKNum then
   begin
      This_NPC.NpcDialog(This_Player,
      '��û�пɴ洢��' + inttostr(iTKNum) + '��' + STItm + '����\ \'+
      '|{cmd}<����/@CangKuMed>');
      Exit;
   end else
   begin 
      //��ȡ��ǰ��ҩƷ������ 
      iGtv02 := This_Player.GetV(98,iVval);
      if iGtv02 = -1 then
      begin
         iGtv02 := 0;
      end;
      
      if This_Player.Take(STItm,iTKNum) then
      begin
         //ҩƷ�ۼӣ� 
         iGtv02 := iGtv02 + iTKNum;
         This_Player.SetV(98,iVval,iGtv02);
         iMed01 := This_Player.GetV(98,1);
         iMed02 := This_Player.GetV(98,2);
         iMed03 := This_Player.GetV(98,3);

         if iMed01 < 0 then
         begin
            iMed01 := 0;
         end;

         if iMed02 < 0 then
         begin
            iMed02 := 0;
         end;
   
         if iMed03 < 0 then
         begin
            iMed03 := 0;
         end;
         
         This_NPC.NpcDialog(This_Player,
         '����ҩƷ�ֿ�洢��ҩƷ����Ϊ����ҩƷ�ֿ�ɴ洢����Ϊ500����\'+
         '����Ҫ�洢ʲôҩƷ�أ�\'+
         '|����ҩ��       <' + inttostr(iMed01) + '/c=red>\'+ 
         '^����ѩ˪��     <' + inttostr(iMed02) + '/c=red>\'+
         '|ǿЧ̫��ˮ��   <' + inttostr(iMed03) + '/c=red>\'+
         '|{cmd}<��1ƿ����ҩ/@CKMed_sto01>      ^<��5ƿ����ҩ/@CKMed_sfv01>\'+ 
         '|{cmd}<��1������ѩ˪/@CKMed_sto02>    ^<��5������ѩ˪/@CKMed_sfv02>\'+
         '|{cmd}<��1ƿǿЧ̫��ˮ/@CKMed_sto03>  ^<��5ƿǿЧ̫��ˮ/@CKMed_sfv03>\'+          
         '|{cmd}<����/@CangKuMed>'
         );
      end;
   end;
end;

Procedure _CKMed_sto01;
begin
   CKMStorage('����ҩ',1,3,1);
end;

Procedure _CKMed_sto02;
begin
   CKMStorage('����ѩ˪',2,3,1);
end;

Procedure _CKMed_sto03;
begin
   CKMStorage('ǿЧ̫��ˮ',3,3,1); 
end;

Procedure _CKMed_sfv01;
begin
   CKMStorage('����ҩ',1,3,5);
end;

Procedure _CKMed_sfv02;
begin
   CKMStorage('����ѩ˪',2,3,5);
end;

Procedure _CKMed_sfv03;
begin
   CKMStorage('ǿЧ̫��ˮ',3,3,5); 
end;

//ҩƷ�ֿ⡪��ȡ�أ� 
Procedure _CKMed_GeBak;
var
  iMed01,iMed02, iMed03: integer;
begin
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);

   if iMed01 < 0 then
   begin
      iMed01 := 0;
   end;

   if iMed02 < 0 then
   begin
      iMed02 := 0;
   end;
   
   if iMed03 < 0 then
   begin
      iMed03 := 0;
   end;

   This_NPC.NpcDialog(This_Player,
   '����ҩƷ�ֿ�洢��ҩƷ����Ϊ����ҩƷ�ֿ�ɴ洢����Ϊ500����\'+
   '����Ҫȡ��ʲôҩƷ�أ�\'+
   '|����ҩ��       <' + inttostr(iMed01) + '/c=red>\'+ 
   '^����ѩ˪��     <' + inttostr(iMed02) + '/c=red>\'+
   '|ǿЧ̫��ˮ��   <' + inttostr(iMed03) + '/c=red>\'+
   '|{cmd}<ȡ1ƿ����ҩ/@CKMed_GeBak01>     ^<ȡ5ƿ����ҩ/@CKMed_GBfv01> \'+  
   '|{cmd}<ȡ1������ѩ˪/@CKMed_GeBak02>   ^<ȡ5������ѩ˪/@CKMed_GBfv02>\'+
   '|{cmd}<ȡ1ƿǿЧ̫��ˮ/@CKMed_GeBak03> ^<ȡ5ƿǿЧ̫��ˮ/@CKMed_GBfv03>\'+ 
   '|{cmd}<����/@CangKuMed>'
   );
end;

//����1=��Ʒ���ƣ�  ����2=��Ӧ99������ŵ��ֶΣ�  ����3=�ֶκŴ�2��ʼ������ ����4=ȡ����Ʒ������ 
procedure CKMGetBK(STItm : string; iVval,ihigh,iTKNum: integer);
var
  iGtv01, iGtv02, iTemp, iST0,iMed01, iMed02, iMed03: integer;
begin
   iGtv01 := 0;
   for iTemp := 1 to ihigh do
   begin
      iST0 := This_Player.GetV(98,iTemp);
      //Ϊ����������Ʒ�������֮�󣨿�����-1����С1�������㡣 
      if iST0 < 0 then
      begin
         This_Player.SetV(98,iTemp,0);
         iST0 := 0;
      end;
      
      iGtv01 := iGtv01 + iST0;
   end;
   
   //����ҩƷ�������ܴ���500�����ұ�5�ǲ��ܴ���800 
   if iGtv01 > 500 then
   begin
      Exit;
   end;
   
   //�ֿ�ҩƷ����С��0������ȡ 
   if iGtv01 <= 0 then
   begin
      This_NPC.NpcDialog(This_Player,
      '���ҩƷ�ֿ���û���κζ���������ȡ��ҩƷ��\ \'+
      '|{cmd}<����/@CangKuMed>');
      Exit;
   end;
   
   iGtv02 := This_Player.GetV(98,iVval);
   if iGtv02 < iTKNum then
   begin
      This_NPC.NpcDialog(This_Player,
      '���ҩƷ�ֿ���û�д洢�㹻��' + STItm + '������ȡ�ظ�ҩƷ��\ \'+
      '|{cmd}<����/@CangKuMed>');
      Exit;
   end;
   
   if This_Player.FreeBagNum < iTKNum then
   begin
      This_NPC.NpcDialog(This_Player,
      '��İ���̫����������֮������ȡ��ҩƷ��\ \'+
      '|{cmd}<����/@CangKuMed>');
      Exit;
   end else
   begin
      iGtv02 := iGtv02 - iTKNum;
      if This_Player.SetV(98,iVval,iGtv02) then
      begin
         This_Player.Give(STItm,iTKNum);
         iMed01 := This_Player.GetV(98,1);
         iMed02 := This_Player.GetV(98,2);
         iMed03 := This_Player.GetV(98,3);
         
         if iMed01 < 0 then
         begin
            iMed01 := 0;
         end;

         if iMed02 < 0 then
         begin
            iMed02 := 0;
         end;
   
         if iMed03 < 0 then
         begin
            iMed03 := 0;
         end;
         
         This_NPC.NpcDialog(This_Player,
         '����ҩƷ�ֿ�洢��ҩƷ����Ϊ����ҩƷ�ֿ�ɴ洢����Ϊ500����\'+
         '����Ҫȡ��ʲôҩƷ�أ�\'+
         '|����ҩ��       <' + inttostr(iMed01) + '/c=red>\'+ 
         '^����ѩ˪��     <' + inttostr(iMed02) + '/c=red>\'+
         '|ǿЧ̫��ˮ��   <' + inttostr(iMed03) + '/c=red>\'+
         '|{cmd}<ȡ1ƿ����ҩ/@CKMed_GeBak01>     ^<ȡ5ƿ����ҩ/@CKMed_GBfv01> \'+  
         '|{cmd}<ȡ1������ѩ˪/@CKMed_GeBak02>   ^<ȡ5������ѩ˪/@CKMed_GBfv02> \'+  
         '|{cmd}<ȡ1ƿǿЧ̫��ˮ/@CKMed_GeBak03> ^<ȡ5ƿǿЧ̫��ˮ/@CKMed_GBfv03>\'+  
         '|{cmd}<����/@CangKuMed>'
         );
      end;
   end; 
end;


Procedure _CKMed_GeBak01;
begin
   CKMGetBK('����ҩ',1,3,1);
end;

Procedure _CKMed_GeBak02;
begin
   CKMGetBK('����ѩ˪',2,3,1);
end;

Procedure _CKMed_GeBak03;
begin
   CKMGetBK('ǿЧ̫��ˮ',3,3,1);
end;

Procedure _CKMed_GBFv01;
begin
   CKMGetBK('����ҩ',1,3,5);
end;

Procedure _CKMed_GBFv02;
begin
   CKMGetBK('����ѩ˪',2,3,5);
end;

Procedure _CKMed_GBFv03;
begin
   CKMGetBK('ǿЧ̫��ˮ',3,3,5);
end;

//ҩƷ�ֿ�--ҩ��
Procedure _CangKuMedGZ1;
var
  iMed01,iMed02, iMed03: integer;
begin
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);

   if iMed01 < 0 then
   begin
      iMed01 := 0;
   end;

   if iMed02 < 0 then
   begin
      iMed02 := 0;
   end;
   
   if iMed03 < 0 then
   begin
      iMed03 := 0;
   end;    

   This_NPC.NpcDialog(This_Player,
   '����ҩƷ�ֿ�洢��ҩƷ����Ϊ����ҩƷ�ֿ�ɴ洢����Ϊ500����\'+
   '����Ҫ�洢ʲôҩƷ�أ�\'+
   '|����ҩ��       <' + inttostr(iMed01) + '/c=red>\'+ 
   '^����ѩ˪��     <' + inttostr(iMed02) + '/c=red>\'+
   '|ǿЧ̫��ˮ��   <' + inttostr(iMed03) + '/c=red>\'+ 
   '|{cmd}<�۳�1������ҩ�ޣ�����50ƿ���/@CKMed_sgz01>\'+
   '|{cmd}<�۳�1������ѩ˪�ޣ�����50�����/@CKMed_sgz02>\'+
   '|{cmd}<�۳�1��ǿЧ̫��ˮ�ޣ�����50ƿ���/@CKMed_sgz03>\'+
   '|{cmd}<����/@CangKuMed>'
   );
end;

Procedure _CangKuMedGZ2;
var
  iMed01,iMed02, iMed03: integer;
begin
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);

   if iMed01 < 0 then
   begin
      iMed01 := 0;
   end;

   if iMed02 < 0 then
   begin
      iMed02 := 0;
   end;
   
   if iMed03 < 0 then
   begin
      iMed03 := 0;
   end;

   This_NPC.NpcDialog(This_Player,
   '����ҩƷ�ֿ�洢��ҩƷ����Ϊ����ҩƷ�ֿ�ɴ洢����Ϊ500����\'+
   '����Ҫȡ��ʲôҩƷ�أ�\'+
   '|����ҩ��       <' + inttostr(iMed01) + '/c=red>\'+ 
   '^����ѩ˪��     <' + inttostr(iMed02) + '/c=red>\'+
   '|ǿЧ̫��ˮ��   <' + inttostr(iMed03) + '/c=red>\'+    
   '|{cmd}<50ƿ����ҩ���һ�1������ҩ��/@CKMed_GBgz01>\'+
   '|{cmd}<50������ѩ˪���һ�1������ѩ˪��/@CKMed_GBgz02>\'+
   '|{cmd}<50ƿǿЧ̫��ˮ���һ�1��ǿЧ̫��ˮ��/@CKMed_GBgz03>\'+
   '|{cmd}<����/@CangKuMed>' 
   );
end;
 

procedure _CKMed_sgz01;
var
iMed01,iMed02,iMed03,iGtv01,iGtv:integer;
begin
   if not(This_Player.CheckAuthen(1,100)) then exit;
   if This_Player.GetV(98,1) < 0 then This_Player.SetV(98,1,0);
   if This_Player.GetV(98,2) < 0 then This_Player.SetV(98,2,0);
   if This_Player.GetV(98,3) < 0 then This_Player.SetV(98,3,0);
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);
   iGtv01 := iMed01 + iMed02 + iMed03;
   iGtv := 500 - iGtv01;
   if iGtv >= 50 then
   begin 
     if This_Player.GetBagItemCount('����ҩ��') > 0 then
     begin
     This_Player.Take('����ҩ��',1); 
     This_Player.SetV(98,1,iMed01+50);   
     end else
     begin
     This_Player.PlayerNotice('����ҩ�޲��㡣',2);
     end;
   end else
   begin
   This_Player.PlayerNotice('ҩƷ�ֿ�������',2);
   end;  
   _CangKuMedGZ1;
end;

procedure _CKMed_sgz02;
var
iMed01,iMed02,iMed03,iGtv01,iGtv:integer;
begin
   if not(This_Player.CheckAuthen(1,100)) then exit;
   if This_Player.GetV(98,1) < 0 then This_Player.SetV(98,1,0);
   if This_Player.GetV(98,2) < 0 then This_Player.SetV(98,2,0);
   if This_Player.GetV(98,3) < 0 then This_Player.SetV(98,3,0);
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);
   iGtv01 := iMed01 + iMed02 + iMed03;
   iGtv := 500 - iGtv01;
   if iGtv >= 50 then
   begin 
     if This_Player.GetBagItemCount('����ѩ˪��') > 0 then
     begin
     This_Player.Take('����ѩ˪��',1); 
     This_Player.SetV(98,2,iMed02+50);   
     end else
     begin
     This_Player.PlayerNotice('����ѩ˪�޲��㡣',2);
     end;
   end else
   begin
   This_Player.PlayerNotice('ҩƷ�ֿ�������',2);
   end;  
    _CangKuMedGZ1;
end;

procedure _CKMed_sgz03;
var
iMed01,iMed02,iMed03,iGtv01,iGtv:integer;
begin
   if not(This_Player.CheckAuthen(1,100)) then exit;
   if This_Player.GetV(98,1) < 0 then This_Player.SetV(98,1,0);
   if This_Player.GetV(98,2) < 0 then This_Player.SetV(98,2,0);
   if This_Player.GetV(98,3) < 0 then This_Player.SetV(98,3,0);
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);
   iGtv01 := iMed01 + iMed02 + iMed03;
   iGtv := 500 - iGtv01;
   if iGtv >= 50 then
   begin 
     if This_Player.GetBagItemCount('ǿЧ̫��ˮ��') > 0 then
     begin
     This_Player.Take('ǿЧ̫��ˮ��',1); 
     This_Player.SetV(98,3,iMed03+50);   
     end else
     begin
     This_Player.PlayerNotice('ǿЧ̫��ˮ�޲��㡣',2);
     end;
   end else
   begin
   This_Player.PlayerNotice('ҩƷ�ֿ�������',2);
   end;  
    _CangKuMedGZ1;
end;

procedure _CKMed_GBgz01;
var
iMed01,iMed02,iMed03:integer;
begin
   if This_Player.GetV(98,1) < 0 then This_Player.SetV(98,1,0);
   if This_Player.GetV(98,2) < 0 then This_Player.SetV(98,2,0);
   if This_Player.GetV(98,3) < 0 then This_Player.SetV(98,3,0);
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);
   if iMed01 >= 50 then
   begin 
     if This_Player.FreeBagNum > 0 then
     begin
     This_Player.Give('����ҩ��',1); 
     This_Player.SetV(98,1,iMed01-50);   
     end else
     begin
     This_Player.PlayerNotice('�����ռ䲻�㡣',2);
     end;
   end else
   begin
   This_Player.PlayerNotice('����ҩ���㡣',2);
   end;  
   _CangKuMedGZ2;
end;

procedure _CKMed_GBgz02;
var
iMed01,iMed02,iMed03:integer;
begin
   if This_Player.GetV(98,1) < 0 then This_Player.SetV(98,1,0);
   if This_Player.GetV(98,2) < 0 then This_Player.SetV(98,2,0);
   if This_Player.GetV(98,3) < 0 then This_Player.SetV(98,3,0);
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);
   if iMed02 >= 50 then
   begin 
     if This_Player.FreeBagNum > 0 then
     begin
     This_Player.Give('����ѩ˪��',1); 
     This_Player.SetV(98,2,iMed02-50);   
     end else
     begin
     This_Player.PlayerNotice('�����ռ䲻�㡣',2);
     end;
   end else
   begin
   This_Player.PlayerNotice('����ѩ˪���㡣',2);
   end;  
   _CangKuMedGZ2;
end;

procedure _CKMed_GBgz03;
var
iMed01,iMed02,iMed03:integer;
begin
   if This_Player.GetV(98,1) < 0 then This_Player.SetV(98,1,0);
   if This_Player.GetV(98,2) < 0 then This_Player.SetV(98,2,0);
   if This_Player.GetV(98,3) < 0 then This_Player.SetV(98,3,0);
   iMed01 := This_Player.GetV(98,1);
   iMed02 := This_Player.GetV(98,2);
   iMed03 := This_Player.GetV(98,3);
   if iMed03 >= 50 then
   begin 
     if This_Player.FreeBagNum > 0 then
     begin
     This_Player.Give('ǿЧ̫��ˮ��',1); 
     This_Player.SetV(98,3,iMed03-50);   
     end else
     begin
     This_Player.PlayerNotice('�����ռ䲻�㡣',2);
     end;
   end else
   begin
   This_Player.PlayerNotice('ǿЧ̫��ˮ���㡣',2);
   end;  
   _CangKuMedGZ2;
end;

//=========================  ҩƷ�ֿ�   ======================================== 
  