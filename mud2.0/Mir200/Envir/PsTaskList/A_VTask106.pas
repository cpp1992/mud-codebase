{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ�Ӣ��  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 106; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-ǿ��֮·';

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
  Tem106 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem106 := This_Player.GetV(106,1);
   if This_Player.GetV(107,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if Tem106 < 0 then
   begin                  
      Result := TASK_STATE_UNRECEIVED;
   end
   else if (Tem106 >= 1) and (Tem106 <= 19) then
   begin
      Result := Task_State_Received;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem106_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem106_1 := This_Player.GetV(106,1);
  case Tem106_1 of      
     1  : Result := '�ҵ�<���������ϱ�(325,326)/CMD=10601>��';
     
     2  : Result := '�ҵ�<��ˮ���ݵĲ����ϰ�(29,24)/CMD=10602>��';
     
     3  : Result := 'ɱ��<��򼶴���������5ֻ/c=red>֮��\�������ˮ���ݵĲ��µ��ϰ塣\ˢ�ֵص㣺<��򼶴(34,196)/CMD=10611>';
     
     4  : Result := '���Ѿ�������5ֻ�����䣬���ȥ\��<��ˮ���ݵĲ����ϰ�(29,24)/CMD=10602>˵�������';
     
     5  : Result := '����ҩ���ϰ���Ҫ�Կ����˵Ķ�ҩ��\����ɱ��<��򼶴���3ֻ���/c=red>���ռ�����\֮��ȥ������ҩ���ϰ塣';
     
     6  : Result := '���Ѿ�ɱ����3ֻ��򼣬�ռ����˶��ң�\��ȥ��<����ҩ���ϰ�(360,337)/CMD=10604>��';
     
     7  : Result := '�żҲ����ϰ��ս�����ʳﱸ���˵�\С���⣬������ڰ�����취����ȥ\��<����ҩ���ϰ�(360,337)/CMD=10604>���������';
     
     8  : Result := '����<�żҲ����ϰ�(20,23)/CMD=10605>��Ϊ\��ˮ���ݵĲ����ϰ������£���ȥ����\��ʲô��Ҫ��æ�ġ�';
     
     9  : Result := '��ȥ���żҲ��ϵ��ϰ��ռ�<3���������Ƥ/c=red>��\��<��򼶴/C=red>�����кܶ������档\ \ˢ�ֵص㣺<��򼶴(142,93)/CMD=10606>';
     
     10 : Result := '���Ѿ��ռ�����3���������Ƥ��\������ǽ���<�żҲ����ϰ�(20,23)/CMD=10605>��';
     
     11 : Result := '<��������(6,13)/CMD=10607>Ҳ�����˲��ϲ����������\��ȥ�����ܲ��ܰ�����';
     
     12 : Result := 'ɱ��<5ֻ��򼶴��ǯ��/c=red>֮���ҵ�����������\ \ˢ�ֵص㣺<��򼶴(142,93)/CMD=10606>';
        
     13 : Result := '���Ѿ�ɱ����5ֻǯ�棬\���ȥ��<��������(6,13)/CMD=10607>��';
        
     14 : Result := '���������ϰ�ϣ���㻹�ܰ������\����ȥ<��򼶴/c=red>����ɱ��<5����ɫ����/c=red>��';
        
     15 : Result := '���Ѿ�ɱ����5����ɫ������\<���������ϰ�(314,75)/CMD=10608>���ڵ��Ÿ�л���ء�';
        
     16 : Result := '����ȥ�ҵ�<���������ϰ�(314,75)/CMD=10608>��';
        
     17 : Result := '����<����սʿ/c=red>�����������ݽ�ͷ���档\����սʿ����������<����������/c=red>';
        
     18 : Result := '���Ѿ������˰���սʿ��\��ȥ��<������ݽ�ͷ(329,260)/CMD=10609>���档';
        
     19 : Result := '�������𰵺�սʿ����ʿ��\<������ݽ�ͷ(329,260)/CMD=10609>һ�����кܶ໰����˵��\��ȥ�����ɡ�';
  end;
end;

//��ǰ����Ľ���
function GetTaskProgress(): string;
var
  DGTem, DGNum01, DGNum02, DGNum03 : integer; 
begin
   DGTem := This_Player.GetV(106,1);
   if DGTem = 4 then
   begin
      DGNum01 := This_Player.GetV(106, 2);
      if (DGNum01 > 0) and (DGNum01 < 5) then
        Result := '���Ѿ�������' + IntToStr(DGNum01) + '/5��������\ \';
   end else if DGTem = 5 then
   begin
      DGNum02 := This_Player.GetV(106,3);
      if (DGNum02 > 0) and (DGNum02 < 3) then
        Result := '���Ѿ������' + IntToStr(DGNum02) + '/3�����Ķ���\ \';
   end else if DGTem = 9 then
   begin
      DGNum03 := This_Player.GetV(106,4);
      if (DGNum03 > 0) and (DGNum03 < 3) then
        Result := '���Ѿ������' + IntToStr(DGNum03) + '/3�����Ƥ\ \';
   end else if DGTem = 12 then
   begin
      DGNum03 := This_Player.GetV(106,5);
      if (DGNum03 > 0) and (DGNum03 < 5) then
        Result := '���Ѿ�ɱ����' + IntToStr(DGNum03) + '/5ֻ��򼶴��ǯ��\ \';
   end else if DGTem = 14 then
   begin
      DGNum03 := This_Player.GetV(106,6);
      if (DGNum03 > 0) and (DGNum03 < 5) then
        Result := '���Ѿ�ɱ����' + IntToStr(DGNum03) + '/5ֻ��ɫ����\ \';
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
    10601  : This_Player.AutoGotoMap('3',325,326);
    10602  : This_Player.AutoGotoMap('D608',29,24);
    //10603  : This_Player.AutoGotoMap('',,);
    10604  : This_Player.AutoGotoMap('3',360,337);
    10605  : This_Player.AutoGotoMap('0149',20,23);
    10606  : This_Player.AutoGotoMap('3',142,93);
    10607  : This_Player.AutoGotoMap('3',329,316);
    10608  : This_Player.AutoGotoMap('1',312,76);
    10609  : This_Player.AutoGotoMap('0',329,260);
    10610  : This_Player.AutoGotoMap('3',336,331);
    10611  : This_Player.AutoGotoMap('D603',34,196);
   end;
end; 

begin
  //�������������� 
end.