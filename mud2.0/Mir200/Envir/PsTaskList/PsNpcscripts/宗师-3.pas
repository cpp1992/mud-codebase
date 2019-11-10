{
*******************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _exit;
begin
   This_Npc.CloseDialog(This_Player);
end;





Procedure domain;
var
  ZongS108, ZongS109 : integer;
Begin
   ZongS108 := This_Player.GetV(108,1);
   ZongS109 := This_Player.GetV(109,1);
   if ZongS109 = 4 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ���������������ô��\ \'+
      '|{cmd}<�õģ������ȥ/@doexit>\ \'
      +'|{cmd}<ʹ�þ�Ԫ����ȡ����/@njingyuan>');
   end else if ZongS109 = 3 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ţ�ȥ�������������ɡ���Ҫ�Ƽ��������Ѹ�����ʶ��\ \'+
      '������Ŀ�꣺ȥ�������������ɣ�\'+
      '|{cmd}<�õģ������ȥ/@Qitafenfu108_01>\ \'
      +'|{cmd}<ʹ�þ�Ԫ����ȡ����/@njingyuan>');
   end else if ZongS109 = 2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ħ�ؽ��������زر��������������ǵ�ǰ����\'+
      'Ϊ���귨��δ���ӳ���ķ��������Ȼ��������ʡ�\'+
      '��Ҫ�úõ����ã���ô���ҵ�Ǭ������ô��\'+
      '������Ŀ�꣺����ر���������ܣ������һ��Ǭ���\'+
      'ʹ�������һ�����ʴ������ػ���������ȡǬ���\'+
      '|{cmd}<��û���ҵ�Ǭ�������ʲô������/@CangBGe108_01>\'+
      '|{cmd}<������һ��Ǭ����㿴��ô/@CangBGe108_02>��\'
      +'|{cmd}<ʹ�þ�Ԫ����ȡ����/@njingyuan>');
   end else if ZongS109 = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��������һ�飬��ʦ��������û�д�ɱ��\ \'+
      '|{cmd}<�������е�/@KaoWo10801>��\'+
      '|{cmd}<û�У�/@KaoWo10802>\ \'
      +'|{cmd}<ʹ�þ�Ԫ����ȡ����/@njingyuan>');
   end else if ZongS108 = 19 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����˺����������ģ�����˵��������һ��������˵ĺ��ǣ�\'+
      'Ҳ������а��ǯ�棿�ţ��������ǿ�ò��ϣ������ɣ������˽�\'+
      '�����＼�ܶ�����Щ�ɣ�����Ѿ��˽��ˣ���ô��Ҫ�����㣡\ \'+
      '|{cmd}<���Ѿ��˽��ˣ�����Կ���/@KaoWo108>\ \'
      +'|{cmd}<ʹ�þ�Ԫ����ȡ����/@njingyuan>');
   end else
   begin
     This_Npc.NpcDialog(This_Player,
      '�����˽�һ�¸���ְҵ�ļ��ܣ��������귨��½�Ͻ��������ɣ�\ \'
      +'|{cmd}<ʹ�þ�Ԫ����ȡ����/@njingyuan>'); 
   end;
end;

procedure _njingyuan;
begin
  if This_Player.GetBagItemCount('��Ԫ��') > 0 then
  begin
    This_Player.Take('��Ԫ��',1);
    This_Player.Give('����',400000);
    This_Npc.NpcDialog(This_Player,
      '���Ѿ�ʹ��1����Ԫ����þ��飺400000���㻹��Ҫ�����һ���\ \'
      +'|{cmd}<����ʹ�þ�Ԫ����ȡ����/@njingyuan>\ \'
      +'|{cmd}<�ر�/@doexit>'); 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
      '���������˾�Ԫ�����͸Ͽ콻���Ұɣ�\'
      +'�ҿ��԰���һ��ɾ��飡 \'); 
  end; 
end;

Procedure _KaoWo108;
begin
   if This_Player.GetV(108,1) = 19 then
   begin
      This_Player.Give('����',400000);
      This_Npc.NpcDialog(This_Player,
      '���ʷ�ʦ��������û�д�ɱ��\ \'+
      '|{cmd}<�������е�/@KaoWo10801>��\'+
      '|{cmd}<û�У�/@KaoWo10802>');
      This_Player.SetV(108,1,100);
      This_Player.SetV(109,1,1);
      //#This_Player.DeleteTaskFromUIList(108);
      //#This_Player.AddTaskToUIList(109);
      This_Player.UpdateTaskDetail(109,1);
   end;
end;

