procedure _GetFreeGold;  //BY ��ʢQQ��10302235
var Snum : Integer;//�ֲ��﷨��������
begin
   Snum := GetG(3,2)
     if Snum < 44 then
      begin 
        if This_Player.GetV(13,4) <> 1 then
        begin
            if This_Player.Level >= 50 then
          begin
            if This_Player.FreeBagNum >= 2 then
            begin 
                This_Player.Give('100Ԫ��',1);
                This_Player.Give('100������',1);
                This_Player.SetV(13,4,1);
				ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��50��������', 70);
                SetG(3,2,Snum + 1);
                This_NPC.NpcDialog(This_Player,
                '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ�������2��') 
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
    if Snum1 < 39 then
    begin 
         if This_Player.GetV(14,4) <> 1 then
        begin
          if This_Player.Level >= 52 then
           begin
             if This_Player.FreeBagNum >= 3 then
             begin 
                This_Player.Give('100Ԫ��',2);
                This_Player.Give('100������',2);
				ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��52��������', 70);
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
    if Snum2 < 34 then
    begin 
        if This_Player.GetV(15,4) <> 1 then
        begin
          if This_Player.Level >= 54 then
          begin
            if This_Player.FreeBagNum >= 3 then
            begin 
                This_Player.Give('100Ԫ��',3);
                This_Player.Give('��ҳ',300);
				ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��54��������', 70);
                This_Player.SetV(15,4,1);
                SetG(5,2,Snum2 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��')
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
    if Snum3 < 29 then
    begin 
        if This_Player.GetV(16,4) <> 1 then
        begin
          if This_Player.Level >= 56 then
          begin
            if This_Player.FreeBagNum >= 3 then
            begin 
                This_Player.Give('100Ԫ��',5);
                This_Player.Give('��ҳ',500);
				ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��56��������', 70);
                This_Player.SetV(16,4,1);
                SetG(6,2,Snum3 + 1); 
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��')
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
    if Snum4 < 24 then
    begin 
        if This_Player.GetV(17,4) <> 1 then
        begin
            if This_Player.Level >= 58 then
          begin
            if This_Player.FreeBagNum >= 3 then
            begin 
			     if This_Player.Gender = 0 then
                 This_Player.Give('����ħ��',1)
                 else
                 This_Player.Give('����ħ��',1);
				 ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��58��������', 70);
                This_Player.SetV(17,4,1);
                SetG(7,2,Snum4 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����58��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'58��������ȫ����ȡ��');
end;


procedure _GetFreeGold5;  //����
var    Snum5: Integer;//�ֲ��﷨��������
begin
    Snum5 := GetG(8,2)
    if Snum5 < 19 then
    begin 
        if This_Player.GetV(18,4) <> 1 then
        begin
            if This_Player.Level >= 60 then
          begin
            if This_Player.FreeBagNum >= 3 then
            begin 
                case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('����',1);
               end;
               1 : 
               begin
                   This_Player.Give('����',1);
               end;
               2 : 
               begin
                   This_Player.Give('����',1);
               end;
           end;
          ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��60��������', 70);   
                This_Player.SetV(18,4,1);
                SetG(8,2,Snum5 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����60��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'60��������ȫ����ȡ��');
end;


procedure _GetFreeGold6;  //����
var    Snum6: Integer;//�ֲ��﷨��������
begin
    Snum6 := GetG(9,2)
    if Snum6 < 14 then
    begin 
        if This_Player.GetV(19,4) <> 1 then
        begin
            if This_Player.Level >= 65 then
          begin
            if This_Player.FreeBagNum >= 3 then
            begin 
                case This_Player.Job of
               0 : 
               begin
                 if This_Player.Gender = 0 then
                 This_Player.Give('����ʥ��(��)',1)
                 else
                 This_Player.Give('����ʥ��(Ů)',1);
               end;
               1 : 
               begin
                   if This_Player.Gender = 0 then
                 This_Player.Give('����ʥ��(��)',1)
                 else
                 This_Player.Give('����ʥ��(Ů)',1);
               end;
               2 : 
               begin
                  if This_Player.Gender = 0 then
                 This_Player.Give('����ʥ��(��)',1)
                 else
                 This_Player.Give('����ʥ��(Ů)',1);
               end;
           end;
      ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��65��������', 70);
                This_Player.SetV(19,4,1);
                SetG(9,2,Snum6 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����65��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'65��������ȫ����ȡ��');
end;


procedure _GetFreeGold7;  //����
var    Snum7: Integer;//�ֲ��﷨��������
begin
    Snum7 := GetG(10,2)
    if Snum7 < 4 then
    begin 
        if This_Player.GetV(20,4) <> 1 then
        begin
            if This_Player.Level >= 66 then
          begin
            if This_Player.FreeBagNum >= 3 then
            begin 
                case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('����ʥ��(ս)',1);
               end;
               1 : 
               begin
                   This_Player.Give('����ʥ��(��)',1);
               end;
               2 : 
               begin
                   This_Player.Give('����ʥ��(��)',1);
               end;
           end;
ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��66��������', 70);
                This_Player.SetV(20,4,1);
                SetG(10,2,Snum7 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����66��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'66��������ȫ����ȡ��');
end;



procedure _GetFreeGold8;  //����
var Snum8: Integer;//�ֲ��﷨��������
begin
    Snum8 := GetG(11,2)
    if Snum8 < 2 then
    begin 
        if This_Player.GetV(21,4) <> 1 then
        begin
            if This_Player.Level >= 69 then
          begin
            if This_Player.FreeBagNum >= 3 then
            begin 
			     if This_Player.Gender = 0 then
                 This_Player.Give('����ս��(��)',1)
                 else
                 This_Player.Give('����ս��(Ů)',1);
				 ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��69��������', 70);
                This_Player.SetV(21,4,1);
                SetG(11,2,Snum8 + 1);
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����69��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'69��������ȫ����ȡ��');
end;


