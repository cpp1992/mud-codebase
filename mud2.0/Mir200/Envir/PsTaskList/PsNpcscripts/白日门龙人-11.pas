{********************************************************************
* ��Ԫ���ƣ�����������-11

* ժ    Ҫ��
* ��    ע��

*******************************************************************}
program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;                         
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _where;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��˵�ܶ༼����ҳ�Ѿ���ɢ���귨�ĸ���ħ�����ϣ�\'+
   '��ħս���е�ħ��Ҳ�ڻ�����������һ���֣�\'+
   '�����������Щ��ҳ����Ҳ���ܰ���ƴ��һ�������ļ����ؼ���\ \'+
   '|{cmd}<����/@main>');
end;

procedure _hejiji;                         
begin
   This_Npc.NpcDialog(This_Player,
   'ֻ���ض��İ����ż������ϲ��м�¼��\'+
   '��һ������Ľ�ɫ��ĩ���ڼ������ϣ��������ֳ��ϻ����ļ�¼\'+
   '�ּ���������������ķ�ĩ��Ҫ���Ĵ����Ľ��ʯ��������������\'+
   '������������ķ�ĩ��Ҫ���ʯ88�š� \ \'+
   '|{cmd}<��Ҫ��Щ��������/@hejineng>                           ^<����/@main>\');
end;

procedure _hejineng;                         
begin
   This_Npc.NpcDialog(This_Player,
   '���ȿ�����Ҫ���ֵĺϻ����ܣ�\'+
   '������������ض��İ����ż�������㹻�Ľ��ʯ��\'+
   '�����Ͼ͸����ҳ��������صĺϻ����ؼ���\'+
   '|{cmd}<�ƻ�ն սʿ��սʿ/@pohun>             ^<�ɻ����� ��ʿ�͵�ʿ/@shihun>\ \'+
   '|{cmd}<�������� ��ʦ�ͷ�ʦ/@qiyan>           ^<����һ�� սʿ�ͷ�ʦ/@leiting>\ \'+
   '|{cmd}<ĩ������ ��ʿ�ͷ�ʦ/@sheng>           ^<����ն սʿ�͵�ʿ/@pixing>');
end;

procedure GeiWoHJJ(book01 : string; book02 : string; HJName : string);                         
begin
   if ( This_Player.GetBagItemCount(book01) >= 1 ) and ( This_Player.GetBagItemCount(book02) >= 1 ) 
      and ( This_Player.MyDiamondnum >= 88 ) then
   begin
      This_Player.Take(book01,1);
      This_Player.Take(book02,1);
      This_Player.TakeDiamond(88,This_Npc);
      This_Player.Give(HJName,1);
      This_Npc.NpcDialog(This_Player,
      ''+HJName+'���ؼ��Ѿ������֣����ڰ��Ȿ�ؼ������㣡');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��ѽ����û���ռ������������ż�����ͽ��ʯ����');
   end;
end;

procedure _pohun;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ƻ�նֻ����<�������һ�>��<�����Ű���>��2���������д���������\'+
   '��Ҫ�ҵ��ϻ��������ţ��ͱ���<ͬʱӵ����2�������ż�����>��\'+
   '����㻹��88�Ž��ʯ���Ҿ��ܰ����ҵ����е�������\'+
   '�ɹ�ѧϰ�˺ϻ���֮��Ϳ��Ի��һ������֮�ģ�\'+
   '����Ӣ�۵Ķ������Ϳ����ۻ�ŭ��ֵ��\'+ 
   '|{cmd}<������2��������/@pohun1>��������һ�ºϻ����������ɡ�\ \'+
   '|{cmd}<����/@hejineng>                           ^<�ر�/@exit>');
end;

procedure _pohun1;                         
begin
   GeiWoHJJ('�������һ�','�����Ű���','�ƻ�ն'); 
end;

procedure _shihun;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ɻ�����ֻ����<����������>��<������������>��2���������д���������\'+
   '��Ҫ�ҵ��ϻ��������ţ��ͱ���<ͬʱӵ����2�������ż�����>��\'+
   '����㻹��88�Ž��ʯ���Ҿ��ܰ����ҵ����е�������\'+ 
   '�ɹ�ѧϰ�˺ϻ���֮��Ϳ��Ի��һ������֮�ģ�\'+
   '����Ӣ�۵Ķ������Ϳ����ۻ�ŭ��ֵ��\'+ 
   '|{cmd}<������2��������/@shihun1>��������һ�ºϻ����������ɡ�\ \'+
   '|{cmd}<����/@hejineng>                    ^<�ر�/@exit>');
