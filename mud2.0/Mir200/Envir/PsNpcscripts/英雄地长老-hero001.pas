{********************************************************************
* ��Ԫ���ƣ�Ӣ�۵س���  hero-hero001

* ժ    Ҫ��
* ��    ע���õ������12��1��2��3�ű���

*******************************************************************}


program mir2;


procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _BuHero1;
begin
   This_Player.SetV(12,3,1);
   This_Npc.InputDialog(This_Player,'������Ӣ�۵����֣�',0,101);
end;

procedure _BuHero2;
begin
   This_Player.SetV(12,3,2);
   This_Npc.InputDialog(This_Player,'������Ӣ�۵����֣�',0,101);
end;

procedure _BuHero3;
begin
   This_Player.SetV(12,3,3);
   This_Npc.InputDialog(This_Player,'������Ӣ�۵����֣�',0,101);
end;

procedure _BuHero4;
begin
   This_Player.SetV(12,3,4);
   This_Npc.InputDialog(This_Player,'������Ӣ�۵����֣�',0,101);
end;

procedure _BuHero5;
begin
   This_Player.SetV(12,3,5);
   This_Npc.InputDialog(This_Player,'������Ӣ�۵����֣�',0,101);
end;

procedure _BuHero6;
begin
   This_Player.SetV(12,3,6);
   This_Npc.InputDialog(This_Player,'������Ӣ�۵����֣�',0,101);
end;


Procedure p101;
var
j : integer;
begin
   j := This_Player.GetV(12,3);
   if This_Npc.InputOK then
   begin
      if This_Player.CreateHero(This_Npc.InputStr,1,j) = 0 then
      begin
         if This_Player.GetV(111,38) = 1 then
         begin
            if This_Player.SetV(111,38,10) then
            begin
               This_Player.Give('����',10000);
               This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·��Ӣ���������',2);
               //This_Player.DeleteTaskFromUIList(1038);
               This_Player.SetV(113,1,1);                                 //��Ӣ��ƪ��Ӣ���ڹ�
               This_Player.SetV(113,34,1);                                //��Ӣ��ƪ��������� 
               This_Player.SetV(113,43,1);                                //��Ӣ��ƪ��Ӣ�ۺϻ� 
            //   This_Player.AddTaskToUIList(1201);                    //Ӣ��ƪ��һ������
            //   This_Player.AddTaskToUIList(1234);                   //Ӣ��34������ 
               if (j = 2) or (j = 5) then
               begin
                  This_Player.SetV(113,40,1);                             //��Ӣ��ƪ����ʦ�ļ��� 
               end;
            end;
         end;
      end;
   end;
end;


procedure _gohero;
var
  nRetJ, nRetB : integer;
