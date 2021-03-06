{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  {$IFDEF Q136_hero}
  if This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '欢迎，你想买些修炼的书吗？\ \'+
      '|{cmd}<买书/@buy>  \'+
      '|{cmd}<卖书/@sell>  \'+
      '|{cmd}<询问各种武技的细节/@helpbooks> \ \' );
   end else if (This_Player.GetV(10,1) = 4) or (This_Player.GetV(10,1) = 5) then
   begin
      This_Npc.NpcDialog(This_Player,
      '欢迎，你想买些修炼的书吗？\ \'+
      '|{cmd}<买书/@buy>  \'+
      '|{cmd}<卖书/@sell>  \'+
      '|{cmd}<询问各种武技的细节/@helpbooks> \ \'+
      '|{cmd}<那家伙果然够笨/@newskill465>');
   end else if (This_Player.GetV(10,1) = 2) or (This_Player.GetV(10,1) = 3) then
   begin
      This_Npc.NpcDialog(This_Player,
      '欢迎，你想买些修炼的书吗？\ \'+
      '|{cmd}<买书/@buy>  \'+
      '|{cmd}<卖书/@sell>  \'+
      '|{cmd}<询问各种武技的细节/@helpbooks> \ \'+
      '|{cmd}<你需要我帮忙？/@newskill>');
   end else
   Begin
      This_Npc.NpcDialog(This_Player,
      '欢迎，你想买些修炼的书吗？\ \'+
      '|{cmd}<买书/@buy>  \'+
      '|{cmd}<卖书/@sell>  \'+
      '|{cmd}<询问各种武技的细节/@helpbooks> \ \');
   end;
  {$ELSE}
   if This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '欢迎，你想买些修炼的书吗？\ \'+
      '|{cmd}<买书/@buy>                          ^<打听酒气护体/@drink>\'+
      '|{cmd}<卖书/@sell>  \'+
      '|{cmd}<询问各种武技的细节/@helpbooks> \ \' );
   end else if (This_Player.GetV(10,1) = 4) or (This_Player.GetV(10,1) = 5) then
   begin
      This_Npc.NpcDialog(This_Player,
      '欢迎，你想买些修炼的书吗？\ \'+
      '|{cmd}<买书/@buy>                          ^<打听酒气护体/@drink>\'+
      '|{cmd}<卖书/@sell>  \'+
      '|{cmd}<询问各种武技的细节/@helpbooks> \ \'+
      '|{cmd}<那家伙果然够笨/@newskill465>');
   end else if (This_Player.GetV(10,1) = 2) or (This_Player.GetV(10,1) = 3) then
   begin
      This_Npc.NpcDialog(This_Player,
      '欢迎，你想买些修炼的书吗？\ \'+
      '|{cmd}<买书/@buy>                          ^<打听酒气护体/@drink>\'+
      '|{cmd}<卖书/@sell>  \'+
      '|{cmd}<询问各种武技的细节/@helpbooks> \ \'+
      '|{cmd}<你需要我帮忙？/@newskill>');
   end else
   Begin
      This_Npc.NpcDialog(This_Player,
      '欢迎，你想买些修炼的书吗？\ \'+
      '|{cmd}<买书/@buy>                          ^<打听酒气护体/@drink>\'+
      '|{cmd}<卖书/@sell>  \'+
      '|{cmd}<询问各种武技的细节/@helpbooks> \ \');
   end;
  {$ENDIF}
end;

procedure _jinzhen;
begin
  This_Npc.NpcDialog(This_Player,
  '听说庄园管家最近弄到一大批“垃圾”，\'
  +'其中有不少是一些已经遗失的书籍。你能帮我去弄来一些么？\'
  +'或许能找到一些不错的东西。当然，我也不会亏待你。\ \'
  +'|{cmd}<鉴定“残破的古籍”/@jinzhen1>             ^<鉴定“微黄的古书”/@jinzhen2>\'
  +'|{cmd}<鉴定“古代秘籍”/@jinzhen3>\ \'
  +'|{cmd}<用古籍换取奖励的/@jinzhen4>\'
  );
end;

procedure _jinzhen1;
begin
  if This_Player.GetBagItemCount('残破的古籍') > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '咦，这是？这本<残破的古籍/c=red>看上去已经有上百年的历史了。\'
    +'有点意思，这本书的书页已经被血水粘连起来了，\'
    +'看来我需要花点时间来整理它。也许能发现一些有意思的东西。\'
    +'你愿意把<残破的古籍/c=red>给我么？\ \'
    +'|{cmd}<没问题，你拿去吧/@jinzhen1_start>\ \'
    +'|{cmd}<离开/@doexit>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '抱歉，我很忙。\没有要紧的事情不要烦我。\ \|{cmd}<不好意思/@doexit>'
    );
  end;
end;

procedure _jinzhen1_start;
var
  temp,temp1: integer;
begin
    if This_Player.GetBagItemCount('残破的古籍') >= 1 then
    begin
      temp := random(100) + 1;
      if temp <= 10 then
      begin
        This_Npc.NpcDialog(This_Player,
        '几天前有一个旅行家经过我这，托我给他写了一封家书。\'
        +'临走送了我这截<蝎蛇的钳子/c=red>。他说这东西煲汤非常美味。\'
        +'可惜，我对这玩意不感兴趣。送给你吧。\'
        +'听说<鉴宝散人/c=red>挺喜欢这种稀奇古怪的东西。\'
        +'如果你也不喜欢，可以给他送过去，或许能有所发现。\ \'
        +'|{cmd}<好的/@doexit>'
        );
        This_Player.Take('残破的古籍',1);
        This_Player.Give('蝎蛇的钳子',1);
      end
      else if temp <= 35 then
      begin
        This_Npc.NpcDialog(This_Player,
        '这把<指挥刀/c=red>是我朋友的，可惜他在探索古迹的时候被半兽人\'
        +'杀害了几天前有人在一处半兽人的巢穴发现了它，并带了回来。\'
        +'作为残破的古籍的回报，现在我把它郑重的交给你。\'
        +'希望你的能够带着他，去探索玛法大陆的神奇。\'
        +'如果你不需要他，也可以把他送给<盟重指挥官/c=red>，\'
        +'他兴许会对这个感兴趣。\ \'
        +'|{cmd}<好的/@doexit>'
        );
        This_Player.Take('残破的古籍',1);
        This_Player.Give('指挥刀',1);
      end
      else if temp <= 50 then
      begin
        This_Npc.NpcDialog(This_Player,
        '我这有一本<微黄的古书/c=red>，里面的内容是用一种非常古老的文字书写的\'
        +'如果你感兴趣，可以拿去研究下。\'
        +'如果你觉得这本书对你而言过于艰难，可以拿到我这换其他的书籍。\ \'
        +'|{cmd}<好的/@doexit>'
        );
        This_Player.Take('残破的古籍',1);
        This_Player.Give('微黄的古书',1);
      end
      else
      begin
        This_Player.Take('残破的古籍',1);
        This_Npc.NpcDialog(This_Player,
        '多谢你，勇士！不过你给我的东西好像没什么价值，\如果下次你还有这一类的物品可以给我看看，\或许能够有所发现！'
        ); 
      end;  
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '你没有<残破的古籍/c=red>呀！\ \|{cmd}<好的/@doexit>'); 
    end;
end;

//该过程原来缺失，现补充； 
procedure _jinzhen2;
begin
  if This_Player.GetBagItemCount('微黄的古书') > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '|{cmd}<微黄的古书/c=red>，散发着历史的味道。看来，这本书还是与你无缘，'+
    '还是让我来从中寻找历史的痕迹吧。毕竟这是我的工作。\'+
    '不管怎么说，匆匆的旅客，还是感谢你。把微黄的古书给我，\'+
    '我看看有没有令你感兴趣的东西作为回报。\ \'+
    '|{cmd}<给你微黄的古书/@jinzhen2_start>\ \'+
    '|{cmd}<离开/@doexit>');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '抱歉，我很忙。\没有要紧的事情不要烦我。\ \|{cmd}<不好意思/@doexit>'
    );
  end;
