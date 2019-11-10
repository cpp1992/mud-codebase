{********************************************************************

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

procedure domain;
begin
    if (This_Player.GetBagItemCount('����ҩ') >= 1) and (This_Player.GetV(11,7) = 9) then
    begin
        if This_Player.Level >= 11 then
        begin
        This_Player.Take('����ҩ',1);
        This_Player.SetV(11,7,100);
        This_Player.AddGold(2000);
        This_Npc.NpcDialog(This_Player,
              '�Ǻ��Ҿ������Ҹ��׸��ҵĶ���!\'
              +'�ǳ���л��!\'
              +'��һ��Ǯ�������Ҷ���ı����!\\'
              +'|{cmd}<�ټ�!/@exit>'
              );
        end else
        This_Npc.NpcDialog(This_Player,
              '���Ǵ�����ɽ�����İ�?\'
              +'�ǿ����ҳ����ĵط�!\'
              +'��һ���Ӵ��ӵ�С������ѧ�˲���֪ʶ\'
              +'�ҿ�����,����㶼��ԵĻ�\'
              +'�һ�����һ�������\'
              +'��Ը��������?\\'
              +'˳��˵һ��,����ɽ�ȵ�С��������Ů����,��Ҫ������Ŷ\'
              +'|{cmd}<Ը��/@quest11>\'
              +'|{cmd}<��Ը��/@quest12>'
              );
    end else
    begin
        if (This_Player.GetBagItemCount('������') >= 1) and (This_Player.GetV(11,7) = 13) then
        begin
        
            if This_Player.Level >= 11 then
            begin
            This_Player.Take('������',1);
            This_Player.AddGold(2000);
            This_Npc.NpcDialog(This_Player,
                  '�Ǻ��Ҿ��������常���ҵĶ���!\'
                  +'�ǳ���л��!\'
                  +'��һ��Ǯ�������Ҷ���ı����!\\'
                  +'|{cmd}<�ټ�!/@exit>'
                  );
            end else
            This_Npc.NpcDialog(This_Player,
              '���Ǵӱ߽�������İ�?\'
              +'�ǿ�����ѧϰ֪ʶ�ĵط�!\'
              +'��һ���Ӵ��ӵİ�������ѧ�˲���֪ʶ\'
              +'�ҿ�����,����㶼��ԵĻ�\'
              +'�һ�����һ�������\'
              +'��Ը��������?\\'
              +'˳��˵һ��,�߽����İ��������ҵı���,��Ҫ������Ŷ\'
              +'|{cmd}<Ը��/@quest11>\'
              +'|{cmd}<��Ը��/@quest13>'
              );
        end else
        
        This_Npc.NpcDialog(This_Player,
          '���Ƿ�����ݵ�����ʦ�����w��\'
          +'�����û��ʲô����Ļ�\'
          +'�벻Ҫ�����,��������������,����������\\'
          +'|{cmd}<�����鱨/@ask>\'
          +'|{cmd}<ȷ��/@exit>'
          );
    end;
end;



procedure _ask;
begin
This_Npc.NpcDialog(This_Player,
      '��˵�������������������������Լ�������\'
      +'�����������һ��ɲ����װ�!\\'
      +'|{cmd}<ȷ��/@exit>'
      );
end;

procedure _quest12;
begin

    if This_Player.Take('����ҩ',1) then
    This_Player.AddGold(2000);
    This_Npc.NpcDialog(This_Player,
      '��Ȼ���,��Ҳ����ǿ��\'
      +'���Ǯ�������Ҷ���ı���\'
      +'���°�!\'
      +'|{cmd}<�ټ�/@exit>'
      );
end;

procedure _quest13;
begin
    if This_Player.Take('������',1) then
    This_Player.AddGold(2000);

This_Npc.NpcDialog(This_Player,
      '��Ȼ���,��Ҳ����ǿ��\'
      +'���Ǯ�������Ҷ���ı���\'
      +'���°�!\'
      +'|{cmd}<�ټ�/@exit>'
      );

end;

procedure _quest11;
begin
This_Npc.NpcDialog(This_Player,
      '��,�ҿ�ʼ����,������𰸰�!\'
      +'��һ��:\'
      +'�򿪰����Ŀ�ݼ���ʲô?\\'
      +'|{cmd}<F9/@quest2>\'
      +'|{cmd}<F10/@wrong>\'
      +'|{cmd}<F11/@wrong>\'
      +'|{cmd}<F12/wrong>'
      );

end;

procedure _wrong;
begin
This_Npc.NpcDialog(This_Player,
      '�ܱ�Ǹ,��ش����\'
      +'�㻹��Ҫ����ѧϰ\'
      +'�����������½������ȥ\'
      +'|{cmd}<����һ��/@quest11>\'
      +'|{cmd}<�õ�/@exit>'
      );

end;

procedure _quest2;
begin
This_Npc.NpcDialog(This_Player,
      '����,�����ڶ���:\'
      +'������ʽһ���ж�����?\\'
      +'|{cmd}<3��/@wrong>\'
      +'|{cmd}<4��/@wrong>\'
      +'|{cmd}<5��/@quest3>\'
      );

end;

procedure _quest3;
begin
This_Npc.NpcDialog(This_Player,
      '�����,���������ÿ�ֹ���ģʽ���÷���?\'
      +'����������:\'
      +'��ͬһ������������˵����������ʲô?\\'
      +'|{cmd}<!/@wrong>\'
      +'|{cmd}<!!/@quest4>\'
      +'|{cmd}<!~/@wrong>'
      );

end;

procedure _quest4;
begin
This_Npc.NpcDialog(This_Player,
      '��������������һ��\'
      +'��β鿴���˵�װ��?\\'
      +'|{cmd}<ctrl+���/@wrong>\'
      +'|{cmd}<alt+���/@wrong>\'
      +'|{cmd}<ctrl+�Ҽ�/@quest5>\'
      +'|{cmd}<alt+�Ҽ�/@wrong>'
      );

end;

procedure _quest5;
begin
This_Npc.NpcDialog(This_Player,
      '�����,�Ѿ������һ����Ŷ\'
      +'���һ����������:\'
      +'�ҵ����ֽ�ʲô?\\'
      +'|{cmd}<����/@wrong>\'
      +'|{cmd}<��һ/@wrong>\'
      +'|{cmd}<���w��/@right>\'
      +'|{cmd}<��/@wrong>'
      );

end;

procedure _right;
begin
This_Npc.NpcDialog(This_Player,
      '�����˲�����\'
      +'�ҿ������������,�������ѡ��������Ϊ���ֵı���\\'
      +'|{cmd}<����/@wuqi1>\'
      +'|{cmd}<����/@wuqi2>\'
      +'|{cmd}<�˻�/@wuqi3>\'
      );

end;

procedure _wuqi1;
var BL : boolean;
begin
    BL := false;
    
    if This_Player.FreeBagNum <= 0 then
    begin
        This_Npc.NpcDialog(This_Player,
          '��İ���Ҳ̫���˰ɣ�\\'
          ); 
        exit;
    end;
    
    if (This_Player.GetBagItemCount('����ҩ') >= 1) and (This_Player.GetV(11,7) = 9) then
    begin
        This_Player.Take('����ҩ',1);
        This_Player.Give('����',1);
        This_Player.SetV(11,7,14);
        BL := true
    end else
    if (This_Player.GetBagItemCount('������') >= 1) and (This_Player.GetV(11,7) = 13) then
    begin
        This_Player.Take('������',1);
        This_Player.Give('����',1);
        This_Player.SetV(11,7,14);
        BL := true
    end; 
    
    if BL then
     This_Npc.NpcDialog(This_Player,
      '' + This_Player.Name + ',�ر�˵һ����Щ�������ϵ��������\'
      +'�Ǵ����������Ժ�������Ŷ��Ҫ�ǵõ��ˣ�\'
      +'�ǻ������벻����Ч�������İ�\'
      +'' + This_Player.Name + '��Ŭ����Ϊ��½��һǿ�߰�!\'
      +'�����Ĵ�½����۳�!\\'
      )
    else
    This_Npc.NpcDialog(This_Player,
    '��Ҫ�Ķ����ǲ���Ū���ˣ�\\'
      );
end;

procedure _wuqi2;
var BL : boolean;
begin
    BL := false;
    
    if This_Player.FreeBagNum <= 0 then
    begin
        This_Npc.NpcDialog(This_Player,
          '��İ���Ҳ̫���˰ɣ�\\'
          ); 
        exit;
    end;
    
    if (This_Player.GetBagItemCount('����ҩ') >= 1) and (This_Player.GetV(11,7) = 9) then
    begin
        This_Player.Take('����ҩ',1);
        This_Player.Give('����',1);
        This_Player.SetV(11,7,14);
        BL := true
    end else
    if (This_Player.GetBagItemCount('������') >= 1) and (This_Player.GetV(11,7) = 13) then
    begin
        This_Player.Take('������',1);
        This_Player.Give('����',1);
        This_Player.SetV(11,7,14);
        BL := true
    end; 
    
    if BL then
      This_Npc.NpcDialog(This_Player,
      '' + This_Player.Name + ',�ر�˵һ����Щ�������ϵ��������\'
      +'�Ǵ����������Ժ�������Ŷ��Ҫ�ǵõ��ˣ�\'
      +'�ǻ������벻����Ч�������İ�\'
      +'' + This_Player.Name + '��Ŭ����Ϊ��½��һǿ�߰�!\'
      +'�����Ĵ�½����۳�!\\'
      )
      else
    This_Npc.NpcDialog(This_Player,
          '��Ҫ�Ķ����ǲ���Ū���ˣ�\\'
          );
end;

procedure _wuqi3;
var BL : boolean;
begin
    BL := false;
    
    if This_Player.FreeBagNum <= 0 then
    begin
        This_Npc.NpcDialog(This_Player,
          '��İ���Ҳ̫���˰ɣ�\\'
          ); 
        exit;
    end;
    
    if (This_Player.GetBagItemCount('����ҩ') >= 1) and (This_Player.GetV(11,7) = 9) then
    begin
        This_Player.Take('����ҩ',1);
        This_Player.Give('�˻�',1);
        This_Player.SetV(11,7,14);
        BL := true
    end else
    if (This_Player.GetBagItemCount('������') >= 1) and (This_Player.GetV(11,7) = 13) then
    begin
        This_Player.Take('������',1);
        This_Player.Give('�˻�',1);
        This_Player.SetV(11,7,14);
        BL := true
    end; 
    
    if BL then
      This_Npc.NpcDialog(This_Player,
      '' + This_Player.Name + ',�ر�˵һ����Щ�������ϵ��������\'
      +'�Ǵ����������Ժ�������Ŷ��Ҫ�ǵõ��ˣ�\'
      +'�ǻ������벻����Ч�������İ�\'
      +'' + This_Player.Name + '��Ŭ����Ϊ��½��һǿ�߰�!\'
      +'�����Ĵ�½����۳�!\\'
      )
      else
    This_Npc.NpcDialog(This_Player,
          '��Ҫ�Ķ����ǲ���Ū���ˣ�\\'
          );
end;
//�ű�ִ�е����
begin
  domain;
end.