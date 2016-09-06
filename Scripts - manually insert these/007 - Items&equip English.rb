module RPG
  class Item
    attr_accessor :UK_name
    attr_accessor :UK_description
    def UK_name
      text = item_engbase(@id)[0]
      return text
    end
    def UK_description
      text = item_engbase(@id)[1]
      return text
    end
  end
end

def item_engbase(id)
    result = ["item #{id}","none yet"]
  case id
  when 1   #デバッグアイテム
    #色々デバッグできるぞ！
   result[0] = "Debug tool"
   result[1] = "Debug many things!"
when 2   #実験室の鍵
    #オープニング用
   result[0] = "Laboratory key"
   result[1] = "Opens a door"
when 3   #滞在機の鍵
    #滞在機の操作をするための鍵。
   result[0] = "滞在機の鍵"
   result[1] = "滞在機の操作をするための鍵。"
when 4   #古印破棄の執行書
    #旧式のルーンを破棄する儀式の執行書。
   result[0] = "Seal-breaking ritual"
   result[1] = "An ancient spell to dispell powerful seals"
when 5   #盟約式の執行書
    #盟約の契りを交わす儀式の執行書。
   result[0] = "Covenant application"
   result[1] = "Describes how to exchange a vow of convenant"
when 19   #プレシャスリング
    #盟約の契りを結ぶために必要な指輪。非装備品。
   result[0] = "Precious ring"
   result[1] = "May be used to seal a pledge of covenant"
when 21   #ハーブティ
    #[茶] ＥＰが小回復する。乾燥したハーブを煮出して飲用としたお茶。
   result[0] = "Herb tea"
   result[1] = "『Tea』 Recover 50EP."
when 22   #アールグレイ
    #[茶] ＥＰが中回復する。ベルガモットの独特の甘い香りがする着香茶。
   result[0] = "Earl grey"
   result[1] = "『Tea』 Recover 200EP."
when 23   #アピトーユブレンド
    #[茶] ＥＰが大回復する。香りが良く飲みやすいが、深みがある茶。
   result[0] = "Happy Toru blend"
   result[1] = "『Tea』 Recover 600EP."
when 24   #ロイヤルナイトティ
    #[茶] ＥＰが全回復する。濃厚で甘美な味わいの夢世界産ミルクティ。
   result[0] = "Royal Night tea"
   result[1] = "『Tea』 Recover all EP."
when 26   #レモンピール
    #[菓] ＥＰが小回復する。菓子は戦闘中でも使用できる。
   result[0] = "Lemon peel"
   result[1] = "『Candy』 Recover 100EP."
when 27   #ドライアプリコット
    #[菓] ＥＰが中回復する。干すことで甘みが凝縮されたアプリコット。
   result[0] = "Dried Apricots"
   result[1] = "『Candy』 Recover 300EP."
when 28   #フルーツタルト
    #[菓] ＥＰが大回復する。上品な味わいで人気な一口サイズのタルト。
   result[0] = "Fruitcake"
   result[1] = "『Candy』 Recover 1000EP."
when 30   #ウェイクアップ
    #仲間を完全回復させる妙薬。失神した仲間にも効果がある。
   result[0] = "Wake-me-up"
   result[1] = "Restores all VP. Can be used on fainted allies."
when 34   #ミルクキノコ
    #夢魔の満腹度が少し満たされる。舐め続けていると傘から白い液体が出る茸。
   result[0] = "Milky Mushroom"
   result[1] = "A little filling. Must be licked a lot for milk to come out."
when 35   #クリハナッツ
    #夢魔の満腹度がそこそこ満たされる。非常に癖のある臭いのする木の実。
   result[0] = "Gonad nuts"
   result[1] = "Filling. Full of nutrients, despite the particular smell."
when 36   #一番搾り
    #夢魔の満腹度が完全に満たされる。人間が飲むには濃すぎる味わいの牛乳。
   result[0] = "Full squeeze"
   result[1] = "Very filling. Most humans cannot bear that much."
when 37   #レモンピール
    #[菓] ＥＰが小回復する。菓子は戦闘中でも使用できる。
   result[0] = "Lemon ale"
   result[1] = "『Candy』 Recover 200EP."
when 49   #ネクストステア
    #レベルを１上げる。
   result[0] = "Next step"
   result[1] = "Raises level by 1"
when 51   #小さなポピー
    #[贈] 相手１人の契約確率を少し上げる。小さく愛らしいポピーの花。
   result[0] = "Poppy flower"
   result[1] = "『Gift』 The recipient will like you a bit more."
when 52   #鮮やかな花冠
    #[贈] 相手１人の契約確率を上げる。色どり鮮やかな花の冠。
   result[0] = "Vivid corolla"
   result[1] = "『Gift』 The recipient will like you better."
when 53   #ロマンスブーケ
    #[贈] 相手１人の契約確率を大きく上げる。女性を魅了する花束。
   result[0] = "Bouquet romantique"
   result[1] = "『Gift』 The recipient will like you a lot."
when 71   #風の翼
    #ホームへ戻る。
   result[0] = "Bird wing"
   result[1] = "Sends you back home."
when 151   #粗末な食材
    #[材] お粗末な食材。調理すればマシになる。
   result[0] = "Frugal ingredients"
   result[1] = "『Harvest』 Can be cooked into an acceptable dish."
when 152   #普通の食材
    #[材] 普通の食材。調理すればそこそこ良くはなる。
   result[0] = "Common ingredients"
   result[1] = "『Harvest』 Can be cooked into a decent meal."
when 153   #最高の食材
    #[材] 最高の食材。調理すればその味は引き出される。
   result[0] = "Luxurious ingredients"
   result[1] = "『Harvest』 The best for the best cook."
when 161,210   #マイルドハニー
    #[添] 蜜蜂の作る蜜。料理に入れると味がマイルドになる。
   result[0] = "Sweet honey"
   result[1] = "『Ingredient』 Often used to sweeten dishes."
when 162   #発熱ジンジャー
    #[添] 体を内側から温めるジンジャー。風邪に効く。
   result[0] = "Pungent ginger"
   result[1] = "『Ingredient』 Woody, warm flavor. Great for colds."
when 163   #鮮やかな苺
    #[添] 鮮やかな苺。このまま食べるより料理の飾り付けにしたい。
   result[0] = "Shiny strawberry"
   result[1] = "『Ingredient』 Always an appreciated garnish."
when 164   #渋いクルミ
    #[添] そのまま食べるには渋すぎるクルミ。
   result[0] = "Bitter walnut"
   result[1] = "『Ingredient』 Too bitter to eat as is."
when 165   #スパイシーペッパー
    #[添] ピリっとくる辛さの黒胡椒。
   result[0] = "Spicy pepper"
   result[1] = "『Ingredient』 Pili-pili spiciness."
when 166   #スイートマロン
    #[添] 甘みのある栗の実なのだが、剥くのが少々手間。
   result[0] = "Sweet marron"
   result[1] = "『Ingredient』 A sweeter kind of chestnut."