end;

procedure _jinzhen2_start;
var
  temp,temp1: integer;
begin
    if This_Player.GetBagItemCount('微黄的古书') >= 1 then
    begin
      temp := random(100) + 1;
      if temp <= 10 then
      begin
        This_Npc.NpcDialog(This_Player,
        '该死，这本书里居然还夹着这玩意。\' 
        +'这撮<牛魔毛发/c=red>给你了！别问我有什么用。我只关心这本书。\'
        +'据说是从牛魔洞里抢出来的。\'
        +'至于这个毛发有什么用，去问盟重酒馆的<鉴宝散人/c=red>吧。\'
        +'他就喜欢倒腾这些脏兮兮的东西。\ \'
        +'|{cmd}<好的/@doexit>'
        );
        This_Player.Take('微黄的古书',1);
        This_Player.Give('牛魔毛发',1);
      end
      else if temp <= 35 then
      begin
        This_Npc.NpcDialog(This_Player,
        '前阵子有个贵族从我这经过。\'
        +'不知道为什么一定要用这把<统领佩剑/c=red>去换一本烈火剑法。\'
        +'虽然我出售各种战技，但是作为一个版本学家，\'
        +'我对统领佩剑不感兴趣。送给你吧。\'
        +'听说<盟重指挥官/c=red>对这个挺感兴趣的。\ \'
        +'|{cmd}<好的/@doexit>'
        );
        This_Player.Take('微黄的古书',1);
        This_Player.Give('统领佩剑',1);
        if This_Player.GetV(21,6)>= 0 then
        begin
          temp1 := This_Player.GetV(21,6);
          This_Player.SetV(21, 6, temp1+1);
        end
        else
        begin
          This_Player.SetV(21, 6, 1);
        end;
      end
      else if temp <= 50 then
      begin
        This_Npc.NpcDialog(This_Player,
        '看你的样子也应该是个对武学充满兴趣的人了。\'
        +'这本古代秘籍拿去吧。或许你会感兴趣。\'
        +'当然，这本书是需要一定的定力才能看的下去的。\'
        +'对我这种甘于寂寞的人而言，是再好不过的一剂良方。\ \'
        +'|{cmd}<好的，我尝试一下/@doexit>'
        );
        This_Player.Take('微黄的古书',1);
        This_Player.Give('古代秘籍',1);
      end
      else
      begin
        This_Player.Take('微黄的古书',1);
        This_Npc.NpcDialog(This_Player,
        '多谢你，勇士！不过你给我的东西好像没什么价值，\如果下次你还有这一类的物品可以给我看看，\或许能够有所发现！'
        ); 
      end;  
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '你没有<微黄的古书/c=red>呀！\ \|{cmd}<好的/@doexit>'); 
    end;