Procedure _KaoWo10801;
begin
   This_Npc.NpcDialog(This_Player,
   '������û����ϸ�Ķ����ܰ�����ʦ������û�д�ɱ�ġ�\'+
   '�����ˣ������в����ĸ����꣡\'+
   '���������㻹����Ҫ������в��ǣ���ȥ��<��ħ�ؽ�/@c=red>�ɡ�\'+
   '��˵����������ģ�\'+
   '������Ŀ�꣺����ر���������ܣ������һ��Ǭ���\'+
   'ʹ�������һ�����ʴ������ػ���������ȡǬ���\ \'+
   '|{cmd}<�õģ���ȥ�ر������ҿ�/@CangBGe108>');
end;

Procedure _KaoWo10802;
begin
   This_Npc.NpcDialog(This_Player,
   '����������ѧϰ�ĺ����档��������Ҫ�ú���ϰ��\ȥ����ħ�ؽ��ɡ���˵����������ģ�\'+
   '������Ŀ�꣺����ر���������ܣ������һ��Ǭ���\'+
   'ʹ�������һ�����ʴ������ػ���������ȡǬ���\ \'+
   '|{cmd}<�õģ���ȥ�ر������ҿ�/@CangBGe108>');
end;

Procedure _CangBGe108;
begin
   if This_Player.GetV(109,1) = 1 then
   begin
      if This_Player.FreeBagNum >= 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '��ħ�ؽ��������زر��������������ǵ�ǰ����\'+
         'Ϊ���귨��δ���ӳ���ķ��������Ȼ��������ʡ�\'+
         '��Ҫ�úõ����ã���ô���ҵ�Ǭ������ô��\'+
         '������Ŀ�꣺����ر���������ܣ������һ��Ǭ���\'+
         'ʹ�������һ�����ʴ������ػ���������ȡǬ���\ \'+
         '|{cmd}<��û���ҵ�Ǭ�������ʲô������/@CangBGe108_01>\'+
         '|{cmd}<������һ��Ǭ����㿴��ô/@CangBGe108_02>��');
         This_Player.Give('����',400000);
         This_Player.SetV(109,1,2);
         This_Player.UpdateTaskDetail(109,1);
      end else
      begin
        This_Npc.NpcDialog(This_Player,
        '��İ����ռ䲻��������ô�Ͷ��������أ�'); 
      end;
   end;
end;     

Procedure _CangBGe108_01;
begin
   if This_Player.GetV(109,1) = 2 then
   begin
      This_Npc.NpcDialog(This_Player,
      'û���ҵ�Ǭ���û�й�ϵ�����ֻ���������ĵ�һ����\'+
      '��ô����ܼ���������1ֻ�����ػ��ޡ�\ \'+ 
      '|{cmd}<�õģ��Ҽ�ס�ˡ������㻹��ʲô�Ը�ô��/@Qitafenfu108>');
      This_Player.Give('����',400000);
      This_Player.SetV(109,1,3);
      //This_Player.UpdateTaskDetail(109,1);
   end;
end; 

Procedure _CangBGe108_02;
begin
   if This_Player.GetV(109,1) = 2 then
   begin
      if This_Player.GetBagItemCount('Ǭ����') >= 1 then
      begin
         if This_Player.FreeBagNum >= 1 then
         begin
            This_Npc.NpcDialog(This_Player,
            '���Ѿ��ҵ�Ǭ�����ˣ�������������Ǹ���Ľ�����\'+
            '��Ӧ�ü���������1ֻ�����ػ��ްɣ�\ \'+ 
            '|{cmd}<�õģ��Ҽ�ס�ˡ������㻹��ʲô�Ը�ô��/@Qitafenfu108>');
            This_Player.Give('����',600000);
            This_Player.SetV(109,1,3);
            //This_Player.UpdateTaskDetail(109,1);
         end else
         begin
           This_Npc.NpcDialog(This_Player,
           '��İ����ռ䲻��������ô�Ͷ��������أ�'); 
         end;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '������û���ҵ�Ǭ�����\ \'+
         '|{cmd}<Ŷ����ȷʵû���ҵ�Ǭ�������ʲô������/@CangBGe108_01>\');
      end;
   end; 
end; 

Procedure _Qitafenfu108;
begin
   if This_Player.GetV(109,1) = 3 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ţ�ȥ�������������ɡ���Ҫ�Ƽ��������Ѹ�����ʶ��\ \'+
      '������Ŀ�꣺ȥ�������������ɣ�\'+
      '|{cmd}<�õģ������ȥ/@Qitafenfu108_01>');
   end;
end;

Procedure _Qitafenfu108_01;
begin
   if This_Player.GetV(109,1) = 3 then
   begin
      This_Player.SetV(109,1,4);
      This_Player.UpdateTaskDetail(109,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;    


Begin
   domain;
end.