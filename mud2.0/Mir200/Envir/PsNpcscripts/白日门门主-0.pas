{********************************************************************

* ��Ԫ���ƣ���������������������  bairimenzhu-B354
* ժ    Ҫ��
* ��    ע���õ������12��1��2��3�ű���

*******************************************************************}


program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _gotianzun;
begin
   if This_Player.Level >= 1 then
   begin
      This_Player.SetV(12,1,1);
      This_Npc.NpcDialog(This_Player,
      '�����ȥ��������ͽ�ɣ�\'+
      '��������һ������ļ��Ӣ��ѧϰ�����ż��ܣ�\'+
      '�����ȥ������������Щ����ʿ��\ \'+
      '|{cmd}<�õģ���ȥ��������ͽ/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '���ѣ�����������㣬����ͨ��������ͽ�Ŀ��飬\'+
      '���ǵ�����������������ɣ�');
   end;
end;


procedure _gointo;
begin
  { if This_Player.Level < 40 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���ѣ�����������㣬����ͨ��������ͽ�Ŀ��飬\'+
      '���ǵ�����������������ɣ�');
   end else }
   if compareText(This_Player.MapName,'0') = 0 then
   begin
      This_Player.SetV(12,1,3);
      This_Player.Flyto('hero001',26,27);      
   end;
end;


//�ű�ִ�е����
var
  nRetJ, nRetB : integer;
begin
   nRetJ := This_Player.MyHeroState(1);        //���ƹ�Ӣ�۷���ֵ ��0=�ޣ�1=�У�2=�ķ� 
   nRetB := This_Player.MyHeroState(0);        //��������Ӣ�۷���ֵ ��0=�ޣ�1=�У�2=�ķ�
   if ( nRetJ = 1 ) or ( nRetB = 1 ) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ˣ������źϻ��������������е�а��������Ϊ֮���ӣ�\'+
      '�������ǳ������ŵ������У��ϻ����Ѿ����ٻ��Ĳ�ȴ��ȫ��\'+
      '�Һð����ŵ�������Ϊ�˷�ֹ�Ժ�ϻ����������˵����У�\'+
      '�������ϻ���֮ʱ���ͽ����������ڰ����ŵĸ��ּ������У�\'+
      '�����򿪼����������ص�������Ҫ�ܾ��ܵ��ַ��������ȥ\'+
      '�����ˣ��������һ�������ġ�\ \'+
      '|{cmd}<�õģ������ȥ����/@doexit>');
   end else if nRetB = 2 then
   begin  
      This_Npc.NpcDialog(This_Player,
      '��İ�����Ӣ���Ѿ����ķ��ھƹ��ˡ�\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if nRetB = 0 then
   begin
      if This_Player.Level >= 1 then
      begin
         This_Npc.NpcDialog(This_Player,
      //'ף����ͨ���˿��飬�������ʵ����Ȼǿ��\'+
         '�Ҿ������ھ�����ȥӢ�۵أ����������ļ��Ӣ���и����㣬\'+
         '�ػ�������ĳ��ϻ����һ��Ӣ�ۡ�\ \'+
         '|{cmd}<�õģ���ȥ����/@gointo>');
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�����ˣ��������������ǰ���������ĺܸ��ˣ��������\'+
         '�˵�Ŭ�����Ѿ���һ����Ӣ�۱���ȳ����������Ҫȥ��\'+
         '��Ŀǰ����������Ӣ�ۣ����Ҹм�������');
      end;
   //end else if  This_Player.GetV(12,1) = 1 then
   //begin
   //   This_Npc.NpcDialog(This_Player,
   //   '���ȥ��������ͽ�ɣ�\'+
   //   '��������һ������ļ��Ӣ��ѧϰ�����ż��ܣ�\'+
   //   '�����ȥ������������Щ����ʿ��\ \'+
   //   '|{cmd}<�õģ���ȥ��������ͽ/@doexit>');
   //end else
   //begin
   //   This_Npc.NpcDialog(This_Player,
   //   '�����ˣ��������������ǰ���������ĺܸ��ˣ��������\'+
   //   '�˵�Ŭ�����Ѿ���һ����Ӣ�۱���ȳ����������Ҫȥ��\'+
   //   '��Ŀǰ����������Ӣ�ۣ����Ҹм�������\'+
   //   '���⣬��˵����������Ҳ�ո���ļ��һ��Ӣ�ۣ����ڣ���\'+
   //   '��������ͽ������Щ����ļ��Ӣ�۽���ĥ�������Ƿ�Ը��\'+
   //   '����������ͽ��ȥѵ����Щ����ʿ�أ�\ \'+
   //   '|{cmd}<��Ը���������ͽѵ������ļ��Ӣ��/@gotianzun>\');
   end;
end.    