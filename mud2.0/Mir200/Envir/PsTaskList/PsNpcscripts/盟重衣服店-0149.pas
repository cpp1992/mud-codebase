{********************************************************************

*******************************************************************}


program mir2;

{$I common.pas}
{$I ActiveValidateCom.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure NormalDialog;
begin

   This_Npc.NpcDialog(This_Player,
   'ʲô������֪��ʲô����˭��������֪����Щ��Ϣ�ġ�\������������������ز�ס�ˡ�\����Ϊ�˷�ֹ���ر�������������ֱ𽻸��˼����졣\��Щ����������ڷ�ħ��һ�����������ȥ�����̽һ��Ŷ��\'
   //+'|{cmd}<�����칤����Ĺ���/@gongdian>\' 
   +'|{cmd}<�ϳ�����ս�ס�����ħ�¡���â����/@hecheng>\' 
   +'|{cmd}<�ϳɷ���ħ�ס�����ħ��/@hecheng3>\'
   +'|{cmd}<�ϳ������·�/@hecheng5>\'
   +'|{cmd}<ǿ������ս�ס�����ħ�¡���â����/@@StrengthenCloth>\'  //@@StrengthenCloth   qianghua
   +'|{cmd}<��/@buy>�·�'+ addSpace('', 16) + '^<�޸�/@repair>�·�\'           
   +'|{cmd}<��/@sell>�·�'+ addSpace('', 16) + '^<��������/@s_repair>\'
   +'|{cmd}<�˳�/@doexit>'
   );

end;

procedure _hecheng5;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳ���Ҫ����Ʒ����ڰ���һ��Լ��鿴�����Ƿ���ȫ\ \'+
  
  '|{cmd}<����ս��(��)/@DsH1>           ^<����ս��(Ů)/@DsH2>\'+
  '|{cmd}<���ߵ���(��)/@DsH3>           ^<���ߵ���(Ů)/@DsH4>\'+
  '|{cmd}<����ħ��(��)/@DsH5>           ^<����ħ��(Ů)/@DsH6>\ \'+
  '|{cmd}<����/@main>');
end;

Procedure DuanZaoMB3(tu07:string; tu08:string; tu09:string; tu10:string; tu11:string; tu12:string; DZItem3:string);
begin
   if ( This_Player.GetBagItemCount(tu07) >= 1 ) and ( This_Player.GetBagItemCount(tu08) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu09) >= 1 ) and ( This_Player.GetBagItemCount(tu10) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu11) >= 1 ) and ( This_Player.GetBagItemCount(tu12) >= 1 ) 
         and  ( This_Player.GetBagItemCount('���ʯ') >= 88888 ) then  
   begin
      This_Player.Take(tu07,1);
      This_Player.Take(tu08,1);
      This_Player.Take(tu09,1);
      This_Player.Take(tu10,1);
      This_Player.Take(tu11,1);
      This_Player.Take(tu12,1);
      This_Player.Take('���ʯ',88888);
      This_Player.Give(DZItem3,1);
     
      This_NPC.NpcDialog(This_Player,
      '��ϲ���������Ѿ��ɹ�����ȥ�������İ����ɣ�');
       ServerSay('�귨��½��Ȼ����ɫ�䣬������ҡ���'+ This_Player.Name+'���������ط�װ��ɹ�������������߼�ս�ס����ҿ���ǰ��Ĥ�ݣ�',3);
   end else 
   begin
      This_NPC.NpcDialog(This_Player,
      '�ܿ�ϧ����û�ж���������㹻ԭ�ϡ�');
   end;
 end;
 
  procedure _DsH6 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ħ��(��)������Ʒ��\'+
   '���ʯ��88888��\'+
   '3ְҵ��Ůħ���·���6��\ \'+
   '����<����/@yi6>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi6;
Begin

      DuanZaoMB3('����ս��(��)','��â����(��)','����ħ��(��)','����ս��(Ů)','��â����(Ů)','����ħ��(Ů','����ħ��(Ů)');
      
end; 

 procedure _DsH5 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ħ��(��)������Ʒ��\'+
   '���ʯ��88888��\'+
   '3ְҵ��Ůħ���·���6��\ \'+
   '����<����/@yi5>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi5;
