{********************************************************************

* ��Ԫ���ƣ�ŭ������
* ��Ԫ���ߣ� 
* ժ    Ҫ��
* ��    ע��

        
*******************************************************************}
program Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

function Gaoji0LB(price, num: Integer):boolean;
var gongji : integer;
begin 
  This_Player.Give('�Ż�ѩ¶',6);                                                    

  result := true;
end;

procedure _buy01;
begin
  if This_Player.FreeBagNum >5 then
  begin 
    This_Player.PsYBConsum(This_NPC,'Gaoji0LB',20050,1,1);
  end else
  begin
    This_NPC.NpcDialog(This_Player,'���İ������㣬�޷���þŻ�ѩ¶��'); 
  end;      
end;

procedure _buy;
begin
  This_NPC.NpcDialog(This_Player,
  '�Ż�ѩ¶������5000��ŭ��ֵ��\ \'
  +'|{cmd}<ʹ��1Ԫ������6���Ż�ѩ¶/@buy01>\ \'
  +'|{cmd}<ʹ��100�������6���Ż�ѩ¶/@buyJHYL02>\'
  +'|{cmd}<ʹ��50�������3���Ż�ѩ¶/@buyJHYL03>\'
  +'|{cmd}<ʹ��17�������1���Ż�ѩ¶/@buyJHYL04>\ \'
  +'|{cmd}<����/@main>\'   
  ); 
end;

procedure buyJHYLCom(NeedGL: integer; sGvitem: string; iGvNum, iNeedBag: integer);
begin
   if This_Player.MyLFnum  < NeedGL then
   begin
      This_NPC.NpcDialog(This_Player,'��û���㹻�������');
      exit;
   end;
   
   if This_Player.FreeBagNum < iNeedBag then
   begin
      This_NPC.NpcDialog(This_Player,'���İ������㣬�޷���þŻ�ѩ¶��');
      exit;
   end;
   

      This_Player.DecLF(20050,NeedGL,false);
      This_Player.Give(sGvitem,iGvNum);

end;

procedure _buyJHYL02;
begin
   buyJHYLCom(100,'�Ż�ѩ¶',6,6);
end;

procedure _buyJHYL03;
begin
   buyJHYLCom(50,'�Ż�ѩ¶',3,3);
end;

procedure _buyJHYL04;
begin
   buyJHYLCom(17,'�Ż�ѩ¶',1,1);
end;

//�����ϻ�������---------begin
Procedure _HeJiSLDu;
var
  ret : Integer;
begin
   ret := This_Player.ChkIfCanAddUSExp;
   if (ret = 0) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�������������ϻ��Ĺ������������鷳��\'+
      '�������ܹ����������������ĺϻ������ȡ�\'+
      'ֻҪ�����1�������ʱ����Լ�5000��ŭ��ֵ��\'+
      '���ܹ�����Ϊ������Ӣ������50��ϻ������ȣ���Σ�\ \'+
      '|{cmd}<����������ϻ�������/@TiHeJii>\ \'+
      '|{cmd}<����/@main>');
   end else if ret < 0 then
   begin
      case ret of
        -1:  This_NPC.NpcDialog(This_Player,
             '��û���г�Ӣ�ۣ����г�Ӣ���������ϻ������ȡ�');
             
        -2:  This_NPC.NpcDialog(This_Player,
             '����Ӣ��û��ϰ�úϻ����޷������ϻ������ȡ�');
             
        -3:  This_NPC.NpcDialog(This_Player,
             '��Ϊ����Ӣ��װ������֮�ģ������޷����������ϻ������ȡ�'); 
      end;
   end;
end;

Procedure _TiHeJii;
var
  ret : Integer;
  error: string; 
