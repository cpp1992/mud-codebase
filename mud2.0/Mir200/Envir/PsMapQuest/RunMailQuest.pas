{******************************************************************

*******************************************************************}
program Mir2;


procedure PlayerCheckNewMail();
var Startday , PrzDay , P_lv , nowDay : integer;
begin    
  {if This_Player.GetV(11,11) <> 111 then
    begin
        if This_Player.Level >= 122 then
        begin
            This_Player.SetV(11,11,111);
            This_Player.NewFullMailEx('122������', '����+����+ľ��',1,120,0,'����|1/����|2/ľ��|99','2016/07/26 15:30:00');
            //This_Player.NewFullMailEx('122������', '����+����+ľ��',1,120,0,'����|1/����|2/ľ��|99','');
            //This_Player.PlayerNotice('�ʼ����ԣ�122����������*1������*2��ľ��*99',2);
        end;
    end;
         }
         
    //This_Player.PlayerNotice('��ɫ����ʱ�䣺' + floatTostr(This_Player.GetCreateTime) ,2);
    Startday := StrToIntDef(MirDateTimeToStr('yyyyMMdd' , This_Player.GetCreateTime) ,-1);
    P_lv := This_Player.Level;
    nowDay := StrToIntDef(MirDateTimeToStr('yyyyMMdd' , GetNow) ,-1);
  {  
    if This_Player.GetV(90,1) <> 222 then  
    begin
        if This_Player.Level >= 35 then
        begin
            This_Player.SetV(90,1,222); 
            This_Player.NewFullMailEx('35������', '�����㽱������' ,1,0,0,'����|1','');
        end;
    end;
    
    if This_Player.GetV(90,2) <> 222 then  
    begin
        if This_Player.Level >= 40 then
        begin
            This_Player.SetV(90,2,222); 
            This_Player.NewFullMailEx('40������', '40���������ı�����' ,1,100,0,'','');
        end;
    end;
    
    if This_Player.GetV(90,3) <> 222 then  
    begin
        if This_Player.Level >= 45 then
        begin
            This_Player.SetV(90,3,222); 
            This_Player.NewFullMailEx('45������', '45���������ı�����' ,1,0,0,'ľ��|2/����|2','');
        end;
    end;
    
    if This_Player.GetV(90,4) <> 222 then  
    begin
        if This_Player.Level >= 50 then
        begin
            This_Player.SetV(90,4,222); 
            This_Player.NewFullMailEx('����Ԥ��', 'һ����Ԥ���������滻' ,1,250,0,'ľ��|2/����|2','');
        end;
    end;
    
    if This_Player.GetV(90,5) <> 222 then  
    begin
        if This_Player.Level >= 55 then
        begin
            This_Player.SetV(90,5,222); 
            This_Player.NewFullMailEx('55������', 'ɶ��û��' ,1,0,0,'','');
        end;
    end;
    
    if This_Player.GetV(90,6) <> 222 then  
    begin
        if This_Player.Level >= 60 then
        begin
            This_Player.SetV(90,6,222); 
            This_Player.NewFullMailEx('60������', '���������͵�Ŷ' ,1,0,0,'ľ��|2|3/����|1|3/����|1|3','');     //����Ϊ�� 
        end;
    end;
    if This_Player.GetV(90,7) <> 222 then  
    begin
        if This_Player.Level >= 65 then
        begin
            This_Player.SetV(90,7,222); 
            This_Player.NewFullMailEx('65������', 'װ��������' ,1,0,0,'��ͳ����|1|3/����|1|3/ľ��|1|3','');
        end;
    end;    } 
   { 
    if This_Player.GetV(90,1) <> 111 then  
    begin
        This_Player.SetV(90,1,111);
        if Startday <= 20160731 then 
        This_Player.NewFullMailEx('���Ž��Ž���', '20160731ǰ���ſ���ȡ��������Ĵ���ʱ��Ϊ' + MirDateTimeToStr('yyyy-MM-dd hh:mm:ss' , This_Player.GetCreateTime) + '',1,0,0,'����|4','');
    end;
    
    if This_Player.GetV(90,2) <> 111 then
    begin
        
        if nowDay = 20160801 then
        begin
            This_Player.SetV(90,2,111);
            This_Player.NewFullMailEx('��¼����', '20160801���յ�¼��ȡ100w��ң����ڲ�����',1,1000000,0,'','2016/08/01 00:00:00');
        end;
    end;
    
    if This_Player.GetV(90,3) <> 111 then
    begin
        if (nowDay >= 20160802) and (nowDay <= 20160830) then
        begin        
            if This_Player.GuildName <> '' then
            begin
            This_Player.SetV(90,3,111);
            This_Player.NewFullMailEx('���ս���', '20160802-20160831���л��ɫ��ȡ�������ʼ�����ʱ��ʼ��δ20160802 0:00:00',1,300,0,'ף����|1/ף����|1/������Ӿ���|99/ף����|1/ף����|1','2016/08/01 00:00:00');
            end;
        end;
    end;
    
    if This_Player.GetV(90,4) <> 111 then
    begin
        if (nowDay >= 20160802) and (nowDay <= 20160830) then
        begin
            if This_Player.GetSkillLevelExt('ʨ�Ӻ�',false) >= 0 then
            begin
                //This_Player.PlayerNotice('���ܷ���Ҫ��',2);
            
                
                if (This_Player.Gender = 0) then
                begin  
                    //This_Player.PlayerNotice('�Ա����Ҫ��',2);
                    if (This_Player.IsCastle) then
                    begin 
                        //This_Player.PlayerNotice('ɳ�Ϳ˷���Ҫ��',2);
                        if (This_Player.PeiouName <> '') then
                        begin
                            //This_Player.PlayerNotice('��ż����Ҫ��',2);
                            if (This_Player.Job = 0) then
                            begin 
                                //This_Player.PlayerNotice('ְҵ����Ҫ��',2);
                                if (P_lv >= 25) and (P_lv <= 35) then
                                begin
                                //This_Player.PlayerNotice('�ȼ�����Ҫ��',2);
                                This_Player.SetV(90,4,111);
                                This_Player.NewFullMailEx('�����ж�', '25-35���У�ɳ�Ϳˣ��ѻ飬սʿ��ʨ�Ӻ𣬹���ɶ���������ٿ�������̫��᲻�ỻ��',1,0,0,'','2016/08/01 00:00:00');
                                end;
                            end;
                        end;
                    end;
                end;
            end;  
        end;
    end;
      }
end;


begin
end.