Begin

      DuanZaoMB3('����ս��(��)','��â����(��)','����ħ��(��)','����ս��(Ů)','��â����(Ů)','����ħ��(Ů','����ħ��(��)');
      
end; 

 
 procedure _DsH4 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ����ߵ���(Ů)������Ʒ��\'+
   '���ʯ��88888��\'+
   '3ְҵ��Ůħ���·���6��\ \'+
   '����<����/@yi4>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi4;
Begin

      DuanZaoMB3('����ս��(��)','��â����(��)','����ħ��(��)','����ս��(Ů)','��â����(Ů)','����ħ��(Ů','���ߵ���(Ů)');
      
end; 

 
procedure _DsH3 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ����ߵ���(��)������Ʒ��\'+
   '���ʯ��88888��\'+
   '3ְҵ��Ůħ���·���6��\ \'+
   '����<����/@yi3>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi3;
Begin

      DuanZaoMB3('����ս��(��)','��â����(��)','����ħ��(��)','����ս��(Ů)','��â����(Ů)','����ħ��(Ů','���ߵ���(��)');
      
end; 




 
 
 
procedure _DsH2 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ս��(Ů)������Ʒ��\'+
   '���ʯ��88888��\'+
   '3ְҵ��Ůħ���·���6��\ \'+
   '����<����/@yi2>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi2;
Begin

      DuanZaoMB3('����ս��(��)','��â����(��)','����ħ��(��)','����ս��(Ů)','��â����(Ů)','����ħ��(Ů','����ս��(Ů)');
      
end; 

procedure _DsH1 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ս��(��)������Ʒ��\'+
   '���ʯ��88888��\'+
   '3ְҵ��Ůħ���·���6��\ \'+
   '����<����/@yi1>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi1;
Begin

      DuanZaoMB3('����ս��(��)','��â����(��)','����ħ��(��)','����ս��(Ů)','��â����(Ů)','����ħ��(Ů','����ս��(��)');
      
end;






procedure _hecheng3;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳ���Ҫ����Ʒ����ڰ���һ��Լ��鿴�����Ƿ���ȫ\ \'+
  
  '|{cmd}<����ħ��/@ft>           ^<����ħ��/@ht>\'+
  
  
  '|{cmd}<����/@main>');

end;

 Procedure DuanZaoMB1(tu04:string; tu05:string; tu06:string;  DZItem1:string);
begin
   if ( This_Player.GetBagItemCount(tu04) >= 1 ) and ( This_Player.GetBagItemCount(tu05) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu06) >= 1 ) 
     and  ( This_Player.GetBagItemCount('���ʯ') >=8888 ) then  
   begin
     
      This_Player.Take(tu04,1);    
      This_Player.Take(tu05,1);
      This_Player.Take(tu06,1);
      This_Player.Take('���ʯ',8888);
      This_Player.Give(DZItem1,1);
     
      This_NPC.NpcDialog(This_Player,
      '��ϲ���������Ѿ��ɹ�����ȥ�������İ����ɣ�');
       ServerSay('�귨��½��Ȼ����ɫ�䣬������ҡ���'+ This_Player.Name+'���������ط�װ��ɹ����������ħ����ս�ס����ҿ���ǰ��Ĥ�ݣ�',3);
   end else 
   begin
      This_NPC.NpcDialog(This_Player,
      '�ܿ�ϧ����û�ж���������㹻ԭ�ϡ�');
   end;
 end;
procedure _ft ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɷ���ħ��������Ʒ��\'+
   '���ʯ��8888��\'+
   '3ְҵ��ħ���·�\ \'+
   '����<����/@yif1>\'+
  
   '|{cmd}<�ر�/@exit>');
end; 

Procedure _yif1;
Begin

      DuanZaoMB1('����ս��(��)','��â����(��)','����ħ��(��)','����ħ��');
      
end;

procedure _ht ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɻ���ħ��������Ʒ��\'+
   '���ʯ��8888��\'+
   '3ְҵŮħ���·�\ \'+
   '����<����/@yif2>\'+
  
   '|{cmd}<�ر�/@exit>');
end; 

Procedure _yif2;
begin

      DuanZaoMB1('����ս��(Ů)','��â����(Ů)','����ħ��(Ů)','����ħ��');
      