end;

//该过程原来缺失，现补充； 
procedure _jinzhen3;
begin
  if This_Player.GetBagItemCount('古代秘籍') > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '好吧好吧，也只能这样了。像<古代秘籍/c=red>这种艰涩的书籍还是\'+
    '留给我来品评吧。哎，人心不古啊，人心不古�  ？茨阏饷葱铱啵琝'+
    '把<古代秘籍/c=red>给我吧，我应该能找到一份你感兴趣的东西。\ \'+
    '|{cmd}<我这里有柄古代秘籍，给你/@jinzhen3_start>\ \'+
    '|{cmd}<离开/@doexit>');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '抱歉，我很忙。\没有要紧的事情不要烦我。\ \|{cmd}<不好意思/@doexit>'
    );
  end;
end;

procedure _jinzhen3_start;
var
  temp,temp1: integer;
begin
  if This_Player.GetV(21,4) = GetDateNum(GetNow) then
  begin
    This_Npc.NpcDialog(This_Player,
    '今天你已经兑换过物品了，不能再次兑换！'); 
  end
  else
  begin
    if This_Player.GetBagItemCount('古代秘籍') >= 1 then
    begin
      temp := random(100) + 1;
      if temp <= 10 then
      begin
        This_Npc.NpcDialog(This_Player,
        '|{cmd}<蛛王断肢/c=red>！呵呵，很少见的东西吧。\'
        +'|{cmd}<鉴宝散人/c=red>一直在找这个东西。拿去吧。\'
        +'去找鉴宝散人。他会告诉你一段非常有趣的故事的。\ \'
        +'|{cmd}<好的/@doexit>'
        );
        This_Player.Take('古代秘籍',1);
        This_Player.Give('蛛王断肢',1);
        This_Player.SetV(21,4, GetDateNum(GetNow));
      end
      else if temp <= 35 then
      begin
        This_Npc.NpcDialog(This_Player,
        This_Player.Name + '，给你<将军令牌/c=red>！\'
        +'当年我从军的时候，指挥官颁发给我的特别奖励。\'
        +'这块将军令牌代表着军队的最高权限，\'
        +'使用它可以在<庄园管家/c=red>那里进行一次最高特训，\'
        +'经过特训，你会得到大量的经验，或者各种等级的金针。\ \'
        +'|{cmd}<好的/@doexit>'
        );
        This_Player.Take('古代秘籍',1);
        This_Player.Give('将军令牌',1);
        This_Player.SetV(21,4, GetDateNum(GetNow));
        if This_Player.GetV(21,7)>= 0 then
        begin
          temp1 := This_Player.GetV(21,7);
          This_Player.SetV(21, 7, temp1+1);
        end
        else
        begin
          This_Player.SetV(21, 7, 1);
        end;
      end
      else if temp <= 50 then
      begin
        This_Npc.NpcDialog(This_Player,
        '看来必须拿出我的珍藏了——<剑神手札/c=red>！\'
        +'这个世界上就只有这一本。\'
        +'所以，我只能借给你看，看完了请还给我。\'
        +'我会给你讲解其中的奥秘，相信你能够从中领悟到不少新的东西。\ \'
        +'|{cmd}<好的/@doexit>'
        );
        This_Player.Take('古代秘籍',1);
        This_Player.Give('剑神手札',1);
        This_Player.SetV(21,4, GetDateNum(GetNow));
      end
      else
      begin
        This_Player.Take('古代秘籍',1);
        This_Npc.NpcDialog(This_Player,
        '多谢你，勇士！不过你给我的东西好像没什么价值，\如果下次你还有这一类的物品可以给我看看，\或许能够有所发现！'
        ); 
      end;  
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '你没有<古代秘籍/c=red>呀！\ \|{cmd}<好的/@doexit>'); 
    end;
  end;
