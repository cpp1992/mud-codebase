{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ�����ľ���(1��)  
* ��Ԫ���ߣ�
* ժ    Ҫ��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 10006; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_EVERYDAY;
const CurrentTaskTitle = '�ճ��-���¶ᱦ';

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
   Result := '��ÿ�������<������ͱ���ż(108��96)/c=red>��\�μӵ��¶ᱦ���\ \�ʱ��Ϊ��\10��30��11��00\13��30��14��00\15��30��16��00\20��30��21��00\23��00��23��30\ \�ϸ��\���ϻʱ�����,ͨ��<������ħ�ؽ�(322,342)/c=red>��\Я��������Ӿ���ѡ���˻���ӽ�����¹����\����ͱ���ż������ᱦ��ͼ��\�ʱ�����ǰ��5���ӱ��������ڶᱦ��ͼ�У�\������ֺ�2���Ӽȿɻ�á�\ \�м��ʱ������±��\<40����װ�ȸ߼�װ��/c=red>\<�׽���֣���Ѫ����/c=red>\<ȫϵ�вر�ͼ/c=red>\<47���¼����飬��ʿѱ����/c=red>';
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