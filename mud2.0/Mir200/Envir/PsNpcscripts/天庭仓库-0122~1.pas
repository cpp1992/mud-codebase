{******************************************************************

*******************************************************************}

PROGRAM Mir2;

{$I common.pas}
{$I WarehouseAndMbind.pas} 
{$I ActiveValidateCom.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;







PROCEDURE _mibao;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����ܱ����·������ܣ�\'+
   '���ߺ�ǰ�����ӣ����ϵ�װ��Ҳ�ܵõ����ر�����\'+ 
   '���ھ�ȥ�ܱ�ѡ�����ѡ�����·������ܣ�\'+
   '�޸��ܱ���ģʽ�����������á�\ \'+
   '|{cmd}<�����ֿ�/@DoInputDialog1>\'+
   '|{cmd}<����/@main>');
end;

PROCEDURE _zhuang;
Begin
   if compareText(This_Player.MapName, '0122~1') = 0 then
   begin
      This_Player.Flyto('SLDG',323,401);
   end;
end;


PROCEDURE _goumai;
Begin
   if This_Player.GoldNum >= 110 then
   begin
      This_Player.DecGold(110);
      This_Player.Give('�������Ѿ�',1);
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�������Ǯ��û�У����ˣ��㻹��ȥ�߽���Ҳֿ����Ա�ɡ�\ \'+
      '|{cmd}<���ر߽��/@zhuang>');
   end;
end;


PROCEDURE _goback;
Begin
   This_Npc.NpcDialog(This_Player,
   '������ֻ�е������Ѿ�����һ������ɡ�\ \'+ 
   '|{cmd}<����/@goumai>�������Ѿ�');
end;


Begin
    
   
   This_Npc.NpcDialog(This_Player,
   '���Ҳ����ۣ����ҵ���ͨ���귨��½�Ľݾ�����ȥ����͸�\'+
   '��˵��Ϊÿһλ��ʿ���ܺ�������ս��װ�����ҵ���ְ��\'+
   '�����ܱ����·������ܣ������ϵ�װ�����ܱ��������� \ \'+
   '|{cmd}<�����ֿ�/@DoInputDialog1>  \'+
   '|{cmd}<���ܶ���/@storage>          '+ActiveValidateStr+
   '|{cmd}<�һض���/@getback>\'+
   '|{cmd}<�����־����ҩˮ/@mbind>                  ^<ȥ�߽��/@zhuang>\'+
   '|{cmd}<����/@goback>�귨��½                      ^<�˳�/@doexit>');
end.