{
*******************************************************************}

Program Mir2;


{$I common.pas}


PROCEDURE _shengji;
begin
   This_Npc.NpcDialog(This_Player,
   '��˵�������ǵ��żҲ����ϰ�ѧ����һ��ܣ��ܹ�ʹ��\'+
   '�����䷽����������â������ϵ�н��������ͺϳɣ�����\'+
   '�Ҳ�֪������������Ҫô������ȥ��һ�������˰ɡ�\ \'+
   '|{cmd}<�뿪/@doexit>\');
end;


Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _gongdian;
Begin
   This_Npc.NpcDialog(This_Player,
   '�칤��������ҵ�ʦ�����̻����Һܶ����գ������Դ���ѧ��\'+
   '��ʦ֮����Ҳ��Ҳû�м���ʦ���˺����Ҳ���ʦ�ֵ���˵��\'+
   '����ʦ��ʧ���ˣ������Ǳ�ħ�������ˡ����Ƕ��ܽ�������֪\'+
   '�����ܲ��ܰ��������ҵ����ǵ�ʦ������˵���������ڵ��¹�\'+
   '�ħ��Ϊ�˲�������ǰȥӪ�ȣ���ħ�޶���ȥ���¹����\'+
   'Ȼ������Ҳ��ȥ��Ϊ��׳�۵ı��ء���Ϊ�������Ǿ����Ѵ�\'+
   'û�������ļ��չ�����\ \'+
   '|{cmd}<������������â��������װ������/@shengji>             ^<�뿪/@doexit>');
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ֻ�������\'+
   '�����Ĺ����ǲ���ʲô�����ģ�\'+
   'ʲô�������ģ��ǿ϶���ƭ�ӡ�����\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '������ɵĶ�Ư�������Բ��� ��\ \ \' +
  '|{cmd}<����/@main>');
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
   '�Ѿ�������ˣ��������ܲ����\ \' +
   '|{cmd}<����/@main>');
end;

procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(200);

  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(27);
  This_NPC.AddStdMode(28);
end;

procedure _normal;
begin
   This_Npc.NpcDialog(This_Player,
   '��������ʲô���飿\ \'+
   '|{cmd}<�����칤����Ĺ���/@gongdian>\'+
   '|{cmd}<�޲�����/@repair>  '+addspace(' ',20)+'|{cmd}<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
end;

//------------------------------------------------------------------------------
//�ɳ�����
procedure _mission106_1_3;
begin
  if This_Player.GetV(106,1) = 3 then
  begin
    This_NPC.CloseDialog(This_Player);
  end
  else if This_Player.GetV(106,1) = 2 then
  begin
    This_Player.SetV(106,1,3);
    This_Player.SetV(106,2,0);
    This_Player.UpdateTaskDetail(106,1); 
    This_NPC.CloseDialog(This_Player);
  end
  else
  exit;
end;

procedure _mission106_1_3_fns;
begin
  if This_Player.GetV(106,1) = 5 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�����ռ����ˣ��ǵý���ҩ���ϰ壬���������أ�\'
    +'������Ŀ�꣺ɱ��3ֻ��򼣬���ռ�3�����Ķ��ҡ�\'
    +'�������ص�ҩ���ϰ壩\ \'
    +'|{cmd}<�õģ������ȥ/@doexit>'
    );
  end
  else if This_Player.GetV(106,1) = 4 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�õ��鱨�Ϳ����������ϱ������ˡ���������������ҩ���ϰ壬\'
    +'����������֮ǰ���������Ұ����ռ�3�����Ķ��ҡ�\'
    +'����Ҫ���ֲ�������Կ����˵Ķ�ҩ�������ռ����ˣ�\'
    +'�ͻ����ذѶ��Ҵ���ҩ���ϰ�ɣ�\'
    +'������Ŀ�꣺ɱ��3ֻ��򼣩\ \'
    +'|{cmd}<�õģ������ռ����ˣ��ͰѶ���������/@doexit>'
    );
    This_Player.Give('����',200000);
    This_Player.SetV(106,1,5);
    This_Player.UpdateTaskDetail(106,1);
    This_Player.SetV(106,3,0); 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��ɱ����5ֻ�����䣬��������Я�����鱨����\ \'
    ); 
  end;
end;
//------------------------------------------------------------------------------ 

Begin
   if This_Player.GetV(106,1) = 5 then
   begin
     This_Npc.NpcDialog(This_Player,
    '�����ռ����ˣ��ǵý���ҩ���ϰ壬���������أ�\'
    +'������Ŀ�꣺ɱ��3ֻ��򼣬���ռ�3�����Ķ��ҡ�\'
    +'�������ص�ҩ���ϰ壩\ \'
    +'|{cmd}<�õģ������ȥ/@doexit>          ^<���б����������/@normal>' 
    );
   end
   else if This_Player.GetV(106,1) = 4 then
   begin
     This_Npc.NpcDialog(This_Player,
     '���Ѿ��ҵ����鱨��ô��\'
     +'������Ŀ�꣺ɱ��������5ֻ�����ҵ��������ϵ��鱨��\'
     +'������ˮ���ݵĲ��µ��ϰ壩\ \'
     +'|{cmd}<���Ѿ��ҵ���/@mission106_1_3_fns>\ \' 
     +'|{cmd}<���б����������/@normal>' 
     );
   end 
   else if This_Player.GetV(106,1) = 3 then
   begin
     This_Npc.NpcDialog(This_Player,
     '���Ѿ��ҵ����鱨��ô��\'
     +'������Ŀ�꣺ɱ��������5ֻ�����ҵ��������ϵ��鱨��\'
     +'������ˮ���ݵĲ��µ��ϰ壩\ \'
     +'|{cmd}<��������/@doexit>\ \' 
     +'|{cmd}<���б����������/@normal>' 
     );
   end
   else if This_Player.GetV(106,1) = 2 then
   begin
     This_Npc.NpcDialog(This_Player,
     '������ô�ҵ��ҵģ�����ԭ�����ϱ��������ġ�\'
     +'�ţ��������ȷ����Щ���⡣�������֪������ʹ����һ���µ�����\'
     +'�����䴫���鱨��������������������ץ���������˺ܶ෨�ӣ�\'
     +'��û�а취�������ǣ�����һֱû�и��ϱ���Ϣ��\'
     +'����԰���ɱ�������䣬���鱨�����ô��\'
     +'������Ŀ�꣺ɱ��������5ֻ��\ \'
     +'|{cmd}<�ţ������Ұɣ�/@mission106_1_3>           ^<���б����������/@normal>' 
     );
   end
   else
   begin 
   This_Npc.NpcDialog(This_Player,
   '��������ʲô���飿\ \'+
   '|{cmd}<�����칤����Ĺ���/@gongdian>\'+
   '|{cmd}<�޲�����/@repair>  '+addspace(' ',20)+'|{cmd}<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
   end;
end.