procedure _GetFreeGold9;  //����
var  Snum9: Integer;//�ֲ��﷨��������
begin
    Snum9 := GetG(12,2)
    if Snum9 < 2 then
    begin 
        if This_Player.GetV(22,4) <> 1 then
        begin
          if This_Player.Level >= 70 then
          begin
            if This_Player.FreeBagNum >= 3 then
            begin 
                This_Player.Give('����֮��',1);
				ServerSay('���' + This_Player.Name + '�ڳ弶������ȡ��70��������', 70);
                This_Player.SetV(22,4,1);
                SetG(12,2,Snum9 + 1); 
                This_NPC.NpcDialog(This_Player,
               '��ϲ����ȡ�ɹ�');
            end else
            This_NPC.NpcDialog(This_Player,'��İ���ʣ�಻��3��')
          end else
          This_NPC.NpcDialog(This_Player,'��ĵȼ�����70��'); 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˽���');
    end else
    This_NPC.NpcDialog(This_Player,'70��������ȫ����ȡ��');
end;




var Snum , Snum1 , Snum2 , Snum3 , Snum4 , Snum5 , Snum6 , Snum7 , Snum8 , Snum9 : Integer; //���������
begin
    begin
     Snum := GetG(3,2)
     Snum1 := GetG(4,2)
     Snum2 := GetG(5,2)
     Snum3 := GetG(6,2)
     Snum4 := GetG(7,2)
     Snum5 := GetG(8,2)
	 Snum6 := GetG(9,2)
	 Snum7 := GetG(10,2)
	 Snum8 := GetG(11,2)
	 Snum9 := GetG(12,2)
    end;
    This_NPC.NpcDialog( This_Player,
    '50��������100Ԫ��,100�����ǰʣ������:   ' + inttostr(45 - Snum) + '\|' +
    '52��������200Ԫ��,200�����ǰʣ������:  ' + inttostr(40 - Snum1) + '\|' +
    '54��������300Ԫ��,300��ҳ��ǰʣ������:  ' + inttostr(35 - Snum2) + '\|' +
    '56��������500Ԫ��,500��ҳ��ǰʣ������:  ' + inttostr(30 - Snum3) + '\|' +
    '58������������ħ���·�   ��ǰʣ������:  ' + inttostr(25 - Snum4) + '\|' +
    '60������������ϵ������   ��ǰʣ������:  ' + inttostr(15 - Snum5) + '\|' +
	'65������������ϵ���·�   ��ǰʣ������:  ' + inttostr(8 - Snum6) + '\|' +
	'66������������ϵ������   ��ǰʣ������:  ' + inttostr(5 - Snum7) + '\|' +
	'69������������ϵ���·�   ��ǰʣ������:  ' + inttostr(2 - Snum8) + '\|' +
	'70������������ϵ������   ��ǰʣ������:  ' + inttostr(1 - Snum9) + '\|' +
    '|{cmd}<50���弶����/@GetFreeGold> ^<52���弶����/@GetFreeGold1>\'  +
    '|{cmd}<54���弶����/@GetFreeGold2> ^<56���弶����/@GetFreeGold3>\' + 
    '|{cmd}<58���弶����/@GetFreeGold4> ^<60���弶����/@GetFreeGold5>\' + 
	'|{cmd}<65���弶����/@GetFreeGold6> ^<66���弶����/@GetFreeGold7>\' + 
	'|{cmd}<69���弶����/@GetFreeGold8> ^<70���弶����/@GetFreeGold9>'
	);
end.