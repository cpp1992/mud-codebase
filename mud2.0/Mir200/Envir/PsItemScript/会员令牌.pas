function UseItem: Boolean;

begin
  This_Player.PlayerDialog(
  '<������רΪ��������Ա�����ƣ��ն��ͼ��/c=red>\ \'+  
  '<��ֱ���ͼ�ײ㣬������ҩ���Կ��ٲ�����Ʒ��/c=red>\ \'+  
    '|{cmd}<������ͼ���͡�/@CZ>        ^<��ÿ�ո�����/@FULI>\ \'+
    '|{cmd}<���ն��ͼ���͡�/@WX>        ^<������ֿ������С�/c=red> \ \'+
    '|{cmd}<�������ҩ���ܡ�/@MY>        ^<�����ӡ�/c=red>' 
    ); 
  end else
  begin
  This_Player.PlayerDialog(
  '�����ƽ���������Աʹ�ã�\ \'
  ); 

  end;

begin
end.