{******************************************************************
* ��Ŀ���ƣ�
* ��Ԫ���ƣ�LogonQuest 
* ��Ԫ���ߣ� 
* ժ    Ҫ��
* ��    ע��
*******************************************************************}

program Mir2;

{$I ActiveValidateCom.pas}




procedure _AboutActive;
begin
   This_Player.PlayerDialog(
   '��ǿ�������÷ֵķ�ʽ������:\' 
    +'|1.ʹ������������ߵ�����Ӿ�������ͼ��ս������������\�������÷֡�\' 
    +'|2.��ɱBOSS������Ҳ�����Ӵ������÷֡�\' 
    +'|3.�μӵ��¶ᱦ�,��������NPC,�����Ӵ������÷֡�\' 
    +'|4.���̳��й���󶨵��߻����Ӵ������÷֡�\' 
    +'|5.��������ֵ,���ʯ��ȡ�����Ȼ����Ӵ������÷֡�\' 
    +'|6.ѧϰ�߼����ܺ����������װ������������ʱ���÷֡�\'
    +'|7.�����������Ӵ������÷ֵķ�ʽ,�ȴ���ȥ���֡�\' 
    ); 
end; 
procedure _ValidateActive;
var StorageNum_b , StorageNum_N : integer;
begin
   if This_Player.CheckAuthen(1,100) = false then
   begin
     if This_Player.GetActivePoint + This_Player.GetTmpActivePoint >= 30 then
     begin
      StorageNum_b := This_Player.GetStorageSpaceCount;
      if This_Player.ActiveAuthen(1,100) = 1 then
      begin
      StorageNum_N := This_Player.GetStorageSpaceCount;
      
      This_Player.ExpandStorageSpace(StorageNum_b + 24 - StorageNum_N);

      
      This_Player.PlayerDialog(
      '��֤�ɹ���\'+
      '���ѳ�Ϊ��֤�û���ף����Ϸ��죡'  
      ); 
      end else
      This_Player.PlayerDialog(
      '��֤ʧ�ܣ����Ժ����ԡ�\ \'  
      ); 
     end else 
     This_Player.PlayerDialog(
     '��֤ʧ�ܣ����Ĵ������÷ֲ���30�֡�\ \'+ 
     '|{cmd}<�˽���ǿ�������÷ֵķ�ʽ/@AboutActive>\'  
     ); 
   end else
   This_Player.PlayerDialog(
   '������֤�û��������ٴ���֤��ף����Ϸ��죡\'  
   ); 
end; 

procedure EventNotify(EventNO: Integer; EventParam: Integer);   //�˽ӿ��ɳ������ 
begin

end;

//**************************GM����*****************************


function getZBnameById(ZBid : integer) : string;
var ZBlv , ZBlvId : integer;
begin
    ZBlv := ZBid div 100;
    ZBlvId := ZBid mod 100;
    result := '';
    case ZBlv of
        1 : 
        begin
            case ZBlvId of
                1 : result := '��ɫ����';
                2 : result := '��ʿ����';
                3 : result := '������ָ';
                4 : result := '��ħ����';
                5 : result := '��֮����';
                6 : result := '�ϱ���';
                7 : result := '�������';
                8 : result := '��������';
                9 : result := '̩̹��ָ';
                10 : result := '����ͷ��';
                11 : result := '��ͭ����';
                12 : result := '�ϳ�ѥ';
				13 : result := '����Ȩ��';
				14 : result := '�þ�֮��';
				15 : result := '���ƽ�';
				16 : result := '����43��';
				17 : result := '����44��';
				18 : result := '����45��';
				19 : result := '����ѫ��43��';
				20 : result := '����ѫ��44��';
				21 : result := '����ѫ��45��';
            end;
        end;
		
        2 : 
        begin
            case ZBlvId of
                1 : result := 'ʥսͷ��';
                2 : result := 'ʥս����';
                3 : result := 'ʥս����';
                4 : result := 'ʥս��ָ';
                5 : result := '����ͷ��';
                6 : result := '��������';
                7 : result := '��������';
                8 : result := '�����ָ';
                9 : result := '����ͷ��';
                10 : result := '��������';
                11 : result := '��������';
                12 : result := '�����ָ';
                13 : result := '��������';
                14 : result := '�ܻ�ѥ';
				15 : result := '��������';
                16 : result := '��ʦ����';
                17 : result := 'ʥս����';
                18 : result := '��ħ���';
                19 : result := '��������';
                20 : result := '�������';

            end;
        end;
		
		
		        3 : 
        begin
            case ZBlvId of
               1 : result := '��������';
                2 : result := '��������';
                3 : result := '����ս��';
                4 : result := '��������';
                5 : result := '����սѥ';
                6 : result := '��������';
                7 : result := '���滤��';
                8 : result := '����ħ��';
                9 : result := '��������';
                10 : result := '����ħѥ';
                11 : result := '��â����';
                12 : result := '��â����';
                13 : result := '��â����';
                14 : result := '��â����';
                15 : result := '��â��ѥ';
				16 : result := '����ħ��';
				20 : result := '��â����';
				21 : result := '����ս��';
				25 : result := '����ħ��(��)';
                26 : result := '����ħ��(Ů)';
				27 : result := '����ս��(��)';
			    28 : result := '����ս��(Ů)';
                29 : result := '��â����(��)';
				30 : result := '��â����(Ů)';

            end;
        end;
       
	   4 : 
        begin
            case ZBlvId of
                  1 : result := 'ǿ����������';
				2 : result := 'ǿ������սѥ';
				3 : result := 'ǿ����������';
				4 : result := 'ǿ������ħѥ';
				5 : result := 'ǿ����â����';
				6 : result := 'ǿ����â��ѥ';
	            7 : result := 'ǿ����������';
                8 : result := 'ǿ����������';
                9 : result := 'ǿ������ս��';
                10 : result := 'ǿ����������';
                11 : result := 'ǿ�����滤��';
				12 : result := 'ǿ������ħ��';
				13 : result := 'ǿ����â����';
				14 : result := 'ǿ����â����';
				15 : result := 'ǿ����â����';

		   end;
		   end;
		 
		 
		  5 : 
        begin
            case ZBlvId of
	 	1 : result := '����';
                2 : result := '����';
				3 : result := '����';
			    4 : result := '����ħ��';
                5 : result := '����ħ��';
				6 : result := '�������';
				7 : result := 'ս���ָ';
                8 : result := '����ָ';
				9 : result := 'ʥħ��ָ';
			    10 : result := '�������';
                11 : result := 'ս������';
				12 : result := 'ʥħ����';
			    13 : result := 'ս������';
                14 : result := 'ʥħ����';
		   end;
		   end;
		   

		   
		 6 : 
        begin
            case ZBlvId of
			1 : result := '����սѥ';
				2 : result := '��������(ս)';
				3 : result := '��������';
				4 : result := '��������';
				5 : result := '������ѥ';
				6 : result := '������ѥ';
	            7 : result := '��������(��)';
                8 : result := '��������(��)';
                9 : result := '����ս��';
                10 : result := '��������(ս)';
                11 : result := '��������(ս)';
				12 : result := '����ħ��';
				13 : result := '��������(��)';
				14 : result := '��������(��)';
				15 : result := '��������';
				16 : result := '��������(��)';
				17 : result := '��������(��)';
				18 : result := '����ʥ��(ս)';
				19 : result := '����ʥ��(��)';
				20 : result := '����ʥ��(��)';
				21 : result := '����ʥ��(��)';
				22 : result := '����ʥ��(Ů)';
		   end;
		   end;
		   
    end;
