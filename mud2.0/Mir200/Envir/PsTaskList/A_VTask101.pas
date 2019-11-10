{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ�����ľ���(1��)  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 101; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-����ľ���';

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
  Tem101 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem101 := This_Player.GetV(101,1);
   if This_Player.GetV(102,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if (Tem101 <= 4) and (Tem101 >= 1) then
   begin
      Result := Task_State_Received;
   end
   else if (Tem101 < 1) and (This_Player.Level <= 35) then
   begin
      Result := Task_State_Received;
   end
   else
   begin
      Result := TASK_STATE_UNRECEIVED;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem101_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem101_1 := This_Player.GetV(101,1);
  if Tem101_1 < 1 then
  begin
     Result := '�����˵�̰�����ײд������������������\ս�����ӵ��귨��½��ÿ�����䡣\���ǿ������������ߣ������ڴ��ؽ���԰��\��ʿ����������������Σ��ʱ�̣� ����Ҫ�Ž�\��һ��Ϊ�˰�����ɳ�����ȥ�����Ա�\������ʹ�ߣ�<����(333,262)/CMD=4>��<�߽��(287,614)/CMD=5>��\<����ɽ��(647,623)/CMD=6>���ɣ�'; 
  end
  else if Tem101_1 = 1 then
  begin
     Result := 'ɱ������ļ�����¹��ͨ��ʹ��ALT+���\��ȡ�������ϵ��⣬Ȼ����������\��<����(314,272)/CMD=1>��<�߽��(290,601)/CMD=2>��\<����ɽ��(649,593)/CMD=3>������ȡ100��Һ�֧����\����ʹ�ߣ�<����(333,262)/CMD=4>��<�߽��(287,614)/CMD=5>��\<����ɽ��(647,623)/CMD=6>����'; 
  end
  else if Tem101_1 = 2 then
  begin
     Result := '����ȥ��ȥ��������Ա��<����(332,269)/CMD=7>��\<�߽��(282,618)/CMD=8>��<����ɽ��(643,626)/CMD=9>���Ƕ�\���ưɣ�˵���������кö������㡣';
  end
  else if (Tem101_1 = 3) or (Tem101_1 = 4) then
  begin
     Result := '����ѧϰ���ʼ���ܺ�\ȥ������ʹ�ߣ�<����(333,262)/CMD=4>��<�߽��(287,614)/CMD=5>��\<����ɽ��(647,623)/CMD=6>��ѧϰ�����γ̡�';
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
    1 : This_Player.AutoGotoMap('0',314,272);
    2 : This_Player.AutoGotoMap('0',290,601);
    3 : This_Player.AutoGotoMap('0',649,593);
    4 : This_Player.AutoGotoMap('0',333,262);
    5 : This_Player.AutoGotoMap('0',287,614);
    6 : This_Player.AutoGotoMap('0',647,623);
    7 : This_Player.AutoGotoMap('0',332,269);
    8 : This_Player.AutoGotoMap('0',282,618);
    9 : This_Player.AutoGotoMap('0',643,626);
  end;
end; 

begin
  //�������������� 
end.