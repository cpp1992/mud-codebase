
PROGRAM Mir2;
 var

px, py :Integer;
Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _FULI; //ÿ�ո��� 
var 
sum1:Integer;
today:Integer;
begin
today := GetDateNum(GetNow);

    if This_Player.GetV(52,1) <> today then //�˶�Ϊÿ�춼����һ�ε�����    
    begin
       This_Player.SetV(52,1,today);
         This_Player.setV(50,1,0) ;
    end;
    sum1 := This_Player.GetV(50,1); 
    if   sum1 < 1 then
    begin 
            if  This_Player.FreeBagNum >= 2 then  
            begin 
               This_Player.Give('����' , 500000); //���辭��50�������   
               This_Player.PlayerDialog(
             '�����Ѽ���������!');
             This_Player.setV(50,1,sum1 + 1) ;
      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'	);       
               end else
               This_Player.PlayerDialog(
               '���Ѿ����һ����,����������!\');
 end;

begin   
This_NPC.NpcDialog(This_Player,
   'ÿ�ո��� ��\|'
   +'Ϊ��������˵������ٶ�.\|'
   +'��������ÿ����Զ�������ȡһ�ξ���.\|'
   +'��ȡ���޵ȼ�Ӵ.\|'
   +'|{cmd}<����ȡ����/@FULI>');
end.     