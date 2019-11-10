{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ��������������  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 104; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-�������������';

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
  Tem104 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem104 := This_Player.GetV(104,1);
   if This_Player.GetV(105,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if Tem104 < 0 then
   begin                  
      Result := TASK_STATE_UNRECEIVED;
   end
   else if (Tem104 >= 1) and (Tem104 <= 10) then
   begin
      Result := Task_State_Received;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem104_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem104_1 := This_Player.GetV(104,1);
  case Tem104_1 of 
     1  :
     begin
        Result := 'Ѱ��<�ϼ�ҩ���ϰ�(310,83)/CMD=1>�����������ǵ�\����̽�ӣ���ȥЭ������һ�°ɣ�';
     end;
     2  :
     begin
        Result := 'ɱ��<ɽ������/c=red>����ȡ2�����õ��鱨\����ϼ�ҩ���ϰ屨�棬ҪС����Щ����\��Ҫ������ʯ���ˡ�\ \ˢ�ֵص㣺\<ɽ������ˢ�µ�һ(42,42)/CMD=3>\<ɽ������ˢ�µ��(68,27)/CMD=6>';
     end;
     3  :
     begin
        Result := '���Ѿ���ȡ2�����õ��鱨��\���ȥ��<�ϼ�ҩ���ϰ�(310,83)/CMD=1>����ɡ�';
     end;
     4  :
     begin
        Result := 'ɱ��3ֻ������ϼ�ҩ���ϰ屨�棬\��������ǿ��Ի�����������ҩˮ�ġ�\��Щ��澭��������<��������һ��/c=red>��<����/c=red>\ \ˢ�ֵص㣺<��������һ��/CMD=4>��<����/CMD=5>';
     end;
     5  :
     begin
        Result := '���Ѿ�ɱ����3ֻ��棬\���ȥ��<�ϼ�ҩ���ϰ�(310,83)/CMD=1>����ɡ�';
     end;
     6  :
     begin
        Result := 'Ī�������ҩ���ϰ壬��֪����ʲô����\��Ҫȥ��<���������ϰ�(314,75)/CMD=2>��';
     end;
     7  :
     begin
        Result := '�ռ�����2�ݡ���2�ݺ�\�͸�<���������ϰ�(314,75)/CMD=2>������Ҳ���\��ȥ�չ����߽�����';
     end;
     8  :
     begin
        Result := '���ڷ����ƽ���鱨�ˣ�\�Ͽ�ȥ�ҵ�<�ϼ�ҩ���ϰ�(310,83)/CMD=1>̽���鱨��';
     end;
     9  :
     begin
        Result := '��������սʿ���ռ�3��ľ�Ϻ���ϼ������ϰ�\���棬ҪС����Щ����սʿ��ʮ��Σ�ա�\ <����սʿ/c=red>����������<��������һ��/c=red>��<����/c=red>��\ \ˢ�ֵص㣺<��������һ��/CMD=4>��<����/CMD=5>';
     end;
     10 :
     begin
        Result := '���Ѿ��ռ�����3��ľ�ϣ�\��ȥ��<�ϼ�ҩ���ϰ�(310,83)/CMD=1>�ɡ�';
     end;
  end;
end;

//��ǰ����Ľ���
function GetTaskProgress(): string;
var
  DGTem, DGNum01, DGNum02, DGNum03 : integer; 
begin
   DGTem := This_Player.GetV(104,1);
   if DGTem = 2 then
   begin
      DGNum01 := This_Player.GetV(104, 2);
      if (DGNum01 > 0) and (DGNum01 < 3) then
      begin
         Result := '���Ѿ���ȡ��' + IntToStr(DGNum01) + '/3�����õ��鱨\ \';
      end;
   end
   else if DGTem = 4 then
   begin
      DGNum02 := This_Player.GetV(104,3);
      if (DGNum02 > 0) and (DGNum02 < 3) then
      begin
         Result := '���Ѿ�ɱ����' + IntToStr(DGNum02) + '/3ֻ���\ \';
      end;
   end
   else if DGTem = 9 then
   begin
      DGNum03 := This_Player.GetV(104,4);
      if (DGNum03 > 0) and (DGNum03 < 3) then
      begin
         Result := '���Ѿ��ռ�����' + IntToStr(DGNum03) + '/3��ľ��\ \';
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
    1  : This_Player.AutoGotoMap('1',310,83);
    2  : This_Player.AutoGotoMap('1',314,75);
    3  : This_Player.AutoGotoMap('D021',42,42);
    4  : This_Player.AutoGotoMap('D022',340,358);
    5  : This_Player.AutoGotoMap('D023',199,196);
    6  : This_Player.AutoGotoMap('D021',68,27);
  end;
end; 

begin
  //�������������� 
end.