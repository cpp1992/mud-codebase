{******************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ���γ�Ϊ�귨��ʿ(10��)  
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program Mir2;
{$I common.pas}

//�������������,ÿ�������Ӧ��ͬ�������ţ�����������ظ� 
const CurrentTaskID   = 102; 
//TASK_TYPE_MAIN      ��������Ϊ����
//TASK_TYPE_SUB       ��������Ϊ֧��
//TASK_TYPE_EVERYDAY  ��������Ϊÿ��
const CurrentTaskType = TASK_TYPE_MAIN;
const CurrentTaskTitle = '��������-��γ�Ϊ�귨��ʿ';

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
  Tem102 : integer;
begin
   //��������п���ʹ�� This_Player
   //TASK_STATE_UNRECEIVED   //����״̬Ϊδ�ӵ�ǰ����
   //TASK_STATE_RECEIVED     //����״̬Ϊ�ѽӵ�ǰ����
   //TASK_STATE_FINISHED     //����״̬Ϊ����ɵ�ǰ����
   Tem102 := This_Player.GetV(102,1);
   if This_Player.GetV(103,1) >= 1 then
   begin
      Result := TASK_STATE_FINISHED;
   end
   else if Tem102 < 0 then
   begin                  
      Result := TASK_STATE_UNRECEIVED;
   end
   else if (Tem102 >= 1) and (Tem102 <= 13) then
   begin
      Result := Task_State_Received;
   end; 
end;

//��ǰ�������ϸ����
function GetTaskDetail(): string;
var
  Tem102_1 : integer;
begin
  //��������п���ʹ�� This_Player
  Tem102_1 := This_Player.GetV(102,1);
  case Tem102_1 of 
     1  :
     begin
        Result := 'ѧϰ������һ���������ӻ����ϰ壨<����(376,300)/CMD=1>��\<�߽��(292,649)/CMD=2>��<����ɽ��(645,607)/CMD=3>����';
     end;
     2  :
     begin
        Result := '�ӻ����ϰ��и����Ϳ��Ÿ���װ���ϰ�\��<����(18,6)/CMD=4>��<�߽��(300,606)/CMD=5>��\<����ɽ��(644,603)/CMD=6>����·��С�ġ�';
     end;         
     3  :
     begin
        Result := '���װ���ϰ�ȥ���������ϰ壨<����(19,20)/CMD=7>��\<�߽��(294,614)/CMD=8>��<����ɽ��(647,605)/CMD=9>��������\�ӿ����һЩ�룬��սʿ�����׼�����Щ�롣';
     end;
     4  :
     begin
        Result := '�������ϰ��и���ȥ��ҩ���ϰ壨<����(7,9)/CMD=10>��\<�߽��(290,613)/CMD=11>��<����ɽ��(647,615)/CMD=12>��������\���˵Ļ�����ƣ�һ��Ҫ�졣';
     end;
     5  :
     begin        
        Result := 'ҩ���ϰ��Ӧ��һ�Ὣ����ȥ���ˣ���������\��������Ա����Ϣ������ȥ������������Ա\��<����(332,269)/CMD=13>��<�߽��(282,618)/CMD=14>��\<����ɽ��(643,626)/CMD=15>���ɡ�';
     end;
     6  :
     begin
        Result := '����Ա����ָ�������ʹ�ü��ܣ�����ֻ��\<��������ϰ�(324,251)/CMD=16>�����ܽ���ѧ��\����ļ��ܡ�';
     end;
     7  :
     begin
        Result := '|{cmd}<��������ϰ�(324,251)/CMD=16>���������һЩ���飬\���ȥ������';
     end;
     8  :
     begin
        Result := '���ܿ��飬ǰ������ɱ<10��������/c=red>��\���֮���ٻ���������ϰ屨�档\ \ˢ�ֵص㣺\<������ˢ�µ�һ/CMD=17>\ \|{cmd}<������ˢ�µ��/CMD=20>';
     end;
     9  :
     begin
        Result := '���Ѿ�ɱ����10�������ˣ���ȥ\��<��������ϰ�(324,251)/CMD=16>��';
     end;
     10 :
     begin
        Result := '|{cmd}<�ֿⱣ��Ա(302,258)/CMD=18>������һ���鷳��\�Ͽ�ȥ���������Щ����ɣ�';
     end;
     11 :
     begin
        Result := '������ʵ����̫�����ķ��ˣ�����\ȥ����ɱ<15��������/c=red>����ɺ������\�ֿⱣ��Ա���档\ ˢ�ֵص㣺\<������ˢ�µ�һ/CMD=19>\ \|{cmd}<������ˢ�µ��/CMD=21>';
     end;
     12 :
     begin
        Result := '���Ѿ�ɱ����15�������ˣ�\���ȥ��<�ֿⱣ��Ա(302,258)/CMD=18>��';
     end;
     13 :
     begin
        Result := '|{cmd}<�ֿⱣ��Ա(302,258)/CMD=18>���ڵ������أ������ߡ�';
     end;
  end;
end;

//��ǰ����Ľ���
function GetTaskProgress(): string;
var
  DGTem, DGNum01, DGNum02 : integer; 
begin
   DGTem := This_Player.GetV(102,1);
   if DGTem = 8 then
   begin
      DGNum01 := This_Player.GetV(102, 2);
      if (DGNum01 > 0) and (DGNum01 < 2) then
      begin
         Result := '���Ѿ�ɱ����' + IntToStr(DGNum01) + '/10��������\ \';
      end;
   end
   else if DGTem = 11 then
   begin
      DGNum02 := This_Player.GetV(102, 3);
      if (DGNum02 > 0) and (DGNum02 < 2) then
      begin
         Result := '���Ѿ�ɱ����' + IntToStr(DGNum02) + '/15��������\ \';
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
    1  : This_Player.AutoGotoMap('0',376,300);
    2  : This_Player.AutoGotoMap('0',292,649);
    3  : This_Player.AutoGotoMap('0',645,607);
    4  : This_Player.AutoGotoMap('0106',18,6);
    5  : This_Player.AutoGotoMap('0',300,606);
    6  : This_Player.AutoGotoMap('0',644,603);
    7  : This_Player.AutoGotoMap('0103',19,20);
    8  : This_Player.AutoGotoMap('0',294,614);
    9  : This_Player.AutoGotoMap('0',647,605);
    10 : This_Player.AutoGotoMap('0108',7,9);
    11 : This_Player.AutoGotoMap('0',290,613);
    12 : This_Player.AutoGotoMap('0',647,615);
    13 : This_Player.AutoGotoMap('0',332,269);
    14 : This_Player.AutoGotoMap('0',282,618);
    15 : This_Player.AutoGotoMap('0',643,626);
    16 : This_Player.AutoGotoMap('0',324,251);
    18 : This_Player.AutoGotoMap('0',302,258);
    17 : This_Player.AutoGotoMap('0',242,181);      //ˢ�֣����ص�����
    20 : This_Player.AutoGotoMap('0',415,345);      //ˢ�֣����ص����� 
    19 : This_Player.AutoGotoMap('0',406,376);      //ˢ�֣����ظ��
    21 : This_Player.AutoGotoMap('0',265,147);      //ˢ�֣����ظ��
  end;
end; 

begin
  //�������������� 
end.