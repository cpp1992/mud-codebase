{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ�����ָ�ӹٵ�����  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 107; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-����ָ�ӹٵ�����';

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
  Tem107 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem107 := This_Player.GetV(107,1);
   if This_Player.GetV(108,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if Tem107 < 0 then
   begin                  
      Result := TASK_STATE_UNRECEIVED;
   end
   else if (Tem107 >= 1) and (Tem107 <= 12) then
   begin
      Result := Task_State_Received;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem107_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem107_1 := This_Player.GetV(107,1);
  case Tem107_1 of      
        1  : Result := '��ݽ�ͷ�����Ƽ�����<����ָ�ӹ�(336,331)/CMD=10701>��\���ȥ�����ɡ�';
     
        2  : Result := '�ڵ���һ����פ��15���ӣ�ʱ����������\��ֱ���ͻ����أ�ʱ�����뿪�õ�ͼ\������ʧ�ܡ�ע�⣬���������ᱻ\ֱ�Ӵ��͹�ȥ��';
     
        3  : Result := '���Ѿ��ڵ���һ�����ɹ�פ����15���ӣ�\���ȥ��<����ָ�ӹ�(336,331)/CMD=10701>���档';
     
        4  : Result := '�ڵ���һ�㱱פ��15���ӣ�ʱ����������\��ֱ���ͻ����أ�ʱ�����뿪�õ�ͼ\������ʧ�ܡ�';
     
        5  : Result := '���Ѿ��ڵ���һ�㱱�ɹ�פ����15���ӣ�\���ȥ��<����ָ�ӹ�(336,331)/CMD=10701>���档';
     
        6  : Result := '�ڿֲ��ռ�פ��15���ӣ�ʱ����������\��ֱ���ͻ����أ�ʱ�����뿪�õ�ͼ\������ʧ�ܡ�';
     
        7  : Result := '���Ѿ��ڿֲ��ռ�ɹ�פ����15���ӣ�\���ȥ��<����ָ�ӹ�(336,331)/CMD=10701>���档';
     
        8  : Result := '��һ����פ��15���ӣ�ʱ����������\��ֱ���ͻ����أ�ʱ�����뿪�õ�ͼ\������ʧ�ܡ�';
     
        9  : Result := '���Ѿ���һ����ɹ�פ����15���ӣ�\���ȥ��<����ָ�ӹ�(336,331)/CMD=10701>���档';
     
        10 : Result := '��ȥ��<�������(27,33)/CMD=10702>������ָ�ӹٰ����Ƽ����˹�����';
     
        11 : Result := '���㳢��ȥ����һ���лᣬ\Ȼ���ȥ��<�������(27,33)/CMD=10702>��';
     
        12 : Result := '����<����ָ�ӹ�/CMD=10701>���Ѿ�ͨ���˿��飬\������Я�㣡';
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
    10701  : This_Player.AutoGotoMap('3',336,331);
    10702  : This_Player.AutoGotoMap('0122',27,33);
   end;
end; 

begin
  //�������������� 
end.