end;

procedure _shihun1;                         
begin
   GeiWoHJJ('����������','������������','�ɻ�����'); 
end;

procedure _qiyan;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��������ֻ����<�����ű���>��<�����������>��2���������д���������\'+
   '��Ҫ�ҵ��ϻ��������ţ��ͱ���<ͬʱӵ����2�������ż�����>��\'+
   '����㻹��88�Ž��ʯ���Ҿ��ܰ����ҵ����е�������\'+ 
   '�ɹ�ѧϰ�˺ϻ���֮��Ϳ��Ի��һ������֮�ģ�\'+
   '����Ӣ�۵Ķ������Ϳ����ۻ�ŭ��ֵ��\'+ 
   '|{cmd}<������2��������/@qiyan1>��������һ�ºϻ����������ɡ�\ \'+
   '|{cmd}<����/@hejineng>                    ^<�ر�/@exit>');
end;

procedure _qiyan1;                         
begin
   GeiWoHJJ('�����ű���','�����������','��������'); 
end;

procedure _leiting;                         
begin
   This_Npc.NpcDialog(This_Player,
   '����һ��ֻ����<�����ź�����>��<�����Ű���>��2���������д���������\'+
   '��Ҫ�ҵ��ϻ��������ţ��ͱ���<ͬʱӵ����2�������ż�����>��\'+
   '����㻹��88�Ž��ʯ���Ҿ��ܰ����ҵ����е�������\'+ 
   '�ɹ�ѧϰ�˺ϻ���֮��Ϳ��Ի��һ������֮�ģ�\'+
   '����Ӣ�۵Ķ������Ϳ����ۻ�ŭ��ֵ��\'+ 
   '|{cmd}<������2��������/@leiting1>��������һ�ºϻ����������ɡ�\ \'+
   '|{cmd}<����/@hejineng>                    ^<�ر�/@exit>');
end;

procedure _leiting1;                         
begin
   GeiWoHJJ('�����ź�����','�����Ű���','����һ��'); 
end;

procedure _sheng;                         
begin
   This_Npc.NpcDialog(This_Player,
   'ĩ������ֻ����<��������ʾ>��<������ʥ����>��2���������д���������\'+
   '��Ҫ�ҵ��ϻ��������ţ��ͱ���<ͬʱӵ����2�������ż�����>��\'+
   '����㻹��88�Ž��ʯ���Ҿ��ܰ����ҵ����е�������\'+ 
   '�ɹ�ѧϰ�˺ϻ���֮��Ϳ��Ի��һ������֮�ģ�\'+
   '����Ӣ�۵Ķ������Ϳ����ۻ�ŭ��ֵ��\'+ 
   '|{cmd}<������2��������/@sheng1>��������һ�ºϻ����������ɡ�\ \'+
   '|{cmd}<����/@hejineng>                    ^<�ر�/@exit>');
end;

procedure _sheng1;                         
begin
   GeiWoHJJ('��������ʾ','������ʥ����','ĩ������'); 
end;

procedure _pixing;                         
begin
   This_Npc.NpcDialog(This_Player,
   '����նֻ����<��������ħ��>��<������ʨ�Ӻ�>��2���������д���������\'+
   '��Ҫ�ҵ��ϻ��������ţ��ͱ���<ͬʱӵ����2�������ż�����>��\'+
   '����㻹��88�Ž��ʯ���Ҿ��ܰ����ҵ����е�������\'+ 
   '�ɹ�ѧϰ�˺ϻ���֮��Ϳ��Ի��һ������֮�ģ�\'+
   '����Ӣ�۵Ķ������Ϳ����ۻ�ŭ��ֵ��\'+ 
   '|{cmd}<������2��������/@pixing1>��������һ�ºϻ����������ɡ�\ \'+
   '|{cmd}<����/@hejineng>                    ^<�ر�/@exit>');
end;

procedure _pixing1;                         
begin
   GeiWoHJJ('��������ħ��','������ʨ�Ӻ�','����ն'); 
end;

procedure _givebook;                         
begin
   This_Npc.NpcDialog(This_Player,
   '���������ҳ�Ļ�����ͽ����ҿ�����\'+
   '�ҿ��԰���ƴ��һ�£����Ƿ���Ի�ԭ��һ�������ؼ���\'+
   '�����Խ�����2Ƭ��5Ƭ����8Ƭ��ҳ��\'+
   '����ṩ����ҳԽ�࣬Խ�п��ܸ����������ʾ��ԭ�ɸ߼������飬\'+
   '��Ȼ��������Ƭ���ڲ��ƣ�����ÿ�ζ��ܻ�ԭ��ԭ�ȵļ����ؼ���\'+
   '�����ԭ��������������Ҫ�ļ��ܣ������԰���ҳ���ң�\'+
   '�����Ұ�������ܷ��������ֵ�������ŵķ�⡣\'+
   '�����������Ҫ�ļ��ܣ�������Ҫ����һ�Ž��ʯ��Ϊ����\'+
   '|{cmd}<�ݽ���ҳ/@dijiao>                                   ^<����/@main>'); 
