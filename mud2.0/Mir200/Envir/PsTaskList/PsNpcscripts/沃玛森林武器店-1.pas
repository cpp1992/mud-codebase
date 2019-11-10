{
*******************************************************************}

Program Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '�һ��޺�����\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '���������Ѿ��޺��ˣ�\'+
    '������б������Ҫ�����������ҡ�\ \' +
    '|{cmd}<����/@main>'
  );
end;

Procedure _s_repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����һ���̫�����ˣ��������в����������޲���\'+
   '����������ͨ��������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_SRepair(This_Player);
end;


procedure SRepairDone;
begin
   This_Npc.NpcDialog(This_Player,
   '�Ѿ�������ˣ��������ܲ����\' +
   '|{cmd}<����/@main>');
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);
  //����stdmode  
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
end;



Procedure _newskill;
Begin
   If This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô����\');
   end else if This_Player.GetV(10,3) = GetDateNum(GetNow()) then
   begin
      if This_Player.GetV(10,1) = 6 then
      Begin
         This_Npc.NpcDialog(This_Player,
         '������������������а�������ͽ��������\'+
         '��ɱ������ΪĿ�꣬����ҪһЩҩƷ�Ĳ�����\'+
         '���ֳ鲻�����鷳�������ȥ����������ҩ��\');
      end else if This_Player.GetV(10,1) = 5 then
      begin
         This_Npc.NpcDialog(This_Player,
         '���ǲ����װ�������Ȼ���ǵ��ң�\' +
         '����Ϊ������ϴ�������ˣ��Լ�Ҳ������˹������ء�\'+
         '�������ģ�������������������а�������ͽ��������\'+
         '��ɱ������ΪĿ�꣬����ҪһЩҩƷ�Ĳ�����\'  +
         '���ֳ鲻�����鷳�������ȥ����������ҩ��\');
         This_Player.SetV(10,1,6);      
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ȥ���ؾƹ��Ҽ���ɢ����ȡ�������ţ�\');
   end;  
end;

procedure _normal;
begin
   if This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���Ҫ�Ұ�ʲôæ��\ \'+  
      '|{cmd}<��������/@repair> \'+
      '|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
   end 
   else if (This_Player.GetV(10,1) = 5) or (This_Player.GetV(10,1) = 6) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���Ҫ�Ұ�ʲôæ��\ \'+ 
      '|{cmd}<��������/@repair> \'+
      '|{cmd}<��������/@s_repair>\ \'+
      '|{cmd}<�Ǳ��������ϰ��������/@newskill>');
   end 
   else
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���Ҫ�Ұ�ʲôæ��\ \'+  
      '|{cmd}<��������/@repair> \'+
      '|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
   end;
end;

//------------------------------------------------------------------------------
//�ɳ�����ģ��
procedure _mission104_1;
begin
  This_Npc.NpcDialog(This_Player,
  '���ǵģ��鱨�������а취�ƽ�ġ���������Ҳ�������\'
  +'���ռ�������ϵ���������Ϊ�����������ʴ�һ���̶���\'
  +'���Է�ֹ���˵�ʬ�������á���֪�������ʵ��̫���ˡ�\'
  +'�����������ŷ���ڲ��ȥ�ռ����ϣ��԰��������о���\'
  +'��ʵҲͦ��Ϊ���ģ�����Ҳ�����ŵģ�Ϊ�˴���Ҳ�������١�\'
  +'|{cmd}<ԭ�������������Ǻǣ�û�£��Ҳ�������/@mission104_1_1>\ \'
  +'|{cmd}<���б����������/@normal>'
  ); 
end;

procedure _mission104_1_1;
begin
  This_Npc.NpcDialog(This_Player,
  '�㻹ͦͨ�������ںϼ�ҩ���ϰ��ƽ��鱨��ʱ��\'
  +'��Ͱ������˵����ʹ����ɣ��㿴�������Ǹ����ڣ�ʲô������ȱ��\'
  +'������Ŀ�꣺����2�ݣ���2�ݣ�\ \'
  +'|{cmd}<���������أ�����β�������̵�ʱ���ڼ��붫���أ�/@mission104_1_2>\ \'
  +'|{cmd}<���б����������/@normal>'
  ); 
end;

procedure _mission104_1_2;
begin
  if This_Player.GetV(104,1) = 7 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���ǵ������㶼�ռ�����ô��\'
    +'������Ŀ�꣺����2�ݣ���2�ݣ�'
    );
  end
  else if This_Player.GetV(104,1) = 6 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�ܼ򵥣�����Լ��ռ������ѵĻ������Ը���½����������ʿ��\'
    +'�໥�������ʻ��������ǹ���\'
    +'�����׹��̣�˫����ɫ����棬��Ҫ���׵Ķ������뽻�����ڣ�\'
    +'ȷ�Ϻ����׳ɹ��������ĵط�������ʺ羫��ѯ�ʣ�\'
    +'�õģ���֪���ˣ��ǣ�����2�ݣ���2�ݣ��ɣ�\'
    +'|{cmd}<�����ȥ/@doexit>\ \'
    +'|{cmd}<���б����������/@normal>'
    );
    This_Player.SetV(104,1,7);
    This_Player.UpdateTaskDetail(104,1);
  end
  else
  exit; 
