{
*******************************************************************}

Program Mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;                         
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _getback;
Begin
   This_Npc.NpcDialog(This_Player,
   '请看目录决定找什么东西。\ \ \'+
   '|{cmd}<返回/@main>');
   This_Npc.Click_GetBack(This_Player);
end;

Procedure _storage;
begin
   This_Npc.NpcDialog(This_Player,
   '需要保管什么东西？\ \ \'+
   '|{cmd}<返回/@main>');
   This_Npc.Click_GetBack(This_Player);
end;

Procedure _DoInputDialog1;
begin
   This_Npc.InputDialog(This_Player,'请输入：', 0 , 100);
end;

Procedure P100;
begin
   If This_Npc.InputOK then
   begin
      This_Player.ReqOpenStorage(This_Npc.InputStr);
   end;
end;

Procedure _mbind;
begin
  This_Npc.NpcDialog(This_Player,
  '你知道我是什么人吗，你对我这么信任？ \' +
  '这可都是巨额交易啊！\' +
  '你要试一下吗？那就尽管放心好了！ \' +
  '|{cmd}<金币换金条./@chgtobar>'+addspace(' ',20)+'|{cmd}<金条换金币./@bartogold>\' +
  '|{cmd}<金条换金砖./@chgtobrick>'+addspace(' ',20)+'|{cmd}<金砖换金条./@bricktobar>\'+
  '|{cmd}<捆药瓶和卷轴/@bind>\'+ 
  '|{cmd}<取消/@doexit>');
end;

Procedure _chgtobar;
begin
   This_Npc.Click_GoldChgBar(This_Player);
end;

Procedure _bartogold;
begin
   This_Npc.Click_BartoGold(This_Player);
end;

Procedure _chgtobrick;
begin
   This_Npc.Click_BartoBrick(This_Player);
end;

Procedure _bricktobar;
begin
   This_Npc.Click_BricktoBar(This_Player);
end;

Procedure _bind;
begin
  This_Npc.NpcDialog(This_Player,
  '目前我能捆的只有卷书和药水。\'+
  '你要捆吗？ \'+ 
  '要捆东西需要100金币. \ \'+
  '|{cmd}<捆药水/@P_bind>'+addspace(' ',20)+'|{cmd}<捆卷书/@Z_bind> \ \'+
  '|{cmd}<返回/@main>');
end;

Procedure _P_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<强效金创药捆/@ch_bind1>  \'+
  '|{cmd}<捆强效魔法药/@ma_bind1> \'+ 
  '|{cmd}<捆金创药（中）/@ch_bind2> \'+
  '|{cmd}<捆魔法药（中）/@ma_bind2> \'+
  '|{cmd}<捆金创药/@ch_bind3> \'+
  '|{cmd}<捆魔法药/@ma_bind3> \'+
  '|{cmd}<返回/@bind>');
end;

//捆药模板
//item_src待捆绑的东西， item_des捆绑成的东西 
procedure DoBindDrug(item_src, item_des: string);
begin
  if This_Player.GetBagItemCount(item_src) >= 6 then
  begin
     if (This_Player.GoldNum >=100) then
     begin
        This_Player.DecGold(100);
        This_Player.Take(item_src,6);
        This_Player.Give(item_des,1);
        This_Npc.NpcDialog(This_Player,
        '已经捆好了... 我的技术不错吧... \'+
        '还有要捆的就拿给我吧.. \ \'+
        '|{cmd}<继续捆/@P_bind> \'+
        '|{cmd}<取消/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '你都没有钱捆东西，\'+
        '还捆什么? 快走吧... \ \'+
        '|{cmd}<取消/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '你都没有要捆的药水，还捆什么? \'+
     '等准备好药水之后再来找我吧.. \ \'+
     '|{cmd}<取消/@doexit>');
  end;
end;

procedure _ma_bind3;
begin
  DoBindDrug('魔法药(小量)', '魔法药(小)包');
end;

Procedure _ch_bind3;
begin
  DoBindDrug('金创药(小量)', '金创药(小)包');    
end;

Procedure _ma_bind2;
begin
  DoBindDrug('魔法药(中量)', '魔法药(中)包');  
end;

Procedure _ch_bind2;
begin
  DoBindDrug('金创药(中量)', '金创药(中)包');    
end;

Procedure _ma_bind1;
begin
  DoBindDrug('强效魔法药', '超级魔法药');     
end;

Procedure _ch_bind1;
begin
  DoBindDrug('强效金创药', '超级金创药');   
end;


Procedure _Z_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<捆地牢逃脱卷/@zum_bind1> \' +
  '|{cmd}<捆随机传送卷/@zum_bind2> \' +
  '|{cmd}<捆回城卷/@zum_bind3>  \' +
  '|{cmd}<捆行会回城卷/@zum_bind4>  \' +
  '|{cmd}<返回/@bind>');