begin
   nRetJ := This_Player.MyHeroState(1);        //���ƹ�Ӣ�۷���ֵ ��0=�ޣ�1=�У�2=�ķ� 
   nRetB := This_Player.MyHeroState(0);        //��������Ӣ�۷���ֵ ��0=�ޣ�1=�У�2=�ķ�
  { if This_Player.Level < 40 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���ѣ�����������㣬����ͨ��������ͽ�Ŀ��飬\'+
      '���ǵ�����������������ɣ�');
   end else }
   if ( nRetJ = 1 ) or ( nRetB = 1 ) then
   begin
      This_Npc.NpcDialog(This_Player,
      '���˵�Ӣ���Ѿ�������ϣ�����ܼ̳����ǵ����룬\'+
      'ȥѰ�������Լ��ļ�԰��\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if nRetB = 2 then
   begin  
      This_Npc.NpcDialog(This_Player,
      '���Ӣ���Ѿ����ķ��ھƹ��ˣ�\'+
      'ϣ�����ܼ̳����ǵ����룬ȥѰ�������Լ��ļ�԰��\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if This_Player.GetV(12,1) = 3 then
   begin
      if nRetB = 0 then
      begin 
         This_Npc.NpcDialog(This_Player,
         '��ϲ�����Դ�������Ӣ��ȥ�����귨��½�ˣ�\'+
         '���������λӢ���أ�\ \'+
         '|{cmd}<Ӣ��(��սʿ)/@BuHero1>      ^<Ӣ��(�з�ʦ)/@BuHero2>      ^<Ӣ��(�з�ʿ)/@BuHero3>\ \'+
         '|{cmd}<Ӣ��(Ůսʿ)/@BuHero4>      ^<Ӣ��(Ů��ʦ)/@BuHero5>      ^<Ӣ��(Ů��ʿ)/@BuHero6>\');
      end; 
   end;
end;

procedure _goback;
begin
   if compareText(This_Player.MapName, 'hero001') = 0 then
   begin
      This_Player.Flyto('3',333,333);
   end;
end;


procedure _jineng;
begin
   if This_Player.GetV(12,2) = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ���ȡ����ҳ�ˣ������ٴ���ȡ��\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else
   begin
      if This_Player.FreeBagNum >= 3 then
      begin
         if This_Player.HeroLevel >= 0 then
         begin             
              case This_Player.HeroJob of
               0 : This_Player.BindGive('�����Ž���',1);
               1 : This_Player.BindGive('�����Ż�����',1);
               2 : This_Player.BindGive('������������',1);
              end;
              
              This_Player.BindGive('��ҳ',2); 
              This_Player.SetV(12,2,1);
              This_Npc.NpcDialog(This_Player,
             '�������Ӣ�۶��ǰ�����������ľ�Ӣ��\'+
             '���Ƕ��������հ��������еĸ���ħ�����ܡ�\'+
             '�����ܶ�����ŵļ����鶼��һ�������б��ٵò��Ʋ�����\'+
             '����ֻʣ��һЩ��ɢ����ҳ���������еĺܶ���ҳ�Ѿ�\'+
             '��ɢ���귨�ĸ������Ѵ��롣\'+
             '�����ﻹ����Ƭ��������ҳ������ȥ�Ұ����ŵ����ˣ�\'+
             '��Ҳ���ܴӲ�������ҳ���ҵ�һЩ�����ؼ���\ \'+
             '|{cmd}<�õ�,�����ȥ����/@doexit>');
         end else
         This_Npc.NpcDialog(This_Player,
         '������ٻ������Ӣ�۲�����ȡ��ҳ��');
      end else  
      begin
         This_Npc.NpcDialog(This_Player,
         '��İ����ռ䲻�����������������ȡ��');
      end;
   end;
end;

{Procedure _sdhero2;
Begin
   This_Npc.NpcDialog(This_Player,
   '�ڹ����������������������湦��������֮���������ͷ������һ��\'+
   '��ɫ��������������У������ڹ���ѡ�ѡ���ڹ�ѡ�\ '+
   '���Բ鿴��ǰ���ڹ��ȼ�������ֵ�����ѧϰ���ڹ����ܣ�\'+
   '�����ͨ����ҳ���쿴�ڹ����ܡ�ѧϰ�ڹ����Դ����ǿ���˵Ĺ���\'+
   '�����������ڹ��ȼ��Ĳ�������������ø�ǿ��ս��������\'+
   'ͬʱ������������ڹ���ʦ��ѧϰ�ڹ����ܣ�\'+
   '��Щ���ܽ������ø�ǿ���ս��������\ \'+
   '|<Ŷ���Ƕ���ʲô�����أ�/@sdhero2_1>               ^<����/@main>'   
);
end;

Procedure _sdhero2_1;
Begin
   This_Npc.NpcDialog(This_Player,
   '<�ڹ�����/c=red>�ǿ��Ե�������ǿ�����˺��ļ��ܣ�\'+
   '��Ϊ��<��֮ϵ��/c=red>��<ŭ֮ϵ��/c=red>��\'+
   '|<��֮ϵ��/c=red>ѧϰ�����������ɫ�����Ӧ���ܵķ�������\'+
   '��ϵ�еĸ��ּ����ʺ�����ְҵѧϰ��\'+
   '|<ŭ֮ϵ��/c=red>ѧϰ�����������Ӧ�ļ��ܹ�������\'+
   '��ϵ�м��ܲ�ְͬҵѧϰ�ļ��ܲ�ͬ��\ \'+
   '|<��ô����ѧ�Ἴ���أ�/@sdhero2_2>\'+
   '|<����/@sdhero2>'
);
end;

Procedure _sdhero2_2;
Begin
   This_Npc.NpcDialog(This_Player,
   '�������ڹ���ʦ��ʹ��<�̱�ʯ/c=red>���Ի�ȡָ����<�ڹ�������/c=red>��\'+
   '˫���ڹ������鼴��ѧ����ڹ����ܣ��ڹ����ܵ���������ʹ�ù���\'+
   '����ɵģ�ʹ�ü���Խ��������Խ�졣\'+
   'ѧ���ڹ�֮���㽫ӵ��<����/c=red>��ʹ���ڹ������ǻ�<��������ֵ/c=red>�ģ�\'+
   '�ڹ��ȼ�Խ�ߣ�����ֵҲ��Խ�ࡣ��ϸ����������ȥ<�ڹ���ʦ��/c=red>\'+
   '�������߲�ѯ<�ʺ羫��/c=red>��\'+
   '������ô����ܣ��������ھ���ѧϰ�ڹ���\'+
   '|<�õģ������Ҫѧϰ/@sdhero2_2_1>           ^<�õģ���Ҫ���ҵ�Ӣ��ѧϰ/@sdhero2_2_2>\'+
   '|<����/@sdhero2_1>'
);
end;

Procedure _sdhero2_2_1;
var
   i : Integer;

begin       
    i := Random(3);
    if This_Npc.CheckForce(This_Player, true) then
    begin
         This_Npc.NpcDialog(This_Player,
         '���Ѿ�ѧ���ڹ������ھ�ȥŬ�������Լ����ڹ��ȼ��ɣ�'       
         );
    end 
    else if i=2 then
    begin
         This_Npc.NpcDialog(This_Player,
         '�Ǻã�Ϊ�˿�������û������ѧϰ������һ�����⿼���㣬\'+
         '�����ش���ȷ���Ҿͽ��ڹ����ڸ��㡣\'+
         '��������ǣ�\ \'+
         '|<ѧϰ���ڹ�֮���������ѧϰ�ڹ������أ�/c=red>\ \'+
         '|<�����ڹ���ʦ/@right1>               ^<���ؾ������/@fault>'       
    );
    end 
    else if i=1 then
    begin
         This_Npc.NpcDialog(This_Player,
         '�Ǻã�Ϊ�˿�������û������ѧϰ������һ�����⿼���㣬\'+
         '�����ش���ȷ���Ҿͽ��ڹ����ڸ��㡣\'+
         '��������ǣ�\ \'+
         '|<�ڹ����ܷ�Ϊ������ϵ�У�/c=red>\ \'+
         '|<ŭ֮ϵ�к;�֮ϵ��/@right1>             ^<ŭ֮ϵ�кͷ�֮ϵ��/@fault>'    
    );
    end 
    else
    begin
        This_Npc.NpcDialog(This_Player,
        '�Ǻã�Ϊ�˿�������û������ѧϰ������һ�����⿼���㣬\'+
        '�����ش���ȷ���Ҿͽ��ڹ����ڸ��㡣\'+
        '��������ǣ�\ \'+
        '|<�������ڹ���ʦ��ʹ��ʲô���Ի�ȡ�ڹ������飿/c=red>\ \'+
        '|<�̱�ʯ/@right1>             ^<������/@fault>'
        );
    end
end;

Procedure _right1; 
begin
     if This_Npc.CheckForce(This_Player, true) then
     begin
         This_Npc.NpcDialog(This_Player,
         '���Ѿ�ѧ���ڹ������ھ�ȥŬ�������Լ����ڹ��ȼ��ɣ�'       
         );
     end else
     begin
          //This_Npc.EnableForce(This_Player, true)
          This_Npc.NpcDialog(This_Player,     
          '���Ѿ���������ڲ������ڹ������ӣ�ֻҪ���ڼ���ϰ��\'+
          '�������Ӿͻ��𽥵�׳�������Ϊ�����귨�ĸ��֡�\'+
          '���Ͱɣ�'+This_Player.Name +'\ \'+
          '|<��л��/@doexit>'
          );
          
          if This_Player.GetV(111,1) = 1 then
          begin
              if This_Player.SetV(111,1,10) then
              begin
                This_Player.Give('����',10000);
                This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·��ѧϰ�ڹ�����',2);
                This_Player.DeleteTaskFromUIList(1001);
              end;
          end;
     end;
end;

Procedure _fault;
begin
     This_Npc.NpcDialog(This_Player,
     'ʧ�ܣ��ش��������Ҫ���»ش����⡣'
);
end;

Procedure _sdhero2_2_2;
var
   i : Integer;
begin
    i := Random(3);
    if This_Player.HaveValidHero then
    begin         
         if This_Npc.CheckForce(This_Player, false) then
         begin
              This_Npc.NpcDialog(This_Player,
              '����δ�г����Ӣ�ۣ��������Ӣ���Ѿ�ѧ���ڹ���ѽ��'       
              );
         end 
         else if i=2 then
              begin
                   This_Npc.NpcDialog(This_Player,
                   '�Ǻã�Ϊ�˿�������û������ѧϰ������һ�����⿼���㣬\'+
                   '�����ش���ȷ���Ҿͽ��ڹ����ڸ��㡣\'+
                   '��������ǣ�\ \'+
                   '|<ѧϰ���ڹ�֮���������ѧϰ�ڹ������أ�/c=red>\ \'+
                   '|<�����ڹ���ʦ/@right2>               ^<���ؾ������/@fault>'
                   );
              end
              else if i=1 then
              begin
                    This_Npc.NpcDialog(This_Player,
                    '�Ǻã�Ϊ�˿�������û������ѧϰ������һ�����⿼���㣬\'+
                    '�����ش���ȷ���Ҿͽ��ڹ����ڸ��㡣\'+
                    '��������ǣ�\ \'+
                    '|<�ڹ����ܷ�Ϊ������ϵ�У�/c=red>\ \'+
                    '|<ŭ֮ϵ�к;�֮ϵ��/@right2>             ^<ŭ֮ϵ�кͷ�֮ϵ��/@fault>'
                    );
              end
              else
              begin
                    This_Npc.NpcDialog(This_Player,
                    '�Ǻã�Ϊ�˿�������û������ѧϰ������һ�����⿼���㣬\'+
                    '�����ش���ȷ���Ҿͽ��ڹ����ڸ��㡣\'+
                    '��������ǣ�\ \'+
                    '|<�������ڹ���ʦ��ʹ��ʲô���Ի�ȡ�ڹ������飿/c=red>\ \'+
                    '|<�̱�ʯ/@right2>             ^<������/@fault>' 
                    ); 
              end;
    end
    else
    begin
        This_Npc.NpcDialog(This_Player,
        '�㻹û�д���Ӣ�ۣ�������Ӣ��Ҳ����ڹ���'
        );
    end;
end;


Procedure _right2; 
begin
     if This_Player.HaveValidHero then
     begin
          if This_Npc.CheckForce(This_Player, false) then
          begin
               This_Npc.NpcDialog(This_Player,
               '���Ѿ�ѧ���ڹ������ھ�ȥŬ�������Լ����ڹ��ȼ��ɣ�'       
               );
          end
          else
          begin
               //This_Npc.EnableForce(This_Player, false)
               This_Npc.NpcDialog(This_Player,
               '���Ѿ������Ӣ�����ڲ������ڹ������ӣ�ֻҪ���ڼ���ϰ��\'+
               '�������Ӿͻ��𽥵�׳��������Ϊ�����귨�ĸ��֡�\'+
               '���Ͱɣ�'+This_Player.Name +'\ \'+
               '|<��л��/@doexit>'
               );
               
               if This_Player.GetV(113,1) = 1 then
               begin
                  if This_Player.SetV(113,1,10) then
                  begin
                     This_Player.Give('����',10000);
                     This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·��Ӣ���ڹ�����',2);
                     This_Player.DeleteTaskFromUIList(1201);
                  end;
               end;
          end;
     end
     else
     begin
         This_Npc.NpcDialog(This_Player,
        '�㻹û�д���Ӣ�ۣ�������Ӣ��Ҳ����ڹ���'
        );
     end         
end; }

//�ű�ִ�е����
begin
  if This_Player.GetV(12,1) = 3 then
  begin
     This_Npc.NpcDialog(This_Player,
     '���˵�Ӣ�۾����ҵ����ƣ������Ѿ�������\'+
     '����ļ��Ӣ��Ҳ�պö����������Ϣ��\'+
     '���Ƕ��Ѿ���˵��������飬���ǳ�Ը������㡣\'+
     '������ʱ������ЩӢ��ǰ���귨��½�ˡ�\ \'+
     '|{cmd}<����һ��Ӣ��/@gohero>                ^<��ȡ��ҳ/@jineng>\ \'+
     '|{cmd}<�����귨��½/@goback>');
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '���˵�Ӣ�۾����ҵ����ƣ������Ѿ�������\'+
     '����ļ��Ӣ��Ҳ�պö����������Ϣ��\'+
     '������ʱ������ЩӢ��ǰ���귨��½�ˡ�\ \'+
     '|{cmd}<��ȡ��ҳ/@jineng>\ \'+
     '|{cmd}<�����귨��½/@goback>');
  end;
end.    