when 167   #爽やかなレモン
    #[添] フレッシュな酸味がほとばしる瑞々しいレモン。
   result[0] = "Fresh lemon"
   result[1] = "『Ingredient』 As fresh as it is acid."
when 168   #ビターナッツ
    #[添] 頭の冴える苦目なナッツ。魔女の徹夜のお供。
   result[0] = "Bitter nuts"
   result[1] = "『Ingredient』 Guaranteed to rouse your taste buds."
when 169,214   #禍々しい根っこ
    #[添] 生命力溢れる根っこ。魔女の釜の常連。
   result[0] = "Ominous root"
   result[1] = "『Ingredient』 Lively roots. Great for witchcraft too."
when 181   #魔女の鍵
    #パルフィスの魔女たちが使用する鍵。
   result[0] = "Witch's key"
   result[1] = "Used by Pelfrey monestary witches."
when 182   #赫唐辛子
    #炎のような辛さが味わえる赤々とした唐辛子。人間用ではない。
   result[0] = "Sparkly pepper"
   result[1] = "Way too spicy for humans to handle."
when 183   #回廊の鍵
    #パルフィス密教会の回廊の鍵。
   result[0] = "Corridor key"
   result[1] = "A key used somewhere in Pelfrey monastery."
when 199   #忘却の古印
    #記憶の一部を封じる旧式のルーン。破棄が困難で、安易に使えるものではない。
   result[0] = "Forgotten mark"
   result[1] = "Part of an old, long-forgotten seal."
when 201   #白い羽
    #鳥から抜け落ちたであろう白い羽。
   result[0] = "White feather"
   result[1] = "The bird will miss them."
when 202   #大葉
    #それなりに大きい葉っぱ。
   result[0] = "Big leaf"
   result[1] = "Larger than a small leaf."
when 203   #毒林檎
    #多分。
   result[0] = "Poison apple"
   result[1] = "Why not?"
when 205   #質のいい岩石
    #良い感じに塊として採取できた岩石。
   result[0] = "Good rock"
   result[1] = "Definitely better than the other rocks."
when 206   #骨
    #そこそこ太い。何の骨かは不明。
   result[0] = "Bone"
   result[1] = "Quite large. Origins unknown."
when 207   #石英
    #綺麗な石英。
   result[0] = "Quartz"
   result[1] = "Regular quartz."
when 208   #彩色石英
    #色鮮やかな石英。
   result[0] = "Colored quartz."
   result[1] = "Quartz. With a color."
when 211   #ヘルペッパー
    #地獄のような辛さが味わえる香辛料。人間用ではない。
   result[0] = "Hell pepper"
   result[1] = "Spicy like hell. Not meant for humans."
when 213   #青い羽
    #鳥から採取したであろう青い羽。
   result[0] = "Blue feather"
   result[1] = "Like a feather, but blue."
when 215   #魔法石
    #魔力を湧出する石。杖のような魔道具に使用される。
   result[0] = "Magic stone"
   result[1] = "Often used to craft wands."
when 217   #蜘蛛の糸
    #丈夫な蜘蛛の糸。
   result[0] = "Spider silk"
   result[1] = "A strong, durable silk"
when 218   #錆びた手斧
    #手入れされておらず錆びてしまった手斧。切れ味にはもう期待できない。
   result[0] = "Rusty axe"
   result[1] = "Too rusted to be of any use."
when 219   #真紅の石
    #赤色の顔料に使われる石。
   result[0] = "Crimson stone"
   result[1] = "Can be ground into a red pigment."
when 220   #不発ダイナマイト
    #火は着くのだが爆発しないダイナマイト。
   result[0] = "Undetonated TNT"
   result[1] = "The fuse is lit, though."
when 222   #溶岩エビ
    #溶岩に住むエビ。かなり小さくとても苦くて辛いため、食用としては微妙。
   result[0] = "Lava shrimp"
   result[1] = "Small creature living in lava. Spicy."
when 223   #凶悪な頭蓋骨
    #生前はさぞかし凶悪人だったのだろう。
   result[0] = "Hateful skull"
   result[1] = "It really feels like it hates you."
when 224   #精神焦がし
    #この火で焼かれると思考が焼け焦げると言われる地獄の炎。
   result[0] = "Soaring spirit"
   result[1] = "There's still a bit left after going through hellfire."
when 225   #プチ悪魔
    #採取程度で入手できるほど弱小な悪魔。
   result[0] = "Petit devil"
   result[1] = "A small, weak demon. Collectible."
when 226   #捨てられた思い出
    #人が捨てたと思っていても、それはどこかでずっと残るものである。
   result[0] = "Lost memories"
   result[1] = "Someone lost them, now they've been found."
when 228   #樹海ローズマリー
    #薬用に使われる樹海産のハーブ。普通のものとは違い非食用。
   result[0] = "Yukai rosemary"
   result[1] = "Harvested by yukai for medicine. Probably not edible."
when 229   #彷徨える亡霊
    #採取中にまとわりついた亡霊。害は無い。
   result[0] = "Wandering ghost"
   result[1] = "It keeps wandering, even in the bag."
when 230   #冒険者の装備
    #片方だけしかない篭手。どのみち夢魔相手では不器用になるだけである。
   result[0] = "Adventurer gloves"
   result[1] = "They always lose the same one."
when 231   #ひよこの餌
    #カブト虫。本来はもっとすごいものが好まれる。
   result[0] = "Poultry food"
   result[1] = "A beetle. Who probably had greater ambitions."
when 233   #星の砂
    #星形の砂。
   result[0] = "Sandflower"
   result[1] = "Flower-shaped sand."
when 234   #安物の杖
    #廃棄物らしいので持って行って構わないだろう。
   result[0] = "Cheap rod"
   result[1] = "Looks cheap. Feels cheaper."
when 235   #魔獣の心臓
    #今にも動き出しそうな、迫力のある心臓。
   result[0] = "Beast heart"
   result[1] = "It's not beating anymore. Or is it?"
when 236   #魔力片
    #魔力を大量に湧出する破片。大型の魔法機などに使われる。
   result[0] = "Magic shard"
   result[1] = "A piece of magic. Maybe part of a whole."
when 237   #破滅の元
    #危険なもの。
   result[0] = "Bane of Origins"
   result[1] = "Dangerous!"
when 239   #壊れた罠
    #もう使いものにならない罠。
   result[0] = "Broken trap"
   result[1] = "Definitely useless."
when 240   #丈夫な荒縄
    #人1人を吊り上げても千切れなさそうな荒縄。
   result[0] = "Sturdy Aranawa"
   result[1] = "One who can lift a thousand Aranawas, can lift one."
when 241   #夢色香水
    #思考が混濁してしまう、不思議な色の香水。
   result[0] = "Dreamy perfume"
   result[1] = "So subtle, you might just have imagined it."
when 242   #強そうな武器
    #名の知れた剣士の相棒だっただろう武器。夢魔相手じゃ無用の長物。
   result[0] = "Powerful weapon"
   result[1] = "A mighty weapon. Not so much against inmas, though."
when 243   #サキュバスの服
    #夢魔の脱ぎ捨てた際どい意匠の服。
   result[0] = "Succubus clothes"
   result[1] = "Designed for swift take-off."