end;




procedure _hecheng;

begin
  
  This_Npc.NpcDialog(This_Player,
  '�ϳ�����ս�ס�����ħ�¡���â���ۣ���ҪһЩԭ�ϣ�\������Ӧ��40����װ������Ҫ���ʯ888�ţ�\'
  +'|{cmd}<�ϳ�����ս�ס�����ħ�¡���â����/@hecheng1>\'
  
  
  +'|{cmd}<����/@main>'
  );
end;





procedure _hecheng1;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳ���Ҫ����Ʒ����ڰ���һ��Լ��鿴�����Ƿ���ȫ\ \'+
  
  '|{cmd}<����ս��(��)/@DsHecheng1>           ^<����ս��(Ů)/@DsHecheng2>\'+
  '|{cmd}<����ħ��(��)/@DsHecheng3>           ^<����ħ��(Ů)/@DsHecheng4>\'+
  '|{cmd}<��â����(��)/@DsHecheng5>           ^<��â����(Ů)/@DsHecheng6>\ \'+
  '|{cmd}<����/@main>');
end;

Procedure DuanZaoMB(tu01:string; tu02:string; tu03:string; tu04:string; tu05:string; tu06:string; DZItem:string);
begin
   if ( This_Player.GetBagItemCount(tu01) >= 1 ) and ( This_Player.GetBagItemCount(tu02) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu03) >= 1 ) and ( This_Player.GetBagItemCount(tu04) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu05) >= 1 ) and ( This_Player.GetBagItemCount(tu06) >= 1 ) 
         and  ( This_Player.GetBagItemCount('���ʯ') >= 888 ) then  
   begin
      This_Player.Take(tu01,1);
      This_Player.Take(tu02,1);
      This_Player.Take(tu03,1);
      This_Player.Take(tu04,1);
      This_Player.Take(tu05,1);
      This_Player.Take(tu06,1);
      This_Player.Take('���ʯ',888);
      This_Player.Give(DZItem,1);
     
      This_NPC.NpcDialog(This_Player,
      '��ϲ���������Ѿ��ɹ�����ȥ�������İ����ɣ�');
       ServerSay('�귨��½��Ȼ����ɫ�䣬������ҡ���'+ This_Player.Name+'���������ط�װ��ɹ����������ħ����ս�ס����ҿ���ǰ��Ĥ�ݣ�',3);
   end else 
   begin
      This_NPC.NpcDialog(This_Player,
      '�ܿ�ϧ����û�ж���������㹻ԭ�ϡ�');
   end;
 end;
 

procedure _DsHecheng1 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ս��(��)������Ʒ��\'+
   '���ʯ��888��\'+
   '3ְҵ��Ů40��װ��6��\ \'+
   '����<����/@yifu1>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yifu1;
Begin

      DuanZaoMB('��ħ���','ʥս����','��������','��������','�������','��ʦ����','����ս��(��)');
      
end;


procedure _DsHecheng2;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ս��(Ů)������Ʒ��\'+
   '���ʯ��888��\'+
   '3ְҵ��Ů40��װ��6��\ \'+
   '����<����/@yifu2>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yifu2;
Begin

      DuanZaoMB('��ħ���','ʥս����','��������','��������','�������','��ʦ����','����ս��(Ů)');
      
end;

procedure _DsHecheng3;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ħ��(��)������Ʒ��\'+
   '���ʯ��888��\'+
   '3ְҵ��Ů40��װ��6��\ \'+
   '����<����/@yifu3>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yifu3;
Begin
    
      DuanZaoMB('��ħ���','ʥս����','��������','��������','�������','��ʦ����','����ħ��(��)');
      
end;


procedure _DsHecheng4;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ħ��(Ů)������Ʒ��\'+
   '���ʯ��888��\'+
   '3ְҵ��Ů40��װ��6��\ \'+
   '����<����/@yifu4>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yifu4;
Begin
    
      
      DuanZaoMB('��ħ���','ʥս����','��������','��������','�������','��ʦ����','����ħ��(Ů)');
       
end;

procedure _DsHecheng5;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɹ�â����(��)������Ʒ��\'+
   '���ʯ��888��\'+
   '3ְҵ��Ů40��װ��6��\ \'+
   '����<����/@yifu5>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yifu5;
