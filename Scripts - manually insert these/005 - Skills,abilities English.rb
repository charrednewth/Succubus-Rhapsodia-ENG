module RPG
  
  class Skill
    attr_accessor :UK_name
    def UK_name
      
      case @id
      
#■Actor base skills
when 2   #服を脱がす
   return "Strip"
when 4   #服を脱ぐ
   return "Undress"
when 5   #シェルマッチ
   return "Scissors"
when 6   #インサート
   return "Insert"
when 7   #オーラルインサート
   return "Oral Insert"
when 8   #バックインサート
   return "Anal Insert"
when 9   #トーク
   return "Talk"
when 10   #トークレジスト
   return "Sweet Talk"
when 13   #アクセプト
   return "Accept"
when 14   #オーラルアクセプト
   return "Oral Accept"
when 15   #バックアクセプト
   return "Anal Accept"
when 16   #ドロウネクター
   return "Nectar Draw"
when 17   #エンブレイス
   return "Embrace"
when 18   #エキサイトビュー
   return "Facesit"
when 20   #ディルドインサート
   return "Dildo Insert"
when 21   #ディルドインマウス
   return "Oral Dildo Insert"
when 22   #ディルドインバック
   return "Anal Dildo Insert"
when 25   #デモンズアブソーブ
   return "Feeler Suck-in"
when 26   #デモンズドロウ
   return "Feeler Insert"
when 28   #インタラプト
   return "Interrupt"
when 29   #リリース
   return "Release"
when 30   #ストラグル
   return "Struggle"
   
   #■♂techniques
when 32   #スウィング
   return "Thrust"
when 33   #ヘヴィスウィング
   return "Piston"
when 34   #ディルドスウィング
   return "Strapon Thrust"
when 35   #ラビングピストン
   return "Chest Frottage"
when 37   #オーラルピストン
   return "Oral Piston"
when 38   #オーラルディルド
   return "Oral Dildo"
when 41   #バックピストン
   return "Anal Thrust"
when 42   #バックディルド
   return "Anal Dildo"

   #■♀techniques
when 47   #グラインド
   return "Grind"
when 48   #ハードグラインド
   return "Wild Grind"
when 50   #タイトクロッチ
   return "Tighten"
when 52   #スクラッチ
   return "Tribadism"
when 53   #ハードスクラッチ
   return "Rubdown"
when 55   #ライディング
   return "Facerub"
when 56   #プッシング
   return "Facepress"
   
   #■Oral techniques

when 58   #スロート
   return "Blowjob"
when 59   #ディープスロート
   return "Deepthroat"
when 60   #ドロウスロート
   return "Throat Draw"
when 61   #サック
   return "Lick"
   
   #■Anal techniques
   
when 64   #スクイーズ
   return "Squeeze"
when 67   #タイトホール
   return "Tighten"
   
   #■Hold counters
      
when 71   #リック
   return "Lick Offering"
when 72   #リック
   return "Clean Offering"
when 73   #ミスチーフ
   return "Tickle"
when 74   #リアカレス
   return "Caress"
when 79   #レックレス
   return "Squirm"
   
   #■Actor attacks

when 81   #キッス
   return "Kiss"
when 82   #バスト
   return "Chest"
when 83   #ヒップ
   return "Hips"
when 84   #クロッチ
   return "Crotch"
when 85   #カレス
   return "Caress"
   
   #■Partner attacks

when 87   #キッス
   return "Kiss"
when 91   #ツーパフ
   return "Chest Press"
when 101   #ティーズ
   return "Tease"
when 102   #ミスチーフ（没）
   return "Tease Out"
when 103   #ファストレイド
   return "Quick Raid"
when 104   #トリックレイド
   return "Trick Raid"
when 106   #ディバウアー
   return "Devour"
when 111   #プレジャー
   return "Self-Pleasure"
   
   #■Actor support techniques

when 121   #ブレス
   return "Breath"
