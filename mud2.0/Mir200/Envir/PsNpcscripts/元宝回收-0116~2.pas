{

/************************************************************************}








PROGRAM Mir2;



{$I common.pas}



Procedure _doexit;

begin

   This_Npc.CloseDialog(This_Player);

end;



procedure domain;

begin

  This_Npc.NpcDialog(This_Player,

   '��������Ҫ�ҵİ�����\'+

   '��������Ի����������ϵ�װ����\'+

   '������в�Ҫ��װ������������Ը���һ��ɾ���+Ԫ��\ \'+

   '|{cmd}<װ������/@ZhuangBack>\'+

   '|{cmd}<�˳�/@doexit>');

end;



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

                4 : result := '��ʿ����';

                7 : result := '������ָ';

                2 : result := '��ħ����';

                5 : result := '��֮����';

                8 : result := '�ϱ���';

                3 : result := '�������';

                6 : result := '��������';

                9 : result := '̩̹��ָ';

                10 : result := '����ͷ��';

				11 : result := '����Ȩ��';

				13 : result := '�þ�֮��';

				12 : result := '���ƽ�';

				16 : result := '����ѫ��43��';

				14 : result := '����ѫ��44��';

				15 : result := '����ѫ��45��';

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

        3 : result := 60000;

		4 : result := 160000;

        5 : result := 600000;

        6 : result := 1280000;
		
        
		
    end;

end;





procedure _huishou;

begin

    This_NPC.NpcDialog(This_Player,

    '��ѡ����Ҫ���յ�װ�����ࣺ\'

    +'|{cmd}<����װ��/@zhuangDlg~1>           ^<����װ��/@zhuangDlg~2>\'

    +'|{cmd}<ħ��װ��/@zhuangDlg~3>           ^<ǿ��װ��/@zhuangDlg~4>\'

	+'|{cmd}<ս��װ��/@zhuangDlg~5>           ^<����װ��/@zhuangDlg~6>'

	

	);

end;



procedure _zhuangDlg(LvidStr : string);

var ZlvId , i: integer;

DlgStr , ExpStr ,Iname,Ybstr : string;

begin

    ZlvId := strToIntDef(LvidStr,-1);

    

    ExpStr := inttostr(getZexpNum(ZlvId) div 10000) + '��';

	  Ybstr  := inttostr(getZexpNum(ZlvId) div 10000) + '��';

    DlgStr := '';

    

    for i := 1 to 39 do

    begin

        Iname := getZBnameById(ZlvId * 100 + i);

        if Iname <> '' then

        begin

            DlgStr := DlgStr + '<' + Iname + '/@ZhBackTrue~' + inttostr(ZlvId * 100 + i) + '>';

            if (i mod 3) = 0 then

            DlgStr := DlgStr + '|\'

            else

            DlgStr := DlgStr + '^';

        end; 

    end; 

    

    case ZlvId of

        1 : DlgStr := DlgStr + '<һ����������װ��/@ZUma_all>';

        2 : DlgStr := DlgStr + '<һ�����ճ���װ��/@ChiYue_all>';

        3 : DlgStr := DlgStr + '<һ������ħ��װ��/@tianzhichiyue_all>';

		4 : DlgStr := DlgStr + '<һ������ǿ��װ��/@molong_all>';

		5 : DlgStr := DlgStr + '<һ������ս��װ��/@tianzhimolong_all>';

		6 : DlgStr := DlgStr + '<һ����������װ��/@kaitian_all>';



    end;

    

    This_NPC.NpcDialog(This_Player,

    '��ѡ��װ�����л��գ�����һ��ȫ�����գ� \'

    +'|{cmd}' + DlgStr

    );      

end;



procedure _ZhBackTrue(ZBidStr : string);

var ZBid : integer;

ZBname : string;

begin

    ZBid := StrToIntDef(ZBidStr,-1);

    ZBname := getZBnameById(ZBid);

    if ZBname <> '' then

    begin

        if This_Player.GetBagItemCount(ZBname) > 0 then

        begin

            This_Player.Take(ZBname,1);

            This_Player.Give('����',getZexpNum(ZBid div 100));

            This_NPC.NpcDialog(This_Player,

            '��ϲ��ɹ����գ�'

            +'|{cmd}<��������' + ZBname + '/@ZhBackTrue~' + inttostr(ZBid) + '>'

            +'|{cmd}<����/@zhuangDlg~' + inttostr(ZBid div 100) + '>');

        end else

        This_NPC.NpcDialog(This_Player,

        'װ�����㣬�޷����գ�\'

        +'|{cmd}<����/@zhuangDlg~' + inttostr(ZBid div 100) + '>'

        );  

    end;

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

    

    This_NPC.NpcDialog(This_Player,

     '��İ�������' + inttostr(ZMnum) + '������װ�������տɻ��:' + inttostr(getZexpNum(1) div 10000 * ZMnum) + '���飬��ȷ����������װ����\|' 

    +'|{cmd}<ȷ�ϻ�����������װ��/@ZUma_True>'

    +'|{cmd}<����/@zhuangDlg~1>');

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
				ServerSay('���<' + This_Player.Name + '>������֮�أ�һ��������'+ inttostr(ZMnum) + '������װ��������˾��飡', 2);

            end;

        end; 

    end;

    This_NPC.NpcDialog(This_Player,

    '��ϲ��ɹ����գ�' 

    +'|{cmd}<����/@zhuangDlg~1>');



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

    

    This_NPC.NpcDialog(This_Player,

    '��İ�������' + inttostr(ZMnum) + '������װ�������տɻ��:' + inttostr(getZexpNum(2) div 40000 * ZMnum) + '���飬��ȷ���������г���װ����\|'

    +'|{cmd}<ȷ�ϻ������г���װ��/@Chiyue_True>'

    +'|{cmd}<����/@zhuangDlg~2>');

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
					  ServerSay('���<' + This_Player.Name + '>������֮�أ�һ��������'+ inttostr(ZMnum) + '������װ��������˾��飡', 2);

            end;

        end; 

    end;

    This_NPC.NpcDialog(This_Player,

    '��ϲ��ɹ�����'

    +'|{cmd}<����/@zhuangDlg~2>');



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

    

    This_NPC.NpcDialog(This_Player,

    '��İ�������' + inttostr(ZMnum) + '��ħ��װ�������տɻ��:' + inttostr(getZexpNum(3) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(3) div 80000 * ZMnum) + '��Ԫ������ȷ����������ħ��װ����\|'

    +'|{cmd}<ȷ�ϻ�������ħ��װ��/@tianzhichiyue_True>'

    +'|{cmd}<����/@zhuangDlg~3>');

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

                This_Player.ScriptRequestAddYBNum(getZexpNum(3) div 80000 * ZMnum);
				 ServerSay('���<' + This_Player.Name + '>������֮�أ�һ��������'+ inttostr(ZMnum) + '��ħ��װ��������˾����Ԫ����', 2);

            end;

        end; 

    end;

    This_NPC.NpcDialog(This_Player,

    '��ϲ��ɹ����գ�'

    +'|{cmd}<����/@zhuangDlg~3>');



end;











procedure _molong_all;

var ZMnum , i : integer;

Iname : string;

begin

    ZMnum := 0;

    for i := 1 to 40 do

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

    

    This_NPC.NpcDialog(This_Player,

    '��İ�������' + inttostr(ZMnum) + '��ǿ��װ�������տɻ��:' + inttostr(getZexpNum(4) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(4) div 80000 * ZMnum) + '��Ԫ������ȷ����������ǿ��װ����\|'

    +'|{cmd}<ȷ�ϻ�������ǿ��װ��/@molong_True>'

    +'|{cmd}<����/@zhuangDlg~4>');

end;



procedure  _molong_True;

var ZMnum , i , j , itemNum : integer;

Iname : string;

begin

    ZMnum := 0;

    for i := 1 to 40 do

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

				        This_Player.ScriptRequestAddYBNum(getZexpNum(4) div 80000 * ZMnum);
						 ServerSay('���<' + This_Player.Name + '>������֮�أ�һ��������'+ inttostr(ZMnum) + '��ǿ��װ��������˻��:' + inttostr(getZexpNum(4) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(4) div 80000 * ZMnum) + '��Ԫ����', 2);

            end;

        end; 

    end;

    This_NPC.NpcDialog(This_Player,

    '��ϲ����:' + inttostr(getZexpNum(4) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(4) div 80000 * ZMnum) + '��Ԫ����\|'

    +'|{cmd}<����/@zhuangDlg~4>');



end;













procedure _tianzhimolong_all;

var ZMnum , i : integer;

Iname : string;

begin

    ZMnum := 0;

    for i := 1 to 40 do

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

    

    This_NPC.NpcDialog(This_Player,

    '��İ�������' + inttostr(ZMnum) + '��ս��װ�������տɻ��:' + inttostr(getZexpNum(5) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(5) div 64000 * ZMnum) + '��Ԫ������ȷ����������ս��װ����\|'

    +'|{cmd}<ȷ�ϻ�������ս��װ��/@tianzhimolong_True>'

    +'|{cmd}<����/@zhuangDlg~5>');

end;



procedure  _tianzhimolong_True;

var ZMnum , i , j , itemNum : integer;

Iname : string;

begin

    ZMnum := 0;

    for i := 1 to 40 do

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

                This_Player.ScriptRequestAddYBNum(getZexpNum(5) div 64000 * ZMnum);
				ServerSay('���<' + This_Player.Name + '>������֮�أ�һ��������'+ inttostr(ZMnum) + '��ս��װ��������˾����Ԫ����', 2);

            end;

        end; 

    end;

    This_NPC.NpcDialog(This_Player,

    '��ϲ����:' + inttostr(getZexpNum(5) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(5) div 64000 * ZMnum) + '��Ԫ����\|'

    +'|{cmd}<����/@zhuangDlg~5>');



end;









procedure _kaitian_all;

var ZMnum , i : integer;

Iname : string;

begin

    ZMnum := 0;

    for i := 1 to 40 do

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

    

    This_NPC.NpcDialog(This_Player,

    '��İ�������' + inttostr(ZMnum) + '������װ�������տɻ��:' + inttostr(getZexpNum(6) div 10000 * ZMnum) + '���飬' + inttostr(getZexpNum(6) div 64000 * ZMnum) + '��Ԫ������ȷ��������������װ����\|'

    +'|{cmd}<ȷ�ϻ�����������װ��/@kaitian_True>'

    +'|{cmd}<����/@zhuangDlg~6>');

end;




procedure  _kaitian_True;

var ZMnum , i , j , itemNum : integer;

Iname : string;

begin

    ZMnum := 0;

    for i := 1 to 40 do

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

				This_Player.ScriptRequestAddYBNum(getZexpNum(6) div 64000 * ZMnum);
				ServerSay('���<' + This_Player.Name + '>������֮�أ�һ��������'+ inttostr(ZMnum) + '������װ�������:' + inttostr(getZexpNum(6) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(6) div 25600 * ZMnum) + '��Ԫ����', 2);

            end;

        end; 

    end;

    This_NPC.NpcDialog(This_Player,

    '��ϲ����:' + inttostr(getZexpNum(6) div 10000 * ZMnum) + '���飡' + inttostr(getZexpNum(6) div 25600 * ZMnum) + '��Ԫ����\|'

    +'|{cmd}<����/@zhuangDlg~6>');



end;





Begin

  domain;

end.