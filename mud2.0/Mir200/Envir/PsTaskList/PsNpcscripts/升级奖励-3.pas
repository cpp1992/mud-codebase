procedure _GetFreeGold;  //BY ��ʢQQ��10302235
var Snum : Integer;//�ֲ��﷨��������
begin
   Snum := GetG(3,2)
     if Snum < 50 then
      begin 
        if This_Player.GetV(13,4) <> 1 then
        begin
            if This_Player.Level >= 50 then
          begin
            if This_Player.FreeBagNum >= 1 then
            begin 
                This_Player.Give('100Ԫ��',2);
				This_Player.Give('��ҳ',100);
                This_Player.SetV(13,4,1);
                SetG(3,2,Snum + 1);
                This_NPC.NpcDialog(This_Player,
                '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ�������1��') 
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����50��'); 
        end  else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
      end  else
      This_NPC.NpcDialog(This_Player,'50��������ȫ����ȡ��');
end;

procedure _GetFreeGold1;  //����
var  Snum1 : Integer;
begin 
   Snum1 := GetG(4,2)
    if Snum1 < 40 then
    begin 
         if This_Player.GetV(14,4) <> 1 then
        begin
          if This_Player.Level >= 52 then
           begin
             if This_Player.FreeBagNum >= 3 then
             begin 
                This_Player.Give('100Ԫ��',3);
				This_Player.Give('��ҳ',200);
                This_Player.SetV(14,4,1);
                SetG(4,2,Snum1 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
             end else
             This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��') 
           end else
            This_NPC.NpcDialog(This_Player,'��ĵȼ�����52��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'52��������ȫ����ȡ��');
end;


procedure _GetFreeGold2;  //����
var  Snum2: Integer;//�ֲ��﷨��������
begin 
    Snum2 := GetG(5,2)
    if Snum2 < 30 then
    begin 
        if This_Player.GetV(15,4) <> 1 then
        begin
          if This_Player.Level >= 54 then
          begin
            if This_Player.FreeBagNum >= 6 then
            begin 
                This_Player.Give('100������',5);
				This_Player.Give('��ҳ',200);
                This_Player.SetV(15,4,1);
                SetG(5,2,Snum2 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��6��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����54��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'54��������ȫ����ȡ��');
end;



procedure _GetFreeGold3;  //����
var  Snum3: Integer;//�ֲ��﷨��������
begin
    Snum3 := GetG(6,2)
    if Snum3 < 10 then
    begin 
        if This_Player.GetV(16,4) <> 1 then
        begin
          if This_Player.Level >= 56 then
          begin
            if This_Player.FreeBagNum >= 1 then
            begin 
                This_Player.Give('100Ԫ��',5);
                This_Player.SetV(16,4,1);
                SetG(6,2,Snum3 + 1); 
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��1��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����56��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'56��������ȫ����ȡ��');
end;

procedure _GetFreeGold4;  //����
var Snum4: Integer;//�ֲ��﷨��������
begin
    Snum4 := GetG(7,2)
    if Snum4 < 6 then
    begin 
        if This_Player.GetV(17,4) <> 1 then
        begin
            if This_Player.Level >= 58 then
          begin
            if This_Player.FreeBagNum >= 6 then
            begin 
                This_Player.Give('1000Ԫ��',1);
                This_Player.SetV(17,4,1);
                SetG(7,2,Snum4 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��6��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����58��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'58��������ȫ����ȡ��');
end;


var Snum , Snum1 , Snum2 , Snum3 , Snum4 : Integer; //���������
begin
    begin
     Snum := GetG(3,2)
     Snum1 := GetG(4,2)
     Snum2 := GetG(5,2)
     Snum3 := GetG(6,2)
     Snum4 := GetG(7,2)
     
    end;
    This_NPC.NpcDialog( This_Player,
    '50����������ǰʣ������:   ' + inttostr(28- Snum) + '\|' +
    '52����������ǰʣ������:  ' + inttostr(15 - Snum1) + '\|' +
    '54����������ǰʣ������:  ' + inttostr(10 - Snum2) + '\|' +
    '56����������ǰʣ������:  ' + inttostr(6 - Snum3) + '\|' +
    '58����������ǰʣ������:  ' + inttostr(3 - Snum4) + '\|' +
    '60�����������⽱��,��ǰʣ������:< 1��/c=red>\|' +

    '|{cmd}<50���弶����/@GetFreeGold> ^<52���弶����/@GetFreeGold1>\'  +
    '|{cmd}<54���弶����/@GetFreeGold2> ^<56���弶����/@GetFreeGold3>\' + 
    '|{cmd}<58���弶����/@GetFreeGold4> ^<60���弶����/@GetFreeGold5>\\' +
    '|<60���弶����������ϵ�ͷ���ȡ��/c=red>>\\' +
	'|  ^<�뿪/@doexit>');
end.