when 245   #小さな隣人
    #どうやら迷子になっている妖精。
   result[0] = "Tiny friend"
   result[1] = "So, apparently, a fairy got lost."
when 296   #夢魔の像
    #教会に保管されているには扇情的すぎる夢魔の像。
   result[0] = "Inma bust"
   result[1] = "Makes one wonder, why it was in a church."
when 297   #天使の像
    #教会に祀られた天使の像。足元が欠けており、置くと少し傾く。
   result[0] = "Angel figure"
   result[1] = "A statue of an angel. Its feet are missing, it cannot stand."
when 298   #ラプソディアコイン
    #夢世界の記念硬貨。
   result[0] = "Rhapsodia coin"
   result[1] = "A collectible coin in the dream world."
when 301   #真夜の華
    #夢魔の好む、闇夜に映える妖艶な紫色の華。
   result[0] = "Nightbloom"
   result[1] = "A flower that shines in the dark."
when 302   #魔獣の牙
    #悪魔の持つ装飾品に使われる、凶暴そうな獣の牙。
   result[0] = "Beast fang"
   result[1] = "Very popular in accesory crafting."
when 303   #見知った銀貨
    #現実世界で使われる銀貨。夢世界では価値がない。
   result[0] = "Silver coin"
   result[1] = "Would be worth much in the real world. But not here."
when 304   #恐怖溜まり
    #ナイトメアの集めた恐怖心が溜まったもの。
   result[0] = "Lump of fear"
   result[1] = "Harvested in any good nightmare."
when 305   #ぷるぷるした粘液
    #スライムの一部であった流動体の液体。
   result[0] = "Puripuri mucus"
   result[1] = "Actually part of a slime's body."
when 306   #怪しい調合液
    #魔女の作った試験品。時々派手な音を立てて泡立つ。
   result[0] = "Dubious concoction"
   result[1] = "Some witch made this. Bubbling and shaking."
when 307   #使い魔の箒
    #空を飛ぶものではなく、掃除をするためのもの。
   result[0] = "Familiar broom"
   result[1] = "Actually used for cleaning. Not for flying."
when 308   #肉球スタンプ
    #押すとぷにっとした手応えがある。
   result[0] = "Squishy paw"
   result[1] = "It's begging to be squished."
when 309   #獣の角
    #ゴブリンが仕留めた獣の角。それなりに重い。
   result[0] = "Beast horn"
   result[1] = "Probably from something a goblin killed. Heavy."
when 310   #ダイヤモンド
    #光が内部で幾つも反射しあい、様々な輝きを見せる美しい宝石。
   result[0] = "Diamond"
   result[1] = "Very shiny when exposed to sunlight."
when 311   #石像の鱗
    #石像から剥がれたとても固い鱗。
   result[0] = "Stone scale"
   result[1] = "Came off a statue. Really hard."
when 312   #金の粘液
    #ゴールドスライムの一部であった流動体の金の液体。
   result[0] = "Golden mucus"
   result[1] = "Liquid gold. And part of a slime."
when 313   #雅の扇
    #見たことがない異国情緒を思わせる扇。
   result[0] = "Miyabi fan"
   result[1] = "Feels very exotic. "
when 314   #小さな悪魔像
    #手のひらサイズの小さな悪魔像。力を持っているが、弱々しい。
   result[0] = "Devil figure"
   result[1] = "Palm-sized replica of a huge devil."
         
    end
  return result
end




module RPG
  class Armor
    attr_accessor :UK_name
    attr_accessor :UK_description
    def UK_name
      text = armor_engbase(@id)[0]
      return text
    end
    def UK_description
      text = armor_engbase(@id)[1]
      return text
    end
  end
end

def armor_engbase(id)
    result = ["armor #{id}","none yet"]
  case id
  
when 1   #テストルーン１
  #デバッグ用
  result[0] =  "Debugger1"
  result[1] =  "For Debug"
when 2   #テストルーン２
  #デバッグ用
  result[0] =  "Debugger2"
  result[1] =  "For Debug"
when 7   #友好のメダル
  #すべての能力が下がるが、夢魔と契約しやすくなるメダル。
  result[0] =  "Friendship Medal"
  result[1] =  "Easier to make new contracts. Stats down."
when 8   #一匹狼の誡
  #孤高の戒めを刻んだ装飾品。パーティが１人の時にその力を発揮する。
  result[0] =  "Lone Wolf Tag"
  result[1] =  "Power up when alone."
when 9   #ストーンスキン
  #石像の鱗を使った装飾品。インサート中スキルの威力が上昇する。
  result[0] =  "Stone Skin"
  result[1] =  "Power up Insert skills."
when 16   #ガラスの指輪
  #安っぽいガラスの指輪だが、好感度と契約の珠が上がりやすくなる。
  result[0] =  "Glass Ring"
  result[1] =  "Easier to gain Favor and Contract Beads."
when 17   #手作りミサンガ
  #お手製のミサンガ。いつか切れた時に装備していた者の契約の珠が増える。
  result[0] =  "Lucky Misanga"
  result[1] =  "It can break in battle, gaining Contract Beads."
when 18   #独占欲
  #パーティにいる仲間の夢魔が自分１人の場合、その力を発揮する。
  result[0] =  "Wish to Possess"
  result[1] =  "Power up if she is the only partner in party."
when 19   #大きなリボン
  #状態異常すべてが少しだけ効きにくくなる大きなリボン。
  result[0] =  "Big Ribbon"
  result[1] =  "Status Resistance up."
when 20   #黒光りする一物
  #インサートスキルが使えるようになる禍々しいディルド。
  result[0] =  "Shiny Black... Thing"
  result[1] =  "Mean-looking Strapon. Allows for Insert."
when 21   #上弦の月
  #「好機」の意味を持つ装飾品。シェルマッチ中スキルの威力が上昇。 / unsure about 'lucky'
  result[0] =  "Waxing Crescent"
  result[1] =  "「Lucky」 Powers up Tribadism."
when 31   #剣のアミュレット
  #剣を模したアミュレット。魅力が少し上がる。
  result[0] =  "Sword Amulet"
  result[1] =  "A sword-shaped amulet. Charm +"
when 32   #銀剣のアミュレット
  #剣を模した銀製のアミュレット。魅力が上がる。畏怖耐性も持つ。
  result[0] =  "Silver Sword Amulet."
  result[1] =  "Charm ++,#{$data_states[38].UK_name} resistance."
when 33   #金剣のアミュレット
  #剣を模した金製のアミュレット。魅力が大きく上がる。畏怖耐性も持つ。
  result[0] =  "Gold Sword Amulet"
  result[1] =  "Charm +++,#{$data_states[38].UK_name} resistance."
when 34   #シックなチョーカー
  #落ち着いた色のチョーカー。忍耐力が少し上がる。
  result[0] =  "Chic Choker"
  result[1] =  "A soothing choker. Endurance +"
when 35   #ハートのピアス
  #ハート型のピアス。夢魔が愛用して身に着けていることが多い。虚脱耐性。
  result[0] =  "Heart Earrings"
  result[1] =  "Often used as piercings, in various places. #{$data_states[37].UK_name} resistance."
