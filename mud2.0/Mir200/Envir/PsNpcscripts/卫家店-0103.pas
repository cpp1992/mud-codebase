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

procedure _kang;
begin
      if This_Player.GetV(11,4) = 3 then
      This_Player.SetV(11,4,6);
       This_NPC.NpcDialog(This_Player,
       '��˵���˾����ڱ��Žֵ����������µ��������ϰ壬\'
       +'����������С������ûʲô��Ϣ��\'
       +'�������Ǻ���������������\'
       +'����ʱ��ѧ���ļ��������ڸ���������������\'
       +'��ȥ��һ�����ɣ��һ����Ⱥ������õġ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
end;

procedure _main_1;
begin
This_Npc.NpcDialog(This_Player,
      '��ӭ���١�������ʲô�����æ��\ \'
      +'|{cmd}<������/@buy>' + addSpace('', 22) + '^<������/@sell>\'
      +'|{cmd}<��������/@repair>\'
      +'|{cmd}<��������/@s_repair>\'
      +'|{cmd}<����/@qweapon>����װ������Ϣ\'
      +'|{cmd}<�ر����/@moveout>\'
      +'|{cmd}<�˳�/@doexit>');
end;

procedure domain;
var
num,duramax,duraav : integer;
begin
    This_Player.CheckBagItemEx('���',num,duramax,duraav);
    
    
    //IF (This_Player.GetV(8,16) <= 0) and   
    //(This_Player.GetV(8,17) <= 0) and
    //(This_Player.GetV(8,18) <= 0) and
    //(This_Player.GetBagItemCount('���') >= 1) then
    
    if (This_Player.GetV(11,3) <= 0) and (This_Player.GetBagItemCount('���') >= 1) then
    begin
        //This_Player.SetV(8,18,1);   
        This_Player.SetV(11,3,1);
        This_NPC.NpcDialog(This_Player,
               '����﷢�����ʲô���ѵ��ǽ��\'
               +'�������������������ڿ�ʼ���ý���о��µ�������\'
               +'������Ҫ�ܶ��󣬲�֪���ܲ��ܰ����ҽ��\'
               +'�ý�������һ����ü�Ǯ��\ \'
               +'|{cmd}<����/@main>'
               );
    end else
    {IF
    (random(10) = 1) and
    (This_Player.GetV(8,16) <= 0) and
    (This_Player.GetV(8,17) <= 0) and
    (This_Player.GetV(8,18) = 1) and
    (This_Player.GetBagItemCount('���') >= 1) then   }
    if (random(10) = 1) and (This_Player.GetV(11,3) = 1) and (This_Player.GetBagItemCount('���') >= 1) then
    begin
       //This_Player.SetV(8,18,1);   
        This_Player.SetV(11,3,1); 
    
        This_NPC.NpcDialog(This_Player,
               '����﷢�����ʲô���ѵ��ǽ��\'
               +'�������������������ڿ�ʼ���ý���о��µ�������\'
               +'������Ҫ�ܶ��󣬲�֪���ܲ��ܰ����ҽ��\'
               +'�ý�������һ����ü�Ǯ��\ \'
               +'|{cmd}<����/@main>'
               );
    end else
    // IF (This_Player.GetV(8,20) <= 0) and
    //(This_Player.GetV(8,19) <= 0) and
    //(This_Player.GetV(8,21) = 1) then
    if This_Player.GetV(11,4) = 3 then
    _kang
    else
   // IF This_Player.GetV(8,19) = 1 then
    IF This_Player.GetV(11,5) = 3 then
    begin
    IF RANDOM(2) = 0 then
       This_NPC.NpcDialog(This_Player,
       '�����ջ���������Ǿ����ҡ�\'
       +'��Ƣ���ܻ���������һ��������ʽ�ָ���ϰ壬\'
       +'�ҵĳ�Ƣ���ǳ������ġ�\'
       )
       else
       This_NPC.NpcDialog(This_Player,
       '�Ҳ���˵�����ٺ���������������\'
       +'û���ˣ����߰ɡ�\'
       );
    end else
   
    //IF (This_Player.GetV(8,20) <= 0) and (num >= 3) and (duramax > 14500) then
    IF (This_Player.GetV(11,4) <= 0) and (num >= 3) and (duramax > 14500) then
    begin
            //This_Player.SetV(8,18,0);
            
           This_NPC.NpcDialog(This_Player,
           'Ŷ, �������������\'
           +'�Ǹ������ȥƷ�ʲ���\'
           +'���ǣ�������û���㹻��Ǯ��������Щ���\'
           +'��֪���ܲ��ܸ������ˣ�\ \'
           +'  <���/@freegive>\'
           +'  <����/@creditgive>\'
           +'  <�ܾ�/@nogive>\'
           );
    end  else
    begin
         _main_1;
    end;
end;

procedure _moveout;
begin  
    if This_Player.MapName = '0103' then 
    This_Player.Flyto('0',341 + random(3) - 1,312 + random(3) - 1); 
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����ѡҪ�������Ʒ��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�����ȥҪ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    'Ҫ����������\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�Ѿ��޺��ˡ�\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ� !���̫������...������������Ĳ����������޲���\'+
    '���۸������ͨ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺��ˡ���\��úõ�ʹ������\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _qweapon;
begin
  This_Npc.NpcDialog(This_Player,
  '��˵��3λ���������׾���װ����\'
  +'����սʿ��ʥս��װ��˵�����ڳ���Ͽ�����\'
  +'��˫ͷѪħ���Կ��ܡ���\ \'
  +'|{cmd}<����/@main>'
  );
end;

procedure _freegive;
var
num,duramax,duraav : integer;
begin
   This_Player.CheckBagItemEx('���',num,duramax,duraav);
  // This_Player.PlayerNotice('���' + inttostr(num) + '-' + inttostr(duramax) ,2);
   if (num >= 3) and (duramax > 14500) then    //duramax > 14500
   begin
       IF (This_Player.GetV(11,4) <= 0) then
       begin
       //This_Player.SetV(8,17,1);
       This_Player.SetV(11,5,1);//��� 
       This_Player.SetV(11,4,6);
       This_Player.SetV(11,3,2);
       This_Player.Take('���',2);
       end;
       This_NPC.NpcDialog(This_Player,
       '��������İ���Щ�׸��ң�\'
       +'��û�뵽����������������ˣ������������鰡��\'
       +'�Ҳ��ܰ�����ô���صĶ�����\'
       +'����û����˵������֮�У�\'
       +'�����ڱ��Žֵ�С����������֮����û����ϸ�����ˣ�\ \'
       +'|{cmd}<����/@kang>'
       );
   end;
end;

procedure _creditgive;
var
num,duramax,duraav : integer;
begin
   This_Player.CheckBagItemEx('���',num,duramax,duraav);
  // This_Player.PlayerNotice('���' + inttostr(num) + '-' + inttostr(duramax) ,2);
   if (num >= 3) and (duramax > 14500) then    //duramax > 14500
   begin

    //This_Player.SetV(8,22,1);
    //This_Player.Take('���',2);
       IF (This_Player.GetV(11,4) <= 0) then
       begin
       //This_Player.SetV(8,17,1);
       This_Player.SetV(11,5,2); //���� 
       This_Player.SetV(11,4,2);
       This_Player.SetV(11,3,2);
       This_Player.Take('���',2);
       end;
       This_NPC.NpcDialog(This_Player,
       '�ţ��������ˣ�������δ��С���˵㡣\'
       +'������Ҳ���ǰ����ң�\'
       +'��Ҳ�ø�����һ���������õ����顣\'
       +'�ţ�����˵������֮����\'
       +'���������ڱȽ�æ����ȥ�ҽ�ָ���ϰ�ɡ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
   end;
end;

procedure _nogive;
begin
   This_NPC.NpcDialog(This_Player,
   'ʲô��������������Ŷ�����������˳�����ƭ������\'
   +'��ô�������˰����Ǻǡ�����\'
   +'�������������֣��Ժ���Ҳ�п��ܲ��ٺ��������ס�\'
   +'�㻹��־ܾ���\ \'
   +'|{cmd}<���/@freegive>\'
   +'|{cmd}<����/@creditgive>\'
   +'|{cmd}<���Ǿܾ�/@r_nogive>'
   );

end;

procedure _r_nogive;
begin
    //This_Player.SetV(8,19,1);
    
   IF (This_Player.GetV(11,4) <= 0) then
   begin
   //This_Player.SetV(8,17,1);
   This_Player.SetV(11,5,3); //�ܾ� 
   This_Player.SetV(11,4,2);
   This_Player.SetV(11,3,2);
   This_Player.Take('���',2);
   end; 
   This_NPC.NpcDialog(This_Player,
   '�ã������ɡ�\'
   +'��Ҳ�����ټ���ڶ���!!!\ \'
   +'|{cmd}<�ر�/@exit>'
   
   );

end;



//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.AddStdMode(43);
  This_Npc.FillGoods('ľ��',50,1);
  This_Npc.FillGoods('��ͭ��',50,1);
  This_Npc.FillGoods('����',50,1); 
  This_Npc.FillGoods('ذ��',50,1);
  This_Npc.FillGoods('����',50,1);
  This_Npc.FillGoods('��˪',50,1);
  This_Npc.FillGoods('�����',30,1);
  This_Npc.SetRebate(100);
end;



//�ű�ִ�е����
begin
  domain;
end.