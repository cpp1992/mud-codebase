{
/**********************************************************************
 *
 * ����ű���ר�Ŵ���ÿ�����Ӧ��ȫ�ֱ���
 *
/**********************************************************************
}
//���ݻ�źͱ������ȡ��ǰ����ֵ
//����-1��ʾ��Ҫ��ѯ������,�������ʾΪ��ǰҪȡ�Ļ�����ķ���ֵ
//��������Ǵ�1��50�ķ�Χ,һ���ֻ�ܶ�Ӧһ�����
function GetI(const actNo, index : Integer) : Integer;
var
  sql : string; //��ѯ���
  s   : string; //��ѯ���ֶ���
begin
  Result := -1;
  if (index >= 1) and (index <= 50) then
  begin
    s   := 'i' + IntToStr(index);
    sql := 'select ' + s + ' from IsolatedAct where '
          + ' ActNo = ' + IntToStr(actNo) +';';
    This_DB.ExecuteQuery(sql);
    //ֻ����һ���Ŷ�
    if (This_DB.PsRecordCount = 1) then
    begin
      This_DB.PsFirst;
      Result := This_DB.PsFieldByName(s);
    end;
  end;                  
end;

//���ݻ�źͱ���������ñ���ֵ
procedure SetI(const actNo, index, value : Integer) : Integer;
var
  sql : string;   //�ȫ�ֱ�������ִ�����
  s   : string;   //���µ��ֶ���
begin
  if (index >= 1) and (index <= 50) then
  begin
    s   := 'i' + IntToStr(index);
    sql := 'update IsolatedAct set ' + s + '=' + IntToStr(value)
           + ' where actNo = ' + IntToStr(actNo) + ';'; 
    This_DB.ExecuteScript(sql);
  end;                           
end;

//�������ΪactNo�Ļ
procedure StartAct(const actNo : Integer);
var
  sql : string;   //����һ����¼�»��record
begin
  sql := 'insert into IsolatedAct (actNo) values (' + IntToStr(actNo) + ');';
  This_DB.ExecuteScript(sql);
end;