when 36   #星のピアス
  #星形のピアス。魔女が愛用して身に着けていることが多い。散漫耐性。
  result[0] =  "Star Earrings"
  result[1] =  "Favored by witches. #{$data_states[40].UK_name} resistance."
when 37   #偽典
  #悪魔崇拝を記した魔女たちのバイブル。更なる快楽を得る術が記されている。
  result[0] =  "False Scripture"
  result[1] =  "A Bible to witches. Many ways to pleasure are recorded here."
when 38   #蝙蝠羽のバッジ
  #蝙蝠の羽を模したバッジ。素早さが上がる。麻痺にも耐性。
  result[0] =  "Bat Wings Badge"
  result[1] =  "Bat wing-shaped. Speed +, #{$data_states[39].UK_name} resistance."
when 39   #女狐のエンブレム
  #女狐が描かれた紋章。恍惚を無効にする。
  result[0] =  "Foxgirl Crest"
  result[1] =  "With a foxy woman carved in. #{$data_states[34].UK_name} immune."
when 40   #女豹のエンブレム
  #女豹が描かれた紋章。麻痺を無効にする。
  result[0] =  "Leopard girl Crest"
  result[1] =  "With a feline carved in. #{$data_states[39].UK_name} immune."
when 41   #自制のロザリオ
  #祈りに使われるロザリオ。暴走を無効。
  result[0] =  "Self-control Rosary"
  result[1] =  "A rosary used for prayers. #{$data_states[36].UK_name} immune."
when 42   #パールネックレス
  #真珠を加工して作られたネックレス。高く売れる。
  result[0] =  "Pearl Necklace"
  result[1] =  "A necklace made from a pearl. Expensive."
when 43   #水晶のインタリオ
  #美しい水晶のインタリオ。精神力を上げる。
  result[0] =  "Crystal Embroidery"
  result[1] =  "Made from interwoven crystal. Magic up."
when 44   #淑女のカメオ
  #欲情に耐性が付く、淑女が彫られたカメオ。しかしレジストが弱くなる。
  result[0] =  "Lady Jewel"
  result[1] =  "#{$data_states[39].UK_name} resistance, but harder to 『Resist』."
when 45   #逃走のアンクレット
  #装備者が逃走する場合に成功率が上昇する足飾り。
  result[0] =  "Escape Trinket"
  result[1] =  "Ankle accessory. Easier to escape."
when 46   #蜻蛉のブローチ
  #蜻蛉を模した金細工のブローチ。精力が上がる。恍惚にも耐性。
  result[0] =  "Dragonfly Brooch"
  result[1] =  "#{$data_states[34].UK_name} resistance, Vigor up."
when 47   #蝶のブローチ
  #蝶を模した金細工のブローチ。魅力が上がる。恍惚にも耐性。
  result[0] =  "Butterfly Brooch"
  result[1] =  "#{$data_states[34].UK_name} resistance, Charm up."
when 48   #鎮静の紫水晶
  #鎮静効果を秘めるアメジストを嵌めた指輪。精神的な状態異常に耐性。
  result[0] =  "Tranquil Amethyst"
  result[1] =  "A soothing gemstone. Mental ailments resistance up."
when 49   #涙の結晶
  #涙のような形をした結晶。欲情、暴走に耐性。
  result[0] =  "Crystal Tear"
  result[1] =  "Tear-shaped. #{$data_states[35].UK_name} resistance,#{$data_states[36].UK_name} resistance."
when 50   #明晰の手鏡
  #自分の感覚を研ぎ澄ます手鏡。SensualStroke率が上がる。
  result[0] =  "Lucid Mirror"
  result[1] =  "Makes you more aware. SS rate up."
when 51   #潰えた天の翼
  #いつしか彼女たちはいなくなってしまった。
  result[0] =  "Lost Heaven Wing"
  result[1] =  "Disappearing little by little."
when 52   #ワイルドカード
  #能力値が大きく上がるカード。しかし戦闘に勝利すると無くなってしまう。
  result[0] =  "Wild Card"
  result[1] =  "Power up, but only lasts one battle."
when 53   #夜空の帯
  #夢魔の中でも魔性の者たちが纏う、吸い込まれそうな夜空を映す帯。
  result[0] =  "Night Sky Obi"
  result[1] =  "A black garment that protects from evil spirits."
when 54   #強き者の指輪
  #能力値が下がるが、装備者の取得経験値が上昇する曰くつきの指輪。
  result[0] =  "Strongman Ring"
  result[1] =  "Power down, but gain more experience."
when 55   #活力の炎
  #力強く沸き立つ精神の炎。虚脱を無効。
  result[0] =  "Life Flame"
  result[1] =  "Rouses up your mind. #{$data_states[37].UK_name} immune."
when 56   #信念のドッグタグ
  #レンディカ自警団の認識票。畏怖、虚脱に耐性。 / *TODO* Rendika? Oh well...
  result[0] =  "Faithful Dog Tag"
  result[1] =  "#{$data_states[37].UK_name},#{$data_states[38].UK_name} resistance."
when 57   #ルーンリング
  #ルーンが刻まれた腕輪。装備している間、ラナンブルムを習得する。
  result[0] =  "Rune Ring"
  result[1] =  "A ring with runes. Learn 「#{$data_skills[171].UK_name}」."
when 58   #キッスチャーム
  #キッスの追撃率が上がるお守り。
  result[0] =  "Kiss Charm"
  result[1] =  "Kisses are more skillful."
when 59   #バストチャーム
  #バストの追撃率が上がるお守り。
  result[0] =  "Chest Charm"
  result[1] =  "Breasts groping is more skillful."
when 60   #ヒップチャーム
  #ヒップの追撃率が上がるお守り。
  result[0] =  "Hips Charm"
  result[1] =  "Butt fondling is more skillful."
when 61   #クロッチチャーム
  #クロッチの追撃率が上がるお守り。
  result[0] =  "Kurotsuchi Charm"
  result[1] =  "Crotch caressing is more skillful."
when 62   #彩花巻き
  #美しい花の指輪。ムードが５０以上あると全状態異常にかかりにくくなる。
  result[0] =  "Wind of Ayaka"
  result[1] =  "A flower ring. Status resistance up if Mood 50+."
when 63   #おひつじさま
  #おひつじさま。なんと装備できる。パーティのＥＰ自動回復量が上昇するぞ。
  result[0] =  "Aries-Sama"
  result[1] =  "A sheep. Party recovers more EP."
when 64   #野蛮な者の首輪
  #付けると野蛮な気分になれる首輪。自分から行うレジストが強くなる。
  result[0] =  "Barbarian Collar"
  result[1] =  "Feels barbaric. Easier to 『Resist』."
when 65   #安らかなるレム
  #夢の中でも脳が休まる宝珠。戦闘勝利時に全員のＥＰを小回復。
  result[0] =  "Peace Rem"
  result[1] =  "Brings relaxing dreams. Party recovers EP upon victory."