end;

procedure _mission104_1_fns;
begin
   if This_Player.GetV(104,1) = 8 then
   begin
     This_Npc.NpcDialog(This_Player,
     '������ϼ������ϰ���ô��\ \'
     +'|{cmd}<�����ȥ/@doexit>'
     );
   end
   else if This_Player.GetV(104,1) = 7 then
   begin
     if (This_Player.GetBagItemCount('����') >= 2) and (This_Player.GetBagItemCount('��') >= 2) then
     begin
       This_Player.Take('����',2);
       This_Player.Take('��',2);
       This_Player.Give('����',150000);
       This_Player.SetV(104,1,8);
       This_Player.UpdateTaskDetail(104,1);
       This_Npc.NpcDialog(This_Player,
       '̫���ˣ������Ұ�ĵط���������Щ���������ǵ�����Ҳ�ܺù�����\'
       +'����лл���ˣ��ϼ������ϰ�˵�����Ѿ��ƽ��ˣ������ȥһ�ˡ�\ \'
       +'|{cmd}<�Ѿ��ƽ��ˣ��õģ������ȥ����/@doexit>'
       ); 
     end
     else
     begin
       This_Npc.NpcDialog(This_Player,
       '���е���Ʒ�㶼�ռ�������'); 
     end; 
   end
   else
   exit;
end;

procedure _mission106;
begin
  if This_Player.GetV(106,1) = 16 then
  begin
    This_Player.SetV(106,1,17);
    This_Player.SetV(106,7,0);
    This_Player.UpdateTaskDetail(106,1);
    This_Npc.CloseDialog(This_Player); 
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�������𰵺�սʿ���������ݽ�ͷ���档');
  end;
end;

