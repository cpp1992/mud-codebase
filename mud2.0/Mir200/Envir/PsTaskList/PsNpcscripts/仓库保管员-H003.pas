{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//==============================================================��������

procedure dorenwu15;
begin
This_Npc.NpcDialog(This_Player,
  '����������İ���������͵Ϯ���ǣ����Ƿ������ˣ�\'+
  '�����ˣ��ܰ���ȥ<ɱ15��������/c=red>���һ�úñ�����ģ� \ \'+
  '|{cmd}<�ҽ���(����)/@renwu16>'
  );
end;

procedure _renwu16;
begin
if (This_Player.GetV(102,1)=11) then
 begin
  This_Npc.NpcDialog(This_Player,
 '�����İ���������͵Ϯ���ǣ����Ƿ������ˣ�\'+
 '�����ˣ��Ͽ����ȥ<ɱ15��������/c=red>�ɡ�\ \ '+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
 end else
 begin
  This_Player.SetV(102,1,11);        //������
  This_Player.SetV(102,3,0);
  This_Player.UpdateTaskDetail(102,1);
  This_Player.Give('����',10000);
  This_Npc.CloseDialog(This_Player);
  //�Զ�Ѱ·���ظ�� 
 end;  
end;

procedure dorenwu16;
begin
 This_Npc.NpcDialog(This_Player,
 '�����İ���������͵Ϯ���ǣ����Ƿ������ˣ�\'+
 '�����ˣ��Ͽ����ȥ<ɱ15��������/c=red>�ɡ�\ \ '+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu17;
begin
 This_Npc.NpcDialog(This_Player,
 '̫���ˣ����ڰ����˷��˵İ����ˣ�����̫лл���ˣ�\'+
 '�Ժ���Ҫ���й��ص���Ʒ�����Է��������������ѱ��棡 \ \'+
 '|{cmd}<���(����)/@renwu18>\'
 );
end;

procedure _renwu18;
begin
 if (This_Player.GetV(102,1)=13) then
 begin
 This_Npc.NpcDialog(This_Player,
 '��̽�ӻر�,�������ɭ�ֵĹ����쳣��Ծ���鷳��ȥ����ɭ�ֵ�\'+
 '��ڴ���һ��<���˺�/c=red>����������ɭ�ֵ������Ƚ��˽⣡\ \'+
 '|{cmd}<�õ�,�ҽ���(����)/@renwu19>\'
 );
 end else
 begin
 This_Player.SetV(102,1,13);        //������
 This_Player.UpdateTaskDetail(102,1);
 This_Player.Give('����',10000);
 This_Npc.NpcDialog(This_Player,
 '��̽�ӻر����������ɭ�ֵĹ����쳣��Ծ���鷳��ȥ����ɭ�ֵ�\'+
 '��ڴ���һ��<���˺�/c=red>����������ɭ�ֵ������Ƚ��˽⣡\ \'+
 '|{cmd}<�õ�,�ҽ���(����)/@renwu19>\'
 );
 end;  
end; 

procedure dorenwu18;
begin
 This_Npc.NpcDialog(This_Player,
 '��̽�ӻر����������ɭ�ֵĹ����쳣��Ծ���鷳��ȥ����ɭ�ֵ�\'+
 '��ڴ���һ��<���˺�/c=red>����������ɭ�ֵ������Ƚ��˽⣡\ \'+
 '|{cmd}<�õ�,�ҽ���(����)/@renwu19>\'
 );
end;

procedure _renwu19;
begin
 if (This_Player.GetV(103,1)=1) then
 begin
 This_Npc.NpcDialog(This_Player,
 '�鷳��ȥ����ɭ�ֵ���ڴ���һ��<���˺�/c=red>��\'+
 '��������ɭ�ֵ������Ƚ��˽⣡\ \'+
 '|{cmd}<�õģ������ȥ(����)/@doexit>\'
 );
 end else
 begin
 This_Player.SetV(103,1,1);        //������
 This_Player.SetV(102,1,9999);
 //#This_Player.DeleteTaskFromUIList(102);                 //��ɾ����һ������ŵ����ݣ��������һ������ŵ����ݣ�˳���ܴ�
 //#This_Player.AddTaskToUIList(103);
 This_Player.UpdateTaskDetail(103,1);
 This_Player.Give('����',20000);
 This_Npc.CloseDialog(This_Player);
 //This_player.AutoGotoMap('0',330,47);   // �Զ�Ѱ· ���˺� 
 end;  
end; 

procedure dorenwu19;
begin
 This_Npc.NpcDialog(This_Player,
 '�鷳��ȥ����ɭ�ֵ���ڴ���һ��<���˺�/c=red>�� \'+
 '��������ɭ�ֵ������Ƚ��˽⣡\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
end;

//==============================================================��������

procedure _DoMainExtra;
var
  CKRW102, CKRW103: integer;
begin
   CKRW102 := This_Player.GetV(102,1);
   CKRW103 := This_Player.GetV(103,1);
   if CKRW103 = 1 then
   begin
     dorenwu19;
   end
   else if CKRW102 = 13 then
   begin
     dorenwu18;
   end 
   else if CKRW102 = 12 then
   begin
     dorenwu17;
   end
   else if CKRW102 = 11 then
   begin
     dorenwu16;
   end
   else if CKRW102 = 10 then
   begin
     dorenwu15;
   end;
end;

Procedure domain;
var
  CKRW102, CKRW103: integer;
begin
   CKRW102 := This_Player.GetV(102,1);
   CKRW103 := This_Player.GetV(103,1);
   if CKRW103 = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��Ҫ��ʲôæ��\Ŀǰ���ձ��ܷѣ�������á�\ \' 
      +//'|{cmd}<�����ֿ�/@DoInputDialog1>\'
      +'|{cmd}<�ֿ����/@storage>\'
      //+'|{cmd}<�һض���/@getback>                    \'//^<�ɳ�����̽������ɭ��/@DoMainExtra>\'
      +'|{cmd}<�����־����ҩˮ/@mbind>\'
      +'|{cmd}<�˳�/@doexit>');
   end else if (CKRW102 >= 10) and (CKRW102 <= 13) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��Ҫ��ʲôæ��\Ŀǰ���ձ��ܷѣ�������á�\ \' 
      +//'|{cmd}<�����ֿ�/@DoInputDialog1>\'
      +'|{cmd}<�ֿ����/@storage>\'
      //+'|{cmd}<�һض���/@getback>                  \'//^<�ɳ�������γ�Ϊ�귨��ʿ/@DoMainExtra>\'
      +'|{cmd}<�����־����ҩˮ/@mbind>\'
      +'|{cmd}<�˳�/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��Ҫ��ʲôæ��\Ŀǰ���ձ��ܷѣ�������á�\ \' 
      +//'|{cmd}<�����ֿ�/@DoInputDialog1>\'
      +'|{cmd}<�ֿ����/@storage>\'
      //+'|{cmd}<�һض���/@getback>\'
      +'|{cmd}<�����־����ҩˮ/@mbind>\'
      +'|{cmd}<�˳�/@doexit>');
   end;
end;

procedure _DoInputDialog1;
begin
  This_Npc.InputDialog(This_Player, '�����룺', 0, 100);
end;

procedure P100;
begin
  if This_Npc.InputOK then
    begin
      This_Player.ReqOpenStorage(This_Npc.InputStr);
    end;
end;

procedure _storage;
begin
  This_Npc.NpcDialog(This_Player,
  '��Ҫ����ʲô������\ \ \ |{cmd}<����/@main>'
  );
  This_Npc.Click_GetBack(This_Player);
end;

procedure _getback;
begin
  This_Npc.NpcDialog(This_Player,
  '�뿴Ŀ¼������ʲô������\ \ \ |{cmd}<����/@main>'
  );
  This_Npc.Click_GetBack(This_Player);
end;

procedure _mbind;
begin
  This_Npc.NpcDialog(This_Player,
  '��֪������ʲô���� \������������������... \��Ҫ��һ������ʲôҪ���еľ�˵�� \ \'
  +'|{cmd}<��һ�����./@chgtobar> \'
  +'|{cmd}<���������./@bartogold> \'
  +'|{cmd}<��/@bind> \'
  +'|{cmd}<ȡ��/@doexit>'
  );
end;

procedure _chgtobar;
begin
  This_Npc.Click_GoldChgBar(This_Player);
end;

procedure _bartogold;
begin
  This_Npc.Click_BartoGold(This_Player);
end;

procedure _bind;
begin
  This_Npc.NpcDialog(This_Player,
  'Ŀǰ��������ֻ�о����ҩˮ \��Ҫ���� \Ҫ��������Ҫ100���. \ \'
  +'|{cmd}<��ҩˮ/@P_bind> \'
  +'|{cmd}<������/@Z_bind> \'
  );
end;

procedure _P_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<ǿЧ��ҩ��/@ch_bind1>  \'
  +'|{cmd}<��ǿЧħ��ҩ/@ma_bind1> \' 
  +'|{cmd}<����ҩ���У�/@ch_bind2> \'
  +'|{cmd}<��ħ��ҩ���У�/@ma_bind2> \'
  +'|{cmd}<����ҩ/@ch_bind3> \'
  +'|{cmd}<��ħ��ҩ/@ma_bind3> \'
  +'|{cmd}<����/@bind>'
  );
end; 

procedure _Z_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<���������Ѿ�/@zum_bind1> \'
  +'|{cmd}<��������;�/@zum_bind2> \'
  +'|{cmd}<���سǾ�/@zum_bind3>  \'
  +'|{cmd}<���л�سǾ�/@zum_bind4>  \'
  +'|{cmd}<����/@bind>' 
  );