begin
   ret := This_Player.AddUSExp(1, 5000, 50);
   if ret >= 0 then
   begin
     This_Npc.NpcDialog(This_Player,
      '��ȷ��ʹ��1�������ʱ�����������5000ŭ��ֵ��\�����ϻ���������\ \'+
      '|{cmd}<��������������/@TiHeJii>\ \'+
      '|{cmd}<����/@main>');
   end else  
   begin
      case ret of
        -1: error := '��û���г�Ӣ�ۣ����г�Ӣ���������ϻ������ȡ�';
        -2: error := '����Ӣ��û��ϰ�úϻ����޷������ϻ������ȡ�';
        -3: error := '��Ϊ����Ӣ��װ������֮�ģ������޷����������ϻ������ȡ�';
        -4: error := '��û���㹻���������ʱ������޷����������ϻ������ȡ�';
        -5: error := '��û���㹻��ŭ��ֵ���޷����������ϻ������ȡ�';
        -6: error := '���ĺϻ��������ѵ��ﵱǰ�ϻ��ȼ������ޣ��޷�����������';
      end;
      error := error + '\<����/@HeJiSLDu>';
      This_NPC.NpcDialog(This_Player,error);
   end;
end;
//�����ϻ�������---------end

//���պ͹������֮��
procedure _Shlong01;
begin
   This_NPC.NpcDialog(This_Player,
   '����֮����ʹ�úϻ��ıر�֮���ȷ��Ҫ���հ����еĻ���֮��\'+
   'ô��\ \'+
   '|{cmd}<ȷ�ϻ���/@Shlong01_1>\ \ \ \'+
   '|{cmd}<����/@main>\'
  );
end; 

procedure _Shlong01_1;
begin
   if This_Player.GetBagItemCount('����֮��') < 1 then
   begin
      This_NPC.NpcDialog(This_Player,'��û�л���֮�ģ����ܻ��ա�\ \<����/@Shlong01>');
   end else
   begin
      This_Player.Take('����֮��',1);
   end;
end;

procedure _Shlong02;
begin
   This_NPC.NpcDialog(This_Player,
   '����֮����ʹ�úϻ��ıر�֮�����������ﹺ�����֮�ġ�\'+
   '|{cmd}<����֮�ģ�����ʱװ��ŭ�����󶨡�/c=red>\ \'+
   '|{cmd}<ʹ��1Ԫ������һ������֮��/@Shlong02_1>\'+
   '|{cmd}<ʹ��100�������һ������֮��/@Shlong02_2>\ \'+
   '|{cmd}<����/@main>\'
   );
end;

function ShenLYb(price, num: Integer): boolean;
begin
   This_Player.Give('����֮��',1);
   This_Player.PlayerNotice('�㹺�����ˣ�����֮�ġ�',2);
   result := true;
end; 

procedure _Shlong02_1;
begin
   if This_Player.FreeBagNum < 1 then
   begin
      This_NPC.NpcDialog(This_Player,'��İ���̫���ˡ���\ \<����/@Shlong02>');
   end else
   begin
      This_Player.PsYBConsum(This_NPC,'ShenLYb',20247,1,1);
   end;
end;

procedure _Shlong02_2;
begin
   if This_Player.MyLFnum  < 100 then
   begin
      This_NPC.NpcDialog(This_Player,'���������㡭��\ \<����/@Shlong02>');
      exit;
   end;
   
   if This_Player.FreeBagNum < 1 then
   begin
      This_NPC.NpcDialog(This_Player,'��İ���̫���ˡ���\ \<����/@Shlong02>');
   end else
   begin
      This_Player.DecLF(20247,100,false);
      This_Player.Give('����֮��',1);

   end;
end;

Begin
  This_NPC.NpcDialog(This_Player,
  '�����ʵ��ͯ�����ۣ��浽������������㡣\ \'
  +'|{cmd}<���۾Ż�ѩ¶/@BUY>\'
  +'|{cmd}<ʹ����������ϻ�������/@HeJiSLDu>\'
  +'|{cmd}<���ջ���֮��/@Shlong01>\'
  +'|{cmd}<�������֮��/@Shlong02>\ \'
  +'|{cmd}<�˳�/@doexit>\'
  );  
end.