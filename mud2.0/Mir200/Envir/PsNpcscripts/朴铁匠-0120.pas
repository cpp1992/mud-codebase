{********************************************************************

*******************************************************************}
PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _QUEST;
begin
    //IF This_Player.GetV(9,13) = 1 then
    IF (This_Player.GetV(11,1) = 10) or (This_Player.GetV(11,1) = 11) then 
    begin
    
    //This_Player.SetV(9,22,1);
    This_Player.SetV(11,1,11);
    This_Npc.NpcDialog(This_Player,
          '����λ�����������˻��� \ '
          +'�Ұѻ����и���ʦ�������͸������ˡ� \'
          +'��ȥ�������￴һ�¡� \ \'
          +'|{cmd}<�ر�/@exit>'
          );
    
    end else
    IF This_Player.GetV(9,16) = 1 then
    begin
    
    This_Npc.NpcDialog(This_Player,
          '��ȥ����λ�������˰ɡ� \ \'
          +'|{cmd}<�ر�/@exit>'
          );
    
    end else
    //IF This_Player.GetV(9,10) = 1 then
    if (This_Player.GetV(11,1) = 7) or (This_Player.GetV(11,1) = 8) then
    begin
    This_Npc.NpcDialog(This_Player,
          '�ۣ��㾹Ȼ����λ���˶��ҵ��ˣ� \'
          +'��һ������;�̾���ʵ���� \'
          +'�ţ���λ��������֪ͨ�� \ '
          +'��˵Ҫ����ζ������Ҫһ��������ͣ� \ \'
          +'|{cmd}<�ر�/@Q309_1>'
          
          );
    
    end else
   // IF This_Player.GetV(9,19) = 1 then
    IF This_Player.GetV(11,1) = 2 then
    begin
    This_Npc.NpcDialog(This_Player,
          '���һ������ҳ�ʦ�� \ \'
          +'|{cmd}<�ر�/@exit>'
          );
    end else
    //IF This_Player.GetV(9,23) = 1 then
    IF This_Player.GetV(11,1) = 1 then
    begin
    This_Npc.NpcDialog(This_Player,
          '�������������ϵĻ�������� \'
          +'���ú�... ���м�����Ҫ��������� \'
          +'�������Ͻ�����һ������������ \'
          +'����һ����Ӧ��.. \ \'
          +'  <����/@Q304_1>���� \'
          +'  <�ܾ�/@exit>����'
          
          );
    
    end else
       This_NPC.NpcDialog(This_Player,
       '��ӭ. лл����.\ \'
       +'|{cmd}<��/@buy>  ����\'
       +'|{cmd}<��/@sell>  ����\'
       +'|{cmd}<����/@repair> ����\'
       +'|{cmd}<ȡ��/@exit>'
       );

end;

procedure _normal;
begin
   This_NPC.NpcDialog(This_Player,
   '��ӭ���ٶ���ɽ�������̡�\ \'
   +'|{cmd}<��/@buy>  ����\'
   +'|{cmd}<��/@sell>  ����\'
   +'|{cmd}<����/@repair> ����\'
   +'|{cmd}<��������/@s_repair>\'
   +'|{cmd}<ȡ��/@exit> '
   );

end;


procedure domain;
begin
    IF random(2) = 0 then 
    _QUEST
    else
    _normal;
end;






procedure _Q304_1;
begin
//This_Player.SetV(9,19,1);
This_Player.SetV(11,1,2);
This_Npc.NpcDialog(This_Player,
      '������ҵ����󣬺ܸ�л.. \ '
      +'���Ǳ�ģ��������ϸ�����Ʒ�ʺõ���ͼ��⣬ \'
      +'Ҫ�Ұ��������� \'
      +'������������Ҫ�г�ʦ�� \ '
      +'�����æ��һλ��ʦ�ɡ� \ \'
      +'|{cmd}<�ر�/@exit>'
      );

end;

procedure _Q305;
begin
This_Npc.NpcDialog(This_Player,
      '���һ������ҳ�ʦ�� \ \'
      +'|{cmd}<�ر�/@exit>'
      );

end;



procedure _Q309_1;
begin
    if (This_Player.GetV(11,1) = 7) or (This_Player.GetV(11,1) = 8) then
    begin
    //This_Player.SetV(9,16,1);
    This_Player.SetV(11,1,8);
    This_Npc.NpcDialog(This_Player,
      '��������ͣ���˵�ǴӶ���ɽ�ȷ����Ŀ���������ɽ�ȵ��м�\'
      +'��һλ�������ˣ���֪����ô���������͡� \'
      +'��ȥ����һ�°ɡ� \'
      +'��λ���˾����������Ҳ��֪���� \\'
      
      +'|{cmd}<ȥ/@exit>Ѱ��'
      
      );
    end;
end;




procedure _buy;
begin
   This_Npc.NpcDialog(This_Player,
   '������Щʲô����?\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;



Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ����������?\'+
   '������Ҫ���������.\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�������޺���,��л�´�����.\ \' +
    '|{cmd}<����/@main>'
  );
end;

Procedure _s_repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����һ� !���̫������...������������Ĳ����������޲�����\'+
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

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '������Ҫ����������\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('ľ��', 50, 1);
  This_NPC.FillGoods('��ͭ��', 50, 1); 
  This_NPC.FillGoods('����', 50, 1);
  This_NPC.FillGoods('�̽�', 50, 1);
  This_NPC.FillGoods('ذ��', 50, 1);
  This_NPC.FillGoods('�����', 50, 1);
  This_NPC.FillGoods('����', 50, 1);
  This_NPC.FillGoods('��˪', 50, 1);
  //����stdmode  
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(43);
end;




Begin

domain;
   
end.