{
*******************************************************************}

program Mir2;
{$I TaoZhuang.pas}

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _doexit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _getRdmWP;
var Rdm_int : integer; 
WpName : string;
begin
    Rdm_int := random(100);  //��ȡ������������Ϊ 0-99�����һ������
    
    if This_Player.GetBagItemCount('����ƾ֤') > 0 then// �鿴�������Ƿ����㹻�Ľ��ʯ
    begin
        if This_Player.FreeBagNum >=2 then// �鿴�Ƿ����㹻�İ����ռ�
        begin
            if Rdm_int < 1 then // �����0�ĸ���Ϊ1% 
            begin
                case random(3) of
                    0 : WpName := 'ŭն';
                    1 : WpName := '����';
                    2 : WpName := '��ң��';   
                end;
            This_Player.Take('����ƾ֤',1);
            This_Player.Give(WpName , 1);
            This_NPC.NpcDialog(This_Player,
            '��ϲ���ɹ����'+ WpName);
            end else if Rdm_int < 2 then //�����1-19�ĸ���Ϊ5%
            begin
                case random(3) of
                    0 : WpName := '�þ�֮��';
                    1 : WpName := '����Ȩ��';
                    2 : WpName := '���ƽ�';
                end;
            This_Player.Take('����ƾ֤',1);
            This_Player.Give(WpName , 1);
            This_NPC.NpcDialog(This_Player,
            '��ϲ���ɹ����'+ WpName);
            end else if Rdm_int < 65 then //�����20-99�ĸ���Ϊ80%
            begin
                case random(3) of
                    0 : WpName := '��������';
                    1 : WpName := '��ħ���';
                    2 : WpName := '�������';
                end;
            This_Player.Take('����ƾ֤',1);
            This_Player.Give(WpName , 1);
            This_NPC.NpcDialog(This_Player,
            '��ϲ���ɹ����'+ WpName); 
			      end else if Rdm_int < 70 then //�����20-99�ĸ���Ϊ80%
		      	begin
                case random(3) of
                    0 :This_NPC.CreateMon('D5071~88', 22,24,6, '����1', 1);
                    1 :This_NPC.CreateMon('D5071~88', 22,24,6, '����ħ��', 1);
                    2 :This_NPC.CreateMon('D5071~88', 22,24,6, '��֮��Ȫ����', 1);
                end;
                This_Player.Take('����ƾ֤',1);
                ServerSay('�����<' + This_Player.Name + '>˺�ѿռ䲻С���ٻ�����ǿ���Զ�Ŷ�ħBOSS�������֮����Ű����������ǰ����ɱ����',3);
	          end else if Rdm_int < 80 then //�����20-99�ĸ���Ϊ80%
		      	begin
                case random(2) of
                    0 :This_NPC.CreateMon('D5071~88', 22,24,6, '��������', 1);
                    1 :This_NPC.CreateMon('D5071~88', 22,24,6, '����ս��', 1);
                end;
                This_Player.Take('����ƾ֤',1);
                ServerSay('�����<' + This_Player.Name + '>˺�ѿռ䲻С���ٻ�����ǿ���Զ�Ŷ�ħBOSS�������֮����Ű����������ǰ����ɱ����',3);
				    end else if Rdm_int < 100 then //�����20-99�ĸ���Ϊ80%
		      	begin
                case random(3) of
                    0 :This_NPC.CreateMon('D5071~88', 22,24,6, 'ħ������', 1);
                    1 :This_NPC.CreateMon('D5071~88', 22,24,6, '��֮ţħ��', 1);
                    2 :This_NPC.CreateMon('D5071~88', 22,24,6, '����ս��', 1);
                end;
                This_Player.Take('����ƾ֤',1);
                ServerSay('�����<' + This_Player.Name + '>˺�ѿռ䲻С���ٻ�����ǿ���Զ�Ŷ�ħBOSS�������֮����Ű����������ǰ����ɱ����',3);
		        end;
		          
        end else
        This_NPC.NpcDialog(This_Player,
        'û���㹻�İ����ռ�!\|'
        +'{cmd}<����/@main>');
    end else
    This_NPC.NpcDialog(This_Player,
    '����û������ƾ֤�����ɳ�ȡ\|'
    +'{cmd}<����/@main>');
end;

 

begin  //�ű����  ʹ��<����/@main> ����ת���˴�
TZJH_NPC;
    This_NPC.NpcDialog(This_Player,
    '������ж����<������ƾ֤��/c=red>������������˺��\|'+
	'һ�οռ䡣���ڻᷢ��ʲô���Լ�Ҳ�����,�п�\'+
	'�ܻ���Ϲű���,Ҳ���ܻ��ٻ���������ɥ������\'+
	'Զ�Ŷ�ħ,һ�ж���δ֪�ģ�\|'
    +'{cmd}<�ݽ�ƾ֤�����ᷢ��ʲô/@getRdmWP>');

end.
