{********************************************************************

*******************************************************************}
program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
   // IF (This_Player.GetV(8,17) = 1) and
    //(This_Player.GetV(8,14) <= 0)then
    if  (This_Player.GetV(11,4) = 6) then
    begin
       This_NPC.NpcDialog(This_Player,
       'Ŷ��ԭ����������ҵ��������Ǹ��ˣ�\'
       +'���������˻����۹Ⱑ��\'
       +'�����ң��������Ǻܷ�����\'
       +'�����ҵĹ�����\ \'
       +'|{cmd}<��/@okheard>\'
       +'|{cmd}<����/@noheard>'
       );
    
    end else
   // if (This_Player.GetV(8,17) = 1) and
   // (This_Player.GetV(8,14) = 1) and
    //(This_Player.GetV(8,23) <= 0) and
    //(This_Player.GetV(8,25) <= 0) then
    if This_Player.GetV(11,4) = 7 then
    begin  
       This_NPC.NpcDialog(This_Player,
       '��û��ȥʦ���Ƕ���\'
       +'��ȥ�������Ҵ��š�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    //IF (This_Player.GetV(8,23) = 1) then
    IF (This_Player.GetV(11,4) = 9) then
    begin
        IF (This_Player.Job = 0) and (This_Player.Level >= 35) then
        begin
        //This_Player.SetV(8,20,1);
        This_Player.SetV(11,4,10);
        //reset [203] 20
        This_Player.Give('����',1);
        end;
       This_NPC.NpcDialog(This_Player,
       'ʦ��˵��ʲô��\'
       +'����ʦ�����ǲ���ԭ���ҡ�\'
       +'������ң���Ҳ���������ģ����ء�����\'
       +'������ô���������ˣ�\'
       +'����һ�����������ĵ�ʱ���������ˬ���ú�������\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    //IF (This_Player.GetV(8,24) = 1) then
    IF (This_Player.GetV(11,4) = 14) then
    begin
        IF (This_Player.Job = 0) and (This_Player.Level >= 35) then
        begin
        //reset [210] 20
        //This_Player.SetV(8,16,1);
        This_Player.SetV(11,4,15);
        This_Player.Give('����֮��',1);
           This_NPC.NpcDialog(This_Player,
           '�����ǲ��Ǻ��������ú��ðɡ�\'
           +'��һ�Ѻ������ƵĽ���\'
           +'��������һ������\'
           +'�ҴӺ�����ǰ�Ϳ�ʼ��һ���ˣ�\'
           +'��ֻ֪����������ͷ��\'
           +'�������Ǹ��˰ɡ�\ \'
           +'|{cmd}<�ر�/@exit>'
           );
        end;
    end else
   // IF
   // (This_Player.GetV(9,7) = 1) and
   // (This_Player.GetV(8,25) = 1) and
   // (This_Player.GetV(8,21) <= 0) and
   if (This_Player.GetV(11,4) = 13) and (This_Player.GetBagItemCount('����֮��') >= 1) then
    begin
        //This_Player.SetV(8,24,1);
        This_Player.SetV(11,4,14);
        This_Player.Take('����֮��',1);
       This_NPC.NpcDialog(This_Player,
       '�����Ȿ���ǣ�ʦ��������֮�飡\'
       +'ʦ������û�������ҡ�\'
       +'������....\'
       +'�Ҳ��ܾ���������, ��Ҫ����ʦ���ľ�����Ʒ������֮�С�\'
       +'�㻹���Ժ��������Ұɡ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    This_NPC.NpcDialog(This_Player,
       '��ӭ���٣���ʲô������Ҫ�Ұ�æ��\ \ '
       +'|{cmd}<����/@repair>\'
       +'|{cmd}<��������/@s_repair>\'
       +'|{cmd}<�ر�/@exit>'
       
       );
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����������˾ƣ��һ�úø���ĥ�ġ�\ȫ���������ϡ�\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�޺��ˡ�\�������Ҫ����������������������ɡ�\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ� !���̫������...������������Ĳ����������޲���\���۸������ͨ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|{cmd}<����/@main>'
  );
end;



procedure _okheard;
begin
    IF (This_Player.Job = 0) and (This_Player.Level >= 35) then
    //reset [204]
    begin
       This_NPC.NpcDialog(This_Player,
       '���Ǻܻῴ�˰���\'
       +'��֪����û����˵������֮�У�\'
       +'������Ϊ��ѧ��������������ʦ����ʱ��\'
       +'��ʱ�����ᣬѪ����ʢ��û�����һ����ׯ��\'
       +'Ϊ��ѧ����ߵļ��������߱������еĵط���\ \'
       +'|{cmd}<��һ��/@next>'
       );
    end else
    IF This_Player.GetV(8,16) = 1 then
    begin
       This_NPC.NpcDialog(This_Player,
       '�Ҳ���˵���㻹û���Ǹ�������\'
       +'��������������Ͳ��У�\'
       +'��ȥ�����������ɡ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    begin
       This_NPC.NpcDialog(This_Player,
       '�ţ������㻹���߱����ҹ��µ��ʸ�\'
       +'Ҫ����ս��Ҫ���Ĺ��£�ƾ��������������еġ�\'
       +'��Ȼ���Ѿ��ҵ�����ˣ��������ҵ�������ϣ�\'
       +'�Ҹ��㼸����ǰ��Ĳ�Ʊ��\'
       +'ף����ˡ�\\'
       
       +'|{cmd}<�ر�/@exit>'
       );
    
    //reset [210] 10
    This_Player.SetV(8,16,1);
    This_Player.Give('��Ʊ',5);
    end;
end;
procedure _noheard;
begin

//reset [210] 10
   This_NPC.NpcDialog(This_Player,
   '�ţ���Ȼ�㲻����������Ҳû�취��\'
   +'���ߺá�\ \'
   +'|{cmd}<�ر�/@exit>'
   );

end;







procedure _next;
begin
   This_NPC.NpcDialog(This_Player,
   '���ǽ��ϡ���Ϊ���Ӻ���\'
   +'����ʱ����־Ҫ���Լ������·�Χ��Ϊ��һ��\'
   +'���ԣ��������������\'
   +'��һ�쵽��һ��С��ׯ��\'
   +'��ʱ��ֻ��������������ӣ�\'
   +'���Ծ����ڸ����ҿ�ջ��\ \'
   +'|{cmd}<��һ��/@next_1>'
   
   
   
   );

end;

procedure _next_1;
begin
   This_NPC.NpcDialog(This_Player,
   '�����ջ���ҽ��ϰ壬��㼸���򵥵Ĳˣ�\'
   +'�����ҷ������������ŵĲ˵�����һ��ĵ���\'
   +'�ǰѵ����������������κε���Ҫ��ɫ��\'
   +'�ǿ���һ�Ѳ˵���������������\'
   +'һ�Ѳ˵���Ȼ�Ƚ�������ĵ���Ҫ�á�\\'
   
   +'|{cmd}<��һ��/@next_2>'
   
   
   
   );
end;

 
procedure _next_2;
begin

   This_NPC.NpcDialog(This_Player,
   '�Ҳ��Ͽ�ջ�ϰ壬Ҫ��һ�������������ǰѵ����ˡ�\'
   +'�����ҵ��˲��Ǳ��ˣ�\'
   +'�����Ǹ߼���ʿ��\'
   +'���Ľ�����ʱ�Ѿ��ﵽ����ľ��硣\'
   +'����û���κ�Ұ�ĵ�������\'
   +'�����׵Ĺ������������\'
   +'ֻ��һ���������ׯ����Զ�ĵط����\ \'
   
   +'|{cmd}<��һ��/@next_3>'
   
   );
end;

 
procedure _next_3;
begin
   This_NPC.NpcDialog(This_Player,
   '�ҷ����Ƶ�Ѱ�����������ҵ�������\'
   +'������������ҹ���������ĵ��ӡ�\'
   +'���ǣ��ԴӸо��Լ���ʵ���г�����\'
   +'�ҾͿ�ʼ�ܱ���԰���\'
   +'ʦ����������������������\'
   +'ÿ����˺Ⱦƾ����棬\'
   +'�������һ��ܺ�ڡ�\ \'
   
   +'|{cmd}<��һ��/@next_4>'
   
   );

end;
 
procedure _next_4;
begin
   This_NPC.NpcDialog(This_Player,
   '�����ʦ��Ҳû�������ҡ�\'
   +'Ҳ������һ�����Ҹ��������ܡ�\'
   +'�Թ��ŷŵ�������ң�\'
   +'ʦ��û��˵�κλ���\'
   +'��ʵ����̫�Բ���ʦ����\'
   +'����û�����κλ����Ҿ��뿪��ʦ����\'
   +'��������������¡�\ \'
   
   +'|{cmd}<�ر�/@next_5>'
   
   );

end;

procedure _next_5;
begin
   This_NPC.NpcDialog(This_Player,
   'ʦ������������֮ǰ��������һ�ѽ���\'
   +'��������û��ѧ��������ѽ��ļ���֮ǰ��\'
   +'�͹����˸��ܵ���������Ҳ�֪���˼�����\'
   +'����û����ȥ��ʦ����\'
   +'��֪���ܲ���������ʦ����\ \'
   
   +'|{cmd}<����/@accept>\'
   +'|{cmd}<�ܾ�/@refuse>'
   );

end;

procedure _accept;
begin
    if This_Player.GetV(11,4) = 6 then
    This_Player.SetV(11,4,7);
   // This_Player.SetV(8,14,1);
   This_NPC.NpcDialog(This_Player,
   'лл�㣬�������Եȡ�\ \'
   +'|{cmd}<�ر�/@exit>'
   );

end;

procedure _refuse;
begin
//reset [210] 10
   This_NPC.NpcDialog(This_Player,
   '��Ը�⣿����Ҳû�취�����ߺá�\ \'
   +'|{cmd}<�ر�/@exit>'
   );
end;



//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.