when 66   #隷属の首輪
  #奴隷に掛ける首輪。忍耐力が上昇するが、他がかなり弱体化する。
  result[0] =  "Slave Collar"
  result[1] =  "Endurance up, at the expense of other stats."
when 67   #薬草の冠
  #薬草を編んで作った冠。虚脱、麻痺、散漫の耐性を付ける。
  result[0] =  "Remedy Crown"
  result[1] =  "Medicinal. #{$data_states[37].UK_name},#{$data_states[39].UK_name},#{$data_states[40].UK_name} resistance."
when 68   #凶暴性
  #鋭い眼光、剥き出しの牙、滴る涎、破壊する豪腕。なんて恐ろしい。 / *TODO* Description?
  result[0] =  "Brutality"
  result[1] =  "鋭い眼光、剥き出しの牙、滴る涎、破壊する豪腕。なんて恐ろしい。"
when 69   #デモンキスマーク
  #生命力を奪う悪魔の口吻紋。力を得る代わりにスキルの消費ＶＰが増加する。
  result[0] =  "Demon Hickey"
  result[1] =  "Power up at the expense of increased VP costs."
when 71   #自己完結（没） / *TODO* Clueless
  #自身に掛かる魔法を受け付けなくする、完全性の指輪。
  result[0] =  "自己完結（没）"
  result[1] =  "自身に掛かる魔法を受け付けなくする、完全性の指輪。"
when 72   #錬金術の碑輪
  #錬金術を記した、翡翠の腕輪。戦闘勝利後に手に入る金額が増える。
  result[0] =  "Alchemy Circle"
  result[1] =  "With various formulas. Gain more money upon victory."
when 73   #幸運石
  #幸運になると呼ばれる石。戦闘終了時のアイテムドロップ率が上がる。
  result[0] =  "Lucky Stone"
  result[1] =  "It's lucky if you call it. More item drops."
when 74   #魔導の首飾り
  #魔術の負担を軽減する、魔女たちの傑作。
  result[0] =  "Madou Necklace"
  result[1] =  "Witches' masterpiece. 『Magic』costs decreased."
when 75   #萌ゆる欲芽     *TODO* heeeeelp! 
  #欲望の発芽を模した謎の装飾品。装備していると欲情状態が続く。
  result[0] =  "萌ゆる欲芽"
  result[1] =  "It seeps with greed. Always #{$data_states[35].UK_name}."
when 76   #板金鎧のバッジ
  #宛ら本物の鎧のように忍耐力を大きく上げるバッジ。
  result[0] =  "Armorplate Badge"
  result[1] =  "Like a real armor. Endurance up."
when 77   #勇気のサークレット
  #勇気の証となる聖別されたサークレット。畏怖・暴走に耐性。
  result[0] =  "Courage Circlet"
  result[1] =  "Given as proof of bravery.#{$data_states[36].UK_name},#{$data_states[38].UK_name} resistance."
when 78   #デンジャラスフラウ
  #状態異常が３つ付与された相手に大きく快感を与えられる危険な花。
  result[0] =  "Riskant Frauen"
  result[1] =  "Dangerous flower. SS rate up on enemies with 3+ ailments."
when 79   #眠り窮鼠
  #自分がクライシス状態の時に力を発揮する鼠のエンブレム。
  result[0] =  "Cornered Rat Mark"
  result[1] =  "Power up during Crisis."
when 97   #統べる冠
  #魔物たちを統べる支配者の冠。恍惚を無効にし、激励を習得する。
  result[0] =  "Crown of Unity"
  result[1] =  "Might be the demons King's. #{$data_states[36].UK_name} immune, learn 「#{$data_skills[588].UK_name}」."
when 98   #移りゆく時（没）
  #力の代償に、スキルを使用すると同じスキルが３ターンの間使えなくなる時計。
  result[0] =  "移りゆく時（没）"
  result[1] =  "Power up, but adds a 3-turn cooldown on skills."
when 99   #人々の失くし物   
  #それは嘗ては「夢」と呼ばれたものだった。*TODO* Clueless...
  result[0] =  "人々の失くし物"
  result[1] =  "それは嘗ては「夢」と呼ばれたものだった。"
when 101   #魅力のルーン
  #[○] 魅力が小上昇する。
  result[0] =  "Charm Rune"
  result[1] =  "[○] Charm +"
when 102   #魔性のルーン
  #[◇] 魅力が上昇する。
  result[0] =  "Fiendish Rune"
  result[1] =  "[◇] Charm ++"
when 103   #妖艶のルーン
  #[☆] 魅力が大きく上昇する。
  result[0] =  "Bewitching Rune"
  result[1] =  "[☆] Charm +++"
when 104   #イングのルーン
  #[★] 豊穣のルーン。溢れんばかりの魅力を得ることができる。
  result[0] =  "Ling Rune"
  result[1] =  "[★] Fertility rune. Overwhelming Charm."
when 106   #忍耐のルーン
  #[○] 忍耐力が小上昇する。
  result[0] =  "Endurance Rune"
  result[1] =  "[○] Endurance +"
when 107   #不屈のルーン
  #[◇] 忍耐力が上昇する。
  result[0] =  "Indomitable Rune"
  result[1] =  "[◇] Endurance ++"
when 108   #堅忍のルーン
  #[☆] 忍耐力が大きく上昇する。
  result[0] =  "Persevering Rune"
  result[1] =  "[☆] Endurance +++"
when 109   #エイワズのルーン
  #[★] 防御のルーン。何事にも動じない忍耐力を得ることができる。
  result[0] =  "Eiwa Rune"
  result[1] =  "[★] Ultimate defense. Unshakable Endurance."
when 111   #情熱のルーン
  #[○] 精力が小上昇する。
  result[0] =  "Passion Rune"
  result[1] =  "[○] Vigor +"
when 112   #豪胆のルーン
  #[◇] 精力が上昇する。
  result[0] =  "Daring Rune"
  result[1] =  "[◇] Vigor ++"
when 113   #絶倫のルーン
  #[☆] 精力が大きく上昇する。
  result[0] =  "Energy Rune"
  result[1] =  "[☆] Vigor +++"
when 114   #ウルズのルーン
  #[★] 力のルーン。絶大な精力を得ることができる。
  result[0] =  "Uruk Rune"
  result[1] =  "[★] Rune of power. Unending Vigor."
when 116   #技巧のルーン
  #[○] 器用さが小上昇する。
  result[0] =  "Deft Rune"
  result[1] =  "[○] Dexterity +"
when 117   #手練のルーン
  #[◇] 器用さが上昇する。
  result[0] =  "Dextrous Rune"
  result[1] =  "[◇] Dexterity ++"
when 118   #熟達のルーン
  #[☆] 器用さが大きく上昇する。
  result[0] =  "Proficient Rune"
  result[1] =  "[☆] Dexterity +++"
when 119   #アンサズのルーン
  #[★] 言葉のルーン。精緻かつ巧みな器用さを得ることができる。
  result[0] =  "Hans Ring"
  result[1] =  "[★] A Master's rune. Peerless Dexterity."