Begin
   
     
      DuanZaoMB('��ħ���','ʥս����','��������','��������','�������','��ʦ����','��â����(��)');
  end;   


procedure _DsHecheng6;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɹ�â����(Ů)������Ʒ��\'+
   '���ʯ��888��\'+
   '3ְҵ��Ů40��װ��6��\ \'+
   '����<����/@yifu6>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yifu6;
Begin

      DuanZaoMB('��ħ���','ʥս����','��������','��������','�������','��ʦ����','��â����(Ů)');
     
end;



//ǿ��
procedure _qianghua;
begin
  This_Npc.NpcDialog(This_Player,
  'ǿ������ս�ס�����ħ�¡���â���ۣ��������Щ�·����ڰ������\'
  +'��ҪһЩ���ϣ�����188�Ž��ʯ��ͬʱ����Ҫ��Ӧ��3��ʥս����\'
  +'�𡢷���ϵ����Ʒ���һ�۳��������3����Щ��Ʒ��ǿ��ʱ�ɰ���\'
  +'�죬���ʧ�ܣ����ʯ��ʥս����Ʒ������ʧ��ֻ������·�\'
  +'�ܻ����������⣬ÿ���·����ֻ�ܳɹ�ǿ��3�Σ�ÿ��ǿ���ɹ�����\'
  +'������1���Ӧ�Ĺ�����ħ���������⣬��������ħ���ͷ�����1�㡣\ \'
  +'|{cmd}<ǿ������ս�ס�����ħ�¡���â����/@@StrengthenCloth>\'
  +'|{cmd}<����/@main>'
  );
end;


 
Procedure _StrengthenGo(str:String);
var
temp:integer; 
str_not,str_att:string; 
begin
   temp := strtointdef(str,-1);
   if (temp < 1) or (temp > 6) then exit;
   case temp of
     1:
     begin
     str:='����ս��(��)';
     str_att:='����';
     end;
     2:
     begin
     str:='����ս��(Ů)';
     str_att:='����';
     end;
     3:
     begin
     str:='����ħ��(��)';
     str_att:='ħ��';
     end;
     4:
     begin
     str:='����ħ��(Ů)';
     str_att:='ħ��';
     end;
     5:
     begin
     str:='��â����(��)';
     str_att:='����';
     end;
     6:
     begin
     str:='��â����(Ů)';
     str_att:='����';
     end;
   end;
   //temp := This_NPC.ClickStrengthenClothes(This_Player,str);
   case temp of
     0,2:str_not:='δ������Ӧ�·�������ǿ����'; 
     1:
     begin 
     str_not:='��ϲ�㣬ǿ���ɹ���';
     This_NPC.NpcNotice('��ϲ'+ This_Player.Name+'�����ط�װ��ɹ�ǿ����'+str+'��');
     end;
     -1,3,7:str_not:='��װ������ǿ����';
     4:str_not:='���ʯ���㣬����ǿ����';
     5:str_not:='ȱ����Ҫ���Σ�����ǿ����';
     6:str_not:='���ź���ǿ��ʧ�ܣ����·����������Ͼ������ġ�';
     8:str_not:='�㴩�����·��Ѿ�ǿ����3���ˣ������ٴ�ǿ����';
   end;
   This_NPC.NpcDialog(This_Player,str_not);
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ʲô�����·���\ \ \<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ�����·����ҿ������һ��������ۡ�\ \<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '�����ȥҪ�޲����·���\ \ \<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�����޲��úܲ���\ \ \ <����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\����������ͨ��3����'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \<����/@main>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.AddStdMode(27);
  This_Npc.AddStdMode(28);
  This_Npc.FillGoods('����(��)',50,1);
  This_Npc.FillGoods('����(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1); 
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1);
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('����ս��(��)',50,1);
  This_Npc.FillGoods('����ս��(Ů)',50,1);
  This_Npc.FillGoods('��ħ����(��)',30,1);
  This_Npc.FillGoods('��ħ����(Ů)',30,1);
  This_Npc.FillGoods('ս�����(��)',30,1);
  This_Npc.FillGoods('ս�����(Ů)',30,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  //domain;
  NormalDialog;
end.