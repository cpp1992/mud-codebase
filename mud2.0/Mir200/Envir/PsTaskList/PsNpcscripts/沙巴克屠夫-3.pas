{
/*******************************************************************************
}


program Mir2;

{$I common.pas}

//添加英雄圣水任务部分；

Procedure ExtraMis(EMItemName : string ; EMNum :integer);
begin
   if (This_Player.GetV(13,14)>=1) and (This_Player.GetV(13,14)<=13) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '这是<玛法见证>吧，过一会我就帮你签。\'+
      '我有个小请求，能麻烦你帮忙给我找'+'|{cmd}<'+EMItemName+'>'+'吗？\'+
      '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
      '|{cmd}<好，先完成你的要求，等会再签名吧/@acception>\'+
      '|{cmd}<我很忙，先签名吧/@xiansuo>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '这是<玛法见证>吧，过一会我就帮你签。\'+
      '我有个小请求，能麻烦你帮忙给我找'+'|{cmd}<'+EMItemName+'>'+'吗？\'+
      '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
      '|{cmd}<好，先完成你的要求，等会再签名吧/@acception>\'+
      '|{cmd}<我很忙，先签名吧/@xiansuo>');
      This_Player.SetV(13,14,EMNum);
   end;
end;

 
Procedure ExtraMis_02(EMItemName_02 : string);
begin
   This_Npc.NpcDialog(This_Player,
   '你有没有帮我找到'+'|{cmd}<'+EMItemName_02+'>'+'啊？\ \'+
   '|{cmd}<已经找到了，现在就给你/@give>\' +
   '|{cmd}<我还在找呢/@doexit>');
end;


Procedure _acception;
var
R6 : integer;
begin
   R6 := This_Player.GetV(13,14);
   This_Player.SetV(13,15,R6);
   This_Npc.CloseDialog(This_Player);
end;  
   


Procedure _xiansuo;
var
R5 : integer;
begin
   if (This_Player.GetV(13,1) = 10) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '你现在去找<比奇或者盟重的老兵>，他们会给你英雄圣水。\ \'+
      '|{cmd}<好的/@doexit>\');
      This_Player.SetV(13,1,12);
   end;
end;


Procedure ExtraMis_jiang(EMItemName_02 : string ;EMItemNum : integer);
begin
   if (This_Player.GetV(13,15) = 9) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      if This_Player.GoldNum >= 6666 then
      begin
         This_Player.DecGold(6666);
         This_Player.SetV(13,16,1);
         _xiansuo;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '你好像还没有完成我给你的事情，还是先做完了再来找我吧。\');
      end;
   end else if (This_Player.GetV(13,15) >= 1) and (This_Player.GetV(13,15) <= 8) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      if This_Player.GetBagItemCount(EMItemName_02) >= EMItemNum then
      begin
         This_Player.Take(EMItemName_02,EMItemNum);
         This_Player.SetV(13,16,1);
         _xiansuo;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '你好像还没有完成我给你的事情，还是先做完了再来找我吧。\');
      end;
   end else
   begin 
      This_Npc.NpcDialog(This_Player,
      '你好像还没有完成我给你的事情，还是先做完了再来找我吧。\');
   end;
end;



procedure _give;
var
  R7 : integer;
begin
  R7 := This_Player.GetV(13,15);
  if (R7 >= 1) and (R7 <= 9) and (This_Player.GetBagItemCount('玛法见证')>=1) then
  begin
    case R7 of
       1:ExtraMis_jiang('金创药(小量)',9);
       2:ExtraMis_jiang('彩票',5);
       3:ExtraMis_jiang('鹤嘴锄',6);
       4:ExtraMis_jiang('食人树叶',4);
       5:ExtraMis_jiang('食人树的果实',2);
       6:ExtraMis_jiang('肉',7);
       7:ExtraMis_jiang('银矿',7);
       8:ExtraMis_jiang('金矿',1);
       9:ExtraMis_jiang('金币',6666);
    end;
  end;
end;


Procedure NextOfCall21;
begin
   if compareText(This_Player.MapName, 'T140~21') = 0 then 
   begin
      If CheckOtherMapMon('T140~21') > 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '很可惜，你没有挑战成功。');
         This_Player.Flyto('3',333,333);
      end else if CheckOtherMapMon('T140~21') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '祝贺你成功通过考验！');
         This_Player.SetV(13,16,1);
         This_Player.SetV(13,17,13);
         This_Player.Flyto('3',333,333);
      end;
   end;
end;

Procedure NextOfCall22;
begin
   if compareText(This_Player.MapName, 'T140~22') = 0 then 
   begin
      If CheckOtherMapMon('T140~22') > 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '很可惜，你没有挑战成功。');
         This_Player.Flyto('3',333,333);
      end else if CheckOtherMapMon('T140~22') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '祝贺你成功通过考验！');
         This_Player.SetV(13,16,1);
         This_Player.SetV(13,17,13);
         This_Player.Flyto('3',333,333);
      end;
   end;
end;

Procedure NextOfCall23;
begin
   if compareText(This_Player.MapName, 'T140~23') = 0 then 
   begin
      If CheckOtherMapMon('T140~23') > 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '很可惜，你没有挑战成功。');
         This_Player.Flyto('3',333,333);
      end else if CheckOtherMapMon('T140~23') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '祝贺你成功通过考验！');
         This_Player.SetV(13,16,1);
         This_Player.SetV(13,17,13);
         This_Player.Flyto('3',333,333);
      end;
   end;
end;

Procedure NextOfCall24;
begin
   if compareText(This_Player.MapName, 'T140~24') = 0 then 
   begin
      If CheckOtherMapMon('T140~24') > 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '很可惜，你没有挑战成功。');
         This_Player.Flyto('3',333,333);
      end else if CheckOtherMapMon('T140~24') = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '祝贺你成功通过考验！');
         This_Player.SetV(13,16,1);
         This_Player.SetV(13,17,13);
         This_Player.Flyto('3',333,333);
      end;
   end;
end;


Procedure _give13;
begin
   if This_Player.GetV(13,16) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 10) and (This_Player.GetV(13,15) = 13) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      if (CheckOtherMapHum('T140~21') = 0) and (compareText(This_Player.MapName, '3') = 0) then
      begin
         This_Player.RandomFlyTo('T140~21');
         This_Player.CallOut(This_Npc,1200,'NextOfCall21');
      end else if CheckOtherMapHum('T140~22') =0 then
      begin
         This_Player.RandomFlyTo('T140~22');
         This_Player.CallOut(This_Npc,1200,'NextOfCall22'); 
      end else if CheckOtherMapHum('T140~23') = 0 then
      begin
         This_Player.RandomFlyTo('T140~23');
         This_Player.CallOut(This_Npc,1200,'NextOfCall23'); 
      end else if CheckOtherMapHum('T140~24') = 0 then
      begin
         This_Player.RandomFlyTo('T140~24');
         This_Player.CallOut(This_Npc,1200,'NextOfCall24'); 
      end else
      begin
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '你找我有什么事情吗？');
   end;
end;


Procedure _give12;
begin
   if This_Player.GetV(13,16) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 10) and (This_Player.GetV(13,15) = 12) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      if (This_Player.IsGroupOwner) or (This_Player.IsTeamMember) then
      begin
         This_Player.SetV(13,16,1);
         _xiansuo;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '你好像还没有完成我给你的事情，还是先做完了再来找我吧。');
      end; 
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '你找我有什么事情吗？');
   end;
end;



Procedure _give11;
begin
   if This_Player.GetV(13,16) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 10) and (This_Player.GetV(13,15) = 11) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '嗯，那我们<开始/@touzi>投骰子吧！');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '你好像还没有完成我给你的事情，还是先做完了再来找我吧。');
   end;
end;

Procedure _touzi;
begin
   if  (This_Player.GetV(13,1) = 10) and (This_Player.GetV(13,15) = 11) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      This_Player.SetV(0,1,(Random(6)+1));
      This_Npc.PlayDice(This_Player,1,'@AfterCube'); 
   end;
end;


Procedure _AfterCube;
begin
   if This_Player.GetV(0,1) = 6 then
   begin
      This_Npc.NpcDialog(This_Player,
      '骰子的点数是<6/c=red> ，看来你运气不错啊！\'+
      '我把下一个地点告诉你吧！\'+
      '去找<比奇或者盟重的老兵>吧，他们会给你英雄圣水。\ \'+
      '|{cmd}<好的/@doexit>');
      This_Player.SetV(13,16,1);
      This_Player.SetV(13,17,11);
   end else if (This_Player.GetV(0,1) >= 1) and (This_Player.GetV(0,1) < 6) then
   begin
      This_Npc.NpcDialog(This_Player,
      '很可惜，骰子的点数不为6，继续投骰子吧。\ \'+
      '|{cmd}<继续来/@touzi>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '你好像还没有投骰子吧？');
   end;
end;

Procedure _give10;
begin
   if This_Player.GetV(13,16) = 1 then
   begin
      _xiansuo;
   end else if (This_Player.GetV(13,1) = 10) and (This_Player.GetV(13,15) = 10) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '好，有勇气，来吧，看看谁的运气更好\'+ 
      '不过事先说明了，打平也是你输哦，\ \'+
      '|{cmd}<出剪刀/@cjd>       ^<出石头/@cst>       ^<出布/@cbp>\');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '你好像还没有完成我给你的事情，还是先做完了再来找我吧。');
   end;
end;

Procedure _cjd;
var
R801 : Integer;
begin
   if  (This_Player.GetV(13,1) = 10) and (This_Player.GetV(13,15) = 10) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      R801 := Random(3);
      if R801 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出剪刀……我也是剪刀……打平，还是你输，呵呵！\'+
         '我们继续来猜拳，看看谁的运气更好！\ \'+
         '|{cmd}<出剪刀/@cjd>       ^<出石头/@cst>       ^<出布/@cbp>\');
      end else if R801 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出剪刀……我出石头……哈哈，你输了！\'+
         '我们继续来猜拳，看看谁的运气更好！\ \'+
         '|{cmd}<出剪刀/@cjd>       ^<出石头/@cst>       ^<出布/@cbp>\');
      end else if R801 = 2 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出剪刀……我出布……哎呀，我输了！\'+
         '我把下一个地点告诉你吧。\'+
         '去找<比奇或者盟重的老兵>吧，他们会给你英雄圣水。\ \'+
         '|{cmd}<好的/@doexit>');
         This_Player.SetV(13,16,1);
         This_Player.SetV(13,17,10);
      end;
   end;
end;


Procedure _cst;
var
R802 : Integer;
begin
   if  (This_Player.GetV(13,1) = 10) and (This_Player.GetV(13,15) = 10) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      R802 := Random(3);
      if R802 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出石头……我也出石头……打平，还是你输，呵呵！\'+
         '我们继续来猜拳，看看谁的运气更好！\ \'+
         '|{cmd}<出剪刀/@cjd>       ^<出石头/@cst>       ^<出布/@cbp>\');
      end else if R802 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出石头……我出布……哈哈，你输了！\'+
         '我们继续来猜拳，看看谁的运气更好！\ \'+
         '|{cmd}<出剪刀/@cjd>       ^<出石头/@cst>       ^<出布/@cbp>\');
      end else if R802 = 2 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出石头……我出剪刀……哎呀，我输了！\'+
         '我把下一个地点告诉你吧。\'+
         '去找<比奇或者盟重的老兵>吧，他们会给你英雄圣水。\ \'+
         '|{cmd}<好的/@doexit>');
         This_Player.SetV(13,16,1);
         This_Player.SetV(13,17,10);
      end;
   end;
end;


Procedure _cbp;
var
R803 : Integer;
begin
   if  (This_Player.GetV(13,1) = 10) and (This_Player.GetV(13,15) = 10) and (This_Player.GetBagItemCount('玛法见证')>=1) then
   begin
      R803 := Random(3);
      if R803 = 0 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出布……我也出布……打平,还是你输，呵呵！\'+
         '我们继续来猜拳，看看谁的运气更好！\ \'+
         '|{cmd}<出剪刀/@cjd>       ^<出石头/@cst>       ^<出布/@cbp>\');
      end else if R803 = 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出布……我出剪刀……哈哈，你输了！\'+
         '我们继续来猜拳，看看谁的运气更好！\ \'+
         '|{cmd}<出剪刀/@cjd>       ^<出石头/@cst>       ^<出布/@cbp>\');
      end else if R803 = 2 then
      begin
         This_Npc.NpcDialog(This_Player,
         '你出布……我出石头……哎呀，我输了！\'+
         '我把下一个地点告诉你吧。\'+
         '去找<比奇或者盟重的老兵>吧，他们会给你英雄圣水。\ \'+
         '|{cmd}<好的/@doexit>');
         This_Player.SetV(13,16,1);
         This_Player.SetV(13,17,10);
      end;
   end;
end;



Procedure _gonext;
var
R1 : integer; 
R2 : integer;
R3 : Integer;
R4 : integer;
begin
  if (This_Player.GetV(13,1) = 10) or (This_Player.GetV(13,1) = 12) then
  begin 
    if (This_Player.GetV(13,1) = 12) and (This_Player.GetBagItemCount('玛法见证')>=1) then
    begin
       This_Npc.NpcDialog(This_Player,
       '这是<玛法见证>啊！我知道怎么做！我现在就签字。\'+
       '你现在可以去找<比奇或者盟重的老兵>，他们会给你英雄圣水的！\');
    end else if This_Player.GetV(13,17) = 13 then
    begin
       This_Npc.NpcDialog(This_Player,
       '看来你果然有很强的实力，消灭了全部怪物。\'+
       '你现在可以去找<比奇或者盟重的老兵>，他们会给你英雄圣水的！');
       This_Player.SetV(13,1,12); 
    end else if (This_Player.GetV(13,17) = 10) or (This_Player.GetV(13,17) = 11) then
    begin
       This_Npc.NpcDialog(This_Player,
       '你赢了！谢谢你陪我玩这么久！\'+
       '差点耽搁了你正事，我已经在<玛法见证>签好名了。\'+
       '你现在可以去找<比奇或者盟重的老兵>，他们会给你英雄圣水的！');
       This_Player.SetV(13,1,12); 
    end else if This_Player.GetV(13,16) =1 then
    begin
       This_Npc.NpcDialog(This_Player,
       '你已经完成了我给你的任务。\'+
       '这是<玛法见证>啊！我知道怎么做！我现在就签字。\'+
       '你现在可以去找<比奇或者盟重的老兵>，他们会给你英雄圣水的！\');
       This_Player.SetV(13,1,12); 
    end else if (This_Player.GetV(13,15) >= 1) then
    begin
       R4 := This_Player.GetV(13,15);
       if (R4 >= 1) and (R4 <= 9) then
       begin
          case R4 of
             1:ExtraMis_02('9瓶金创药(小量)');
             2:ExtraMis_02('5张彩票');
             3:ExtraMis_02('6把鹤嘴锄');
             4:ExtraMis_02('4个食人树叶');
             5:ExtraMis_02('2个食人树的果实');
             6:ExtraMis_02('7块肉');
             7:ExtraMis_02('7块银矿');
             8:ExtraMis_02('1块金矿');
             9:ExtraMis_02('6666金币');
          end;
       end else if R4 = 10 then
       begin
          This_Npc.NpcDialog(This_Player,
          '你愿不愿意和我猜拳呢？\ \'+
          '|{cmd}<好的/@give10>\'+
          '|{cmd}<让我再想想/@doexit>');
       end else if R4 = 11 then
       begin
          This_Npc.NpcDialog(This_Player,
          '你愿不愿意和我投骰子，投到六就算你赢？\ \'+
          '|{cmd}<好的/@give11>\'+
          '|{cmd}<让我再想想/@doexit>');
       end else if R4 = 12 then
       begin
          This_Npc.NpcDialog(This_Player,
          '你是不是已经找到志同道合的队友了？\ \'+
          '|{cmd}<已经找到了/@give12>\'+
          '|{cmd}<我还在找呢/@doexit>');
       end else if R4 = 13 then
       begin
          This_Npc.NpcDialog(This_Player,
          '你是否愿意接受挑战，前往消灭怪物？\ \'+
          '|{cmd}<好的/@give13>\'+
          '|{cmd}<让我再想想/@doexit>');
       end;
    end else if (This_Player.GetV(13,14) >= 1) then
    begin
       R3 := This_Player.GetV(13,14);
       if (R3 >= 1) and (R3 <= 9) then
       begin
          case R3 of
             1:ExtraMis('9瓶金创药(小量)',R3);
             2:ExtraMis('5张彩票',R3);
             3:ExtraMis('6把鹤嘴锄',R3);
             4:ExtraMis('4个食人树叶',R3);
             5:ExtraMis('2个食人树的果实',R3);
             6:ExtraMis('7块肉',R3);
             7:ExtraMis('7块银矿',R3);
             8:ExtraMis('1块金矿',R3);
             9:ExtraMis('6666金币',R3);
          end;
       end else if R3 = 10 then
       begin
          This_Npc.NpcDialog(This_Player,
          '这是<玛法见证>吧，过一会我就帮你签。有个小请求，\'+
          '能否陪我玩一会，和我猜拳，只要赢了我就可以，\'+
          '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
          '|{cmd}<好，先完成你的要求，等会再签名吧/@acception_02>\'+
          '|{cmd}<我很忙，先签名吧/@xiansuo>');
       end else if R3 = 11 then
       begin
          This_Npc.NpcDialog(This_Player,
          '这是<玛法见证>吧，过一会我就帮你签。\'+
          '我有个小请求，能否陪我玩一会投骰子，掷到六才可以，\'+
          '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
          '|{cmd}<好，先完成你的要求，等会再签名吧/@acception_02>\'+
          '|{cmd}<我很忙，先签名吧/@xiansuo>');
       end else if R3 = 12 then
       begin
          This_Npc.NpcDialog(This_Player,
          '这是<玛法见证>吧，过一会我就帮你签。\'+
          '我有个小请求，我喜欢热闹，给我找些你的朋友来聊聊吧？\'+
          '（去组1支队伍再来，自己做队长）\'+
          '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
          '|{cmd}<好，先完成你的要求，等会再签名吧/@acception_02>\'+
          '|{cmd}<我很忙，先签名吧/@xiansuo>');
       end else if R3 = 13 then
       begin
          This_Npc.NpcDialog(This_Player,
          '需要你进入挑战，消灭全部怪物即可，限时20分钟，\'+
          '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
          '|{cmd}<好，先完成你的要求，等会再签名吧/@acception_02>\'+
         '|{cmd}<我很忙，先签名吧/@xiansuo>');
       end;
    end else if (This_Player.GetV(13,4) =1) or (This_Player.GetV(13,8) =1) or (This_Player.GetV(13,12) =1) then
    begin
        _xiansuo;
    end else
    begin
        R1 := Random(100);
        if R1 < 20 then
        begin
           R2 := Random(12) + 1;
           if (R2 >= 1) and (R2 <= 9) then
           begin
              case R3 of
                 1:ExtraMis('9瓶金创药(小量)',R2);
                 2:ExtraMis('5张彩票',R2);
                 3:ExtraMis('6把鹤嘴锄',R2);
                 4:ExtraMis('4个食人树叶',R2);
                 5:ExtraMis('2个食人树的果实',R2);
                 6:ExtraMis('7块肉',R2);
                 7:ExtraMis('7块银矿',R2);
                 8:ExtraMis('1块金矿',R2);
                 9:ExtraMis('6666金币',R2);
              end;
           end else if R2 = 10 then
           begin
              This_Npc.NpcDialog(This_Player,
              '这是<玛法见证>吧，过一会我就帮你签。有个小请求，\'+
              '能否陪我玩一会，和我猜拳，只要赢了我就可以，\'+
              '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
              '|{cmd}<好，先完成你的要求，等会再签名吧/@acception_02>\'+
              '|{cmd}<我很忙，先签名吧/@xiansuo>');
              This_Player.SetV(13,14,10);
           end else if R2 = 11 then
           begin
              This_Npc.NpcDialog(This_Player,
              '这是<玛法见证>吧，过一会我就帮你签。\'+
              '我有个小请求，能否陪我玩一会投骰子，掷到六才可以，\'+
              '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
              '|{cmd}<好，先完成你的要求，等会再签名吧/@acception_02>\'+
              '|{cmd}<我很忙，先签名吧/@xiansuo>');
              This_Player.SetV(13,14,11);
           end else if R2 = 12 then
           begin
              This_Npc.NpcDialog(This_Player,
              '这是<玛法见证>吧，过一会我就帮你签。\'+
              '我有个小请求，我喜欢热闹，给我找些你的朋友来聊聊吧？\'+
              '（去组1支队伍再来，自己做队长）\'+
              '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
              '|{cmd}<好，先完成你的要求，等会再签名吧/@acception_02>\'+
              '|{cmd}<我很忙，先签名吧/@xiansuo>');
              This_Player.SetV(13,14,12);
           end else if R2 = 13 then
           begin
              This_Npc.NpcDialog(This_Player,
              '需要你进入挑战，消灭全部怪物即可，限时20分钟，\'+
              '如果你实在太忙,也可以不帮我,我马上帮你签名。\ \'+ 
              '|{cmd}<好，先完成你的要求，等会再签名吧/@acception_02>\'+
              '|{cmd}<我很忙，先签名吧/@xiansuo>');
              This_Player.SetV(13,14,13);
           end;
        end else
        begin
           _xiansuo;
        end;
    end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
      '感谢光临,有什么事情需要我帮忙吗？\ \'
      +'|{cmd}<买肉/@buy>'+addspace(' ',26)+'|{cmd}<卖肉/@sell>\'
      +'|{cmd}<退出/@doexit>'
      );
  end;  
end;

Procedure _acception_02;
var
R60 : integer;
begin
   R60 := This_Player.GetV(13,14);
   This_Player.SetV(13,15,R60);
   This_Npc.CloseDialog(This_Player);
end;   



//原屠夫内容； 
procedure domain;
begin
   if (This_Player.GetV(13,1) = 4) or (This_Player.GetV(13,1) = 6) or (This_Player.GetV(13,1) = 8) or (This_Player.GetV(13,1) = 10) then
   begin
      This_Npc.NpcDialog(This_Player,
      '感谢光临,有什么事情需要我帮忙吗？\ \'
      +'|{cmd}<买肉/@buy>'+addspace(' ',26)+'|{cmd}<卖肉/@sell>\'
      +'|{cmd}<出示玛法见证/@gonext>'+addspace(' ',18)+'|{cmd}<退出/@doexit>'
      );
      This_Player.SetV(13,1,10);   
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '感谢光临,有什么事情需要我帮忙吗？\ \'
      +'|{cmd}<买肉/@buy>'+addspace(' ',26)+'|{cmd}<卖肉/@sell>\'
      +'|{cmd}<退出/@doexit>'
      );
   end;
end;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '请挑选要购买的物品。\ \ \|{cmd}<返回/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '如有品质好的肉，请卖给我吧。\我会给你好价钱。\ \'
    +'|{cmd}<继续/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;


//初始化操作
procedure OnInitialize;
begin
  This_Npc.AddStdMode(40);
  This_Npc.AddStdMode(1);
  This_Npc.FillGoods('干肉',1000,1);
  This_Npc.SetRebate(100);
end;  

//脚本执行的入口
begin
  domain;
end.