when 122   #カームブレス
   return "Calm Breath"
when 123   #ウェイト
   return "Wait"
when 124   #イントラスト
   return "Entrust"
when 125   #リフレッシュ
   return "Refresh"
when 126   #チェック
   return "Check"
when 127   #アナライズ
   return "Analyze"
when 135   #ストリップ
   return "Team Strip"
when 140   #テンプテーション
   return "Temptation"
when 145   #ガード
   return "Guard"
when 146   #インデュア
   return "Endure"
when 148   #アピール
   return "Appeal"
when 149   #プロヴォーク
   return "Provoke"

   #■Succubi common magic

when 161   #イリスシード
   return "Iris Seed"
when 162   #イリスペタル
   return "Iris Petal"
when 163   #イリスフラウ
   return "Iris Aura "
when 164   #イリスコロナ
   return "Iris Corona"
when 165   #イリスシード・アルダ
   return "Iris Seed - All "
when 166   #イリスペタル・アルダ
   return "Iris Petal - All"
when 167   #イリスフラウ・アルダ
   return "Iris Aura - All "
when 171   #ラナンブルム
   return "Lanan Bloom"
when 172   #ラナンブルム・アルダ
   return "Lanan Bloom - All"
when 173   #ラナンイーザ
   return "Lananize"
when 174   #ラナンイーザ・アルダ
   return "Lananize - All"
when 175   #ネリネブルム
   return "Neline Bloom"
when 176   #ネリネブルム・アルダ
   return "Neline Bloom - All"
when 177   #ネリネイーザ
   return "Nelinaze"
when 178   #ネリネイーザ・アルダ
   return "Nelinaze - All"
when 179   #エルダブルム
   return "Elder Bloom"
when 180   #エルダブルム・アルダ
   return "Elder Bloom - All"
when 181   #エルダイーザ
   return "Elderize"
when 182   #エルダイーザ・アルダ
   return "Elderize - All"
when 183   #サフラブルム
   return "Saffron Bloom"
when 184   #サフラブルム・アルダ
   return "Saffron Bloom - All"
when 185   #サフライーザ
   return "Saffrize"
when 186   #サフライーザ・アルダ
   return "Saffrize - All"
when 187   #コリオブルム
   return "Kurio Bloom"
when 188   #コリオブルム・アルダ
   return "Kurio Bloom - All"
when 189   #コリオイーザ
   return "Kuriolize "
when 190   #コリオイーザ・アルダ
   return "Kuriolize - All "
when 191   #アスタブルム
   return "Aster Bloom"
when 192   #アスタブルム・アルダ
   return "Aster Bloom - All "
when 193   #アスタイーザ
   return "Asterize"
when 194   #アスタイーザ・アルダ
   return "Asterize - All"
when 195   #ストレリブルム
   return "Storm Bloom "
when 196   #ストレリブルム・アルダ
   return "Storm Bloom - All "
when 197   #ストレリイーザ
   return "Storm Wither"
when 198   #ストレリイーザ・アルダ
   return "Storm Wither - All"
when 200   #チャーム
   return "Charm"
when 201   #ペイド・チャーム
   return "Mass Charm"
when 202   #ラスト
   return "Lust"
when 203   #ペイド・ラスト
   return "Mass Lust "
when 204   #フィルス
   return "Flirt "
when 205   #ペイド・フィルス
   return "Mass Flirt"
when 206   #レザラジィ
   return "Lethargy"
when 207   #ペイド・レザラジィ
   return "Mass Lethargy "
when 208   #テラー
   return "Terror"
when 209   #ペイド・テラー
   return "Mass Terror "
when 210   #パラライズ
   return "Paralyze"
when 211   #ペイド・パラライズ
   return "Mass Paralyze "
when 212   #ルーズ
   return "Trance"
when 213   #ペイド・ルーズ
   return "Mass Trance "
