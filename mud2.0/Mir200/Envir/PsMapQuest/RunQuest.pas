program Mir2;

{$I ActiveValidateCom.pas}
// @AddDrug~~1
//
//add(x)

function UseYB(nType, nNum: Integer): Boolean;
begin
  Result := True;
end;

function UseLF(nType, nNum: Integer): Boolean;
begin
  Result := True;
end;  

procedure SetAwardCodeCDTime();
var
d1 , d2 , d3 : integer;
s1 , td : double;
temp_2 : integer;
begin
      s1 := GetNow;
      d2 := This_Player.GetS(23,1);
      //��getnow�ĸ�����ת��Ϊ���ͽ��б��棻 

      td := ConvertDBToDateTime(d2);
      
      d3 := minusDataTime(s1,td);
      
      temp_2 := This_Player.GetS(23,2);
      
      
      if temp_2 <0 then temp_2 := 0;
      
      if (d3 <= 300)  then
      begin
         This_Player.SetS(23,2,temp_2 + 1);
         This_Player.PlayerNotice('���������������' + inttostr(temp_2 + 1) + '/3��!',0);
      end 
      else  
      begin                     
          This_Player.SetS(23,1, ConvertDateTimeToDB(s1));
          This_Player.SetS(23,2,1);
      end;
end; 
//����
procedure AwardCodeExecCallBack(ExecRes: Integer; const CodeStr: string; AwardCodeType, ActiveParam: Integer);
begin
  //AWARDCODE_EXEC_ERROR        = 0;
  //AWARDCODE_EXEC_QUERY        = 1;
  //AWARDCODE_EXEC_UPDATE       = 2;
  //AWARDCODE_EXEC_ADD          = 3;
  //AWARDCODE_EXEC_DEL          = 4;  
  //
  //This_Player.PlayerNotice('ExecRes��' + inttostr(ExecRes) + '��',0);  
  //This_Player.PlayerNotice('AwardCodeType��' + inttostr(AwardCodeType) + '��',0);  
  //This_Player.PlayerNotice('ActiveParam��' + inttostr(ActiveParam) + '��',0);  
  case ExecRes of
       0 : 
       begin
           SetAwardCodeCDTime();
           This_Player.PlayerNotice('������Ч!',0);
           
       end;
       1 : 
       begin 
           if ActiveParam = 1 then
           begin
           //This_Player.PlayerNotice('׼������' + inttostr(AwardCodeType) + 'Ԫ����',0);  

           //This_Player.PlayerNotice('��ϲ����' + inttostr(AwardCodeType) + 'Ԫ����',0);  
           This_Player.SetAwardCodeActiveParam(CodeStr, -1);
           
           end else
           This_Player.PlayerNotice('�ÿ�����ʹ�ã�',0);
       end;
       2 : 
       begin
          This_Player.ScriptRequestAddYBNum(AwardCodeType);
          This_Player.PlayerNotice('���ܶһ��ɹ���',0);  
          This_Player.SetS(23,1,0);
          This_Player.SetS(23,2,0);         
       end;
       5 : This_Player.PlayerNotice('���ܲ���ʧ��!',0);
   end;   
end;


//��������
procedure PlayerExpLevelUp();
var
  iLev : integer;
