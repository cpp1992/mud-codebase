{
/***********************************************************************
/*  �ű����� : 
/*  ԭ�ű�NPC: wolong-0115~01
/************************************************************************}

PROGRAM Mir2;



Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;


{����ע�ͣ�
    //����ɽׯ��������������
    //���� �� -1 ��������ɹ�һ��  Field_Quest_Finish
    //        -2 ��Ʒ��û�д���    Field_Quest_Fail
    //         1 ����ɹ����      Field_Quest_OK
    function SubmitBallQuest(Player: TPlayer): Integer;
}
Procedure _submitball;
var
i : integer;
begin
   i := This_Npc.SubmitBallQuest(This_Player);
   if i = -2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��Ҫ���ս�������������ͱ����ռ�����������ҹ���飬\'+
      '��ȥ̽���ػ�������������죬�Ϳɻ�ô�������������ҹ���飡\'+
      'ͬʱ������Ҫ�������ׯ�����е�ׯ�����ƣ�');
   end else if i = -1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ��õ����������Ե������ˣ�\'+
      'ҹ�����������Ȼǿ�󣬵�Ҳֻ�ܳɹ�һ�Σ�');
   end else if i = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ��ɹ�������������Եĳ�Խ��');
      This_Npc.NpcNotice(''+This_Player.Name+'���������ɽׯ�ػ��˵����񣬻����ս������������') 
   end;
end;

Procedure _HuiShou;
begin
   This_Npc.NpcDialog(This_Player,
   '����ҹ�������ׯ�����ƾͽ����Ұɣ��ҿ��԰���һ�һ�������飡\��������һ���������أ�\ \'+
   '<��ɫҹ����/@HuiShou_01>         <��ɫҹ����/@HuiShou_02>          <��ɫҹ����/@HuiShou_03>\'+
   '<��ɫҹ����/@HuiShou_04>         <��ɫҹ����/@HuiShou_05>\'+	   
   '<ׯ������/@HuiShou_06>');
end;

Procedure WLHuishou(HSName : string);
begin
   if This_Player.GetBagItemCount(HSName) >= 1 then
   begin
      if This_Player.Take(HSName,1) then
      begin
         This_Player.Give('������',1);
         This_Npc.NpcDialog(This_Player,
         '����ҹ�������ׯ�����ƾͽ����Ұɣ��ҿ��԰���һ�һ�������飡\�㻹�������һ���������أ�\ \'+
         '<��ɫҹ����/@HuiShou_01>         <��ɫҹ����/@HuiShou_02>          <��ɫҹ����/@HuiShou_03>\'+
         '<��ɫҹ����/@HuiShou_04>         <��ɫҹ����/@HuiShou_05>\'+	   
         '<ׯ������/@HuiShou_06>'); 
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����Ϻ���û��' + HSName + '������ô����һ��أ�'); 
   end;
end;

Procedure _HuiShou_01;
begin
   WLHuishou('��ɫҹ����');
end;

Procedure _HuiShou_02;
begin
   WLHuishou('��ɫҹ����');
end;

Procedure _HuiShou_03;
begin
   WLHuishou('��ɫҹ����');
end;

Procedure _HuiShou_04;
begin
   WLHuishou('��ɫҹ����');
end;

Procedure _HuiShou_05;
begin
   WLHuishou('��ɫҹ����');
end;

Procedure _HuiShou_06;
begin
   WLHuishou('ׯ������');
end;

Begin
   if (This_Player.GetBagItemCount('��ɫҹ����') >= 1) and (This_Player.GetBagItemCount('��ɫҹ����') >= 1) and
      (This_Player.GetBagItemCount('��ɫҹ����') >= 1) and (This_Player.GetBagItemCount('��ɫҹ����') >= 1) and
      (This_Player.GetBagItemCount('��ɫҹ����') >= 1) and (This_Player.GetBagItemCount('ׯ������') >= 1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '������Ѿ�����������ҹ�����ׯ�����ƣ��Ͷ����Խ����ң�\'+
      '�һ��ͷ����е������������������ս������������\'+
      '����ҹ�����������Ȼǿ�󣬵���Ҳֻ�ܴ���һ�����Եĳ�Խ��\ \'+
      '<���Ѿ������ˣ��������������Եĳ�Խ/@submitball>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      'ֻҪ���귨��½����ʿ���ҾͿ��Ը�սʿ��������������������\'+
      '��ʿ������������������ħ��ʦ����ħ������������\'+
      '����ɽׯ�������屾���飬���������սʤ�ػ����屾�������\'+
      '�����죬�������Я�������ֲ�ͬ��ɫ��ҹ���顣Ȼ����ȥս\'+
      'ʤ����ׯ�����õ������е�ׯ�����ƣ�ֻ�а������ֲ�ͬ��ɫ��\'+
      'ҹ�����ׯ������һ�𽻸��ң��Ҳſ��Ի�����е�����������\'+
      '����������Եĳ�Խ��\'+
      '����ҹ�����������Ȼǿ�󣬵���Ҳֻ�ܴ���һ�����Եĳ�Խ��\'+
      '<����ҹ�����ׯ������/@HuiShou>');
   end;
end.