end;

function getZexpNum(Zlv : integer) : integer;
begin
    case Zlv of
        1 : result := 10000;
        2 : result := 20000;
        3 : result := 40000;
		4 : result := 80000;
        5 : result := 320000;
        6 : result := 1280000;
    end;
end;

  
  
procedure _huishou;
begin
    This_Player.PlayerDialog(
    '<��ѡ��Ҫ���յ�װ�����࣡/c=red> |\'+
    '<��Ը����յ�װ�����Դ浽�ֿ⣡/c=red> |\' +
    +'|{cmd}<һ����������/@ZUma_all>      ^<һ�����ճ���/@ChiYue_all>\'
    +'|{cmd}<һ������ħ��/@tianzhichiyue_all>       ^<һ������ǿ��/@molong_all>\'
	+'|{cmd}<һ������ս��/@tianzhimolong_all>   ^<һ����������/@kaitian_all>'
	+'|{cmd}<����/@1238>'
	);
end;


procedure _ZUma_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 40 do
    begin
        Iname := getZBnameById(100 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_Player.PlayerDialog(
     '��İ�������' + inttostr(ZMnum) + '������װ�������տɻ��:' + inttostr(getZexpNum(1) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(1) div 20000 * ZMnum) + '���������ȷ��������������װ����\|'
    +'|{cmd}<ȷ�ϻ�����������װ��/@ZUma_True>'
    +'|{cmd}<����/@ZhuangBack>');
end;

procedure  _ZUma_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 40 do
    begin
        Iname := getZBnameById(100 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
                This_Player.Give('����', getZexpNum(1));
				This_Player.AddLF(0,getZexpNum(1) div 20000);
				ServerSay('���<' + This_Player.Name + '>ʹ�û�Ա���������'+ inttostr(ZMnum) + '������װ�������:'+ inttostr(getZexpNum(1) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(1) div 20000) + '�������', 2);
            end;
        end; 
    end;
    This_Player.PlayerDialog(
    '��ϲ��ɹ����գ�' 
    +'|{cmd}<����/@ZhuangBack>');

end;


procedure _Chiyue_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 40 do
    begin
        Iname := getZBnameById(200 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_Player.PlayerDialog(
    '��İ�������' + inttostr(ZMnum) + '������װ�������տɻ��:' + inttostr(getZexpNum(2) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(2) div 40000 * ZMnum) + '���������ȷ���������г���װ����\|'
    +'|{cmd}<ȷ�ϻ������г���װ��/@Chiyue_True>'
    +'|{cmd}<����/@ZhuangBack>');
end;


procedure  _Chiyue_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 40 do
    begin
        Iname := getZBnameById(200 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
                This_Player.Give('����', getZexpNum(2));
			    This_Player.AddLF(0,getZexpNum(2) div 40000);
				ServerSay('���<' + This_Player.Name + '>ʹ�û�Ա���������'+ inttostr(ZMnum) + '������װ�������:'+ inttostr(getZexpNum(2) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(2) div 40000) + '�������', 2);
            end;
        end; 
    end;
    This_Player.PlayerDialog(
    '��ϲ��ɹ�����'
    +'|{cmd}<����/@ZhuangBack>');

end;

procedure _tianzhichiyue_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 40 do
    begin
        Iname := getZBnameById(300 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_Player.PlayerDialog(
    '��İ�������' + inttostr(ZMnum) + '��ħ��װ�������տɻ��:' + inttostr(getZexpNum(3) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(3) div 40000 * ZMnum) + '���������ȷ����������ħ��װ����\|'
    +'|{cmd}<ȷ�ϻ�������ħ��װ��/@tianzhichiyue_True>'
    +'|{cmd}<����/@ZhuangBack>');
end;

procedure  _tianzhichiyue_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 40 do
    begin
        Iname := getZBnameById(300 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
                This_Player.Give('����', getZexpNum(3));
                This_Player.AddLF(0,getZexpNum(3) div 40000);
				ServerSay('���<' + This_Player.Name + '>ʹ�û�Ա���������'+ inttostr(ZMnum) + '��ħ��װ�������:'+ inttostr(getZexpNum(3) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(3) div 40000) + '�������', 2);
            end;
        end; 
    end;
    This_Player.PlayerDialog(
    '��ϲ��ɹ����գ�'
    +'|{cmd}<����/@ZhuangBack>');

end;





procedure _molong_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 39 do
    begin
        Iname := getZBnameById(400 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_Player.PlayerDialog(
    '��İ�������' + inttostr(ZMnum) + '��ǿ��װ�������տɻ��:' + inttostr(getZexpNum(4) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(4) div 64000 * ZMnum) + '���������ȷ����������ǿ��װ����\|'
    +'|{cmd}<ȷ�ϻ�������ǿ��װ��/@molong_True>'
    +'|{cmd}<����/@ZhuangBack>');
end;

procedure  _molong_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 39 do
    begin
        Iname := getZBnameById(400 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
                This_Player.Give('����', getZexpNum(4));
				This_Player.AddLF(0,getZexpNum(4) div 64000);
				ServerSay('���<' + This_Player.Name + '>ʹ�û�Ա���������'+ inttostr(ZMnum) + '��ǿ��װ�������:'+ inttostr(getZexpNum(4) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(4) div 64000) + '�������', 2);
            end;
        end; 
    end;
    This_Player.PlayerDialog(
    '��ϲ����ճɹ���'
    +'|{cmd}<����/@ZhuangBack>');

end;






procedure _tianzhimolong_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 21 do
    begin
        Iname := getZBnameById(500 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_Player.PlayerDialog(
    '��İ�������' + inttostr(ZMnum) + '��ս��װ�������տɻ��:' + inttostr(getZexpNum(5) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(5) div 64000 * ZMnum) + '���������ȷ����������ս��װ����\|'
    +'|{cmd}<ȷ�ϻ�������ս��װ��/@tianzhimolong_True>'
    +'|{cmd}<����/@ZhuangBack>');
end;

procedure  _tianzhimolong_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 21 do
    begin
        Iname := getZBnameById(500 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
                This_Player.Give('����', getZexpNum(5));
                This_Player.AddLF(0,getZexpNum(5) div 64000);
				ServerSay('���<' + This_Player.Name + '>ʹ�û�Ա���������'+ inttostr(ZMnum) + '��ս��װ�������:'+ inttostr(getZexpNum(5) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(5) div 64000) + '�������', 2);
            end;
        end; 
    end;
    This_Player.PlayerDialog(
    '��ϲ����:' + inttostr(getZexpNum(5) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(5) div 64000 * ZMnum) + '�������\|'
    +'|{cmd}<����/@ZhuangBack>');

end;




procedure _kaitian_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 14 do
    begin
        Iname := getZBnameById(600 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_Player.PlayerDialog(
    '��İ�������' + inttostr(ZMnum) + '������װ�������տɻ��:' + inttostr(getZexpNum(6) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(6) div 64000 * ZMnum) + '���������ȷ��������������װ����\|'
    +'|{cmd}<ȷ�ϻ�����������װ��/@kaitian_True>'
    +'|{cmd}<����/@ZhuangBack>');
end;

procedure  _kaitian_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 14 do
    begin
        Iname := getZBnameById(600 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
                This_Player.Give('����', getZexpNum(6));
				This_Player.AddLF(0,getZexpNum(6) div 64000);
				ServerSay('���<' + This_Player.Name + '>ʹ�û�Ա���������'+ inttostr(ZMnum) + '������װ�������:'+ inttostr(getZexpNum(6) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(6) div 64000) + '�������', 2);
            end;
        end; 
    end;
    This_Player.PlayerDialog(
    '��ϲ����:' + inttostr(getZexpNum(6) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(6) div 64000 * ZMnum) + '�������\|'
    +'|{cmd}<����/@ZhuangBack>');

end;



procedure _sjls;      //       ֱ��48�� 
var 
sum2 : integer;
begin
  sum2 := This_Player.GetV(50,2);
  if  This_Player.GetV(50,2) <0 then    This_Player.setV(50,2,0);
  if  This_Player.GetV(50,2) <1  then
      begin 
        This_Player.setV(50,2,1);
       This_Player.SetPlayerLevel(48);   //       ֱ��48�� 
      end else This_Player.PlayerDialog(
             '���Ѿ�������һ����!')   
end;                                      //     ֱ��48��

procedure _KQSHENLI;    //�������� 
var 
sum3 : integer;
today1:Integer;
begin
today1 := GetDateNum(GetNow);

    if This_Player.GetV(52,2) <> today1 then //�˶�Ϊÿ�춼����һ�ε�����    
    begin
       This_Player.SetV(52,2,today1);
         This_Player.setV(50,3,0) ;         
    end;
    
  sum3 := This_Player.GetV(50,3);
  if  This_Player.GetV(50,3) <1  then
  case random(3) of         //�������2����1.5����1.2������ ÿ��һ��Сʱ 
  0 : begin
      This_Player.AddPlayerAbil(4,This_Player.Maxhp*2, 3600);  //2������  
      This_Player.AddPlayerAbil(0,This_Player.MaxDC*2, 3600);   // ������������ƽ��ֵ�㷨   ((This_Player.MAXDC +This_Player.DC) div 2)*2
      This_Player.AddPlayerAbil(2,This_Player.MaxSC*2, 3600);
      This_Player.AddPlayerAbil(1,This_Player.MaxMC*2, 3600);
      This_Player.setV(50,3,1) ;
      end;
  1 :  begin 
       This_Player.AddPlayerAbil(4,This_Player.Maxhp div 2 + This_Player.Maxhp,3600); //1.5��
       This_Player.AddPlayerAbil(0,This_Player.MaxDC div 2 + This_Player.MaxDC,3600);
       This_Player.AddPlayerAbil(2,This_Player.MaxSC div 2 + This_Player.MaxSC,3600);
       This_Player.AddPlayerAbil(1,This_Player.MaxMC div 2 + This_Player.MaxMC,3600);
       This_Player.setV(50,3,1) ;
        end;
  2:  begin 
      This_Player.AddPlayerAbil(4,This_Player.Maxhp div 5 + This_Player.Maxhp,3600);   //1.2��
      This_Player.AddPlayerAbil(0,This_Player.MaxDC div 5 + This_Player.MaxDC,3600);
      This_Player.AddPlayerAbil(2,This_Player.MaxSC div 5 + This_Player.MaxSC,3600);
      This_Player.AddPlayerAbil(1,This_Player.MaxMC div 5 + This_Player.MaxMC,3600);
      This_Player.setV(50,3,1) ;
      end;                
 end else This_Player.PlayerDialog(
             '������Ѿ�������һ���ˣ�����������!')   
end;                                                         //�������� 
 
  
procedure _CS;       //���� 
begin
    This_Player.PlayerDialog(
    '��ӭ������Ա�������ģ���\'
    +'|{cmd}<��ȫ����/@anquan>        ^<�ն�����/@xiane>    ^<��̬����/@biantai>  ^<����װ/@zz>\');
end;

procedure _xiane;
begin
  This_Player.PlayerDialog(
  '��ӭ������Ա�������ģ�\ \'
  +'|{cmd}<�������/@MOVE12>    ^<��������/@MOVE13>    ^<����ɽ��/@MOVE14>\'
  +'|{cmd}<ʯ Ĺ ��/@MOVE15>    ^<����֮��/@MOVE16>    ^<��ħ����/@MOVE17>\'
  +'|{cmd}<ʬ ħ ��/@MOVE18>    ^<�� ħ ��/@MOVE19>    ^<ţħ����/@MOVE20> \' 
  +'|{cmd}<ţħ����/@MOVE21>\' 
  );
end;

procedure _MOVE12; 
begin
This_Player.Flyto('0',650,219);
end;

procedure _MOVE13; 
begin
This_Player.Flyto('1',88,282);
end;

procedure _MOVE14; 
begin
This_Player.Flyto('3',143,93);
end;

procedure _MOVE15; 
begin
This_Player.Flyto('D715',87,77);
end;

procedure _MOVE16; 
begin
This_Player.Flyto('D1004',64,234);
end;

procedure _MOVE17; 
begin
This_Player.Flyto('4',56,76);
end;

procedure _MOVE18; 
begin
This_Player.Flyto('5',518,615);
end;

procedure _MOVE19; 
begin
This_Player.Flyto('5',550,135);
end;

procedure _MOVE20; 
begin
This_Player.Flyto('5',659,461);
end;

procedure _MOVE21; 
begin
This_Player.Flyto('D2078',160,160);
end;

procedure _anquan;
begin
  This_Player.PlayerDialog(
  '��ӭ������Ա�������ģ�\ \'
  +'|{cmd}<�߽��/@MOVE01>    ^<����ɽ��/@MOVE02>    ^<����ʡ/@MOVE0>\'
  +'|{cmd}<����ɽ��/@MOVE2>    ^<����ʡ/@MOVE3>    ^<��ħ��/@MOVE4>\'
  +'|{cmd}<���µ�/@MOVE5>    ^<ħ����/@MOVE6>    ^<������/@MOVE11> \' 
  +'|{cmd}<ɳ������/@shacheng>\' 
  );
end;

procedure _MOVE01; 
begin
This_Player.Flyto('0',650,631);
end;

procedure _MOVE02; 
begin
This_Player.Flyto('0',289,618);
end;

procedure _MOVE0; 
begin
This_Player.Flyto('0',325,268);
end;

procedure _MOVE2; 
begin
This_Player.Flyto('2',503,483);
end;

procedure _MOVE3; 
begin
This_Player.Flyto('3',330,330);
end;

procedure _MOVE4; 
begin
This_Player.Flyto('4',240,200);
end;

procedure _MOVE5; 
begin
This_Player.Flyto('5',141,335);
end;

procedure _MOVE6; 
begin
This_Player.Flyto('6',124,156);
end;

procedure _MOVE11; 
begin
This_Player.Flyto('11',178,326);
end;

procedure _shacheng; 
begin
This_Player.Flyto('3',719,414);
end;

procedure _biantai;
begin
  This_Player.PlayerDialog(
  '��ӭ������Ա�������ģ�\ \'
  +'|{cmd}<������/@MOVE22>    ^<��ԴѪ·/@MOVE23>    ^<ħ��Ѫ��/@MOVE24>\'
  +'|{cmd}<��Ѫս��/@MOVE25>    ^<ţħ���/@MOVE26>    ^< ��ħ��̳/@MOVE27>\'
  +'|{cmd}<����ħѨ/@MOVE28>    ^<ʯĹ�߲�/@MOVE29>    ^<�������֮��/@MOVE30> \' 
  +'|{cmd}<��԰֮��/@MOVE31>\' 
  );
end;

procedure _MOVE22; 
begin
This_Player.RandomFlyto('D2083~1');
ServerSay('���<' + This_Player.Name + '>ͨ����Ա����,�����˻�����', 2);
end;

procedure _MOVE23; 
begin
This_Player.Flyto('65',267,107);
end;

procedure _MOVE24; 
begin
This_Player.Flyto('66',257,212);
end;

procedure _MOVE25; 
begin
This_Player.Flyto('HL002',83, 156);
ServerSay('���<' + This_Player.Name + '>ͨ����Ա����,��������Ѫս��', 2);
end;

procedure _MOVE26; 
begin
This_Player.Flyto('D2079',13,13);
end;

procedure _MOVE27; 
begin
This_Player.Flyto('D10061',21,26);
end;

procedure _MOVE28; 
begin
This_Player.Flyto('D10062',11,25);
end;

procedure _MOVE29; 
begin
This_Player.Flyto('D717',25,75);
end;

procedure _MOVE30; 
begin
This_Player.Flyto('D515',13,32);
end;

procedure _MOVE31; 
begin
This_Player.Flyto('R001',100,99);
end;

procedure _zz;
begin
  This_Player.PlayerDialog(
  '��ӭ������Ա�������ģ�\ \'
  +'|{cmd}<����س��з�/@MOVE32>    ^<�������Ů��/@MOVE33>    ^<��Ԩħ���е�/@MOVE34>\'
  +'|{cmd}<ǯ�泲ѨŮ��/@MOVE35>    ^<��������Ůս/@MOVE36>    ^< ���������ս/@MOVE37>\'
  );
end;

procedure _MOVE32; 
begin
This_Player.RandomFlyto('T115');
end;

procedure _MOVE33; 
begin
This_Player.RandomFlyto('T118');
end;

procedure _MOVE34; 
begin
This_Player.RandomFlyto('T119');
end;


procedure _MOVE35; 
begin
This_Player.RandomFlyto('T132');
end;

procedure _MOVE36; 
begin
This_Player.RandomFlyto('T139');
end;

procedure _MOVE37; 
begin
This_Player.RandomFlyto('T140');
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
               This_Player.Give('50Ԫ��' , 1);
			   This_Player.Give('50������' , 1);
			   This_Player.Give('��Ա��ˮ' , 1);
			   ServerSay('�������<' + This_Player.Name + '>��ȡ�˻�Աÿ�ո���.', 2);		
               This_Player.PlayerDialog(
             '�����ѷ������İ���!');
             This_Player.setV(50,1,sum1 + 1) ;
      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'	);       
               end else
               This_Player.PlayerDialog(
               '���Ѿ����һ����,����������!\');
 end;                        //ÿ�ո��� 



procedure _Normal;  //����̵�
var temp : integer;
begin
  temp := random(2);
  if temp = 1 then
  begin
  This_Player.PlayerDialog(
   '��л���ҿ���Ϊ����ʲô����������۵Ķ��������ֵ���Ʒ��\�����ҿ�������ʡ���Ҿ�ӪŶ��\ '
  +'|{cmd}<�������/@lingfuBuy>\'
  +'|{cmd}<�˳�/@doexit>'
  );
  end
  else
  begin
  This_Player.PlayerDialog(
   '��л���ҿ���Ϊ����ʲô����������۵Ķ��������ֵ���Ʒ��\�����ҿ�������ʡ���Ҿ�ӪŶ��\'
  +'|{cmd}<�������/@lingfuBuy>\'
  +'|{cmd}<�˳�/@doexit>'
  );
  end;
end;

function geiLinfItemName(itemId : integer):string; 
begin
    result := '';
    case itemId of   
	    5 : result := '�޸���ˮ';	
        6 : result := '���洫��ʯ';
        7 : result := '���ش���ʯ';
        8 : result := '�������ʯ';
        9 : result := 'ħѪʯ(��)';
        10 : result := '��ҳ';
        11 : result := '����Ž�';       
        12 : result := '����';
        13 : result := 'ף����';
        14 : result := '���������';
        15 : result := '������ɫҩ��';
        16 : result := '������ɫҩ��';
	    17 : result := '����ͷ��';
    end;
end;

function needLFnum(itemId : integer):integer; 
begin
    result := 0;
    case itemId of    
        5 : result := 10;    
        6 : result := 30;
        7 : result := 30;
        8 : result := 30;
        9 : result := 100;
        10 : result := 50;
        11 : result := 20;
        12 : result := 30;
        13 : result := 40;
        14 : result := 10;
        15 : result := 10;
        16 : result := 10;
		17 : result := 20;
    end;
end;

procedure _lingfu;
var str : string;
i : integer;
begin
   str := '';
   
   for i:=5 to 23 do
   begin
       str := str + '<' + geiLinfItemName(i) + '/@buyLFitem_Dlg~' + inttostr(i) + '>'
       if (i mod 2) = 1 then
       str := str + '^'
       else
       str := str + '|'; 
   end;
   This_Player.PlayerDialog(
  '��ѡ����Ҫ�������Ʒ\ \|{cmd}'
  +str
  +'{cmd}<����/@1238>'
  );
end;

procedure _buyLFitem_Dlg(strId : string);
var str : string;
i : integer;
begin
   str := '';
   
   i := StrToIntDef(strId,0);
 
   This_Player.PlayerDialog(
  '����<' + geiLinfItemName(i) + '/c=red>��Ҫ<' + inttostr(needLFnum(i)) + '���/c=red>��|��ȷ��ʹ��' + inttostr(needLFnum(i)) + '�������' + geiLinfItemName(i) + '��\ \'
  +'|{cmd}<ȷ�Ϲ���' + geiLinfItemName(i) + '/@buyLFitem~' + strId + '>'
  +'{cmd}<����/@lingfu>'
  );
end;

procedure _buyLFitem(strId : string);
var itemId , needLf: integer;
iName : string;
begin
    itemId := StrToIntDef(strId , 0);
    needLf := needLFnum(itemId);
    iName := geiLinfItemName(itemId);
    
    if iName <> '' then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
            if This_Player.MyLFnum >= needLf then
            begin
                This_Player.DecLF(10001, needLf, false);
                This_Player.Give(iName,1);
                This_Player.PlayerDialog(
                '��ϲ����:' + iName + '��'
                +'|{cmd}<��������' + iName + ' /@buyLFitem~' + strId + '>'
                +'|{cmd}<����/@lingfu>'
                );
            end else
            This_Player.PlayerDialog(
          '����������㣬�޷�����'
          +'{cmd}<����/@lingfu>'
          );
        end else
        This_Player.PlayerDialog(
      '�����ռ䲻�㣬�޷�����'
      +'{cmd}<����/@lingfu>'
      );
    end;
end;


Procedure _doexit;
begin
   This_Player.CloseDialog(This_Player);
end;

function Gaoji0LB(price, num: Integer):boolean;
begin                                               

  result := true;
end;

  


procedure _xiane4;
     begin
    if This_Player.FreeBagNum > 0 then
begin
   if This_Player.MyLFnum >= 800 then 
  begin
  This_Player.Give('100Ԫ��',1);
  This_Player.DecLF(0, 800, false);
  ServerSay('���<' + This_Player.Name + '>�û�Ա����һ���Ԫ��', 2);
  end
    else
    This_Player.PlayerDialog(
    '�Բ�����û��800��������ܶһ�Ԫ����'
    );
  end else
   This_Player.PlayerDialog(
	'�Բ����㱳��������'
	);
	end;

procedure _xiane5;
     begin
    if This_Player.FreeBagNum > 0 then
begin
   if This_Player.MyLFnum >= 500 then 
  begin
  This_Player.Give('���ʯ',80);
  This_Player.DecLF(0, 500, false);
  ServerSay('���<' + This_Player.Name + '>�û�Ա����һ��˽��ʯ', 2);
  end
    else
    This_Player.PlayerDialog(
    '�Բ�����û��500��������ܶһ����ʯ��'
    );
  end else
   This_Player.PlayerDialog(
	'�Բ����㱳��������'
	);
	end;
	
	
	
	
	procedure _xiane6;
     begin
    if This_Player.FreeBagNum > 0 then
begin
   if This_Player.MyLFnum >= 100 then 
  begin
  This_Player.Give('100������',1);
  ServerSay('�������<' + This_Player.Name + '>�û�Ա������ȡ��100���', 2);
  This_Player.DecLF(0, 100, false);
  end
    else
    This_Player.PlayerDialog(
    '�Բ�����û��100���������ȡ����'
    );
  end else
   This_Player.PlayerDialog(
	'�Բ����㱳��������'
	);
	end;
	
	
procedure _xiane7;
     begin
    if This_Player.FreeBagNum > 0 then
begin
   if This_Player.YBNum >= 100 then 
  begin
  This_Player.Give('100Ԫ��',1);
  ServerSay('�������<' + This_Player.Name + '>�û�Ա������ȡ��100Ԫ��', 2);
  This_Player.PsYBConsum(This_Player,'YB_NewComeBag',20001,100,1); 
  end
    else
    This_Player.PlayerDialog(
    '�Բ�����û��100Ԫ�������ܶһ�ȡ����'
    );
  end else
   This_Player.PlayerDialog(
	'�Բ����㱳��������'
	);
	end;
		





procedure _huhuan;
   begin
      This_Player.PlayerDialog(
      '����������Ի��һ���Ŷ\ \'
	  +'|{cmd}<800����һ�100��Ԫ��/@xiane4>  \'
	  +'|{cmd}<500����һ�80�����ʯ/@xiane5>  \'
	  +'|{cmd}<��ȡ100���/@xiane6>  \'
	  +'|{cmd}<��ȡ100Ԫ��/@xiane7>  \'
      +'|{cmd}<����/@1238>  \'
	  );
end;
  
    //���� 


procedure _my;                  //��ҩ 
begin
  This_Player.PlayerDialog(
  '��ӭ�������ľͺû�Ա���Ŀ����ҩ����\ \'
  +'|{cmd}<������ҩ/@cjjcy>    ^<����ħ��ҩ/@cjmfy>    ^<������ɫҩ��/@cjhsyf>\'
  +'|{cmd}<������ɫҩ��/@cjhsyf1>    ^<����ѩ˪��/@wnxs>    ^< ̫��ˮ��/@tys>\'
  +'|{cmd}<����ҩ��/@lsy>    ^<�����(��)/@hsf>                          '
  );
end;
 
procedure _cjjcy;
 begin  
            if  This_Player.GoldNum >= 500 then 
            begin 
              if  This_Player.FreeBagNum >= 2 then  
              begin 
               This_Player.Give('������ҩ' , 1);
               This_Player.DecGold(500);
               This_Player.PlayerDialog(
             '������ҩ�ѷ������İ���!')      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'); 
              end else
              This_Player.PlayerDialog(
              '��Ľ�Ǯ����!\');       
end;
 
 procedure _cjmfy;
   begin  
            if  This_Player.GoldNum >= 500 then 
            begin 
              if  This_Player.FreeBagNum >= 2 then  
              begin 
               This_Player.Give('����ħ��ҩ' , 1);
               This_Player.DecGold(500);
               This_Player.PlayerDialog(
             '����ħ��ҩ�ѷ������İ���!')      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'); 
              end else
              This_Player.PlayerDialog(
              '��Ľ�Ǯ����!\');      
end;
   
  procedure _cjhsyf;
   begin  
            if  This_Player.GoldNum >= 500 then 
            begin 
              if  This_Player.FreeBagNum >= 2 then  
              begin 
               This_Player.Give('������ɫҩ��' , 1);
               This_Player.DecGold(500);
               This_Player.PlayerDialog(
             '������ɫҩ���ѷ������İ���!')      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'); 
              end else
              This_Player.PlayerDialog(
              '��Ľ�Ǯ����!\');
end;
   
procedure _cjhsyf1;
begin  
            if  This_Player.GoldNum >= 500 then 
            begin 
              if  This_Player.FreeBagNum >= 2 then  
              begin 
               This_Player.Give('������ɫҩ��' , 1);
               This_Player.DecGold(500);
               This_Player.PlayerDialog(
             '������ɫҩ���ѷ������İ���!')      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'); 
              end else
              This_Player.PlayerDialog(
              '��Ľ�Ǯ����!\');      
end;
   
procedure _wnxs;
 begin  
            if  This_Player.GoldNum >= 500 then 
            begin 
              if  This_Player.FreeBagNum >= 2 then  
              begin 
               This_Player.Give('����ѩ˪��' , 1);
               This_Player.DecGold(500);
               This_Player.PlayerDialog(
             '����ѩ˪���ѷ������İ���!')      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'); 
              end else
              This_Player.PlayerDialog(
              '��Ľ�Ǯ����!\');      
end;

   procedure _tys;
   begin  
            if  This_Player.GoldNum >= 500 then 
            begin 
              if  This_Player.FreeBagNum >= 2 then  
              begin 
               This_Player.Give('̫��ˮ��' , 1);
               This_Player.DecGold(500);
               This_Player.PlayerDialog(
             '̫��ˮ���ѷ������İ���!')      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'); 
              end else
              This_Player.PlayerDialog(
              '��Ľ�Ǯ����!\');      
end;
      
procedure _lsy;
            begin  
            if  This_Player.GoldNum >= 500 then 
            begin 
              if  This_Player.FreeBagNum >= 2 then  
              begin 
               This_Player.Give('����ҩ��' , 1);
               This_Player.DecGold(500);
               This_Player.PlayerDialog(
             '����ҩ���ѷ������İ���!')      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'); 
              end else
              This_Player.PlayerDialog(
              '��Ľ�Ǯ����!\');      
end;
   
procedure _hsf; 
begin 

            if  This_Player.GoldNum >= 500 then 
            begin 
              if  This_Player.FreeBagNum >= 2 then  
              begin 
               This_Player.Give('�����(��)' , 1);
               This_Player.DecGold(500);
               This_Player.PlayerDialog(
             '�����(��)�ѷ������İ���!')      
              end else
              This_Player.PlayerDialog(
              'û���㹻�İ����ռ�!\'); 
              end else
              This_Player.PlayerDialog(
              '��Ľ�Ǯ����!\');      
end;
      
   
//--------GM����---------------------------- 

procedure TempExpBylv();
var tempLv , tempExp : integer;
begin
    tempExp := 0;  
    tempLv := This_Player.Level;
 if (tempLv >= 1) and (tempLv <= 25) then tempExp := 20 
    else if (tempLv >= 25) and (tempLv <= 35) then tempExp := 10 
    else if (tempLv >= 35) and (tempLv <= 40) then tempExp := 8 
    else if (tempLv >= 40) and (tempLv <= 45) then tempExp := 5
	else if (tempLv >= 45) and (tempLv <= 50) then tempExp := 3
    else if (tempLv >= 50) then tempExp := 2; 
{   if (GetMonth = 20) and (GetDay = 22) and (GetHour < 1) and (This_Player.MapName <> '0139~22')then
     This_Player.RandomFlyTo('0139~22');    }  
	if (tempLv == 9) or (tempLv == 19) or (tempLv == 29) or (tempLv == 39) or (tempLv == 49) or (tempLv == 59) or (tempLv == 69) then 
	begin
		This_Player.FlyTo('M100', 285, 280);
	end;
	
   { if tempExp > 0 then
    
     This_Player.MultiTempExpRate := tempExp;
        This_Player.PlayerNotice('��ǰ���鱶����' + inttostr(tempExp) + '��',2); 
		This_Player.PlayerNotice('�������֪һ��,Ը��������,�����Կɻ�Ц�����',2); 
	    ServerSay('�귨Ӣ�ۡ��' + This_Player.Name + '�������½��¹��ԭ,���������ó�!',3);
     end;  }
end; 
    	



//---------------------------GM����---------------------------- 
procedure JHTZ_XH_ZS();
var wuqi, xianglian, toukui , shouzhuo1 , shouzhuo2 , jiezhi1 , jiezhi2  : string;
begin
wuqi := This_Player.GetItemNameOnBody(1);
xianglian := This_Player.GetItemNameOnBody(3);
toukui := This_Player.GetItemNameOnBody(4);
shouzhuo1 := This_Player.GetItemNameOnBody(5);
shouzhuo2 := This_Player.GetItemNameOnBody(6);
jiezhi1 := This_Player.GetItemNameOnBody(7);
jiezhi2 := This_Player.GetItemNameOnBody(8);
//////////��֤�ɹ���ü��ܲ���ѭ����֤
if (wuqi = '�þ�֮��') or (wuqi = 'ŭն') or (wuqi = '����') or (wuqi = '����֮��') then 
begin
  if (xianglian = 'ʥս����') and (toukui = 'ʥսͷ��') then 
  begin
  if (shouzhuo1 = 'ʥս����') or (shouzhuo2 = 'ʥս����') then 
    begin
	  if (jiezhi1 = 'ʥս��ָ') or (jiezhi2 = 'ʥս��ָ') then 
	  begin
	  if This_Player.GetSkillLevelExt('��ɱ����',false) < 4 then
	  begin
      This_Player.ChgSkillLv('��ɱ����',4,0);
      This_Player.PlayerNotice('������װ����ɹ�,������4����ɱ������',2);
	  end;
	  end else
begin
if This_Player.GetSkillLevelExt('��ɱ����',false) = 4 then
begin
This_Player.ChgSkillLv('��ɱ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ����ָ,��װЧ����ʧ��',2);
end;
end;
	end else
begin
if This_Player.GetSkillLevelExt('��ɱ����',false) = 4 then
begin
This_Player.ChgSkillLv('��ɱ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ�������,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('��ɱ����',false) = 4 then
begin
This_Player.ChgSkillLv('��ɱ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ���������ͷ��,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('��ɱ����',false) = 4 then
begin
This_Player.ChgSkillLv('��ɱ����',3,0);
This_Player.PlayerNotice('ȱ��սʿ����,��װЧ����ʧ��',2);
end;
end;
end;

procedure JHTZ_XH_FS();
var wuqi, xianglian, toukui , shouzhuo1 , shouzhuo2 , jiezhi1 , jiezhi2  : string;
begin
wuqi := This_Player.GetItemNameOnBody(1);
xianglian := This_Player.GetItemNameOnBody(3);
toukui := This_Player.GetItemNameOnBody(4);
shouzhuo1 := This_Player.GetItemNameOnBody(5);
shouzhuo2 := This_Player.GetItemNameOnBody(6);
jiezhi1 := This_Player.GetItemNameOnBody(7);
jiezhi2 := This_Player.GetItemNameOnBody(8);
//////////��֤�ɹ���ü��ܲ���ѭ����֤
if (wuqi = '����Ȩ��') or (wuqi = '����') or (wuqi = '�Ȼ귨��') or (wuqi = 'Ѫ��') or (wuqi = '����֮��') then 
begin
  if (xianglian = '��������') and (toukui = '����ͷ��') then 
  begin
  if (shouzhuo1 = '��������') or (shouzhuo2 = '��������') then 
    begin
	  if (jiezhi1 = '�����ָ') or (jiezhi2 = '�����ָ') then 
	  begin
	  if This_Player.GetSkillLevelExt('ħ����',false) < 4 then
	  begin
      This_Player.ChgSkillLv('ħ����',4,0);
      This_Player.PlayerNotice('������װ����ɹ�,������4��ħ���ܣ�',2);
	  end;
	  end else
begin
if This_Player.GetSkillLevelExt('ħ����',false) = 4 then
begin
This_Player.ChgSkillLv('ħ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ����ָ,��װЧ����ʧ��',2);
end;
end;
	end else
begin
if This_Player.GetSkillLevelExt('ħ����',false) = 4 then
begin
This_Player.ChgSkillLv('ħ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ�������,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('ħ����',false) = 4 then
begin
This_Player.ChgSkillLv('ħ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ���������ͷ��,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('ħ����',false) = 4 then
begin
This_Player.ChgSkillLv('ħ����',3,0);
This_Player.PlayerNotice('ȱ�ٷ�ʦ����,��װЧ����ʧ��',2);
end;
end;
end;


procedure JHTZ_XH_DS();
var wuqi, xianglian, toukui , shouzhuo1 , shouzhuo2 , jiezhi1 , jiezhi2  : string;
begin
wuqi := This_Player.GetItemNameOnBody(1);
xianglian := This_Player.GetItemNameOnBody(3);
toukui := This_Player.GetItemNameOnBody(4);
shouzhuo1 := This_Player.GetItemNameOnBody(5);
shouzhuo2 := This_Player.GetItemNameOnBody(6);
jiezhi1 := This_Player.GetItemNameOnBody(7);
jiezhi2 := This_Player.GetItemNameOnBody(8);
//////////��֤�ɹ���ü��ܲ���ѭ����֤
if (wuqi = '���ƽ�') or (wuqi = '��ң��') or (wuqi = '�޼���') or (wuqi = '����֮��') then 
begin
  if (xianglian = '��������') and (toukui = '����ͷ��') then 
  begin
  if (shouzhuo1 = '��������') or (shouzhuo2 = '��������') then 
    begin
	  if (jiezhi1 = '�����ָ') or (jiezhi2 = '�����ָ') then 
	  begin
	  if This_Player.GetSkillLevelExt('ʩ����',false) < 4 then
	  begin
      This_Player.ChgSkillLv('ʩ����',4,0);
	  This_Player.PlayerNotice('������װ����ɹ�,������4��ʩ������',2);
	  end;
	  end else
begin
if This_Player.GetSkillLevelExt('ʩ����',false) = 4 then
begin
This_Player.ChgSkillLv('ʩ����',3,0);
This_Player.PlayerNotice('ȱ�������ָ,��װЧ����ʧ��',2);
end;
end;
	end else
begin
if This_Player.GetSkillLevelExt('ʩ����',false) = 4 then
begin
This_Player.ChgSkillLv('ʩ����',3,0);
This_Player.PlayerNotice('ȱ����������,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('ʩ����',false) = 4 then
begin
This_Player.ChgSkillLv('ʩ����',3,0);
This_Player.PlayerNotice('ȱ������������ͷ��,��װЧ����ʧ��',2);
end;
end;
end else
begin
if This_Player.GetSkillLevelExt('ʩ����',false) = 4 then
begin
This_Player.ChgSkillLv('ʩ����',3,0);
This_Player.PlayerNotice('ȱ�ٵ�ʿ����,��װЧ����ʧ��',2);
end;
end;
end;

procedure JHTZ_KS(); 
begin            
  case This_Player.Job of
       0: 
	   JHTZ_XH_ZS();
       1: 
	   JHTZ_XH_FS();
       2: 
	   JHTZ_XH_DS();
  end;
end; 



//---------------------------GM����---------------------------- 
begin
   
   TempExpBylv();
     
   if AutoOpen(2) then
   begin 
     if This_Player.CheckAuthen(1,100) = false then
     begin
     This_Player.PlayerNotice('����ǰΪδ��֤�û�����Я��200���Һ�ʹ��20��ֿ⣬���Ի��������Ʒ�����޷�ת�ơ�������Ʒ��������ҡ�',2);
     This_Player.PlayerNotice('������ͨ��������Ϸ���ݣ���ߴ������÷���30�֣��ڸ��ֿ����Ա�ʹ���Ա����Ϊ��֤�û���',2);
     end;
   end else
   begin
     if This_Player.CheckAuthen(1,100) = false then
     begin
     This_Player.PlayerNotice('����ǰΪδ��֤�û���'+inttostr(AutoOpenDay(2))+'��󽫿�����֤���ܣ���֤���ܿ�����δ��֤�û�����Я��200���Һ�ʹ��20��ֿ⣬���Ի��������Ʒ�����޷�ת�ơ�������Ʒ��������ҡ�',2);
     This_Player.PlayerNotice('��Ҳ����ͨ��������Ϸ���ݣ���ߴ������÷���30�֣���ǰ�ڸ��ֿ����Ա�ʹ���Ա����Ϊ��֤�û���',2);
     end;
   end;  
end.