when 121   #俊足のルーン
  #[○] 素早さが小上昇する。
  result[0] =  "Fleety Rune"
  result[1] =  "[○] Speed +"
when 122   #疾風のルーン
  #[◇] 素早さが上昇する。
  result[0] =  "Gale Rune"
  result[1] =  "[◇] Speed ++"
when 123   #刹那のルーン
  #[☆] 素早さが大きく上昇する。
  result[0] =  "Instant Rune"
  result[1] =  "[☆] Speed +++"
when 124   #ラグズのルーン
  #[★] 車輪のルーン。目にも止まらぬ程の素早さを得ることができる。
  result[0] =  "Lags Rune"
  result[1] =  "[★] Rune of the wheel. Unmatchable Speed."
when 126   #精神のルーン
  #[○] 精神力が小上昇する。
  result[0] =  "Spirit Rune"
  result[1] =  "[○] Magic +"
when 127   #意思のルーン
  #[◇] 精神力が上昇する。
  result[0] =  "Will Rune"
  result[1] =  "[◇] Magic ++"
when 128   #霊感のルーン
  #[☆] 精神力が大きく上昇する。
  result[0] =  "Inspiration Rune"
  result[1] =  "[☆] Magic +++"
when 129   #シギルのルーン
  #[★] 太陽のルーン。揺らぐことのない精神力を得ることができる。
  result[0] =  "Shigiru Rune"
  result[1] =  "[★] Rune of the Sun. Overflowing Magic."
when 131   #神性のルーン
  #[★] すべての能力値が上がるルーン。
  result[0] =  "Godlike Rune"
  result[1] =  "[★] All stats +++"
when 133   #意識のルーン
  #[○] 恍惚耐性が上がる。このルーンの効果は重複しない。
  result[0] =  "Conscious Rune"
  result[1] =  "[○] #{$data_states[34].UK_name} resist. Uncumulative."
when 134   #抑制のルーン
  #[○] 欲情耐性が上がる。このルーンの効果は重複しない。
  result[0] =  "Control Rune"
  result[1] =  "[○] #{$data_states[35].UK_name} resist. Uncumulative."
when 135   #理性のルーン
  #[○] 暴走耐性が上がる。このルーンの効果は重複しない。
  result[0] =  "Reason Rune"
  result[1] =  "[○] #{$data_states[36].UK_name} resist. Uncumulative."
when 136   #活気のルーン
  #[○] 虚脱耐性が上がる。このルーンの効果は重複しない。
  result[0] =  "Vitality Rune"
  result[1] =  "[○] #{$data_states[37].UK_name} resist. Uncumulative."
when 137   #胆力のルーン
  #[○] 恐怖耐性が上がる。このルーンの効果は重複しない。
  result[0] =  "Courage Rune"
  result[1] =  "[○] #{$data_states[38].UK_name} resist. Uncumulative."
when 138   #柔軟のルーン
  #[○] 麻痺耐性が上がる。このルーンの効果は重複しない。
  result[0] =  "Flexible Rune"
  result[1] =  "[○] #{$data_states[39].UK_name} resist. Uncumulative."
when 139   #一心のルーン
  #[○] 散漫耐性が上がる。このルーンの効果は重複しない。
  result[0] =  "Sentient Rune"
  result[1] =  "[○] #{$data_states[40].UK_name} resist. Uncumulative."
when 141   #無敵のルーン
  #[★] 全ての状態異常耐性が少し上がる。このルーンの効果は重複しない。
  result[0] =  "Invicible Rune"
  result[1] =  "[★] Resistance to all ailments. Uncumulative."
when 143   #安息のルーン
  #[◇] ブレス系の回復量が上昇する。このルーンの効果は重複しない。
  result[0] =  "Sabbath Rune"
  result[1] =  "[◇] 「#{$data_skills[121].UK_name}」 is more effective. Uncumulative."
when 145   #信頼のルーン
  #[○] 契約の珠が増えやすくなる。このルーンの効果は重複しない。
  result[0] =  "Trust Rune"
  result[1] =  "[○] Contracting is made easier. Uncumulative."
when 146   #調理のルーン
  #[◇] クッキング時の調理技能が上がる。
  result[0] =  "Cooking Rune"
  result[1] =  "[◇] 「#{$data_skills[241].UK_name}」 is more skillful."
when 147   #節制のルーン
  #[◇] 空腹率が減少する。このルーンの効果は重複しない。
  result[0] =  "Frugal Rune"
  result[1] =  "[◇] Hunger rate is decreased. Uncumulative."
when 148   #美食のルーン
  #[◇] 精の献上を行うとＥＰとＶＰが全回復する。
  result[0] =  "Bountiful Rune"
  result[1] =  "[◇] Recover party's RP and VP after climax."
when 149   #暴食のルーン
  #[◇] ＥＰ最大値と空腹率が増加。このルーンの効果は重複しない。
  result[0] =  "Gluttony Rune"
  result[1] =  "[◇] Max EP and hunger rate increase. Uncumulative."
when 150   #淫紋のルーン
  #[☆] 非常に快感に弱くなるが、ＶＰが大幅に上がる。
  result[0] =  "Horny Seal"
  result[1] =  "[☆] Deal less pleasure, but VP increase."
when 152   #強引のルーン
  #[◇] 攻撃時レジスト（未失敗時）の矢印の最大数が６になる。
  result[0] =  "Forceful Ring"
  result[1] =  "[◇] When attacking,『Resist』 has 6 arrows at most."
when 153   #抵抗のルーン
  #[◇] 抵抗時レジスト（未抵抗時）の矢印の最大数が６になる。
  result[0] =  "Resistance Ring"
  result[1] =  "[◇] When defending,『Resist』 has 6 arrows at most."
when 160   #チェック
  #[◇] スキル「チェック」を習得する。
  result[0] =  "#{$data_skills[126].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[126].UK_name}」"
when 161   #ガード
  #[◇] スキル「ガード」を習得する。
  result[0] =  "#{$data_skills[145].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[145].UK_name}」"
when 162   #インデュア
  #[☆] スキル「インデュア」を習得する。
  result[0] =  "#{$data_skills[146].UK_name}"
  result[1] =  "[☆]Learn 「#{$data_skills[146].UK_name}」"
when 163   #リフレッシュ
  #[◇] スキル「リフレッシュ」を習得する。
  result[0] =  "#{$data_skills[125].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[125].UK_name}」"
when 168   #ファストレイド
  #[◇] スキル「ファストレイド」を習得する。
  result[0] =  "#{$data_skills[103].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[103].UK_name}」"
when 169   #トリックレイド
  #[◇] スキル「トリックレイド」を習得する。
  result[0] =  "#{$data_skills[104].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[104].UK_name}」"
when 170   #アピール
  #[◇] スキル「アピール」を習得する。
  result[0] =  "#{$data_skills[148].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[148].UK_name}」"
when 171   #プロヴォーク
  #[◇] スキル「プロヴォーク」を習得する。
  result[0] =  "#{$data_skills[149].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[149].UK_name}」"
when 172   #プレジャー
  #[◇] スキル「プレジャー」を習得する。
  result[0] =  "#{$data_skills[111].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[111].UK_name}」"
