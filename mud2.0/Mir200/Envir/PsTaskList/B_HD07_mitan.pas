{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ���ħ�����������  
* ��Ԫ���ߣ� 
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 10012; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_EVERYDAY;
const CurrentTaskTitle = '�ճ��-ÿ��̽������';

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
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Result := Task_State_Received; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
begin
   Result := '��ÿ�������<���ػʹ��(339��335))/c=red>��\����ÿ��̽����\ \����ݣ�\1-39����\ǰ��<��ˮ��������(26,27)/c=red>���ݽ�1000���\��������200000����\ \40-50����\ǰ��<��ħ�Ȱ��ߴ�����̽(32,22)/c=red>����ɱ��<5ֻ��Ұ��/c=red>\��������500000����\ \51-70����ǰ�����¹������̽(101,89)��\��������800000����';
end;



//��ǰ����Ľ���
function GetTaskProgress(): string;
begin
end; 

//���ű��п���֧�ֵ����� 
function DoTaskCommand(const value: string): Boolean;
begin 
end; 

begin
  //�������������� 
end.