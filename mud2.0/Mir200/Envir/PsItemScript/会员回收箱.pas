function UseItem: Boolean;
var
d1 , d2 : integer;
s1 , s2 : double;
t1 : integer; 
begin 
s1 := GetNow;
d1 := This_Player.Getv(86,1);
s2 := ConvertDBToDateTime(d1);
d2 := minusDataTime(s1,s2); 
if d2 > 604800 then    //���� 3600*24*7 =604800��  �˴����Ը��ĵ���ʱ�估���Թ��ܣ����޸���ͬʱ�޸ĵ㿨ʹ�ߴ��ģ� 
begin
This_Player.PlayerDialog('�ܿ����ڣ�'); 
This_Player.Setv(86,2,0);
Result := true;  //�����Ʒ����Ʒ��ʧ

end else 
  if This_Player.GetV(86,2) =1 then
  begin
  This_Player.PlayerDialog(
  '<������רΪ��������Ա�����ƣ��ն��ͼ��/c=red>\ \'+  
  '<��ֱ���ͼ�ײ㣬������ҩ���Կ��ٲ�����Ʒ��/c=red>\ \'+  
    '|{cmd}<���ͼ���͡�/@CS>   ^<�￪��������/@KQSHENLI>     ^<��ÿ�ո�����/@FULI> \'
   +'|{cmd}<������̵��/@lingfu>  ^<����һ�����/@huhuan>  ^<����ҩ��/@my> \'
   +'|{cmd}<��һ�����ա�/@huishou>  ^<��һ��48����/@sjls> ^<��ȴ���ӡ�/c=red>\'    
    );
    Result := false; //�����Ʒ����Ʒ����ʧ����1
end else
  begin
  This_Player.PlayerDialog(
  '�˱��������Աʹ�ã�'
  ); 
  end;
  
end;

begin
end.