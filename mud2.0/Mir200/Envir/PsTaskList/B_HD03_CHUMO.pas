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
const CurrentTaskID   = 10007; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_EVERYDAY;
const CurrentTaskTitle = '�ճ��-��ħ����';

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
   Result := '��ÿ�������<���ػʹ��(339��335)/c=red>��\��ȡÿ�ճ�ħ����\��һ�ֳ�ħ�������5�������У�\ÿ����������Ľ�����Խ��Խ�á�\ÿ��ֻ�����һ�ֵĳ�ħ����\ \���������\ǰ��ʯĹɱ��<10ֻ��Ұ��/c=red>\ǰ����ħ��ɱ��<20ֻ���ó�ǹ��/c=red>\ǰ�����ߴ���ɱ��<3ֻ��Ұ��/c=red>\ǰ�����˹�Ĺɱ��<15ֻ����/c=red>\ǰ������Ͽ��ɱ��<10ֻ��ħ֩��/c=red>\ǰ������ɱ��<15ֻ��/c=red>\ǰ������ɽ��ɱ��<5������/c=red>\ǰ������ɱ��<8ֻʳ�˻�/c=red>\ǰ�����׶�Ѩɱ��<2ֻ����֩��/c=red>\ǰ�������ײ�ɱ��<2ֻа��ǯ��/c=red>\ǰ��ħ������ɱ��<3ֻħ������/c=red>\ \����������ȡ������̫�ѣ�\Ҳ�ɻ���<50000���/c=red>��<���ػʹ��(339��335)/c=red>��\������ȡ����';
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