begin
   iLev := This_Player.Level;
   
   { case iLev of
       7:
       begin
           case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('��������',1);
                   This_Player.GiveBindItem('ħѪʯ(С)',1);
                   
               end;
               1 : 
               begin
                   This_Player.Give('������',1);
                   This_Player.GiveBindItem('ħѪʯ(С)',1);                 
               end;
               2 : 
               begin
                   
                   This_Player.Give('������',1);
                   This_Player.Give('������ս��',1);
                   This_Player.GiveBindItem('ħѪʯ(С)',1);
               end;
           end;
       end;
       15:
       begin
           case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('�˻�',1);
                   This_Player.Give('��ɱ����',1);
                   if This_Player.Gender = 0 then
                   This_Player.Give('���Ϳ���(��)',1)
                   else
                   This_Player.Give('���Ϳ���(Ů)',1);
               end;
               1 : 
               begin
                   This_Player.Give('����',1);
                   This_Player.Give('�׵���',1);
                   if This_Player.Gender = 0 then
                   This_Player.Give('���Ϳ���(��)',1)
                   else
                   This_Player.Give('���Ϳ���(Ů)',1);
               end;
               2 : 
               begin
                   This_Player.Give('����',1);
                   This_Player.Give('�����',1);
                   This_Player.GiveBindItem('���������',2);
                   if This_Player.Gender = 0 then
                   This_Player.Give('���Ϳ���(��)',1)
                   else
                   This_Player.Give('���Ϳ���(Ů)',1);
               end;
           end;
       end;
       22:
       begin
            case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('ն��',1);
                   if This_Player.Gender = 0 then
                   This_Player.Give('�ؿ���(��)',1)
                   else
                   This_Player.Give('�ؿ���(Ů)',1);
               end;
               1 : 
               begin
                   This_Player.Give('����',1);
                   if This_Player.Gender = 0 then
                   This_Player.Give('ħ������(��)',1)
                   else
                   This_Player.Give('ħ������(Ů)',1);
               end;
               2 : 
               begin
                   This_Player.Give('��ħ',1);
                   if This_Player.Gender = 0 then
                   This_Player.Give('���ս��(��)',1)
                   else
                   This_Player.Give('���ս��(Ů)',1);
               end;
           end;
       end;
       26:
       begin
           case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('��ʿͷ��',1);
                   This_Player.Give('���������',1);
                   This_Player.Give('��������',2);
                   This_Player.Give('ɺ����ָ',2);
               end;
               1 : 
               begin
                   This_Player.Give('��ʿͷ��',1);
                   This_Player.Give('�Ŵ�',1);
                   This_Player.Give('��̴����',2);
                   This_Player.Give('������ħ��ָ',2);
               end;
               2 : 
               begin
                   This_Player.Give('��ʿͷ��',1);
                   This_Player.Give('���',1);
                   This_Player.Give('��ʿ����',2);
                   This_Player.Give('������ħ��ָ',2);
               end;
           end;
       end; }
   end;
 {  case iLev of
     51 : 
       begin
          This_Player.SetV(111,51,1);                           //�ӳɳ�ƪ���׽�ƾ֤
          //This_Player.AddTaskToUIList(1051);
          This_Player.UpdateTaskDetail(1051,1);
          //#This_Player.AddTaskToUIList(1055);
       end;
     46 : 
       begin
          This_Player.SetV(111,47,1);                           //�ӳɳ�ƪ����Ѫ��ʿ
          //This_Player.AddTaskToUIList(1047);
          //This_Player.AddTaskToUIList(1046);
          This_Player.UpdateTaskDetail(1047,0);
          //#This_Player.AddTaskToUIList(1051);
       end; 
     35 :
       begin
          This_Player.SetV(111,35,1);                           //�ӳɳ�ƪ��̽���ر���
          //This_Player.AddTaskToUIList(1035);
          This_Player.UpdateTaskDetail(1035,1);
          //#This_Player.AddTaskToUIList(1047);
       end;        
     22 : 
       begin
          This_Player.SetV(111,22,1);                           //�ӳɳ�ƪ����������
          //This_Player.AddTaskToUIList(1022);
          This_Player.UpdateTaskDetail(1022,1);
          //#This_Player.AddTaskToUIList(1035);
       end;
     15 : 
       begin
          This_Player.SetV(111,15,1);                           //�ӳɳ�ƪ�����ߵ�����
          //This_Player.AddTaskToUIList(1015);
          This_Player.UpdateTaskDetail(1015,1);
          //#This_Player.AddTaskToUIList(1022);
       end;
     8  :
       begin
          //This_Player.SetV(111,8,1);                           //�ӳɳ�ƪ��ħ����ܵ�
          This_Player.SetV(111,7,1);                           //�ӳɳ�ƪ�����Ѱ��
          This_Player.SetV(111,6,1);                           //�ӳɳ�ƪ������ׯ԰
          //This_Player.AddTaskToUIList(1008);
          //This_Player.AddTaskToUIList(1007);
          //This_Player.AddTaskToUIList(1006);
          This_Player.UpdateTaskDetail(1008,1);
          This_Player.UpdateTaskDetail(1007,0);
          This_Player.UpdateTaskDetail(1006,0);
          //#This_Player.AddTaskToUIList(1015);
       end;
     4 : 
       begin
          This_Player.SetV(111,4,1);                            //�ӳɳ�ƪ�����ִ����
          //This_Player.AddTaskToUIList(1004);
          This_Player.UpdateTaskDetail(1004,1);
          //#This_Player.AddTaskToUIList(1006);
          //#This_Player.AddTaskToUIList(1007);
          //This_Player.AddTaskToUIList(1008); 
       end;
     3 : 
       begin
          This_Player.SetV(111,3,1);                            //�ӳɳ�ƪ����ʦ����
          //This_Player.AddTaskToUIList(1003);
          This_Player.UpdateTaskDetail(1003,1);
          //#This_Player.AddTaskToUIList(1004);
       end;
     2 : 
       begin
          This_Player.SetV(111,2,1);                            //�ӳɳ�ƪ��Ѱ������ʦ
          This_Player.UpdateTaskDetail(1002,0);
          //#This_Player.AddTaskToUIList(1003);
       end;
     1 :
       begin
          //#This_Player.AddTaskToUIList(1002);
       end;
   end;   }
end;                             

//�����ڹ�����
procedure PlayerForceLevelUp();
begin

end;

//Ӣ������
procedure HeroExpLevelUp();
begin

end;

//Ӣ���ڹ�����
procedure HeroForceLevelUp();
begin

end;
//��Ծ��ϵͳ 
procedure PlayerActivePoint(paytape,payNO,PayNUM:integer;PayName:string);
var
addPoint:integer;
begin

    
end;

procedure PlayerActiveWithMap(MapName:string);
begin

end;

procedure PlayerActiveValidate;
begin
 
end;

procedure OpenTimeWithMap(MapName:string);
begin

end;

begin

end.