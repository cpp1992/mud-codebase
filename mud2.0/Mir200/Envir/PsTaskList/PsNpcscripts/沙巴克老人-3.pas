{
/***********************************************************************

/************************************************************************}

PROGRAM Mir2;



Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

{��ɳע��01��
    //��ѯ�����ɳ�Ϳ��л�ս������
    //����ֵ��   'û��'  ��ʾ   ��������û��ս .\ \
    //           �����ڡ���ʾ    '���ڵ��У�\ \
    //           ������  ��ʾ    �л�ս����
    function CheckCastleWarDate(): string; 
}
Procedure _aboutwar;
var
S1 : String;
Begin
   S1 :=  This_Npc.CheckCastleWarDate();
   if S1 = 'û��' then
   begin
      This_Npc.NpcDialog(This_Player,
      '������û��ս .\ \|{cmd}<����/@main>');
   end else if S1 = '����' then
   begin
      This_Npc.NpcDialog(This_Player,
      '���ڵ��У�\ \|{cmd}<����/@main>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '���һ�ε�ս�۽���'+S1+'20�㿪ʼ��\'+
      '��Ҳ���Կ���ս�۵�ʱ���������ͷǳ�����ˡ�\ \'+
      '|{cmd}<��һЩս�۵�ʱ���/@listwar>\'+
      '|{cmd}<����/@main>\');
   end;
   
end;


{��ɳע��02��
    //�鿴ս��ʱ���
    //����ֵ��  ''    ��ʾ     '����û��ȷ��ʱ��\ \
    //          ����  ��ʾ     ʱ���б�
    function GetListOfWar(): string;
}
Procedure _listwar;
var
S : string;
begin
   S := This_Npc.GetListOfWar;
   if S = '' then
   begin
      This_Npc.NpcDialog(This_Player,
      '����û��ȷ��ʱ��\ \|{cmd}<����/@main>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      S+'\ \'+
      '|{cmd}<����/@main>');
   end;
end;
//ɳ�Ϳ˲ر��� 
Procedure _sabuk;
begin
    if This_NPC.GetCastleGuildName <> '' then
    begin
    This_Npc.NpcDialog(This_Player,
    '�ر�����ÿ������22��23�㿪�ţ�ɳ�Ϳ��л��Ա������ѽ��룬\'+ 
    '������ʿ��Ҫ����һ���ɻ������񻨣�\ \'+
    '|{cmd}<����ر���/@sabukenter>                             ^<����/@main>'
    );
    end else
    This_Npc.NpcDialog(This_Player,
    'ֻ�е�ɳ�Ϳ˳����������˳���֮ʱ���ر���Ĵ��ŲŻᱻ������\'+
    '���ڻ�����ʱ��\ \'+
    '|{cmd}<����/@main>'
    ); 
end;

Procedure _sabukenter;
var
temp:integer;
begin
  if This_NPC.GetCastleGuildName <> '' then
  begin
    if (GetHour = 22) then 
    begin
     if compareText(This_Player.MapName, '3') = 0 then
     begin
        temp:= (60 - GetMin)*60;
        if This_Player.IsCastle then
        begin
          This_Player.RandomFlyTo('H204');
          This_Player.CallOut(This_NPC,temp,'sabuk_quanshui');
        end else
        begin
          if This_Player.GetBagItemCount('�ɻ�����') > 0 then
          begin
          This_Player.Take('�ɻ�����',1);
          This_Player.RandomFlyTo('H204');
          This_Player.CallOut(This_NPC,temp,'sabuk_quanshui');  
          end else 
          This_Npc.NpcDialog(This_Player,
          '������û��Я���ɻ����ǣ����ܽ���ɳ�Ϳ˲ر���\ \'+
          '|{cmd}<����/@main>'
          );
        end; 
     end;
    end else
    This_Npc.NpcDialog(This_Player,
    '�ر���ֻ��ÿ������22��23�㿪�ţ����ڲ�û�п�����\ \'+
    '|{cmd}<����/@main>'
    );
  end else
  This_Npc.NpcDialog(This_Player,
  'ֻ�е�ɳ�Ϳ˳����������˳���֮ʱ���ر���Ĵ��ŲŻᱻ������\'+
  '���ڻ�����ʱ��\ \'+
  '|{cmd}<����/@main>'
  );  
end;

procedure sabuk_quanshui;
begin
  if compareText(This_Player.MapName, 'H204') = 0 then
  begin    
  This_Player.RandomFlyTo('3');
  end; 
end;

//�����������
procedure _sabukOwner;
begin
   This_Npc.NpcDialog(This_Player,
   '���������ɳ�Ϳ˳��������������귨��½��ǿ�л������˵�����\'+
   '��������������������ɳĮ֮�����룬�ȴ��������������ˡ�˭����\'+
   '����������Զ���������Ǵ������ʷ�У����ǽ���Ŀ�Դ���\ \'+
   '|<�Ҿ���ɳ���µ����ˣ���Ҫ�ؽ�ɳ�Ϳ˳����ĵ���/@sabukOwner_1>\'+
   '|<����/@main>'
   );
end; 

procedure _sabukOwner_1;
var
reqnameType:integer;
reqnameStr:string;
begin
   if This_NPC.GetCastleGuildName <> '' then
   begin
     if compareText(This_Player.Name,This_NPC.GetCastleLoadName) = 0 then
     begin
       reqnameType := This_NPC.ReqCastleOwnerNpc(This_Player);
       case reqnameType of
         0:reqnameStr:='���ĳ��������Ѿ�������'; 
         1:
         begin
         reqnameStr:='��ϲ�������ؽ�����ɹ���ո�µĳ��������Ѿ�������';
         SetG(36,47,0);
         This_NPC.NpcNotice('���귨��½����ǿ�ߣ���½��ǿ�л�'+This_NPC.GetCastleGuildName+'������'+This_Player.Name+'Ϊԭ�ͣ��ķ����귨��½�ڶ��ܹ��ɽ���Ѫ��ɳ�Ϳ˳����������ڿ����������ڳ���֮ǰ������ɳ�Ϳ�ȫ�����·�������ڹ���Ŷ����������е�ͳ�Ρ�'); 
         end; 
       end;
       This_Npc.NpcDialog(This_Player,reqnameStr);
     end else
     This_NPC.NpcDialog(This_Player,
     '�Բ���������ɳ�Ϳ˳����������ؽ�ɳ�Ϳ˳�������'
     );
   end else
   This_NPC.NpcDialog(This_Player,
   '�Բ����㻹��������������������Ŭ���ɣ�'
   );  
end; 

Begin
   This_Npc.NpcDialog(This_Player,
   '����Ҫ����һЩʲô������\ \'+
   '|<���ʵ�ʱ�䣿/@aboutwar>\'+
   '|<�ؽ�ɳ�Ϳ˳�������/@sabukOwner>\'+
   '|<ɳ�Ϳ˲ر���/@sabuk>\'
   );
end.