when 215   #トリムルート
   return "Treme Root"
when 216   #トリムストーク
   return "Treme Stalk "
when 217   #トリムヴァイン
   return "Treme Stem"
when 219   #ブルムカール
   return "Bloom Call"
when 220   #ブルムカール・アルダ
   return "Bloom Call - All"
when 221   #イーザカール
   return "Lyzing Call "
when 222   #イーザカール・アルダ
   return "Lyzing Call - All "
when 224   #ウォッシュフルード
   return "Cleansing Waters"
when 239   #シャイニングレイジ
   return "Shining Rage"

   #■■Map skills■■
   
when 241   #クッキング
   return "Cook"
when 248   #サーヴァントコール
   return "Call Servant"
when 249   #ランクアップ
   return "Rank Up"
   
   #■Enemy basic techniques

when 251   #服を脱ぐ
   return "Undress"
when 252   #ストリップ
   return "Strip"
when 253   #ショウダウン
   return "Showdown"
when 257   #服を脱がす
   return "Expose"
when 260   #品定め
   return "Check Out"
when 261   #手ほどき   
   return "Foreplay"   #sounds much cleaere than "setup"
when 262   #甘やかし
   return "Indulge"
when 263   #スパンク
   return "Spank"
when 275   #やけくそ三連撃
   return "Desperation 3-Ways"
when 276   #ヒーローキリング
   return "Hero Killer"
when 277   #メテオエクリプス
   return "Meteo Rain"
when 278   #ワールドブレイカー
   return "World Breaker"
when 279   #スキル決め直し
   return "Pick Again"
   
   #■Random basic attacks■

when 281   #【RD】キッス
   return "Kiss"
when 282   #【RD】手攻め
   return "Attack w/ hand"
when 283   #【RD】口攻め
   return "Attack w/ mouth"
when 284   #【RD】胸攻め
   return "Attack w/ chest"
when 285   #【RD】アソコ攻め
   return "Attack w/ pussy"
when 286   #【RD】足攻め
   return "Attack w/ feet"
when 287   #【RD】愛撫
   return "Caress"
when 288   #【RD】尻尾攻め
   return "Tail attack"
when 289   #【RD】道具攻め
   return "Tool attack"
when 290   #【RD】特殊身体攻め
   return "Special anatomy attack"
when 292   #【RD】ホールド技
   return "Hold attack"
when 293   #【RD】自分ホールド中の攻め
   return "Attack while held"
when 294   #【RD】味方ホールド中の援護
   return "Defend held friend"
when 296   #【RD】コンフューズ
   return "Confused"
when 297   #フィアー
   return "Fear"
when 298   #フリーアクション
   return "Free Action"
when 299   #エモーション
   return "Emotion"

###   
# note: from here onwards, only including skills with element 14 (name shows in battle)
###
   #◇Special Handiworks◇
   
when 359   #セットサークル
   return "Set Circle"
when 360   #コールドタッチ
   return "Cold Touch"
when 361   #サディストカレス
   return "Touch of Sadism"
when 362   #プライスオブハレム
   return "Please Harem"    #sounds more logical
when 363   #プライスオブシナー
   return "Bushin Pleasure"
when 364   #ペルソナブレイク
   return "Persona Break"
when 365   #キャストエントリー
   return "Caster Gate"
   
   #◇Special mouthworks◇
   
when 415   #ハウリング
   return "Howling"
when 416   #魔性の口付け
   return "Devil's Kiss"
when 417   #祝福の口付け
   return "Blessing Kiss"
when 418   #スイートウィスパー
   return "Sweet Whisper"
when 419   #アンラッキーロア
   return "Dejected Love"
when 420   #アンラッキーロア
   return "Dejected Love"
when 421   #懺悔なさい
   return "Confess"
   
   #◆special physicals◆
   
when 586   #レストレーション
   return "Restoration"
when 587   #スライミーリキッド
   return "Slimy Fluids"
