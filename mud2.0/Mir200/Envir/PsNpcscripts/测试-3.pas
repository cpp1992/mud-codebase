      {
*******************************************************************}

program Mir2;

procedure _shibao;
begin   
     if This_Player.MyLFnum >= 100 then
      begin
       if This_Player.FreeBagNum > 10 then
      
        begin
         This_Player.PsYBConsum(This_NPC,'YB_NewComeBag',20331,100,1);

         This_Player.Give('����ҩ��',10);
        end 
         else  
        begin
          This_Player.PlayerDialog(
         '�Բ��𣬰����ռ䲻�㣬��Ԥ��10�������ٴο�����'
         ); 
        end;
      end 
      else 
      begin
          This_Player.PlayerDialog(
          '�Բ�������Ԫ������100����\'
          ); 
      end;
end;


function YB_NewComeBag(price, num: Integer):boolean; //YB_NewComeBagΪ�Զ���ص��������ƣ��������Ϊ�̶���ʽ �������Ըı� 
begin
   result := true; 
   
end;




begin
  This_Npc.NpcDialog(This_Player,
    '��������Թ�������ҩ����PK�ر���\' +
    
    
    '|{cmd}<��ʹ��100Ԫ������10������ҩ/@shibao>\' +
    '|{cmd}<ȡ��/@main>\');



end.