end;

//捆书卷模板
//item_src待捆绑的东西， item_des捆绑成的东西 
procedure DoBindBook(item_src, item_des: string);
begin
  if This_Player.GetBagItemCount(item_src) >= 6 then
  begin
     if (This_Player.GoldNum >=100) then
     begin
        This_Player.DecGold(100);
        This_Player.Take(item_src,6);
        This_Player.Give(item_des,1);
        This_Npc.NpcDialog(This_Player,
        '已经捆好了... 我的技术不错吧... \'+
        '还有要捆的就拿给我吧.. \ \'+
        '|{cmd}<继续捆/@Z_bind> \'+
        '|{cmd}<取消/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '你都没有钱捆东西，\'+
        '还捆什么? 快走吧... \ \'+
        '|{cmd}<取消/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '你都没有可以捆的卷书，还捆什么? \'+
     '等准备好之后，再来找我吧.. \ \'+
     '|{cmd}<取消/@doexit>');
  end;   
end; 

procedure _zum_bind4;
begin
  DoBindBook('行会回城卷', '行会回城卷包');
end;

Procedure _zum_bind3;
begin
  DoBindBook('回城卷', '回城卷包');  
end;

Procedure _zum_bind2;
begin
  DoBindBook('随机传送卷', '随机传送卷包');  
end;

Procedure _zum_bind1;
begin
  DoBindBook('地牢逃脱卷', '地牢逃脱卷包');  
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '给我您要卖的物品。\ \ \'+
   '|{cmd}<返回/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '您想买些什么？\ \ \'+
   '|{cmd}<返回/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;
var
  i : integer;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //加载道具
  This_NPC.FillGoods('金创药(小量)', 100, 1);
  This_NPC.FillGoods('魔法药(小量)', 100, 1); 
  This_NPC.FillGoods('金创药(中量)', 100, 1);
  This_NPC.FillGoods('魔法药(中量)', 100, 1);
  This_NPC.FillGoods('强效金创药', 100, 1);
  This_NPC.FillGoods('强效魔法药', 100, 1);
  This_NPC.FillGoods('金创药(小)包', 100, 1);
  This_NPC.FillGoods('魔法药(小)包', 100, 1);
  This_NPC.FillGoods('金创药(中)包', 100, 1);
  This_NPC.FillGoods('魔法药(中)包', 100, 1);  
  This_NPC.FillGoods('超级金创药', 100, 1);
  This_NPC.FillGoods('超级魔法药', 100, 1);  
  This_NPC.FillGoods('护身符', 10, 1);
  This_NPC.FillGoods('护身符(大)', 10, 1);
  This_NPC.FillGoods('超级护身符', 10, 1);
  This_NPC.FillGoods('灰色药粉(中量)', 10, 1);  
  This_NPC.FillGoods('黄色药粉(中量)', 10, 1);
  This_NPC.FillGoods('灰色药粉(大量)', 10, 1);  
  This_NPC.FillGoods('黄色药粉(大量)', 10, 1);  
  This_NPC.FillGoods('超级灰色药粉', 10, 1);
  This_NPC.FillGoods('超级黄色药粉', 10, 1);
  This_NPC.FillGoods('地牢逃脱卷', 100, 1);
  //加载stdmode 
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3); 
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(42);
  This_NPC.AddStdMode(43);
  for i := 19 to 28 do
  This_NPC.AddStdMode(i);
end;


procedure _newskill2;                         
begin
   This_Npc.NpcDialog(This_Player,
   '是最近玛法风传的古战技秘籍对吧？嗯，我明白你的意思。\'+
   '行走江湖多年，对于古秘籍也有所耳闻，我想我能够帮你。\'+
   '10个古籍残片(小)可以解读成1个古籍残片(中)，\'+
   '5个古籍残片(中)可以拼接成1个古籍残片(大)。\ \'+
   '|{cmd}<解读古籍残片(小)/@newskill21>                 ^<拼接古籍残片(中) /@newskill22>\ \'+
   '|{cmd}<没事，谢谢/@exit>');
end;

