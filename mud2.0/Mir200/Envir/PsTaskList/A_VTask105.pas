{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ�����ȡ��  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 105; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-����ȡ��';

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
  Tem105 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem105 := This_Player.GetV(105,1);
   if This_Player.GetV(106,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if Tem105 < 0 then
   begin                  
      Result := TASK_STATE_UNRECEIVED;
   end
   else if (Tem105 >= 1) and (Tem105 <= 10) then
   begin
      Result := Task_State_Received;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem105_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem105_1 := This_Player.GetV(105,1);
  if ( Tem105_1 <= 1 ) and ( This_Player.GetV(104,1) = 100 )  then
  begin
     Result := '����������������Ѱ�ҵ�һֱ\���ظ�λ��<��������ͽ(52,53)/CMD=101>��';
  end else
  begin
     case Tem105_1 of      
        1  : Result := '��<�����������/c=red>פ��<10����/c=red>��ʱ��һ����\�ᱻ�ͻذ�ȫ�ı��棬Ҫȷ���Լ��İ�ȫ��\ \פ�صص㣺<�����������/CMD=105>';
     
        2  : Result := '���Ѿ������פ�����񣬿�ȥ��<�����ϱ�(331,268)/CMD=106>��';
     
        3  : Result := '�����������ҵ�<��������ͽ(52,53)/CMD=101>��\�����յ������ｫ��ȳ�����';
     
        4  : Result := '���ص���ͽ�ж����㣬����������\��<������ʿ3��/c=red>��\ \';
     
        5  : Result := '���Ѿ�������3��������ʿ��\��ȥ��<��������ͽ(52,53)/CMD=101>��';
     
        6  : Result := '�������İ�������ͽ��\����ڶ�������<����ս��3��/c=red>��';
     
        7  : Result := '���Ѿ�������3������ս����\��ȥ��<��������ͽ(52,53)/CMD=101>��';
     
        8  : Result := '���һ�����Ĺ������ˣ�\һ��Ҫ�������<��������3��/c=red>��';
     
        9  : Result := '���Ѿ�������3���������꣬\���ȥ��<��������ͽ(52,53)/CMD=101>��';
     
        10 : Result := '���������ж���������������\����<�����ŵ�����(223,274)/CMD=102>��';
     end;
  end;
end;

//��ǰ����Ľ���
function GetTaskProgress(): string;
var
  DGTem, DGNum01, DGNum02, DGNum03 : integer; 
begin
   DGTem := This_Player.GetV(105,1);
   if DGTem = 4 then
   begin
      DGNum01 := This_Player.GetV(105, 2);
      if (DGNum01 > 0) and (DGNum01 < 3) then
      begin
         Result := '���Ѿ�������' + IntToStr(DGNum01) + '/3��������ʿ\ \';
      end;
   end
   else if DGTem = 6 then
   begin
      DGNum02 := This_Player.GetV(105,3);
      if (DGNum02 > 0) and (DGNum02 < 3) then
      begin
         Result := '���Ѿ�������' + IntToStr(DGNum02) + '/3������ս��\ \';
      end;
   end
   else if DGTem = 8 then
   begin
      DGNum03 := This_Player.GetV(105,4);
      if (DGNum03 > 0) and (DGNum03 < 3) then
      begin
         Result := '���Ѿ�������' + IntToStr(DGNum03) + '/3����������\ \';
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
    101  : This_Player.AutoGotoMap('D024',52,53);
    102  : This_Player.AutoGotoMap('11',223,274);
    103  : This_Player.AutoGotoMap('D024',22,23);
    104  : This_Player.AutoGotoMap('D022',246,202);
    105  : This_Player.AutoGotoMap('D023',48,362);
    106  : This_Player.AutoGotoMap('0',331,268);
  end;
end; 

begin
  //�������������� 
end.