end;

procedure _jinzhen4;
begin
  This_Npc.NpcDialog(This_Player,
  '请问你要用什么来换取奖励？\ \' 
  +'|{cmd}<残破的古籍/@jinzhen4_1>              ^<微黄的古书/@jinzhen4_2>\ \'
  +'|{cmd}<古代秘籍/@jinzhen4_3>                ^<剑神手札/@jinzhen4_4>'
  );
end;

//统一的道具换取奖励接口，
//道具为第一个参数（数量指定为1）；奖励为第二个参数；奖励数量为第三个参数 
procedure ItemChgPrize(item: string; prize: string; prizenum: integer);
begin
  This_Player.Take(item, 1);
  This_Player.Give(prize, prizenum);
  This_NPC.NpcDialog(This_Player,
  '你使用' + item + '换取了' + prize + '：' + inttostr(prizenum)
  ); 
end;

procedure _jinzhen4_1;
var
  temp : integer;
begin
  if This_Player.GetBagItemCount('残破的古籍') > 0 then
  begin
    temp := random(100) + 1;
    if temp <= 50 then
    begin
      ItemChgPrize('残破的古籍','经验',400000); 
    end
    else if temp <= 80 then
    begin
      ItemChgPrize('残破的古籍','经验',600000);
    end
    else if temp <= 95 then
    begin
      ItemChgPrize('残破的古籍','经验',800000);
    end
    else
    begin
      ItemChgPrize('残破的古籍','金针碎片',1);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '如果你带来了残破的古籍，就赶快交给我换取奖励吧！'
    ); 
  end; 
end;

procedure _jinzhen4_2;
var
  temp : integer;
begin
  if This_Player.GetBagItemCount('微黄的古书') > 0 then
  begin
    temp := random(100) + 1;
    if temp <= 50 then
    begin
      ItemChgPrize('微黄的古书','经验',1000000); 
    end
    else if temp <= 80 then
    begin
      ItemChgPrize('微黄的古书','经验',1500000);
    end
    else if temp <= 95 then
    begin
      ItemChgPrize('微黄的古书','经验',2000000);
    end
    else
    begin
      ItemChgPrize('微黄的古书','金针碎片',2);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '如果你带来了微黄的古书，就赶快交给我换取奖励吧！'
    ); 
  end; 
end;

procedure _jinzhen4_3;
var
  temp : integer;
begin
  if This_Player.GetBagItemCount('古代秘籍') > 0 then
  begin
    temp := random(100) + 1;
    if temp <= 50 then
    begin
      ItemChgPrize('古代秘籍','经验',2000000); 
    end
    else if temp <= 80 then
    begin
      ItemChgPrize('古代秘籍','经验',3000000);
    end
    else if temp <= 95 then
    begin
      ItemChgPrize('古代秘籍','经验',4000000);
    end
    else
    begin
      ItemChgPrize('古代秘籍','金针',1);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '如果你带来了古代秘籍，就赶快交给我换取奖励吧！'
    ); 
  end; 
end;

procedure _jinzhen4_4;
var
  temp : integer;
