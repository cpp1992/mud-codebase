procedure giveYBprz();  //�����Ԫ����ȡ������ȫһ�����Զ���һ��������������� ,*****�Զ��巽��������Ҫд�ڵ���֮ǰ***** 
var rmd : integer;
itemStr : string; 
begin
    
    rmd := random(100);
    if rmd < 99then
  
    begin
       This_Player.MyShengwan := This_Player.MyShengwan + 30;
        itemStr := '30����';
   
    begin
        
      ServerSay('��ϲ��' + This_Player.Name + ' ��ʹ��1000Ԫ���һ���' + itemStr + '����!',3); //ϵͳ������֣�ȫ���ɼ� 
    end;  

    This_Npc.NpcDialog(This_Player,
    '�����ˣ�' + itemStr + '\|'+
    '{cmd}<�����һ�����/@RdmYBPrz>'
    ); 
    end;
end;




procedure _RdmYBPrz;
begin
    if (GetYear = 2019) and (GetMonth = 7) and (GetDay >= 1) and (GetDay <= 30) then
    begin 
        if (GetHour >= 1) and (GetHour < 23) then  //ע�����ʱ�䣬19:00:00-19:59:59 GetHour������19 
        begin
            if This_Player.FreeBagNum >= 2 then
            begin
                if This_Player.MyLFnum >= 1000 then //����ʹ�����������㹻ֱ�ӿ۳���������뽱�� 
                begin
                    This_Player.DecLF(0,1000,false);
                    giveYBprz();    //ֱ�ӵ��ø��������� *****�Զ��巽��������Ҫд�ڵ���֮ǰ***** 
                end else                           //���������ʹ��Ԫ�� 
                This_Player.PsYBConsum(This_NPC,'YB_NewComeBag',20001,1000,1);  //YB_NewComeBagΪ�Զ���ص��������ƣ� 20001Ϊ�۳���ţ�����ͳ�ƣ�2ΪԪ��������1Ϊ������һ��ʹ��1���ɣ� 
            end else
            This_NPC.NpcDialog(This_Player, '�����ռ䲻�㣬�������������ȡ������');
        end else
        This_NPC.NpcDialog(This_Player, 'ÿ�ճ齱ʱ��Ϊ0:00-23:00��');
    end else
    This_NPC.NpcDialog(This_Player, '�ʱ��Ϊ7��1����30�գ�');
end;

function YB_NewComeBag(price, num: Integer):boolean; //YB_NewComeBagΪ�Զ���ص��������ƣ��������Ϊ�̶���ʽ �������Ըı� 
begin
   result := true; 
   giveYBprz(); //ֱ�ӵ��ø��������� *****�Զ��巽��������Ҫд�ڵ���֮ǰ***** 
end;

begin
     This_NPC.NpcDialog(This_Player, 'Ϊ��ף���գ�����׼���˶һ������\|'
     +'{cmd}<1000Ԫ����30����/@RdmYBPrz>');
end.