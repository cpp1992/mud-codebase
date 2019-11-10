{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//==============================================================��������

procedure _renwu7;
begin
   if This_Player.GetV(102,1) = 3 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�鷳��ȥ��һ���������ϰ壬�������Ҹ���һЩ�룬\'+
      '�Ҽ���Ҫ���أ��ɱ𲻵�һ������\'+
      '��Ȼֻ�Ǹ����ȵ�С�£�ȴ�ǹ�ϵ�ܴ�ģ�\ \'+
      '|{cmd}<�����ȥ(����)/@doexit>\');
   end
   else if This_Player.FreeBagNum >= 3 then
   begin
      This_Player.SetV(102,1,3);        //������
      This_Player.UpdateTaskDetail(102,1);
      This_Player.Give('����',800);
      This_Player.Give('����ͷ��',1);
      This_Npc.CloseDialog(This_Player);
      if This_Player.Gender =0 then
      begin
         This_Player.Give('���ֿ���(��)',1); 
      end else
      begin
         This_Player.Give('���ֿ���(Ů)',1);
      end; 
   end else
   begin 
      This_NPC.NpcDialog(This_Player,
      '��������������ı����������ң�\ \'+
      '|{cmd}<�õ�/@doexit>\');
   end;  
end;
//==============================================================�������� 

procedure domain;
var
  temp1: integer;
begin
   if This_Player.GetV(102,1) = 2 then 
   begin
      This_Npc.NpcDialog(This_Player,
      +'��л���١�������ʲô�����æ��\ \'
      +'|{cmd}<�����칤����Ĺ���/@gongdian>             \'//^<�ɳ�������γ�Ϊ�귨��ʿ/@SCExtra>\'
      +'|{cmd}<���·�/@buy>'+ addSpace('', 24) + '|{cmd}<�޸��·�/@repair>\'
      +'|{cmd}<���·�/@sell>'+ addSpace('', 24) + '|{cmd}<��������/@s_repair>\'
      +'|{cmd}<�˳�/@doexit>');
   end else
   begin
      temp1 := random(2);
      //��������Ի�����ѡһ�� 
      if temp1 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�������ۣ��������飬�����Ҳ÷죬�Ͷ���һ�ݰ�ȫ��\'
         +'��λ�͹٣��ҿ���һ�����࣬�������˵����ǰ������һ��\'
         +'�Ͽ�������һ������ħ�£���С�����˴����ˣ�����˵�ҵ�\'
         +'һ��ʲô�ر�ͼ���������һ�����ҿɲ�������.\'
         +'|{cmd}<�����칤����Ĺ���/@gongdian>\'
         +'|{cmd}<���·�/@buy>'+ addSpace('', 24) + '|{cmd}<�޸��·�/@repair>\'
         +'|{cmd}<���·�/@sell>'+ addSpace('', 24) + '|{cmd}<��������/@s_repair>\'
         +'|{cmd}<�˳�/@doexit>');
      end
      else
      begin
         This_Npc.NpcDialog(This_Player,
         +'��л���١�������ʲô�����æ��\ \'
         +'|{cmd}<�����칤����Ĺ���/@gongdian>\'
         +'|{cmd}<���·�/@buy>'+ addSpace('', 24) + '|{cmd}<�޸��·�/@repair>\'
         +'|{cmd}<���·�/@sell>'+ addSpace('', 24) + '|{cmd}<��������/@s_repair>\'
         +'|{cmd}<�˳�/@doexit>');
      end;
   end;
end;

procedure _SCExtra;
begin
  if This_Player.GetV(102,1) = 2 then 
  begin
     This_Player.Take('����',1);
     This_Npc.NpcDialog(This_Player,
     '���ӻ����ϰ����������İɣ��������̫�����ˣ�����������\'+
     '�ǲ������������е����ְ�����Щװ������ɣ������鷳��ȥ\'+
     '��һ��<�������ϰ�/c=red>���������Ҹ���һЩ�룬�Ҽ���Ҫ���أ�\ \'+
     '|{cmd}<�ҽ���(����)/@renwu7>\');
  end; 
end;
   
procedure _GongDian;
begin
  This_Npc.NpcDialog(This_Player,
  +'�칤��������ҵ�ʦ�����̻����Һܶ����գ�\'
  +'�����Դ���ѧ�ɳ�ʦ֮����Ҳ��Ҳû�м���ʦ���ˣ�\'
  +'�����Ҳ���ʦ�ֵ���˵�����ʦ��ʧ���ˣ������Ǳ�ħ�������ˡ�\'
  +'���Ƕ��ܽ�������֪�����ܲ��ܰ��������ҵ����ǵ�ʦ����\'
  +'��˵���������ڵ��¹��\'
  +'ħ��Ϊ�˲�������ǰȥӪ�ȣ���ħ�޶���ȥ���¹��\'
  +'��Ȼ������Ҳ��ȥ��Ϊ��׳�۵ı��ء�\'
  +'��Ϊ�������Ǿ����Ѵ�û�������ļ��չ�����\'
  +'|{cmd}<������������â��������װ������/@shengji>'+ addSpace('', 10) + '|{cmd}<�뿪/@doexit>'
  );
end;

procedure _Shengji;
begin
  This_Npc.NpcDialog(This_Player,
  +'��˵�������ǵ��żҲ����ϰ�ѧ����һ��ܣ�\'
  +'�ܹ�ʹ�������䷽����������â������ϵ�н��������ͺϳɣ�\'
  +'�����Ҳ�֪������������Ҫô������ȥ��һ�������˰ɡ�\ \'
  +'|{cmd}<�뿪/@doexit>'
  );
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ʲô�����·���\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ�����·����ҿ������һ��������ۡ�\����Ҳ��Ӫͷ����ñ�ӣ���������㲻�ã�\������������������\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '�����޲��·���ͷ����Ь��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�������ȥ�Ѿ��޺���\ \ \ |{cmd}<����/@main>'
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
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \|{cmd}<����/@main>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.AddStdMode(15);
  This_Npc.AddStdMode(27);
  This_Npc.AddStdMode(28);
  This_Npc.FillGoods('����(��)',50,1);
  This_Npc.FillGoods('����(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1); 
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1);
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.