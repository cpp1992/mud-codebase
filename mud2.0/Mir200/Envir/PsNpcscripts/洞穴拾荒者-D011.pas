{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//==============================================================��������
procedure dogivegirl;
begin
 if This_Player.Job =0 then
 begin
   //This_Player.Give('�ؿ���(Ů)',1);
   This_Player.Give('ħ������',1);
   This_Player.Give('��ɫˮ����ָ',1);
 end else
 begin
  if This_Player.Job =1 then
  begin
    //This_Player.Give('ħ������(Ů)',1);
    This_Player.Give('��������',1);
    This_Player.Give('���۽�ָ',1);
  end else
  begin
    //This_Player.Give('���ս��(Ů)',1);
    This_Player.Give('��ɫ��������',1);
    This_Player.Give('���½�ָ',1);
  end;
 end;      
end;

procedure dogiveman;
begin
 if This_Player.Job =0 then
 begin
   //This_Player.Give('�ؿ���(��)',1);
   This_Player.Give('ħ������',1);
   This_Player.Give('��ɫˮ����ָ',1);
 end else
 begin
  if This_Player.Job =1 then
  begin
    //This_Player.Give('ħ������(��)',1);
    This_Player.Give('��������',1);
    This_Player.Give('���۽�ָ',1);
  end else
  begin
    //This_Player.Give('���ս��(��)',1);
    This_Player.Give('��ɫ��������',1);
    This_Player.Give('���½�ָ',1);
  end;
 end;      
end;


procedure _renwu21;
begin
 if (This_Player.GetV(103,1)=3) then
 begin
 This_Npc.NpcDialog(This_Player,
 '��Ⱦ��ң����ﵽ�������׶�����á�\'+
 '����Ͽ����<ɱ��10������/c=red>��\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
 end
 else if This_Player.FreeBagNum >4 then
 begin
 This_Player.SetV(103,1,3);        //������
 This_Player.UpdateTaskDetail(103,1);
 This_Player.SetV(103,2,0);
 This_Player.UpdateTaskDetail(103,1);
 This_Npc.CloseDialog(This_Player);
 // �Զ�Ѱ·������ 
  if This_Player.Gender =0 then
  begin
  dogiveman;
  end else
  begin
  dogivegirl;
  end
 end else
 begin 
 This_NPC.NpcDialog(This_Player,
 '��������������ı����������ң�\ \'+
 '|{cmd}<�õ�/@doexit>\'
 );
 end; 
end;  
   

procedure dorenwu22;
begin
 This_Npc.NpcDialog(This_Player,
 '��Ⱦ��ң����ﵽ�������׶�����á�\'+
 '����Ͽ����<ɱ��10������/c=red>��\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu23;
begin
 This_Npc.NpcDialog(This_Player,
 '̫���ˣ�лл�㣬��Щװ����Ϊ�Ҷ���ı���\'+
 '����ɭ�ֵĹ����ܵ��˺ڰ�������Ӱ�죬����ʧ�����ǣ�\'+
 '�Ż�����ô�ײеģ�Ҫ�ҵ���ֹ���Ƿ���ķ���������\'+
 'ֻ��������ɭ�������<���������ϰ�/c=red>�Ż�Ƚ������\'+
 '���ȥ�����ɣ�\ \'+
 '|{cmd}<�ҽ���(����)/@renwu24>\'
 );
end;

procedure _renwu24;
begin
 if (This_Player.GetV(103,1)=5) then
 begin
 This_Npc.NpcDialog(This_Player,
 'Ҫ�ҵ���ֹ���Ƿ���ķ���������ֻ��������ɭ�������\'+
 '<���������ϰ�/c=red>�Ż�Ƚ���������ȥ�����ɣ�\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
 end
 else if This_Player.FreeBagNum >4 then
 begin
  This_Player.SetV(103,1,5);        //������
  This_Player.UpdateTaskDetail(103,1);
  This_Npc.CloseDialog(This_Player);
  This_Player.Give('����',100000);
  This_Player.Give('������',1);
  //This_player.AutoGotoMap('1',314,71); // �Զ�Ѱ· ������ 
  if This_Player.Job =0 then
  begin
   //This_Player.Give('ն��',1);
   //This_Player.Give('����ͷ��',1);
   This_Player.Give('ħ������',2);
   end else
   begin
    if This_Player.Job =1 then 
    begin
    //This_Player.Give('����',1);
    //This_Player.Give('��ʿͷ��',1);
    This_Player.Give('ħ������',2);
    end else
    begin
    //This_Player.Give('��ħ',1);
    //This_Player.Give('��ʿͷ��',1);
    This_Player.Give('��ʿ����',2);
    end;      
   end;  
 end else
 begin 
 This_NPC.NpcDialog(This_Player,
 '��������������ı����������ң�\ \'+
 '|{cmd}<�õ�/@doexit>\'
 );
 end;
end;

procedure dorenwu24;
begin
 This_Npc.NpcDialog(This_Player,
 'Ҫ�ҵ���ֹ���Ƿ���ķ���,����ֻ��������ɭ�������\'+
 '<���������ϰ�/c=red>�Ż�Ƚ����,���ȥ�����ɣ�\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
end;

//==============================================================��������

procedure domain;
begin
 if (This_Player.GetV(103,1)=5) then
 begin
 dorenwu24;
 end
 else if (This_Player.GetV(103,1)=4) then
 begin
 dorenwu23;
 end
 else if (This_Player.GetV(103,1)=3) then 
 begin
 dorenwu22;
 end
 else if (This_Player.GetV(103,1)=2) then
 begin
 This_Npc.NpcDialog(This_Player,
 '��Ⱦ��ң����ﵽ�������׶������.\'+
 '��Ҫ���ܰ���ɱ��10������,�һᱨ����ģ�\ \'+
 '|{cmd}<�ҽ���(����)/@renwu21>\'
 );
 end
 else
 begin 
 This_Npc.NpcDialog(This_Player,
 '��������ʲô���飿\ \'
 );
 end;
end;

begin
  domain;
end. 