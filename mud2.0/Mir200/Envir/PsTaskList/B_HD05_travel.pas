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
const CurrentTaskID   = 10009; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_EVERYDAY;
const CurrentTaskTitle = '�ճ��-ÿ��Ѳ������';

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
   Result := '��ÿ�������<ׯ԰�귨���м�(111��118)/c=red>��\��ȡÿ��Ѳ������\����������мҵ�����<����/c=red>��������\������Ѳ�Σ�\������ö��⽱���������顢Ѳ���ּ�\��Щ���мһ���Щ����Ҫ��\���Ҫ���ܹ���ö���Ľ���\Ѳ�ν����󣬿��Ե�ׯ԰���귨���мҴ�<���¿�ʼ/c=red>\ÿλ���мҶ�׫д���Լ���<Ѳ���ּ�/c=red>��\����ܹ��ռ��룬\���Ե�����һ��Ѳ���ߴ��һ�һ������Ľ�����\ \ÿ���0�㡢12�㡢20�㡢22�㣬\����չ��<Ѳ�ξ���/c=red>';
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