when 174   #焦燥
  #[◇] スキル「焦燥」を習得する。
  result[0] =  "#{$data_skills[599].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[599].UK_name}」"
when 175   #専心
  #[◇] スキル「専心」を習得する。
  result[0] =  "#{$data_skills[600].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[600].UK_name}」"
when 180   #ドロウネクター
  #[☆] スキル「ドロウネクター」を習得する。
  result[0] =  "#{$data_skills[688].UK_name}"
  result[1] =  "[☆]Learn 「#{$data_skills[688].UK_name}」"
when 181   #エンブレイス
  #[☆] スキル「エンブレイス」を習得する。
  result[0] =  "#{$data_skills[695].UK_name}"
  result[1] =  "[☆]Learn 「#{$data_skills[695].UK_name}」"
when 182   #エキサイトビュー
  #[☆] スキル「エキサイトビュー」を習得する。
  result[0] =  "#{$data_skills[684].UK_name}"
  result[1] =  "[☆]Learn 「#{$data_skills[684].UK_name}」"
when 190   #クッキング
  #[◇] スキル「クッキング」を習得する。
  result[0] =  "#{$data_skills[241].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[241].UK_name}」"
when 200   #イリスシード
  #[◇] スキル「イリスシード」を習得する。
  result[0] =  "#{$data_skills[161].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[161].UK_name}」"
when 201   #イリスペタル
  #[☆] スキル「イリスペタル」を習得する。
  result[0] =  "#{$data_skills[162].UK_name}"
  result[1] =  "[☆]Learn 「#{$data_skills[162].UK_name}」"
when 203   #ラナンブルム
  #[◇] スキル「ラナンブルム」を習得する。
  result[0] =  "#{$data_skills[171].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[171].UK_name}」"
when 204   #ラナンイーザ
  #[◇] スキル「ラナンイーザ」を習得する。
  result[0] =  "#{$data_skills[173].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[173].UK_name}」"
when 205   #ネリネブルム
  #[◇] スキル「ネリネブルム」を習得する。
  result[0] =  "#{$data_skills[175].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[175].UK_name}」"
when 206   #ネリネイーザ
  #[◇] スキル「ネリネイーザ」を習得する。
  result[0] =  "#{$data_skills[177].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[177].UK_name}」"
when 207   #エルダブルム
  #[◇] スキル「エルダブルム」を習得する。
  result[0] =  "#{$data_skills[179].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[179].UK_name}」"
when 208   #エルダイーザ
  #[◇] スキル「エルダイーザ」を習得する。
  result[0] =  "#{$data_skills[181].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[181].UK_name}」"
when 209   #サフラブルム
  #[◇] スキル「サフラブルム」を習得する。
  result[0] =  "#{$data_skills[183].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[183].UK_name}」"
when 210   #サフライーザ
  #[◇] スキル「サフライーザ」を習得する。
  result[0] =  "#{$data_skills[185].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[185].UK_name}」"
when 211   #コリオブルム
  #[◇] スキル「コリオブルム」を習得する。
  result[0] =  "#{$data_skills[187].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[187].UK_name}」"
when 212   #コリオイーザ
  #[◇] スキル「コリオイーザ」を習得する。
  result[0] =  "#{$data_skills[189].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[189].UK_name}」"
when 213   #アスタブルム
  #[◇] スキル「アスタブルム」を習得する。
  result[0] =  "#{$data_skills[191].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[191].UK_name}」"
when 214   #アスタイーザ
  #[◇] スキル「アスタイーザ」を習得する。
  result[0] =  "#{$data_skills[193].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[193].UK_name}」"
when 215   #ストレリブルム
  #[◇] スキル「ストレリブルム」を習得する。
  result[0] =  "#{$data_skills[195].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[195].UK_name}」"
when 216   #ストレリイーザ
  #[◇] スキル「ストレリイーザ」を習得する。
  result[0] =  "#{$data_skills[197].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[197].UK_name}」"
when 218   #チャーム
  #[◇] スキル「チャーム」を習得する。
  result[0] =  "#{$data_skills[200].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[200].UK_name}」"
when 219   #ラスト
  #[◇] スキル「ラスト」を習得する。
  result[0] =  "#{$data_skills[202].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[202].UK_name}」"
when 220   #フィルス
  #[◇] スキル「フィルス」を習得する。
  result[0] =  "#{$data_skills[204].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[204].UK_name}」"
when 221   #レザラジィ
  #[◇] スキル「レザラジィ」を習得する。
  result[0] =  "#{$data_skills[206].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[206].UK_name}」"
when 222   #テラー
  #[◇] スキル「テラー」を習得する。
  result[0] =  "#{$data_skills[208].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[208].UK_name}」"
when 223   #パラライズ
  #[◇] スキル「パラライズ」を習得する。
  result[0] =  "#{$data_skills[210].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[210].UK_name}」"
when 224   #ルーズ
  #[◇] スキル「ルーズ」を習得する。
  result[0] =  "#{$data_skills[212].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[212].UK_name}」"
when 226   #トリムルート
  #[◇] スキル「トリムルート」を習得する。
  result[0] =  "#{$data_skills[215].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[215].UK_name}」"
when 227   #トリムストーク
  #[◇] スキル「トリムストーク」を習得する。
  result[0] =  "#{$data_skills[216].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[216].UK_name}」"
when 228   #トリムヴァイン
  #[◇] スキル「トリムヴァイン」を習得する。
  result[0] =  "#{$data_skills[217].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[217].UK_name}」"
when 230   #ブルムカール
  #[◇] スキル「ブルムカール」を習得する。
  result[0] =  "#{$data_skills[219].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[219].UK_name}」"
when 231   #イーザカール
  #[◇] スキル「イーザカール」を習得する。
  result[0] =  "#{$data_skills[221].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[221].UK_name}」"
when 233   #ウォッシュフルード
  #[◇] スキル「ウォッシュフルード」を習得する。
  result[0] =  "#{$data_skills[224].UK_name}"
  result[1] =  "[◇]Learn 「#{$data_skills[224].UK_name}」"
when 250   #シャイニングレイジ
  #[★] スキル「シャイニングレイジ」を習得する。
  result[0] =  "#{$data_skills[239].UK_name}"
  result[1] =  "[★]Learn 「#{$data_skills[239].UK_name}」"
when 260   #【手際良い採取】
  #[○] 素質【手際良い採取】を習得する。
  result[0] =  "【#{$data_ability[240].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[240].UK_name}】"
when 261   #【目聡い採取】
  #[◇] 素質【目聡い採取】を習得する。
  result[0] =  "【#{$data_ability[241].UK_name}】"
  result[1] =  "[◇]Gain 【#{$data_ability[241].UK_name}】"
when 262   #【回復力】
  #[○] 素質【回復力】を習得する。
  result[0] =  "【#{$data_ability[212].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[212].UK_name}】"
when 263   #【溢れる回復力】
  #[◇] 素質【溢れる回復力】を習得する。
  result[0] =  "【#{$data_ability[213].UK_name}】"
  result[1] =  "[◇]Gain 【#{$data_ability[213].UK_name}】"