when 588   #激励
   return "Cheer"
when 589   #バッドスポア
   return "Noxious Spores"
when 590   #スポアクラウド
   return "Spore Cloud"
when 591   #アイヴィクローズ
   return "Entangle"
when 592   #デモンズクローズ
   return "Demon Wrap"
when 599   #焦燥   #Gives STR+30%, AGI+30%, DEX-30%. It's about getting somewhat angry, no?
   return "Haste"
when 600   #専心
   return "Concentrate"
when 601   #本能の呼び覚まし
   return "Primal Instincts"
when 602   #自信過剰
   return "Overconfidence"
   
   #◆incenses◆
   
when 611   #リラックスタイム
   return "Relaxation Time"
when 612   #スイートアロマ
   return "Sweet Aroma"
when 613   #パッションビート
   return "Passion Beats"
when 614   #マイルドパフューム
   return "Mild Perfume"
when 615   #レッドカーペット
   return "Red Carpet"
when 618   #ストレンジスポア
   return "Strange Spores"
when 619   #ウィークスポア
   return "Weakening Spores"
when 620   #威迫
   return "Intimidate"
when 621   #心掴み
   return "Heart Grasp"
when 622   #全ては現
   return "One with the Flow"
when 625   #ラブフレグランス
   return "Love Fragrance"
when 626   #スライムフィールド
   return "Slime Field"
   
   #◆Defensive skills◆
   
when 631   #激励を受ける
   return "Cheer up"
   
   #●Holding skills - base●
   
when 682   #アクセプト
   return "Accept"
when 683   #シェルマッチ
   return "Scissors"
when 684   #エキサイトビュー
   return "Facesit"
when 687   #オーラルアクセプト I'll try and stick with Accept / Insert when applicable
   return "Oral Accept"  #@target_battlers[0].hold.penis.battler == nil and @target_battlers[0].insertable_nude?
when 688   #ドロウネクター
   return "Oral Pin"
when 689   #フラッタナイズ
   return "Lock Lips"
when 691   #バックアクセプト #maybe it's just me but I find pitch/catch very vulgar and belittling... 
   return "Anal Accept"      #Just my own understanding, though, I'm not US.
when 692   #インモラルビュー
   return "Dark Side"    #cool :) 
when 695   #エンブレイス
   return "Embrace"
when 696   #エキシビジョン / hold legs in place
   return "Spread and Open" #"Exhibition" should be a good, accurate compromise
when 697   #ペリスコープ / Paizuri bearhold
   return "Paizuri Lock" #yellow submarine
when 698   #ヘブンリーフィール / Puff-puff headhold
   return "Heaven's Feel"
when 700   #インサート
   return "Insert"
when 701   #オーラルインサート
   return "Oral Insert"
when 702   #バックインサート
   return "Backdoor Insert"
when 705   #インサートテイル
   return "Tail Insert"
when 706   #マウスインテイル
   return "Oral Tail Insert"
when 707   #バックインテイル
   return "Anal Tail Insert"
when 710   #ディルドインサート
   return "Dildo Insert"
when 711   #ディルドインマウス
   return "Oral Dildo Insert"
when 712   #ディルドインバック
   return "Anal Dildo Insert"
when 715   #アイヴィクローズ
   return "Entangle"
when 716   #デモンズクローズ
   return "Demon Wrap"
when 717   #デモンズアブソーブ
   return "Feeler Suck-in"
when 718   #デモンズドロウ
   return "Feeler Insert"
when 719   #インサルトツリー
   return "Tentacle Wrap"
when 772   #エナジードレイン
   return "Energy Drain"
when 773   #レベルドレイン
   return "Level Drain"
when 971   #もがく
   return "Struggle"
   
      end

      text = @name.split(/\//)[0] rescue text = "error: no valid skill name"
#      text += " *TODO*" if text != nil
      return text
    end
  end
end

