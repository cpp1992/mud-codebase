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
const CurrentTaskID   = 10010; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_EVERYDAY;
const CurrentTaskTitle = '�ճ��-����ս(ÿ��13��50��16��50����)';

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
   Result := '��ÿ�������<���ػʹ��(339��335))/c=red>��\����ÿ������ս���\�����<ÿ��/c=red>��<14��/c=red>��<17��/c=red>���ţ�\���Ž���ʱ��Ϊ<13��50��/c=red>��<16��50��/c=red>��\ \'
             +'����򣺽�����ͼ�󣬶�ʱˢ����͹���\������������ͣ��Ϳɻ����Я���ı���';
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