begin
  if This_Player.GetBagItemCount('剑神手札') > 0 then
  begin
    temp := random(1000) + 1;
    if temp <= 600 then
    begin
      ItemChgPrize('剑神手札','经验',6000000); 
    end
    else if temp <= 900 then
    begin
      ItemChgPrize('剑神手札','金针',4);
    end
    else if temp <= 990 then
    begin
      ItemChgPrize('剑神手札','一级金针',3);
    end
    else
    begin
      ItemChgPrize('剑神手札','四级金针',1);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '如果你带来了剑神手札，就赶快交给我换取奖励吧！'
    ); 
  end; 
end;


Procedure _newskill;
Begin
   If  This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '你找我有什么事吗？\'); 
   end else if This_Player.GetV(10,3) = GetDateNum(GetNow()) then
   begin
      if This_Player.GetV(10,1) = 3 then
      Begin
         This_Npc.NpcDialog(This_Player,
         '那个无良的奸商就在兽人古墓的二层，\'+
         '他总是想着赚勇士们的黑心钱！\'+
         '把我给你的破碗交给他，就说是我珍藏的，嘿嘿！');
      end else if This_Player.GetV(10,1) = 2 then
      begin
         if This_Player.FreeBagNum >= 1 then
         begin
            This_Npc.NpcDialog(This_Player,
            '好吧，既然是我老朋友介绍来的，我想也应该没有问题。\'+
            '那个无良的奸商就在兽人古墓的二层，\'+
            '他总是想着赚勇士们的黑心钱！\'+
            '这是一个非常普通的小破碗，你去卖给他，记住！\'+
            '你只需要说出是我珍藏的就行了，嘿嘿。');
            This_Player.SetV(10,1,3);
            This_Player.Give('瓷碗',1);
         end else
         begin
            This_Npc.NpcDialog(This_Player,
            '把包裹清理一下再来找我吧，\'+
            '我有个重要的东西要交给你！');
         end;
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '你得先去盟重酒馆找鉴宝散人领取鉴宝手信！\'); 
   end;
end;

