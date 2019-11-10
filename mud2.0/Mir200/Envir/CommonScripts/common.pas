{
/*******************************************************************************

/*******************************************************************************
}

{$IFDEF Q130_tehui}
const   VERSION_VALUE = 130;
{$ELSE}
  {$IFDEF Q106_tehui}
  const   VERSION_VALUE = 106;
  {$ELSE}
  const   VERSION_VALUE = 105;
  {$ENDIF}
{$ENDIF}

//bool���ַ���
function BoolToStr( bool : Boolean) : string;
begin
  if bool then
  	Result := '��'
  else
  	Result := '��';
end;

//��һ���ַ�������ȡ���Կո�ָ���ַ���������
//������ȡ�����ַ����������Բ�����ʽ����
function GetStrAndNum( s : string; var n : Integer ) : string;
var
  i, len : Integer;
  tempStr : string;
begin
  n := 1;
  Result := s;
  len := Length(s);
  for i:=1 to Len do
  begin
    if s[i] = ' ' then
      break;
  end;
  
  if i < len then
  begin
    Result := copy(s, 1, i-1);
    tempStr := copy(s, i+1, len-i);
    n := StrToInt(tempStr);
  end; 
end;

//�ÿո񲹳��ַ�����ָ������
function addSpace( s : string; needLen : Integer ) : string;
var
  i, j : Integer;
begin
  i := Length(s);
  if i < needLen then
  begin
    j := needLen - i;
    for i:=0 to j do
    begin
      s := s + ' ';
    end;
  end;
  Result := s;
end;

//�����б����õ�һЩ����
const TASK_TYPE_MAIN      = 1;    //��������Ϊ����
const TASK_TYPE_SUB       = 2;    //��������Ϊ֧��
const TASK_TYPE_EVERYDAY  = 3;    //��������Ϊÿ��
const TASK_TYPE_TITLE     = 4;    //��������Ϊ��� 

const TASK_STATE_UNRECEIVED = 1;  //����״̬Ϊδ�ӵ�ǰ����
const TASK_STATE_RECEIVED   = 2;  //����״̬Ϊ�ѽӵ�ǰ����
const TASK_STATE_FINISHED   = 3;  //����״̬Ϊ����ɵ�ǰ����  