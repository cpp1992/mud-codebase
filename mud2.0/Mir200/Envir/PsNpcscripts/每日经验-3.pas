{
*******************************************************************}

Program Mir2;



Procedure _doexit;
begin
   This_NPC.CloseDialog(This_Player);
end;

//==============================================================�������� 

procedure _GetFreeExp; 
var today , num: integer;
begin
    today := GetDateNum(GetNow);// ��ȡ��ǰ����

    if This_Player.GetV(13,1) <> today then     

    begin
       This_Player.SetV(13,1,today);
       This_Player.SetV(13,2,0);
    end;

             //��ʼ������ֵ��ÿ���״δ���������ȡ��������Ϊ0


 


    num := This_Player.GetV(13,2);  //��ȡ����ȡ������**ȡֵʱ�м�д�ڳ�ʼ��֮��
    if num < 3 then
    begin
        This_Player.Give('����',1000000);
        This_Player.SetV(13,2, num + 1); //��ȡ����ÿ��ȡһ�μ�һ
		ServerSay('���<' + This_Player.Name + '>��ȡ��ÿ�վ��飡', 2);
        This_NPC.NpcDialog(This_Player,
        '��ϲ����100��㾭��ֵ'
        +'|{cmd}<������ȡ����/@GetFreeExp>');
         
    end else
    This_NPC.NpcDialog(This_Player,'���������ȡ��3�ξ���');
end;

 

begin//���������
    This_NPC.NpcDialog(This_Player,
    '���ÿ��������ȡ3�ξ��飬ÿ�ο���ȡ100��'
    +'|{cmd}<��Ѿ�����ȡ/@GetFreeExp>');
end.