Procedure _newskill465;
begin
   If This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '你找我有什么事吗？\');
   end else if This_Player.GetV(10,3) = GetDateNum(GetNow()) then
   begin
      if This_Player.GetV(10,1) = 5 then
      Begin
         This_Npc.NpcDialog(This_Player,
         '我有个朋友在沃玛森林废村里当铁匠，\'+
         '为勇士们修理武器装备，\'+
         '他最近好像有需要找人帮助他送一些东西，\'+
         '你去找他一下吧？\');
      end else if This_Player.GetV(10,1) = 4 then
      begin
         This_Npc.NpcDialog(This_Player,
         '谢谢，辛苦了，是那家伙活该！\'+
         '算了说正事，我有个朋友在沃玛森林废村里当铁匠，\'+
         '为勇士们修理武器装备，\'+
         '他最近好像有需要找人帮助他送一些东西，\'+
         '你去找他一下吧？\');
         This_Player.SetV(10,1,5);
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '你得先去盟重酒馆找鉴宝散人领取鉴宝手信！\');
   end;
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '请选择你想要买的书。\ \ \|{cmd}<返回/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '给我看看你的书。\ \ \|{cmd}<返回/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _drink;
begin
  This_Npc.NpcDialog(This_Player, 
    '当年为了抵抗半兽人的侵略，玛法人从遥远的东方请来了一名术士，\研制出一种特殊技能，这种特殊技能的作用在于修炼后将会在人体\本身产生一种隐性的能量，而它的神奇之处在于，当处于醉酒状态\时能够增强人体的体力，加强战斗力。随着历史的推延，玛法人早\就忘记了这本技能书的真正作用，你现在就可以去找盟重书店老板，\他可以帮你学习这个技能。\'
    );
end;

procedure _helpbooks;
begin
  This_Npc.NpcDialog(This_Player, 
    '你对那种书感兴趣？\ \武士可以学<基本剑术/@help11>和<攻杀剑术/@help12>\魔法师可以学<火球术/@help21>和<大火球/@help22>\道士可以学<治愈术/@help31>,<精神力战法/@help32>和<施毒术/@help33>\ \ |{cmd}<返回/@main>'
    );
end;

procedure _help11;
begin
  This_Npc.NpcDialog(This_Player, 
    '基本剑术你可以按如下步骤修炼：\Lv.1 : 你可以在第 7 级开始修炼\Lv.2 : 你可以在第 11 级开始修炼\Lv.3 : 你可以在第 16 级开始修炼\ \ |{cmd}<返回/@helpbooks>'
    );
end;

procedure _help12;
begin
  This_Npc.NpcDialog(This_Player, 
    '攻杀剑术你可以按如下步骤修炼：\Lv.1 : 你可以在第 19 级开始修炼。\Lv.2 : 你可以在第 22 级开始修炼。\Lv.3 : 你可以在第 24 级开始修炼。\ \ |{cmd}<返回/@helpbooks>'
    );
end;

procedure _help21;
begin
  This_Npc.NpcDialog(This_Player, 
    '火球术你可以按如下步骤修炼：\Lv.1: 你可以在第 7 级开始修炼。\Lv.2: 你可以在第 11 级开始修炼。\Lv.3: 你可以在第 16 级开始修炼。\ \ |{cmd}<返回/@helpbooks>'
    );
end;

procedure _help22;
begin
  This_Npc.NpcDialog(This_Player, 
    '大火球你可以按如下步骤修炼：\Lv.1: 你可以在第 19 级开始修炼。\Lv.2: 你可以在第 23 级开始修炼。\Lv.3: 你可以在第 25 级开始修炼。\ \ |{cmd}<返回/@helpbooks>'
    );
end; 

procedure _help31;
begin
  This_Npc.NpcDialog(This_Player, 
    '治愈术你可以按如下步骤修炼：\Lv.1 : 你可以在第 7 级开始修炼.\Lv.2 : 你可以在第 11 级开始修炼.\Lv.3 : 你可以在第 16 级开始修炼.\ \ |{cmd}<返回/@helpbooks>'
    );
end;

procedure _help32;
begin
  This_Npc.NpcDialog(This_Player, 
    '精神力战法你可以按如下步骤修炼：\Lv.1 : 你可以在第 9 级开始修炼.\Lv.2 : 你可以在第 13 级开始修炼.\Lv.3 : 你可以在第 19 级开始修炼.\ \ |{cmd}<返回/@helpbooks>'
    );
end;

procedure _help33;
begin
  This_Npc.NpcDialog(This_Player, 
    '施毒术你可以按如下步骤修炼：\Lv.1 : 你可以在第 14 级开始修炼.\Lv.2 : 你可以在第 17 级开始修炼.\Lv.3 : 你可以在第 20 级开始修炼.\ \ |{cmd}<返回/@helpbooks>'
    );
end;

//初始化操作
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(4);
  This_NPC.FillGoods('火球术', 100, 1);
  This_NPC.FillGoods('治愈术', 100, 1); 
  This_NPC.FillGoods('基本剑术', 100, 1);
  This_NPC.FillGoods('精神力战法', 100, 1);
  This_NPC.FillGoods('施毒术', 100, 1);
  This_NPC.FillGoods('大火球', 100, 1);
  This_NPC.FillGoods('抗拒火环', 100, 1);
  This_NPC.FillGoods('灵魂火符', 100, 1);
  This_NPC.FillGoods('雷电术', 100, 1);
  This_NPC.FillGoods('攻杀剑术', 100, 1);
  This_NPC.FillGoods('刺杀剑术', 100, 1); 
  This_NPC.FillGoods('半月弯刀', 100, 1);
  This_NPC.FillGoods('野蛮冲撞', 100, 1);
 
  This_NPC.FillGoods('召唤骷髅', 100, 1);
  This_NPC.FillGoods('隐身术', 100, 1);
  This_NPC.FillGoods('集体隐身术', 100, 1);
  This_NPC.FillGoods('幽灵盾', 100, 1);
  This_NPC.FillGoods('神圣战甲术', 100, 1);
  This_NPC.FillGoods('心灵启示', 100, 1);
  This_NPC.FillGoods('困魔咒', 100, 1); 
  This_NPC.FillGoods('群体治愈术', 100, 1);
  
  This_NPC.FillGoods('诱惑之光', 100, 1);
  This_NPC.FillGoods('地狱火', 100, 1);
  This_NPC.FillGoods('瞬息移动', 100, 1);
  This_NPC.FillGoods('爆裂火焰', 100, 1);
  This_NPC.FillGoods('火墙', 100, 1);
  This_NPC.FillGoods('疾光电影', 100, 1);
  This_NPC.FillGoods('地狱雷光', 100, 1);
  This_NPC.FillGoods('魔法盾', 100, 1);
  This_NPC.FillGoods('圣言术', 100, 1);
  
  This_Npc.SetRebate(100);
end;

//脚本执行的入口
begin
  domain;
end.    