end;

procedure _dijiao;                         
begin
   This_Npc.NpcDialog(This_Player,
   '������Ҫ����2Ƭ��5Ƭ����8Ƭ��ҳ�أ�\'+
   '����ṩ����ҳԽ�࣬Խ�п��ܸ����������ʾ��ԭ�ɸ߼������飬\'+
   '|{cmd}<��8Ƭ��ҳ�����ܻ�ÿ���ն�����������ٻ����������¼�����>��\'+
   '�ϳɼ����飬������ҳ������Ҫһ�Ž��ʯ��\'+
   'ֻ��ͨ�����ʯ���������ã���ҳ����ƴ����һ��\'+
   '�������������������Ҫ�Ĳ�һ���������Է���������\'+
   '�������������ҳ�����ٻ������ˣ��������һ�����������\'+
   '|{cmd}<��2Ƭ��ҳ/@givetwo>             ^<��5Ƭ��ҳ/@givefive>            ^<��8Ƭ��ҳ/@giveeight>\'+
   '|{cmd}<�����ٿ��ǿ���/@exit>'); 
end;

//�����ɫ�鼮��ģ�壻 
Procedure GiveBookNow(boname : string);
begin
   if This_Player.MyDiamondnum >= 1 then
   begin
      This_Player.TakeDiamond(1,This_Npc);
      This_Player.Give(boname,1);
      This_Player.SetV(15,2,0);
      This_NPC.CloseDialog(This_Player);
   end else 
   begin
      This_Npc.NpcDialog(This_Player,
      '����ô����û�н��ʯ����û������Ҳû�취��ԭ����');
   end;
end;

//�ϳɼ�����ģ�壻 
Procedure checkp4(bookname : string; booknum : integer);
begin
   if This_Player.MyDiamondnum >= 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ҵ���ҳ����Ҫ�����Ի�ԭ��Ϊ<' + bookname + '>��\'+
      '����Ҫ�����Ȿ�������ػ��Ǵ��������\'+
      '�����������ô��ҳҲ�����ٻ������ˡ�\'+
      '�������ȡ�Ȿ�飬����Ҫ�ٸ���һ�Ž��ʯŶ��\'+
      '������Ҳû�а취����Щ��ҳ���л�ԭ��\'+
      '|{cmd}<�����ʯ����ȡ�Ȿ������/@givenote>\ \'+
      '|{cmd}<�������Ҳ�Ҫ��/@exit>'); 
      This_Player.SetV(15,2,booknum);
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����ô����û�н��ʯ����û������Ҳû�취��ԭ����');
   end;
end;

procedure _givenote;
var
bonum : integer;                         
begin
   bonum := This_Player.GetV(15,2);
   case bonum of
     1  : GiveBookNow('�����Ž���');
     2  : GiveBookNow('�����Ź�ɱ');
     3  : GiveBookNow('�����Ż�����');
     4  : GiveBookNow('�����ſ���');
     5  : GiveBookNow('�������ջ���');
     6  : GiveBookNow('�����ŵ�����');
     7  : GiveBookNow('�������׵���');
     8  : GiveBookNow('�����Ŵ����');
     9  : GiveBookNow('������������');
     10 : GiveBookNow('������ս��');
     11 : GiveBookNow('������ʩ����');
     12 : GiveBookNow('�����Ż��');
     13 : GiveBookNow('������������');
     14 : GiveBookNow('�����Ŵ�ɱ');
     15 : GiveBookNow('�����Ű���');
     16 : GiveBookNow('������Ұ��');
     17 : GiveBookNow('�����ű���');
     18 : GiveBookNow('�����Ż�ǽ');
     19 : GiveBookNow('�����ż���');
     20 : GiveBookNow('�������׹�');
     21 : GiveBookNow('������������');
     22 : GiveBookNow('����������');
     23 : GiveBookNow('������Ⱥ��');
     24 : GiveBookNow('�����������');
     25 : GiveBookNow('������ս����');
     26 : GiveBookNow('��������ʾ');
     27 : GiveBookNow('��������ħ��');
     28 : GiveBookNow('������������');
     29 : GiveBookNow('�������һ�');
     30 : GiveBookNow('������ħ����');
     31 : GiveBookNow('������ʥ����');
     32 : GiveBookNow('�����ű�����');
     33 : GiveBookNow('������Ⱥ��');
     34 : GiveBookNow('������������');
     35 : GiveBookNow('������ʨ�Ӻ�');
     36 : GiveBookNow('�����������');
     37 : GiveBookNow('�����ź�����');
     38 : GiveBookNow('����������');
     39 : GiveBookNow('����ն');
     40 : GiveBookNow('������');
     41 : GiveBookNow('�ٻ�����');
   end;
