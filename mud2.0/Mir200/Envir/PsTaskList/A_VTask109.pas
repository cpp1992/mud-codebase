{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ��ڹ�������  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 109; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-��ʦ������';

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
  Tem109 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem109 := This_Player.GetV(109,1);
   if This_Player.GetV(110,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if Tem109 < 0 then
   begin                  
      Result := TASK_STATE_UNRECEIVED;
   end
   else if (Tem109 >= 1) and (Tem109 <= 10) then
   begin
      Result := Task_State_Received;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem109_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem109_1 := This_Player.GetV(109,1);
  case Tem109_1 of      
    1  : Result := '|{cmd}<��ʦ(323,338)/CMD=10901>��֪����Լ��ܵ�\��Ϥ�̶ȣ����ȥ����������������';
     
    2  : Result := '����ر���������ܣ���Ϊ��ʦ����һ��\Ǭ���';
     
    3  : Result := '����ر���������ܣ���Ϊ��ʦ����һ��\Ǭ���';
     
    4  : Result := 'ȥ����<��������(5,10)/CMD=10902>�ɣ�\���������ܸ���������ʶ��';
     
    5  : Result := '��������������������͵�<ɳ�Ϳ�������(6,19)/CMD=10903>��';
     
    6  : Result := '�������Ļ��ﵥ����ȥ<ɳ�Ϳ˲����ϰ�(13,7)/CMD=10904>����';
     
    7  : Result := '����һ��<ɳ�Ϳ�������(6,19)/CMD=10903>��\�������ϰ�ĺ������͹�ȥ�������̡�';
     
    8  : Result := 'ȥ��<����ָ�ӹ�(336,331)/CMD=10905>�ɣ�\������Ҫ����ϢҪ�����㡣';
    
    9  : Result := '����һ��Ҫȥ����һ���лᣬȻ��\<����ָ�ӹ�(336,331)/CMD=10905>���������Ҫ����Ϣ��';
    
    10 : Result := '��ϲ���Ѿ������ָ�ӹٽ����������'; 
  end;
end;

//��ǰ����Ľ���
function GetTaskProgress(): string;
begin
end;  

//���ű��п���֧�ֵ����� 
function DoTaskCommand(const value: string): Boolean;
var
  FiStr : integer;
begin 
   Result := True;
   FiStr := StrToIntDef(value,-1); 
   case FiStr of
    10901 : This_Player.AutoGotoMap('3',323,338);
    10902 : This_Player.AutoGotoMap('3',329,315);
    10903 : This_Player.AutoGotoMap('0151',6,19);
    10904 : This_Player.AutoGotoMap('0155',11,14);
    10905 : This_Player.AutoGotoMap('3',336,331);
   end;
end; 

begin
  //�������������� 
end.