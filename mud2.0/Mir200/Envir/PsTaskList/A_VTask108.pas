{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ����˺�����������  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 108; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-���˺�����������';

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
  Tem108 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem108 := This_Player.GetV(108,1);
   if This_Player.GetV(109,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if Tem108 < 0 then
   begin                  
      Result := TASK_STATE_UNRECEIVED;
   end
   else if (Tem108 >= 1) and (Tem108 <= 19) then
   begin
      Result := Task_State_Received;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem108_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem108_1 := This_Player.GetV(108,1);
  case Tem108_1 of      
    1  : Result := 'ȥ����<���˺�(347,335)/CMD=10801>�ɣ�\������Ӧ����ʵ��������������ѵġ�';
     
    2  : Result := 'ǰ��<ʯĹһ��/c=red>��ɱ��<5ֻ��Ұ��/c=red>�������˺����档\ \ˢ�ֵص㣺\<ʯĹһ��ˢ�µ�һ/CMD=10802>\ \|{cmd}<ʯĹһ��ˢ�µ��/CMD=10812>';
     
    3  : Result := '�������Ѿ�ɱ����5��Ұ��\�Ͽ��ȥ�����ص�<���˺�(347,335)/CMD=10801>�ɡ�';
     
    4  : Result := 'ǰ��<ʯĹһ��/c=red>��ɱ��<5ֻ��Ұ��/c=red>�������˺����档\ \ˢ�ֵص㣺\<ʯĹһ��ˢ�µ�һ/CMD=10802>\ \|{cmd}<ʯĹһ��ˢ�µ��/CMD=10812>';
     
    5  : Result := '�������Ѿ�ɱ����5��Ұ��\�Ͽ��ȥ�����ص�<���˺�(347,335)/CMD=10801>�ɡ�';
     
    6  : Result := '����<ʯĹ����/c=red>���ں�ɫ����������Ѱ�����˺�\���˵��ź  �\ \ˢ�ֵص㣺\<ʯĹ����ˢ�µ�һ/CMD=10803>\ \|{cmd}<ʯĹ����ˢ�µ��/CMD=10813>';
     
    7  : Result := '���Ѿ��ں�ɫ�����������ҵ����ź���\�Ͽ��ȥ�����ص�<���˺�(347,335)/CMD=10801>�ɣ�';
     
    8  : Result := '����<ʯĹ����/c=red>���ں�Ұ��������Ѱʣ�µĺ��ǡ�\ \ˢ�ֵص㣺\<ʯĹ����ˢ�µ�һ/CMD=10804>\<ʯĹ����ˢ�µ��/CMD=10814>';
     
    9  : Result := '���Ѿ��ں�Ұ��������ҵ���ʣ�µĺ��ǣ�\�Ͽ��ȥ�����ص�<���˺�(347,335)/CMD=10801>�ɡ�';
     
    10 : Result := '�����˺����Ű�ȫ��\�ʹ�<����ָ�ӹ�(336,331)/CMD=10805>����';
     
    11 : Result := '�ٴ�ǰ��ʯĹ��Ѱ�ҹ�������\ʯĹ���е�<�������ϰ�(23,27)/CMD=10806>��';
     
    12 : Result := '�������ϰ��и������Ϣ����ʯĹ����\��<�·����ϰ�(23,27)/CMD=10807>��';
        
    13 : Result := 'ǰ��<ʯĹ���/c=red>��ɱ��Ш�꣬\��ȡ�����Ķ�����ظ�ʯĹ���е��·����ϰ塣\ \ˢ�ֵص㣺\<ʯĹ���ˢ�µ�һ/CMD=10808>\<ʯĹ���ˢ�µ��/CMD=10815>';
        
    14 : Result := '���Ѿ���ʯĹ����ȡ�������Ķ���\���������ȥ����ʯĹ���е�<�·����ϰ�(23,27)/CMD=10807>��';
        
    15 : Result := '����Ϣ���ݸ�ʯĹ���е�\<���ε걣��Ա(23,27)/CMD=10809>�ɣ�\Ҳ������ȴһ׮��Ը';
        
    16 : Result := '���췵�����أ�����<���˺�(347,335)/CMD=10801>ʯĹ�����Ϣ��';
        
    17 : Result := '������򼶴��<�����ײ�/c=red>��ɱ��һֻ\<а��ǯ��(100,100)/c=red>�����ǯ���֮���͸����˺���\ \ˢ�ֵص㣺\<�����ײ�ˢ�µ�һ/CMD=10810>\<�����ײ�ˢ�µ��/CMD=10816>';
        
    18 : Result := '���Ѿ�ɱ��а��ǯ�棬�����ǯ��ǣ�\�Ͽ������������<���˺�(347,335)/CMD=10801>�ɣ�';
        
    19 : Result := '�������˺����Ƽ���ȥ�ҵ�<��ʦ(323,338)/CMD=10811>��';
  end;
end;

//��ǰ����Ľ���
function GetTaskProgress(): string;
var
  DGTem, DGNum01, DGNum02, DGNum03 : integer; 
begin
   DGTem := This_Player.GetV(108,1);
   if DGTem = 2 then
   begin
      DGNum01 := This_Player.GetV(108, 2);
      if (DGNum01 > 0) and (DGNum01 < 5) then
      begin
         Result := '���Ѿ�������' + IntToStr(DGNum01) + '/5ֻ��Ұ��\ \';
      end;
   end
   else if DGTem = 4 then
   begin
      DGNum02 := This_Player.GetV(108,3);
      if (DGNum02 > 0) and (DGNum02 < 5) then
      begin
         Result := '���Ѿ�������' + IntToStr(DGNum02) + '/5ֻ��Ұ��\ \';
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
    10801 : This_Player.AutoGotoMap('3',347,335);
    10802 : This_Player.AutoGotoMap('D711',201,203);
    10803 : This_Player.AutoGotoMap('D712',367,225);
    10804 : This_Player.AutoGotoMap('D713',34,190);
    10805 : This_Player.AutoGotoMap('3',336,331);
    10806 : This_Player.AutoGotoMap('D71650',20,30);
    10807 : This_Player.AutoGotoMap('D71651',20,30);
    10808 : This_Player.AutoGotoMap('D715',32,343);
    10809 : This_Player.AutoGotoMap('D71652',20,30);
    10810 : This_Player.AutoGotoMap('D606',13,28);
    10811 : This_Player.AutoGotoMap('3',323,338); 
    10812 : This_Player.AutoGotoMap('D711',251,41);
    10813 : This_Player.AutoGotoMap('D712',251,41);
    10814 : This_Player.AutoGotoMap('D713',251,41);
    10815 : This_Player.AutoGotoMap('D715',291,114);
    10816 : This_Player.AutoGotoMap('D606',67,76);
   end;
end; 

begin
  //�������������� 
end.