{
/*******************************************************************************
/*  �ű����� :
/*  ��ӦNPC  : ���ػ���
/*  �޶���¼ :
/*
/*******************************************************************************
}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '������˾��Ʋ��Ͼ���\������о��Ʋ��Ͼ��ұ����ͨ��������Ͼ�\�ٻ�����Щ̰���Ĺ�����ǵ�����Ҳ���������Ҫ�ľ��Ʋ��ϡ�\ \'
  +'|{cmd}<�ǵģ����о��Ʋ��Ͼ�/@yaoqugive>\ \'
  +'|{cmd}<�鷳�����һؾƹݰ�/@back>'
  );
end;

procedure Getout;
begin
  if compareText(This_Player.DynRoomName, 'Drinkwater') = 0 then
  begin
    This_Player.RandomFlyTo('0170');
  end;
end;

procedure _yaoqugive;
var
  temp : integer;
begin
  if This_Npc.CheckCurrMapMon >= 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ֻ���������ڳ��ֵĹ���ſ��Լ���ʹ�þ��Ʋ��Ͼ�');
  end
  else if This_Player.GetBagItemCount('���Ʋ��Ͼ�') >= 1 then
  begin
    This_Npc.CloseDialog(This_Player);
    This_Player.Take('���Ʋ��Ͼ�',1);
    This_Player.CallOut(This_Npc,600,'Getout');
    //�ڸö�̬�������ˢ�� 
    temp := random(4) + 1;
    if temp = 1 then
    begin
      This_Npc.CreateMon('',14,16,3,'��Ұ��3281',1); 
    end
    else if temp = 2 then
    begin
      This_Npc.CreateMon('',14,16,3,'��Ұ��3282',1); 
    end
    else if temp = 3 then
    begin
      This_Npc.CreateMon('',14,16,3,'��Ұ��3283',1); 
    end
    else if temp = 4 then
    begin
      This_Npc.CreateMon('',14,16,3,'��Ұ��3284',1); 
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '����Ҫ�о��Ʋ��Ͼ��Ҳ��ܷų����\���Ʋ��Ͼ�����Դ���ء�����ɽׯ�����׶�Ѩ�õ���');
  end; 
end;

procedure _back;
begin
  if compareText(This_Player.DynRoomName, 'Drinkwater') = 0 then
  begin
    This_Player.RandomFlyTo('0170');
  end;
end;

begin
  domain;
end.
  