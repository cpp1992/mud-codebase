{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ���γ�Ϊ�귨��ʿ(10��)  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 103; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-̽��';

//�öβ����κ��޸� 
//********************************************************************
//��ǰ����ı�� 
function GetTaskID(): Integer;
begin
  Result := CurrentTaskID;   
end; 

//��ǰ���������
function GetTaskType(): Integer;
begin
  Result := CurrentTaskType;
end; 

//��ǰ����ı���
function GetTaskTitle(): string;
begin
  Result := CurrentTaskTitle; 
end; 
//********************************************************************


//�жϵ�ǰ���������Ҷ�����������״̬
function GetTaskState(): Integer;
var
  Tem103 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem103 := This_Player.GetV(103,1);
   if This_Player.GetV(104,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if Tem103 < 0 then
   begin                  
      Result := TASK_STATE_UNRECEIVED;
   end
   else if (Tem103 >= 1) and (Tem103 <= 9) then
   begin
      Result := Task_State_Received;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem103_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem103_1 := This_Player.GetV(103,1);
  case Tem103_1 of 
     1  :
     begin
        Result := '����ȥ����ɭ����ڴ���һ��<������(330,46)/CMD=1>��\�˽�һ������ɭ�ֵ��������˵����ɭ�ֵĹ���\�����ĸ��ӿ����ˣ���ʵ�ڲ��Ǹ�����Ϣ��';
     end;
     2  :
     begin
        Result := '���ó����׼��֮����붴Ѩ������\�ҵ�<ʰ����(242,262)/CMD=2>��ҪС��·����Щ\�������á�';
     end;
     3  :
     begin
        Result := '��Ԯ����������ʰ���ߣ�ɱ��<10������/c=red>��\��ɺ��ȥ���ʰ���ߡ�\ \ˢ�ֵص㣺\<����ˢ�µ�һ/CMD=6>\<����ˢ�µ��/CMD=8>';
     end;
     4  :
     begin
        Result := '���Ѿ�ɱ����10�����ã����ȥ��\<ʰ����(242,262)/CMD=2>��';
     end;
     5  :
     begin
        Result := '����ȥ����ɭ�ֵ��Ѱ��\<���������ϰ�(314,75)/CMD=3>�������˽�һ��\�ڰ�������Ӱ�죬ע�ⲻҪ��·;����ʧ�����ǡ�';
     end;
     6  :
     begin
        Result := '�����Ȱ������������ϰ壬ɱ��<10����ʬ/c=red>��\ȷ�����������ϰ�İ�ȫ��\ \ˢ�ֵص㣺\<��ʬˢ�µ�һ/CMD=7>\<��ʬˢ�µ��/CMD=9>';
     end;
     7  :
     begin
        Result := '���Ѿ�ɱ����10����ʬ��\���ȥ��<���������ϰ�(314,75)/CMD=3>��';
     end;
     8  :
     begin
        Result := '�������ٶȻص�����ȥ��<����ʹ��(332,262)/CMD=4>��\��̽��������㱨������������һ��Ҫ\����ӽ��������µ��޽���';
     end;
     9  :
     begin
        Result := '����ĵȼ��ﵽ23��ʱ��\��ǰ��<�����ϱ�(330,272)/CMD=5>����ȡ�µ�����';
     end;
  end;
end;

//��ǰ����Ľ���
function GetTaskProgress(): string;
var
  DGTem, DGNum01, DGNum02 : integer; 
begin
   DGTem := This_Player.GetV(103,1);
   if DGTem = 3 then
   begin
      DGNum01 := This_Player.GetV(103, 2);
      if (DGNum01 > 0) and (DGNum01 < 3) then
      begin
         Result := '���Ѿ�ɱ����' + IntToStr(DGNum01) + '/10������\ \';
      end;
   end
   else if DGTem = 6 then
   begin
      DGNum02 := This_Player.GetV(103,3);
      if (DGNum02 > 0) and (DGNum02 < 3) then
      begin
         Result := '���Ѿ�ɱ����' + IntToStr(DGNum02) + '/10����ʬ\ \';
      end;
   end; 
end; 

//���ű��п���֧�ֵ����� 
function DoTaskCommand(const value: string): Boolean;
var
  FiStr : integer;
begin 
  Result := True;
  FiStr := StrToIntDef(value,-1); 
  case FiStr of
    1  : This_Player.AutoGotoMap('0',330,46);
    2  : This_Player.AutoGotoMap('D011',242,262);
    3  : This_Player.AutoGotoMap('1',314,75);
    4  : This_Player.AutoGotoMap('0',332,262);
    5  : This_Player.AutoGotoMap('0',330,272);
    6  : This_Player.AutoGotoMap('D011',209,190);
    7  : This_Player.AutoGotoMap('D401',45,60);
    8  : This_Player.AutoGotoMap('D011',117,323);
    9  : This_Player.AutoGotoMap('D401',136,137);
  end;
end; 

begin
  //�������������� 
end.