end;

procedure _givetwo;
var
fai, boo : integer;                         
begin  
   if ( This_Player.GetBagItemCount('��ҳ') >= 2 ) and ( This_Player.MyDiamondnum >= 1 ) then
   begin
      This_Player.SetV(15,2,0);
      fai := random(10);
      This_Player.Take('��ҳ',2);
      if fai < 3 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�ܿ�ϧ����2Ƭ��ҳ��û�й�ϵ�������޸��ɼ����飡');
      end else
      begin
         boo := random(13)+1;
         case boo of
           1  : checkp4('�����Ž���', 1);
           2  : checkp4('�����Ź�ɱ', 2);
           3  : checkp4('�����Ż�����', 3);
           4  : checkp4('�����ſ���', 4);
           5  : checkp4('�������ջ���', 5);
           6  : checkp4('�����ŵ�����', 6);
           7  : checkp4('�������׵���', 7);
           8  : checkp4('�����Ŵ����', 8);
           9  : checkp4('������������', 9);
           10 : checkp4('������ս��', 10);
           11 : checkp4('������ʩ����', 11);
           12 : checkp4('�����Ż��', 12);
           13 : checkp4('������������', 13);
         end;
      end; 
   end else if This_Player.GetBagItemCount('��ҳ') < 2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������û�д����㹻�ĵ���ҳ��');
   end else if This_Player.MyDiamondnum < 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������û�н��ʯ������û�취������������'); 
   end;
end;

procedure _givefive;
var
fai, boo, bok2 : integer;                         
begin 
   if ( This_Player.GetBagItemCount('��ҳ') >= 5 ) and ( This_Player.MyDiamondnum >= 1 ) then
   begin
      This_Player.SetV(15,2,0);
      fai := random(10);
      This_Player.Take('��ҳ',5);
      if fai < 3 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�ܿ�ϧ����5Ƭ��ҳ��û�й�ϵ�������޸��ɼ����飡');
      end else if fai < 7 then
      begin
         boo := random(13)+1;
         case boo of
           1  : checkp4('�����Ž���', 1);
           2  : checkp4('�����Ź�ɱ', 2);
           3  : checkp4('�����Ż�����', 3);
           4  : checkp4('�����ſ���', 4);
           5  : checkp4('�������ջ���', 5);
           6  : checkp4('�����ŵ�����', 6);
           7  : checkp4('�������׵���', 7);
           8  : checkp4('�����Ŵ����', 8);
           9  : checkp4('������������', 9);
           10 : checkp4('������ս��', 10);
           11 : checkp4('������ʩ����', 11);
           12 : checkp4('�����Ż��', 12);
           13 : checkp4('������������', 13);
         end;
      end else
      begin
         bok2 := random(15)+14;
         case bok2 of
           14 : checkp4('�����Ŵ�ɱ', 14);
           15 : checkp4('�����Ű���', 15);
           16 : checkp4('������Ұ��', 16);
           17 : checkp4('�����ű���', 17);
           18 : checkp4('�����Ż�ǽ', 18);
           19 : checkp4('�����ż���', 19);
           20 : checkp4('�������׹�', 20);
           21 : checkp4('������������', 21);
           22 : checkp4('����������', 22);
           23 : checkp4('������Ⱥ��', 23);
           24 : checkp4('�����������', 24);
           25 : checkp4('������ս����', 25);
           26 : checkp4('��������ʾ', 26);
           27 : checkp4('��������ħ��', 27);
           28 : checkp4('������������', 28);
         end;
      end;
   end else if This_Player.GetBagItemCount('��ҳ') < 5 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������û�д����㹻�ĵ���ҳ��');
   end else if This_Player.MyDiamondnum < 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������û�н��ʯ������û�취������������'); 
   end;
end;

