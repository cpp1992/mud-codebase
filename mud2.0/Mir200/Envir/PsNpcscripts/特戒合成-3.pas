program Mir2;
Procedure _doexit;
begin
This_Npc.CloseDialog(This_Player);
end;



procedure _1; 
begin
if This_Player.GetBagItemCount('�ͼ���������')   >= 1 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('���ʯ') >= 2000 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��ҳ') >= 2000 then    //�����Ʒ
begin 
if  This_Player.FreeBagNum >= 1 then     //��ⱳ��
begin
This_Player.Take('�ͼ���������' , 1);
This_Player.Take('���ʯ' , 2000);
This_Player.Take('��ҳ' , 2000);
This_Player.Give('�м���������' , 1);  //������Ʒ 
ServerSay('�귨��½��Ȼ����ɫ�䣬��ҡ���'+ This_Player.Name+'���������سɹ�������ˡ����м����ҡ����ҿ���ǰ��Ĥ�ݣ�',3);
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�����ո���������1������  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�ͼ��������Ҳ��㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'���ʯ*2000���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��ҳ*2000���㣡����  ');
end ;
end ;



procedure _2; 
begin
if This_Player.GetBagItemCount('���ʯ')   >= 12222 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��ҳ') >= 5000 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��Ա����') >= 30 then    //�����Ʒ
begin 
if This_Player.GetBagItemCount('�м���������') >= 2 then    //�����Ʒ
begin 
if  This_Player.FreeBagNum >= 1 then     //��ⱳ��
begin
This_Player.Take('���ʯ' , 12222);
This_Player.Take('��ҳ' , 5000);
This_Player.Take('��Ա����' , 30);
This_Player.Take('�м���������' , 2);
This_Player.Give('�߼���������' , 1);  //������Ʒ 
ServerSay('�귨��½��Ȼ����ɫ�䣬��ҡ���'+ This_Player.Name+'���������سɹ�������ˡ���߼����ҡ����ҿ���ǰ��Ĥ�ݣ�',3);
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�����ո���������1������  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'���ʯ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��ҳ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��Ա���ֲ��㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�м��������Ҳ��㣡����  ');
end ;
end ;


procedure _3; 
begin
if This_Player.GetBagItemCount('���ʯ')   >= 18888 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��ҳ') >= 12222 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��Ա����') >= 200 then    //�����Ʒ
begin 
if This_Player.GetBagItemCount('�߼���������') >= 5 then    //�����Ʒ
begin 
if  This_Player.FreeBagNum >= 1 then     //��ⱳ��
begin
This_Player.Take('���ʯ' , 18888);
This_Player.Take('��ҳ' , 12222);
This_Player.Take('��Ա����' , 200);
This_Player.Take('�߼���������' , 5);
This_Player.Give('�ռ���������' , 1);  //������Ʒ 
ServerSay('�귨��½��Ȼ����ɫ�䣬��ҡ���'+ This_Player.Name+'���������سɹ�������ˡ����ռ����ҡ����ҿ���ǰ��Ĥ�ݣ�',3);
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�����ո���������1������  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'���ʯ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��ҳ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��Ա���ֲ��㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�߼��������Ҳ��㣡����  ');
end ;
end ;



procedure _4; 
begin
if This_Player.GetBagItemCount('���ʯ')   >= 38888 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��ҳ') >= 18888 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��Ա����') >= 500 then    //�����Ʒ
begin 
if This_Player.GetBagItemCount('�ռ���������') >= 1 then    //�����Ʒ
begin 
if  This_Player.FreeBagNum >= 1 then     //��ⱳ��
begin
This_Player.Take('���ʯ' , 38888);
This_Player.Take('��ҳ' , 18888);
This_Player.Take('��Ա����' , 500);
This_Player.Take('�ռ���������' , 1);
This_Player.Give('�����ָ' , 1);  //������Ʒ 
ServerSay('�귨��½��Ȼ����ɫ�䣬��ҡ���'+ This_Player.Name+'���������سɹ�������ˡ��ﻤ���ָ�����ҿ���ǰ��Ĥ�ݣ�',3);
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�����ո���������1������  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'���ʯ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��ҳ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��Ա���ֲ��㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�ռ��������Ҳ��㣡����  ');
end ;
end ;


procedure _5; 
begin
if This_Player.GetBagItemCount('���ʯ')   >= 38888 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��ҳ') >= 18888 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��Ա����') >= 500 then    //�����Ʒ
begin 
if This_Player.GetBagItemCount('�ռ���������') >= 1 then    //�����Ʒ
begin 
if  This_Player.FreeBagNum >= 1 then     //��ⱳ��
begin
This_Player.Take('���ʯ' , 38888);
This_Player.Take('��ҳ' , 18888);
This_Player.Take('��Ա����' , 500);
This_Player.Take('�ռ���������' , 1);
This_Player.Give('��Խ�ָ' , 1);  //������Ʒ 
ServerSay('�귨��½��Ȼ����ɫ�䣬��ҡ���'+ This_Player.Name+'���������سɹ�������ˡ�����Խ�ָ�����ҿ���ǰ��Ĥ�ݣ�',3);
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�����ո���������1������  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'���ʯ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��ҳ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��Ա���ֲ��㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�ռ����Ҳ��㣡����  ');
end ;
end ;


procedure _6; 
begin
if This_Player.GetBagItemCount('���ʯ')   >= 38888 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��ҳ') >= 18888 then    //�����Ʒ
begin
if This_Player.GetBagItemCount('��Ա����') >= 500 then    //�����Ʒ
begin 
if This_Player.GetBagItemCount('�ռ���������') >= 1 then    //�����Ʒ
begin 
if  This_Player.FreeBagNum >= 1 then     //��ⱳ��
begin
This_Player.Take('���ʯ' , 38888);
This_Player.Take('��ҳ' , 18888);
This_Player.Take('��Ա����' , 500);
This_Player.Take('�ռ���������' , 1);
This_Player.Give('�����ָ' , 1);  //������Ʒ 
ServerSay('�귨��½��Ȼ����ɫ�䣬��ҡ���'+ This_Player.Name+'���������سɹ�������ˡ��︴���ָ�����ҿ���ǰ��Ĥ�ݣ�',3);
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�����ո���������1������  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'���ʯ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��ҳ���㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'��Ա���ֲ��㣡����  ');
end ;
end else  //�����ʾ 
begin
This_Npc.NpcDialog(This_Player,
'�ռ����Ҳ��㣡����  ');
end ;
end ;

begin
       This_Npc.NpcDialog( This_Player,
  '�м�������Ҫ:(�ͼ�����*1+���ʯ*2000+��ҳ*2000)\' +
  '|�߼�������Ҫ:(���ʯ*12222+��ҳ*5000+��Ա����*30+�м�����*2)\' +
  '|�ռ�������Ҫ:(���ʯ*18888+��ҳ*12222+��Ա����*200+�߼�����*5)\' +
  '|��������Ҫ:(���ʯ*28888+��ҳ*18888+��Ա����*500+�ռ�����)\' +
  '|��Խ�ָ��Ҫ:(���ʯ*28888+��ҳ*18888+��Ա����*500+�ռ�����)\' +
  '|�����ָ��Ҫ:(���ʯ*28888+��ҳ*18888+��Ա����*500+�ռ�����)\'+
  '|<�м�����/@1>  ^<�߼�����/@2>  ^<�ռ�����/@3>\'+
  '|<�����ָ/@4>  ^<��Խ�ָ/@5>  ^<�����ָ/@6>'
    );
end.