when 264   #【生命力】
  #[○] 素質【生命力】を習得する。
  result[0] =  "【#{$data_ability[214].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[214].UK_name}】"
when 265   #【溢れる生命力】
  #[◇] 素質【溢れる生命力】を習得する。
  result[0] =  "【#{$data_ability[215].UK_name}】"
  result[1] =  "[◇]Gain 【#{$data_ability[215].UK_name}】"
when 266   #【濡れやすい】
  #[○] 素質【濡れやすい】を習得する。
  result[0] =  "【#{$data_ability[106].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[106].UK_name}】"
when 267   #【濡れにくい】
  #[○] 素質【濡れにくい】を習得する。
  result[0] =  "【#{$data_ability[107].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[107].UK_name}】"
when 269   #【高揚】
  #[◇] 素質【高揚】を習得する。
  result[0] =  "【#{$data_ability[120].UK_name}】"
  result[1] =  "[◇]Gain 【#{$data_ability[120].UK_name}】"
when 270   #【沈着】
  #[◇] 素質【沈着】を習得する。
  result[0] =  "【#{$data_ability[121].UK_name}】"
  result[1] =  "[◇]Gain 【#{$data_ability[121].UK_name}】"
when 272   #【サディスト】
  #[☆] 素質【サディスト】を習得する。
  result[0] =  "【#{$data_ability[71].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[71].UK_name}】"
when 273   #【マゾヒスト】
  #[☆] 素質【マゾヒスト】を習得する。
  result[0] =  "【#{$data_ability[72].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[72].UK_name}】"
when 274   #【EPヒーリング】
  #[☆] 素質【EPヒーリング】を習得する。
  result[0] =  "【#{$data_ability[210].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[210].UK_name}】"
when 275   #【VPヒーリング】
  #[☆] 素質【VPヒーリング】を習得する。
  result[0] =  "【#{$data_ability[211].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[211].UK_name}】"
when 276   #【エクスタシーボム】
  #[☆] 素質【エクスタシーボム】を習得する。
  result[0] =  "【#{$data_ability[170].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[170].UK_name}】"
when 277   #【蒐集】
  #[☆] 素質【蒐集】を習得する。
  result[0] =  "【#{$data_ability[221].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[221].UK_name}】"
when 278   #【金運】
  #[☆] 素質【金運】を習得する。
  result[0] =  "【#{$data_ability[222].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[222].UK_name}】"
when 279   #【洞察力】
  #[☆] 素質【洞察力】を習得する。
  result[0] =  "【#{$data_ability[130].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[130].UK_name}】"
when 280   #【カリスマ】
  #[☆] 素質【カリスマ】を習得する。
  result[0] =  "【#{$data_ability[73].UK_name}】"
  result[1] =  "[☆]Gain 【#{$data_ability[73].UK_name}】"
when 281   #【最高の姿】
  #[★] 素質【最高の姿】を習得する。
  result[0] =  "【#{$data_ability[50].UK_name}】"
  result[1] =  "[★]Gain 【#{$data_ability[50].UK_name}】"
when 300   #【口が性感帯】
  #[○] 素質【口が性感帯】を習得する。
  result[0] =  "【#{$data_ability[19].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[19].UK_name}】"
when 301   #【胸が性感帯】
  #[○] 素質【胸が性感帯】を習得する。
  result[0] =  "【#{$data_ability[21].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[21].UK_name}】"
when 302   #【お尻が性感帯】
  #[○] 素質【お尻が性感帯】を習得する。
  result[0] =  "【#{$data_ability[23].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[23].UK_name}】"
when 303   #【陰核が性感帯】
  #[○] 素質【陰核が性感帯】を習得する。
  result[0] =  "【#{$data_ability[27].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[27].UK_name}】"
when 304   #【女陰が性感帯】
  #[○] 素質【女陰が性感帯】を習得する。
  result[0] =  "【#{$data_ability[29].UK_name}】"
  result[1] =  "[○]Gain 【#{$data_ability[29].UK_name}】"

  
  end
  return result
end

module RPG
  class Weapon
    attr_accessor :UK_name
    def UK_name
      return @name.split(/\//)[0] rescue text = "error: no weapon here anyway"
    end
  end
end


#***script safekeeping
=begin
 



def build_armors
  b = []
  a = ""
  for i in $data_armors
    if i != nil and i.name != nil
      oldname = i.name.split(/\//)[0]
      olddesc = i.description
      newdesc = olddesc
      newname = oldname
      skill = ""

#    if olddesc.split(/\【/)[1] != nil
#      newdesc = olddesc.split(/\【/)[1]
#      newdesc = olddesc.split(/\】/)[0]
#    else
#      newdesc = olddesc
#    end  

#synchronize 「skills」
    if olddesc.split(/\「/)[1] != nil
      prefix = olddesc[/\[(.*)\]/]
      prefix = "" if prefix == nil
      skillid = 0
      skill = olddesc.split(/\「/)[1]
      skill = skill.split(/\」/)[0]
      for j in $data_skills
        if j != nil and j.name != nil
          if skill == j.name.split(/\//)[0]
            skillid = j.id 
#            newname = j.UK_name if oldname == j.name.split(/\//)[0]
            newname = "\#{$data_skills[" + skillid.to_s + "].UK_name}" if oldname == j.name.split(/\//)[0]
          end
        end
      end
      newdesc = "Learn 「\#{$data_skills[" + skillid.to_s + "].UK_name}」"
      newdesc = prefix + newdesc
      newdesc = olddesc if skillid == 0
    end
    
#synchronize 【abilities】
    if olddesc.split(/\【/)[1] != nil
      prefix = olddesc[/\[(.*)\]/]
      prefix = "" if prefix == nil
      skill = olddesc.split(/\【/)[1]
      skill = skill.split(/\】/)[0]
      n = $data_ability.search(0, skill)
      if n.is_a?(Numeric)
        #p $data_ability[n].UK_name rescue p n
         if oldname[$data_ability[n].name] == $data_ability[n].name
          newname = "【\#{$data_ability[" + n.to_s + "].UK_name}】"
         end
#         newname = "【#{$data_ability[n].UK_name}】" if oldname[$data_ability[n].name] == $data_ability[n].name
         newdesc = "Gain 【\#{$data_ability[" + n.to_s + "].UK_name}】"
         newdesc = prefix + newdesc
# note about '$data_ability.search':
# "ＥＰヒーリング" (ability 210) does not match w/ "EPヒーリング"
# "ＶＰヒーリング" (ability 211) does not match w/ "VPヒーリング"
      end

   
    end

    
      if oldname!= "" and oldname!= nil and oldname["■"] != "■"
        a = "when " + i.id.to_s + "   \#" + oldname
          b.push(a)
        a = "  \#" + olddesc
          b.push(a)
        a = "  result[0] =  \"" + newname + "\""
          b.push(a)
        a = "  result[1] =  \"" + newdesc + "\""
          b.push(a)
      end
    end
  end
    open("zzz.txt","a+") do |log|
    log.puts b
    end
end
=end  