procedure _giveeight;
var
fai, bkk3, bk4, bok2 : integer;                         
begin
   if ( This_Player.GetBagItemCount('��ҳ') >= 8 ) and ( This_Player.MyDiamondnum >= 1 ) then
   begin
      This_Player.SetV(15,2,0);
      fai := random(10);
      This_Player.Take('��ҳ',8);
      if fai < 3 then
      begin
         This_Npc.NpcDialog(This_Player,
         '�ܿ�ϧ����8Ƭ��ҳ��û�й�ϵ�������޸��ɼ����飡');
      end else if fai < 6 then
      begin
         bok2 := random(15)+14;
         case bok2 of
           14 : checkp4('�����Ŵ�ɱ', 14);
           15 : checkp4('�����Ű���', 15);
           16 : checkp4('������Ұ��', 16);
           17 : checkp4('�����ű���', 17);
           18 : checkp4('�����Ż�ǽ', 18);
           19 : checkp4('�����ż���', 19);
           20 : checkp4('�������׹�', 20);
           21 : checkp4('������������', 21);
           22 : checkp4('����������', 22);
           23 : checkp4('������Ⱥ��', 23);
           24 : checkp4('�����������', 24);
           25 : checkp4('������ս����', 25);
           26 : checkp4('��������ʾ', 26);
           27 : checkp4('��������ħ��', 27);
           28 : checkp4('������������', 28);
         end;
      end else if fai < 8 then
      begin
         bkk3 := random(6)+29;
         case bkk3 of
           29 : checkp4('�������һ�', 29);
           30 : checkp4('������ħ����', 30);
           31 : checkp4('������ʥ����', 31);
           32 : checkp4('�����ű�����', 32);
           33 : checkp4('������Ⱥ��', 33);
           34 : checkp4('������������', 34);
         end;
      end else
      begin
         bk4 := random(10)+35;
         case bk4 of
           35 : checkp4('������ʨ�Ӻ�', 35);
           36 : checkp4('�����������', 36);
           37 : checkp4('�����ź�����', 37);
           38 : checkp4('����������', 38);
           else
           begin
              if ( bk4 > 38 ) and ( bk4 < 41 ) then
              begin
                 checkp4('����ն', 39);
              end else if ( bk4 >= 41 ) and ( bk4 < 44 ) then
              begin
                 checkp4('������', 40);
              end else if ( bk4 = 44) or ( bk4 = 45 ) then
              begin
                 checkp4('�ٻ�����', 41);
              end;
           end
         end;    
      end;
   end else if This_Player.GetBagItemCount('��ҳ') < 8 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������û�д����㹻�ĵ���ҳ��'); 
   end else if This_Player.MyDiamondnum < 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������û�н��ʯ������û�취������������');
   end;  
end;

//�ű�ִ�е����
Begin
  if (This_Player.HaveValidHero) or (This_Player.GetV(12,1) = 10) then 
  begin
     This_Npc.NpcDialog(This_Player,
     'Ӣ�ۺϻ������ޱȣ��������ǰ���ڼ�¼Ӣ�ۺϻ�ʱ��\'+
     'ʹ����һ���۾�������������ҩˮ������д��\'+
     '��ֻ�ڲ��ְ����ż����������м�¼��\'+
     '���Ǽ���һֱ�������𱣻��ϻ��������ܣ����Ȼ�԰������ж���\'+
     '��һ�������ġ�\ \'+
     '|{cmd}<�������ºϻ���������/@hejiji>            \'+
     '|{cmd}<����������ҳ��Ƭ��/@givebook>              ^<���ﻹ�ܻ����ҳ��/@where>\');
     This_Player.SetV(15,2,0);
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '������������Ӣ�۱������ҵĺܶ�ʦ�ֵܶ���������\'+
     '���ǽ���Щ��������д�ɲᣬ�Ա����ø����Ӣ��ѧϰ�ͷ�չ��\'+
     '����ϧ����ϸ�������������Ӣ�۶���������֮�֣�\'+
     '��Щ�ؼ�Ҳ���鳼ȫ�����ߣ��Ӵ˲�֪ȥ��\'+
     '��˵��Щ�ؼ��Ѿ���ɢ�����귨��½�����Ҷ��Ѿ�û��������\'+
     '����ˣ��ѵ��������е�һЩ���������ø��ҿ����ɣ�\'+
     '˵�������ǿ���ƴ��һ�������ļ����ؼ���\'+
     '|{cmd}<�������ºϻ���������/@hejiji>            \'+
     '|{cmd}<����������ҳ��Ƭ��/@givebook>              ^<���ﻹ�ܻ����ҳ��/@where>\');
     This_Player.SetV(15,2,0);
  end;
end.    