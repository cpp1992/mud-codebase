
//**************���÷���֤NPC 
function ActiveValidateStr:string; 
begin
  if This_Player.CheckAuthen(1,100) then
  begin 
  result:='|{cmd}<ҩƷ�ֿ�/@CangKuMed>\'; 
  end else
  begin
  result:='|{cmd}<��֤�������÷֣���Ϊ��֤�û�/@PlayerActiveValidate>\';
  end; 
end;
//-------------���÷���֤NPC

//****************�Զ�����ģ��
function AutoOpen(AutoType:integer) :boolean;  //������ʱ���Զ����� 
var
AutoDay:integer; 
begin
  case AutoType of
  1:AutoDay:= 0;      //��Ч 
  2:AutoDay:= 6;      //���÷����ƿ��� 
  3:AutoDay:= 7;     //47�����鿪��
  4:AutoDay:= 39;     //�ر�ͼ����
  5:AutoDay:= 6;     //����ɳ�Ϳ� 
  end;
  
  if GetDateNum(GetNow) - GetDateNum(GetOpenGameTime) >= AutoDay then result:= true else result:= false;
   
end;

function AutoOpenDay(AutoType:integer) :integer;  //������ʱ���Զ�����
var
AutoDay:integer; 
begin

  case AutoType of
  1:AutoDay:= 0;      //�·��㿪�� 
  2:AutoDay:= 6;      //���÷����ƿ��� 
  3:AutoDay:= 7;     //47�����鿪��
  4:AutoDay:= 39;     //�ر�ͼ����
  5:AutoDay:= 6;     //����ɳ�Ϳ� 
  end;

  result:= AutoDay + GetDateNum(GetOpenGameTime) - GetDateNum(GetNow);
   
end;

//----------------�Զ�����ģ�� 

//***************��֤�������÷� 
procedure _PlayerActiveValidate;
begin
  if AutoOpen(2) then
  begin 
  This_Player.PlayerDialog(
  '�𾴵��귨��ʿ������ǰΪδ��֤�û���������ͨ��������Ϸ���ݣ�\'
  +'��ߴ������÷���30�֣���<���ֿ����Ա�ʹ���Ա����Ϊ��֤�û�/c=red>��\'
  +'����ǰ�ĵĴ������÷�Ϊ<'+inttostr(This_Player.GetActivePoint)+'/c=red>�֣�������ʱ��Ϊ<'+inttostr(This_Player.GetTmpActivePoint)+'��/c=red>��\'
  +'δ��֤�Ľ�ɫ��������������Ϸ���ݣ�\'
  +'|1.��Я��200���Һ�ʹ��20��ֿ⡣\'
  +'|2.���Ի��������Ʒ�����޷�ת�ơ�������Ʒ��������ҡ�\ \'
  +'|{cmd}<�˽���ǿ�������÷ֵķ�ʽ/@AboutActive>\'
  +'|{cmd}<��֤�������÷֣���Ϊ��֤�û�/@ValidateActive>'
  );
  end else
  This_Player.PlayerDialog(
  '�𾴵��귨��ʿ������ǰΪδ��֤�û���������ͨ��������Ϸ���ݣ�\'
  +'��ߴ������÷���30�֣���<���ֿ����Ա�ʹ���Ա����Ϊ��֤�û�/c=red>��\'
  +'����ǰ�ĵĴ������÷�Ϊ<'+inttostr(This_Player.GetActivePoint)+'/c=red>�֣�������ʱ��Ϊ<'+inttostr(This_Player.GetTmpActivePoint)+'��/c=red>��\'
  +'δ��֤�Ľ�ɫ��������������Ϸ���ݣ�\'
  +'|1.��Я��200���Һ�ʹ��20��ֿ⡣\'
  +'|2.���Ի��������Ʒ�����޷�ת�ơ�������Ʒ��������ҡ�\'
  +'|<����'+inttostr(AutoOpenDay(2))+'��������÷���֤���ڴ�֮ǰ����������������Ϸ��/c=red>\'
  +'|<��Ȼ��Ҳ������ǰ��֤�������÷֣����õ�������Ϸ���ݡ�/c=red>\' 
  +'|{cmd}<�˽���ǿ�������÷ֵķ�ʽ/@AboutActive>\'
  +'|{cmd}<��֤�������÷֣���Ϊ��֤�û�/@ValidateActive>'
  );
end;
//-------------��֤�������÷� 