end;

//��ҩģ��
//item_src������Ķ����� item_des����ɵĶ��� 
procedure DoBindDrug(item_src, item_des: string);
begin
  if This_Player.GetBagItemCount(item_src) >= 6 then
  begin
     if (This_Player.GoldNum >=100) then
     begin
        This_Player.DecGold(100);
        This_Player.Take(item_src,6);
        This_Player.Give(item_des,1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@P_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û��Ҫ����ҩˮ������ʲô? \'+
     '��׼����ҩˮ֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;

procedure _ma_bind3;
begin
  DoBindDrug('ħ��ҩ(С��)', 'ħ��ҩ(С)��');
end;

Procedure _ch_bind3;
begin
  DoBindDrug('��ҩ(С��)', '��ҩ(С)��');    
end;

Procedure _ma_bind2;
begin
  DoBindDrug('ħ��ҩ(����)', 'ħ��ҩ(��)��');  
end;

Procedure _ch_bind2;
begin
  DoBindDrug('��ҩ(����)', '��ҩ(��)��');    
end;

Procedure _ma_bind1;
begin
  DoBindDrug('ǿЧħ��ҩ', '����ħ��ҩ');     
end;

Procedure _ch_bind1;
begin
  DoBindDrug('ǿЧ��ҩ', '������ҩ');   
end;

//�����ģ��
//item_src������Ķ����� item_des����ɵĶ��� 
procedure DoBindBook(item_src, item_des: string);
begin
  if This_Player.GetBagItemCount(item_src) >= 6 then
  begin
     if (This_Player.GoldNum >=100) then
     begin
        This_Player.DecGold(100);
        This_Player.Take(item_src,6);
        This_Player.Give(item_des,1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@Z_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û�п������ľ��飬����ʲô? \'+
     '��׼����֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;   
end; 

procedure _zum_bind4;
begin
  DoBindBook('�л�سǾ�', '�л�سǾ��');
end;

Procedure _zum_bind3;
begin
  DoBindBook('�سǾ�', '�سǾ��');  
end;

Procedure _zum_bind2;
begin
  DoBindBook('������;�', '������;��');  
end;

Procedure _zum_bind1;
begin
  DoBindBook('�������Ѿ�', '�������Ѿ��');  
end;

begin
  domain;
end. 