procedure _newskill21;
begin
  if This_Player.GetBagItemCount('古籍残片(小)') >= 10 then
  begin
    This_Player.Take('古籍残片(小)',10);
    This_Player.Give('古籍残片(中)',1);
    This_Npc.NpcDialog(This_Player,
    '是最近玛法风传的古战技秘籍对吧？嗯，我明白你的意思。\'+
    '行走江湖多年，对于古秘籍也有所耳闻，我想我能够帮你。\'+
    '10个古籍残片(小)可以解读成1个古籍残片(中)，\'+
    '5个古籍残片(中)可以拼接成1个古籍残片(大)。\ \'+
    '|{cmd}<解读古籍残片(小)/@newskill21>                 ^<拼接古籍残片(中) /@newskill22>\ \'+
    '|{cmd}<没事，谢谢/@exit>');
  end else
  begin
    This_Npc.NpcDialog(This_Player,
    '你没有足够的残片啊！'
    );
  end;
end;

procedure _newskill22;
begin
  if This_Player.GetBagItemCount('古籍残片(中)') >= 5 then
  begin
    This_Player.Take('古籍残片(中)',5);
    This_Player.Give('古籍残片(大)',1);
    This_Npc.NpcDialog(This_Player,
    '是最近玛法风传的古战技秘籍对吧？嗯，我明白你的意思。\'+
    '行走江湖多年，对于古秘籍也有所耳闻，我想我能够帮你。\'+
    '10个古籍残片(小)可以解读成1个古籍残片(中)，\'+
    '5个古籍残片(中)可以拼接成1个古籍残片(大)。\ \'+
    '|{cmd}<解读古籍残片(小)/@newskill21>                 ^<拼接古籍残片(中) /@newskill22>\ \'+
    '|{cmd}<没事，谢谢/@exit>');
  end else
  begin
    This_Npc.NpcDialog(This_Player,
    '你没有足够的残片啊！'
    );
  end;
end;

function getNeedItemNum(STGid : integer) : integer; 
var P_Storger : integer;
begin
    if true then // if This_Player.CheckAuthen(1,100) then
    P_Storger := 48
    else
    P_Storger := 24;
    
    if (STGid - P_Storger) < 48 then
    result := 1
    else if (STGid - P_Storger) < (48*2) then
    result := 2
    else if (STGid - P_Storger) < (48*3) then
    result := 3
    else
    result := -1;
end;

procedure _Storagemore;
var stg_num : integer;
stg_str : string; 
begin
    stg_num := This_Player.GetStorageSpaceCount;
    
    case getNeedItemNum(stg_num) of
        -1 : stg_str := '';
        1 : stg_str := '递交1个坚硬的桦木扩大16格仓库（限第二页）';
        2 : stg_str := '递交2个坚硬的桦木扩大16格仓库（限第三页）';
        3 : stg_str := '递交3个坚硬的桦木扩大16格仓库（限第四页）';
    end;

    This_Npc.NpcDialog(This_Player,
     '是不是嫌仓库太小了？没事，给我一些坚硬的桦木，\'
    +'我就可以帮你扩大仓库。\'
    +'仓库第二页，每给我1个坚硬的桦木，我就会帮你扩大16格的仓库。\'
    +'仓库第三页，每给我2个坚硬的桦木，我就会帮你扩大16格的仓库。\'
    +'仓库的第四页所需要的材料更多，每给我3个坚硬的桦木我才能帮 \'
    +'你扩大16格。当然只有前面的仓库开启了你才能开启后面的。\'
    +'你需要扩大仓库么？\ \'
    +'|{cmd}<' + stg_str + '/@Storagemore_true>\'
    +'|{cmd}<返回/@main>'
    );
end;

procedure _Storagemore_true;
var stg_num , needHM : integer;
begin
    stg_num := This_Player.GetStorageSpaceCount;
    needHM := getNeedItemNum(stg_num);
    
    if needHM > 0 then
    begin
        if This_Player.GetBagItemCount('坚硬的桦木') >= needHM then
        begin
            This_Player.ExpandStorageSpace(16);
            This_Player.Take('坚硬的桦木',needHM);
            This_Npc.NpcDialog(This_Player,
            '你的仓库已成功扩大了16格！\'
            +'|{cmd}<返回/@Storagemore>'
            );
        end else
        This_Npc.NpcDialog(This_Player,
         '你的材料不够啊，我无能为力。\'
        +'|{cmd}<返回/@main>'
      );
    end; 

end;



Begin
   This_NPC.NpcDialog(This_Player,
   '看来你需要我的帮助，有什么需要就和我说吧。\ \'+
  // //'|{cmd}<开启仓库/@DoInputDialog1>\'+
  // '|{cmd}<仓库管理/@storage>                      \'+//^<找回东西/@getback>\'+
  '|{cmd}<仓库管理/@storage>\'
    +'|{cmd}<我要扩展仓库/@Storagemore>\'+
   '|{cmd}<捆各种卷书和药水/@mbind>\'+
   '|{cmd}<买/@buy>\'+
   '|{cmd}<卖/@sell>\ \'+ 
    '|{cmd}');
end. 