//------------------------------------------------------------------------------
//1-22���� 
procedure _renwu25;
begin
 if (This_Player.GetV(103,1)=6) then
 begin
 This_Npc.NpcDialog(This_Player,
 '��Ͽ��ٰ���ɱ10����ʬ�ɣ�\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
 end else
 begin
  This_Player.SetV(103,1,6);        //������
  This_Player.UpdateTaskDetail(103,1);
  This_Player.SetV(103,3,0);
  This_Npc.CloseDialog(This_Player);
  This_Player.Give('����',150000);
  // �Զ�Ѱ· ����սʿ 
 end;
end;


procedure _renwu26;
begin
 if (This_Player.GetV(103,1)=8) then
 begin
 This_Npc.NpcDialog(This_Player,
 '���س�ȥ,����<����ʹ��/c=red>����������������ǽ����ʱ��ע�����\'+
 '��һ�ж�����\ \'+ 
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
 end else
 begin
  This_Player.SetV(103,1,8);        //������
  This_Player.UpdateTaskDetail(103,1);
  This_Npc.CloseDialog(This_Player);
  This_Player.Give('����',200000);
  This_Player.Give('�سǾ�',1);
  //This_Player.AutogotoMap('0',332,263); // �Զ�Ѱ· ������ʹ 
 end;
end; 
//------------------------------------------------------------------------------ 

var
  WWQ104, WWQ103, WWQ106: integer;
Begin
   WWQ104 := This_Player.GetV(104,1);
   WWQ103 := This_Player.GetV(103,1);
   WWQ106 := This_Player.GetV(106,1);
   if WWQ106 = 17 then
   begin
     This_Npc.NpcDialog(This_Player,
     '���Ѿ��ɹ������˰���սʿ��ô�������Կ���ʱ��һ��ҪС�ģ�\'
     +'(����Ŀ�꣺���𰵺�սʿ�����������ݽ�ͷ����)\ \'
     +'|{cmd}<��͵��ҵĺ���Ϣ�ɣ�/@mission106>        ^<������������������/@normal>'
     );
   end 
   else if WWQ106 = 16 then
   begin
     This_Npc.NpcDialog(This_Player,
     '�ҿ�����ʿ����������������������������ο�������귨������\'
     +'������������Щǿ�����ϡ���������ͽΪ���ƻ������ǵļƻ���\'
     +'�������ѡ�ȴͬʱ��ŭ�˰���սʿ����������֯���ӣ�\'
     +'׼�����ģ�Ľ��������Ǳ�����취��������������Ⱥ�����ף�\'
     +'�������ƣ���ƽʱ�Ͳ����������������ұ���Ҫ�����㣬\'
     +'����Ҫ�ﵽ27�������������һƴ֮����\'
     +'������ɺ��뼰ʱ�������ݽ�ͷ���棡\'
     +'(����Ŀ�꣺���𰵺�սʿ�����������ݽ�ͷ����)\'
     +'|{cmd}<��Ը�������������ս/@mission106>        ^<������������������/@normal>'
     );
   end
   else if WWQ106 = 15 then
   begin
     This_Npc.NpcDialog(This_Player,
     '�ҿ�����ʿ����������������������������ο�������귨������\'
     +'������������Щǿ�����ϡ���������ͽΪ���ƻ������ǵļƻ���\'
     +'�������ѡ�ȴͬʱ��ŭ�˰���սʿ����������֯���ӣ�\'
     +'׼�����ģ�Ľ��������Ǳ�����취��������������Ⱥ�����ף�\'
     +'�������ƣ���ƽʱ�Ͳ����������������ұ���Ҫ�����㣬\'
     +'����Ҫ�ﵽ27�������������һƴ֮����\'
     +'������ɺ��뼰ʱ�������ݽ�ͷ���棡\'
     +'(����Ŀ�꣺���𰵺�սʿ�����������ݽ�ͷ����)\'
     +'|{cmd}<��Ը�������������ս/@mission106>        ^<������������������/@normal>'
     );
     This_Player.Give('����',300000);
     This_Player.SetV(106,1,16);
     This_Player.UpdateTaskDetail(106,1); 
   end
   else if WWQ104 = 8 then
   begin
     This_Npc.NpcDialog(This_Player,
     '������ϼ������ϰ���ô��\ \'
     +'|{cmd}<�����ȥ/@doexit>\ \'
     +'|{cmd}<���б����������/@normal>');
   end
   else if WWQ104 = 7 then
   begin
     This_Npc.NpcDialog(This_Player,
     '���ǵ������㶼�ռ�����ô��\'
    +'������Ŀ�꣺����2�ݣ���2�ݣ�\ \'
    +'|{cmd}<���Ѿ��ռ�����/@mission104_1_fns>\ \'
    +'|{cmd}<���б����������/@normal>'
    );
   end
   else if WWQ104 = 6 then
   begin
     This_Npc.NpcDialog(This_Player,
     '��������ζ�������㲻���ǰ�ϼ�ҩ���ϰ�ȡ������ϵĲ����˰ɣ�\'
     +'��ѽ������˵�˶��ٴ��ˣ��Ǹ��һﻹ������ʹ���ˡ�\ \'
     +'|{cmd}<��˵��Ҫ������ϵ������ƽ��鱨��/@mission104_1>\ \'
     +'|{cmd}<���б����������/@normal>'
     ); 
   end
   else if WWQ103 = 8 then
   begin
     This_Npc.NpcDialog(This_Player,
     '���س�ȥ,����<����ʹ��/c=red>,��������������ǽ,��ʱ��ע�����\'+
     '��һ�ж�����\ \'+ 
     '|{cmd}<�õ�,�����ȥ(����)/@doexit>            ^<���б����������/@normal>\');
   end 
   else if WWQ103 = 7 then
   begin
     This_Npc.NpcDialog(This_Player,
     'лл������ң�������ֹ�����巢��ķ���,�ҵ���û�У�\'+
     '���������س�ȥ������<����ʹ��/c=red>����������������ǽ��\'+
     '��ʱ��ע������һ�ж�����ǧ�򲻿ɵ������ģ�Ϊ����\'+
     '���ܿ��ٻسǣ�������һ���سǾ�˫���󼴿ɻسǣ�\ \'+
     '|{cmd}<�ҽ���(����)/@renwu26>              ^<���б����������/@normal>\'
     );
   end 
   else if WWQ103 = 6 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��Ͽ��ٰ���<ɱ10����ʬ/c=red>��\ \'+
      '|{cmd}<�õģ������ȥ(����)/@doexit>                 ^<���б����������/@normal>\'
      );
   end 
   else if WWQ103 = 5 then 
   begin
      This_Npc.NpcDialog(This_Player,
      '��������Ľ�ʬ�ر���ײУ��Һö����ֶ�������һȥ���أ�\'+ 
      '�����ٰ���<ɱ10����ʬ/c=red>��\ \'+ 
      '|{cmd}<�ҽ���(����)/@renwu25>               ^<���б����������/@normal>'
      );
   end    
   else if This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���Ҫ�Ұ�ʲôæ��\ \'+  
      '|{cmd}<��������/@repair> \'+
      '|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
   end 
   else if (This_Player.GetV(10,1) = 5) or (This_Player.GetV(10,1) = 6) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���Ҫ�Ұ�ʲôæ��\ \'+ 
      '|{cmd}<��������/@repair> \'+
      '|{cmd}<��������/@s_repair>\ \'+
      '|{cmd}<�Ǳ��������ϰ��������/@newskill>');
   end 
   else
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���Ҫ�Ұ�ʲôæ��\ \'+  
      '|{cmd}<��������/@repair> \'+
      '|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
   end;
end.