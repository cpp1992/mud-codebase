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
const CurrentTaskID   = 10011; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_EVERYDAY;
const CurrentTaskTitle = '�ճ��-���ضᱦ(ÿ��18��30-19��00)';

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
   Result := '��ÿ�������<���ػʹ��(339��335))/c=red>��\���봳�ضᱦ��\ \����ݣ�\40�����Ͻ�ɫ��ÿ����Եݽ�1000��Ҳ���\�ʱ��Ϊÿ�յ�<18:30-19:00/c=red>��\���ع���7�㣬��������ò�����й��\Ȼ����ÿһ���<������/c=red>�ſ��Խ�����һ�㡣\'
             +'��7��Ϊ�ᱦ��ͼ��\�ʱ�����ǰ��5���ӱ��������ڶᱦ��ͼ�У�\������ֺ�2���Ӽȿɻ�á�\ \�м��ʱ������±��\<40����װ�ȸ߼�װ��/c=red>\<�׽���֣���Ѫ����/c=red>\<ȫϵ�вر�ͼ/c=red>\<47���¼����飬��ʿѱ����/c=red>\ \'
             +'������λ�ã�\һ�㿴���ˣ�(101,161)\���㿴���ˣ�(102,94)\���㿴���ˣ�(104,121)\�Ĳ㿴���ˣ�(48,84)\��㿴���ˣ�(52,51)\���㿴���ˣ�(51,50)\�߲��ͱ���ż��(37,52)';
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