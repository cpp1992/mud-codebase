{
*******************************************************************}

program Mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;


//===============================================����������� 
procedure dorenwu1;
begin
 This_Npc.NpcDialog(This_Player,
 '��������ѣ�Ҫ���Ϊ��������ʿ������Ҫѧ����������������\'+
 '���棬��Ҫ֪���������ľ������ȸ���100������Ҿ͸����㣡\ \'+
 '|{cmd}<�ҽ���(����)/@renwu2>            ^<��εõ����/@JBshuoming>\'
 );
end; 

procedure dorenwu2;
begin
 This_Npc.NpcDialog(This_Player,
 'ȥ��������Ա�����ưɣ�˵���������кö������㡣\ \'+
 '|{cmd}<�����ȥ����������Ա(����)/@doexit>\'
 );
end;

Procedure dorenwu3;
begin
 This_NPC.NpcDialog(This_Player,
 '����ָ��Ա���ڽ̵����һЩ���ܵ�ʹ�ü���\'+
 '��Ͽ�ȥ�����ɣ�\ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu4;
begin
 This_Npc.NpcDialog(This_Player,
 '�ӻ����ϰ���Щ������Ҫ��������ȥ����һ�°ɡ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@renwu2>\'
 );
end;

procedure dorenwu6;
begin
 This_Npc.NpcDialog(This_Player,
 '�ӻ����ϰ壬������ȥ���ڷ�װ�����к��ɣ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu7;
begin
 This_Npc.NpcDialog(This_Player,
 '��װ���ϰ壬�鷳��ȥ��һ���������ϰ壬�������Ҹ���һЩ�룡\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu8;
begin
 This_Npc.NpcDialog(This_Player,
 '�������ϰ壬����ȥ��һ��ҩ���ϰ�)����������������ҵĻ�ƿ����ˡ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu9;
begin
  This_Npc.NpcDialog(This_Player,
 '���� ��������Ա�ղ�����߻��ƣ���֪���ǲ��������㡣\ \ \'+
 '|{cmd}<�����ȥ����(����)/@doexit>\'
 );
end;

procedure dorenwu11;
begin
 This_Npc.NpcDialog(This_Player,
 'ȥ��һ������ϰ�ɣ�����������һЩ����������ʵ���ļ����顣\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu13;
begin
 This_Npc.NpcDialog(This_Player,
 '����ϰ�Ҫ�����ڸϽ�ȥ��������5�������˰ɣ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end; 

procedure dorenwu14;
begin
 This_Npc.NpcDialog(This_Player,
 '���Ѿ��ɹ�����5�������˰ɣ��Ͽ��ȥ�ұ�������ϰ壡\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu15;
begin
  This_Npc.NpcDialog(This_Player,
 '���ˣ��ֿⱣ��Ա���������Щ�鷳�£���ȥ�����ܲ��ܰ������ɡ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end; 

procedure dorenwu16;
begin
 This_Npc.NpcDialog(This_Player,
 '�����ĸ��ÿ�����϶������ɵĽУ����Ƿ������ˣ�\'+
 '�����ˣ��Ͽ��ֿⱣ��Աȥ����ɱ��5�����ɡ�\ \ '+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu18;
begin
 This_Npc.NpcDialog(This_Player,
 '��̽�ӻر����������ɭ�ֵĹ����쳣��Ծ���鷳��ȥ����ɭ�ֵ�\'+
 '��ڴ���һ�����˺�����������ɭ�ֵ������Ƚ��˽⣡\ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu20;
begin
 This_Npc.NpcDialog(This_Player,
 '�����Աߵ���ڴ��������ֱ�ӵ�������ɭ�֣������������ҵ�ʰ���ߡ�\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu22;
begin
 This_Npc.NpcDialog(This_Player,
 '����Ͽ������ɭ��ʰ����ɱ��10�������ˡ�\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu24;
begin
 This_Npc.NpcDialog(This_Player,
 'Ҫ�ҵ���ֹ���Ƿ���ķ���������ֻ��������ɭ�������\'+
 '���������ϰ�Ż�Ƚ���������ȥ�����ɣ�\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
end;

procedure dorenwu25;
begin
 This_Npc.NpcDialog(This_Player,
 '����Ͽ�ﰲ�������ϰ�ɱ��10������սʿ��\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
end;


procedure dorenwu26;
begin
 This_Npc.NpcDialog(This_Player,
 '���������ϰ�˵��û�����ǵĳ�ǽ����Ҫ���������ˣ� \'+
 '����������Դ�ѷ�������������ط������µ���Դ���У� \'+
 '�����Ⱥ�����������һ�£�лл��Ϊ������һ�ˣ�\'+
 '���Ǹ���ĳ��ͣ� \ \'+
 '|{cmd}<лл(����)/@renwu27>\'
 );
end;

procedure dorenwu27;
begin
 This_Npc.NpcDialog(This_Player,
 '����ĵȼ��ﵽ23��ʱ����ǰ�������ϱ�����ȡ�µ�����\ \'+ 
 '|{cmd}<�õ�,��������(����)/@doexit>\'
 );
end;

procedure _renwu27;
begin
 if (This_Player.GetV(103,1)=9) then
 begin
 This_Npc.NpcDialog(This_Player,
 '����ĵȼ��ﵽ23��ʱ����ǰ�������ϱ�����ȡ�µ�����\ \'+ 
 '|{cmd}<�õ�,��������(����)/@doexit>\'
 );
 end else
 begin
  This_Player.SetV(103,1,9);        //������
  This_Player.UpdateTaskDetail(103,1);
  This_Npc.CloseDialog(This_Player);
  This_Player.Give('����',250000);
  This_Player.Give('��ҩ(��)��',1);
  This_Player.Give('ħ��ҩ(��)��',1);
 end;
end;

procedure _renwu1;
begin
if (This_Player.GetV(101,1)=1) then
 begin
  This_Npc.NpcDialog(This_Player,
 '��������ѣ�Ҫ���Ϊ��������ʿ������Ҫѧ����������������\'+
 '���棬��Ҫ֪���������ľ������ȸ���<100�����/c=red>�Ҿ͸����㣡\ \'+
 '|{cmd}<�ҽ���(����)/@renwu2>            ^<��εõ����/@JBshuoming>\'
 );
 end else
 begin
  This_Player.SetV(101,1,1);          //������
  //#This_Player.AddTaskToUIList(101);   //����������־���ѽӵ����񣬵���������־
  This_Player.UpdateTaskDetail(101,1); 
  This_Player.Give('����',125);
  This_Npc.NpcDialog(This_Player,
 '��������ѣ�Ҫ���Ϊ��������ʿ������Ҫѧ����������������\'+
 '���棬��Ҫ֪���������ľ������ȸ���<100�����/c=red>�Ҿ͸����㡣\ \'+
 '|{cmd}<�ҽ���(����)/@renwu2>            ^<��εõ����/@JBshuoming>\'
 );
 end;  
end; 
 
procedure _renwu2;
begin
if (This_Player.GetV(101,1)=1) then
 begin
 if (This_Player.GoldNum >= 100) then
  begin
 This_Npc.NpcDialog(This_Player,
 '�ţ���ô��Ͱѽ�Ҹ����ˣ�������ӵ���ܹ���Ϊ��ʿ��Ǳ�ʣ�\'+
 'ȥ��������Ա�����ưɣ�˵���������кö������㡣\ \'+
 '|{cmd}<�ҽ���(����)/@renwu3>\'
 );
  end else 
  begin
  This_Npc.NpcDialog(This_Player,
  '��ȷ���������100�����\ \ \'+
  '|{cmd}<��εõ����/@JBshuoming>\'
  );
  end;
 end;
end;

procedure _renwu3;
begin
 if (This_Player.GoldNum >= 100) and (This_Player.GetV(101,1)=1) then
 begin
 This_Player.DecGold(100);
 This_Player.SetV(101,1,2);         //������
 This_Player.UpdateTaskDetail(101,1); 
 This_Player.Give('����',315);
 This_Npc.CloseDialog(This_Player);
 //This_player.AutoGotoMap('0',332,270); //����Զ�Ѱ· ��������Ա  
 end else 
 begin
 This_Npc.NpcDialog(This_Player,
 '��ȷ���������100�����\ \ \'+
 '|{cmd}<��εõ����/@JBshuoming>\'
 );
 end;
end; 

procedure _renwu4;
begin
if (This_Player.GetV(102,1)=1) then
 begin
  This_Npc.NpcDialog(This_Player,
 '�ӻ����ϰ���Щ������Ҫ��������ȥ����һ�°ɡ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@renwu2>\'
 );
 end else
 begin
  This_Player.SetV(102,1,1);        //������
  This_Player.SetV(101,1,9999);
  //#This_Player.DeleteTaskFromUIList(101);         //��������־�������һ�����񣬲�����ʾ��
  //#This_Player.AddTaskToUIList(102);              //��ɾ����һ������ŵ����ݣ��������һ������ŵ����ݣ�˳���ܴ�
  This_Player.UpdateTaskDetail(102,1); 
  This_Player.Give('����',500);
  This_Npc.CloseDialog(This_Player);
  //This_player.AutoGotoMap('0',377,298); //����Զ�Ѱ· �ӻ����ϰ� 
 end;  
end; 

procedure _JBshuoming;
begin
  This_Npc.NpcDialog(This_Player,
 '�ܼ򵥣������ȴ���İ�����˫������������װ����Ȼ��ȥ���⣬\'+
 '�����г��������<������¹��������ɱ��/c=red>��ͨ��ʹ��<ALT+���/c=red>\'+
 '��ȡ�������ϵ��⣬Ȼ������<����/c=red>�����ܻ�ȡ����ˡ�\ \'+
 '|{cmd}<�ҽ���(����)/@renwu2>\'
 );
end; 
//============================================================================== 


procedure domain;
var
  Tem101, Tem102, Tem103, Tem104: integer;
begin
   Tem101 := This_Player.GetV(101,1);
   Tem102 := This_Player.GetV(102,1);
   Tem103 := This_Player.GetV(103,1);
   Tem104 := This_Player.GetV(104,1);
   if Tem104 >= 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '����֮·������һ��һ��Ļ�����ֻ�п̿��������\'+
      '����һ�죬�㽫չ����Ĺ�â��\ \'+
      '|{cmd}<лл����ָ��/@doexit>\');
   end else if Tem103 >= 1 then
   begin
      case Tem103 of
        1 : dorenwu20;
        2 : This_NPC.NpcDialog(This_Player,'���ȥ����ɭ������ʰ���ߡ�\ \|{cmd}<�ҽ���/@doexit>');
        3 : dorenwu20;
        4 : dorenwu20;
        5 : dorenwu24;
        6 : dorenwu25;
        7 : dorenwu25;
        8 : dorenwu26;
        9 : dorenwu27;
      end;
   end else if Tem102 >= 1 then
   begin
      case Tem102 of
        1  : dorenwu4;
        2  : dorenwu6;
        3  : dorenwu7;
        4  : dorenwu8;
        5  : dorenwu9;
        6  : dorenwu11;
        7  : dorenwu13;
        8  : dorenwu13;
        9  : dorenwu14;
        10 : dorenwu15;
        11 : dorenwu16;
        12 : dorenwu16;
        13 : dorenwu18;
      end;
   end else if Tem101 = 4 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���ٽ����2���ɣ���Ϊ�귨��ʿ��Ҫѧ���������ˣ�\'+
      '����<�ӻ����ϰ�/c=red>��Щ������Ҫ�����أ���ȥ����һ�°ɡ�\ \'+
      '|{cmd}<�ҽ���(����)/@renwu4>\'); 
   end else if Tem101 = 3 then 
   begin
      dorenwu3;
   end else if Tem101 = 2 then 
   begin
      dorenwu2;
   end else if Tem101 = 1 then
   begin
      dorenwu1;   
   end else if (This_Player.Level <= 35) and ( Tem101 < 1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ�����귨��½��'+ This_Player.Name + '����Ҫ������ǰ��һ�ие���֣�\'+
      '��Ƭ�������������Ĵ�½������Ѿ���һ�����صĺڰ�����\'+
      '�������ˣ����ʮ��Σ������������Ҫ������������ʿ��\'+
      '��������������������ɣ� \ \'+
      '|{cmd}<�ҽ���(����)/@renwu1>\');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����֮·������һ��һ��Ļ�����ֻ�п̿��������\'+
      '����һ�죬�㽫չ����Ĺ�â��\ \'+
      '|{cmd}<лл����ָ��/@doexit>\');
   end;
end;     

begin
  domain;
end.