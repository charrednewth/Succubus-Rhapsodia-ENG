module RPG
  
  class Skill
    attr_accessor :UK_name
    attr_accessor :UK_description
    def UK_name
      text = skill_engbase(@id)[0]
      return text
    end
    def UK_description
      text = skill_engbase(@id)[1]
      return text
    end

  end
end


def skill_engbase(id)
    result = ["skill #{id}","none yet"]
  case id
  
  #actor base skills
  
when 2,252   #服を脱がす
    #[レジスト] 相手の服を脱がせる。
   result[0] = "Strip"
   result[1] = "『Resist』Attempt to strip an opponent."
when 4,251   #服を脱ぐ
    #自分の服を脱ぐ。
   result[0] = "Undress"
   result[1] = "Take off your own clothes."
when 5,683   #シェルマッチ
    #[レジスト][♀→♀] ♀同士を密着させる。[条件：双方裸]
   result[0] = "Scissors"
   result[1] = "『Resist』『♀→♀』Attempt to initiate tribadism.『Req.both Nude』"
when 6,700   #インサート
    #[レジスト] [♂→♀] 挿入する。[条件：双方裸]
   result[0] = "Insert"
   result[1] = "『Resist』『♂→♀』Put it in ♀.『Req.both Nude』"
when 7,701   #オーラルインサート
    #[レジスト] [♂→口] 咥えさせる。[条件：自分裸]
   result[0] = "Oral Insert"
   result[1] = "『Resist』『♂→Mouth』Put it in her mouth.『Req.self Nude』"
when 8,702   #バックインサート
    #[レジスト] [♂→尻] 菊座に挿入する。[条件：双方裸]
   result[0] = "Anal Insert"
   result[1] = "『Resist』『♂→Ass』Put it in her ass.『Req.both Nude』"
when 9   #トーク
    #相手に話しかける。
   result[0] = "Talk"
   result[1] = "Talk with target."
when 10   #トークレジスト
    #アクターから仕掛けるレジスト。成功すると肯定。
   result[0] = "Sweet Talk"
   result[1] = "Talk with target. Success depends on resist check."
when 13,682   #アクセプト
    #[レジスト] [♀→♂] 挿入する。[条件：双方裸]
   result[0] = "Accept"
   result[1] = "『Resist』『♀→♂』Take it in ♀.『Req.both Nude』"
when 14,687   #オーラルアクセプト
    #[レジスト] [口→♂] 咥える。[条件：相手裸]
   result[0] = "Oral Accept"
   result[1] = "『Resist』『Mouth→♂』Initiate blowjob.『Req.target Nude』"
when 15,691   #バックアクセプト
    #[レジスト] [尻→♂] 菊座に挿入する。[条件：双方裸]
   result[0] = "Anal Accept"
   result[1] = "『Resist』『Ass→♂』Take it in the ass.『Req.both Nude』"
when 16,688   #ドロウネクター
    #[レジスト] [口→♀] アソコを吸う。[条件：相手裸]
   result[0] = "Nectar Draw"
   result[1] = "『Resist』『Mouth→♀』Initiate cunnilingus.『Req.target Nude』"
when 17,695   #エンブレイス
    #[レジスト] [→体] 密着する。
   result[0] = "Embrace"
   result[1] = "『Resist』『→Body』Hug target tight."
when 18,684   #エキサイトビュー
    #[レジスト] [♀→口] 相手の顔に騎乗する。
   result[0] = "Facesit"
   result[1] = "『Resist』『♀→Mouth』Straddle target's face."
when 20   #ディルドインサート
    #[レジスト] [張子→♀] ディルドを挿入する。[条件：双方裸]
   result[0] = "Dildo Insert"
   result[1] = "『Resist』『Strapon→♀』Put it in ♀.『Req.both Nude』"
when 21   #ディルドインマウス
    #[レジスト] [張子→口] ディルドを口に挿入する。[条件：自分裸]
   result[0] = "Oral Dildo Insert"
   result[1] = "『Resist』『Strapon→Mouth』Put it in her mouth.『Req.self Nude』"
when 22   #ディルドインバック
    #[レジスト] [張子→尻] ディルドを菊座に挿入する。[条件：双方裸]
   result[0] = "Anal Dildo Insert"
   result[1] = "『Resist』『Strapon→Ass』Put it in her ass.『Req.both Nude』"
when 25,717   #デモンズアブソーブ
    #[レジスト] [触手→♂] 触手で♂を吸う。
   result[0] = "Feeler Suck-in"
   result[1] = "『Resist』『Feeler→♂』Suck in ♂ in an appendage."
when 26,718   #デモンズドロウ
    #[レジスト] [触手→♀] 触手で♀を吸う。 / might be a 'nectar draw' type? TODO:check dialog
   result[0] = "Feeler Insert"
   result[1] = "『Resist』『Feeler→♀』Insert appendage in ♀."
when 28   #インタラプト
    #[レジスト] 対象のホールド妨害を試みる [最遅行動]
   result[0] = "Interrupt"
   result[1] = "『Resist』Attempt to help an ally out of a hold.『Disrupt』"
when 29   #リリース
    #[レジスト] 対象とのホールドを解除を試みる [最遅行動]
   result[0] = "Release"
   result[1] = "『Resist』Attempt to break free from a hold.『Disrupt』"
when 30   #ストラグル
    #[レジスト] [ホールド解除] 一度に全員とのホールド解除を試みる
   result[0] = "Struggle"
   result[1] = "『Resist』『Disrupt』Attempt to break free from all holds."
when 32   #スウィング
    #[×××] 腰を振る。  / "waist shaking" doesn't sound great
   result[0] = "Thrust" 
   result[1] = "『×××』In and out."
when 33   #ヘヴィスウィング
    #[×××] 強く腰を振る。[条件：インサート(LvMAX)][ターン中ガード]
   result[0] = "Piston"
   result[1] = "『×××』Heavy thrusts.『Req.Insert(LvMAX)』『+:Guard』"
when 34   #ディルドスウィング
    #[×××] 腰を振る。
   result[0] = "Strapon Thrust"
   result[1] = "『×××』In and out."
when 35   #ラビングピストン
    #[♂→胸] 擦り付ける。[追加：スタン・欲情]
   result[0] = "Chest Frottage"
   result[1] = "『♂→Tits』Rub back her chest.『Adds #{$data_states[16].UK_name},#{$data_states[35].UK_name}』"
when 37   #オーラルピストン
    #[♂→口] 口を犯す。 / TODO: better wording
   result[0] = "Oral Piston"
   result[1] = "『♂→Mouth』Violate her throat."
when 38   #オーラルディルド
    #[♂→口] 口を犯す。 / TODO: better wording
   result[0] = "Oral Dildo"
   result[1] = "『♂→Mouth』Violate her throat."
when 41   #バックピストン
    #[×××] 菊座を犯す。相手の行動を阻害しやすいが・・・
   result[0] = "Anal Thrust"
   result[1] = "『×××』Ass pumping. Can interrupt target's actions."
when 42   #バックディルド
    #[×××] 菊座を犯す。相手の行動を阻害しやすいが・・・
   result[0] = "Anal Dildo"
   result[1] = "『×××』Ass pumping. Can interrupt target's actions."
when 47   #グラインド
    #[×××] 腰を振る。挿入していないと使用できない。
   result[0] = "Grind"
   result[1] = "『×××』Grind on it. Must be inserted."
when 48   #ハードグラインド
    #[×××] 激しく腰を振る。挿入していないと使用できない。
   result[0] = "Wild Grind"
   result[1] = "『×××』Grind hard on it. Must be inserted."
when 50   #タイトクロッチ
    #[×××] 脚を閉めて動きを緩める。挿入していないと使用できない。
   result[0] = "Tighten"
   result[1] = "『×××』Close your leg and tighten your grip. Must be inserted."
when 52   #スクラッチ
    #[♀→♀] 局部を擦り合わせる。
   result[0] = "Tribadism"
   result[1] = "『♀→♀』Rub hers with your own."
when 53   #ハードスクラッチ
    #[×××] 局部を強く擦り合わせる。[条件：シェルマッチ(LvMAX)]
   result[0] = "Rubdown"
   result[1] = "『×××』Strongly rub hers with your own.『Req.Tribadism(LvMAX)』"
when 55   #ライディング
    #[♀→口] 腰を振る。[追加：欲情]
   result[0] = "Facerub"
   result[1] = "『♀→Mouth』Rubs it in on her face.『Adds #{$data_states[35].UK_name}』"
when 56   #プッシング
    #[♀→口] 押し付ける。[追加：欲情] / TODO: check if it's really the 'nectar draw' counter
   result[0] = "Facepress"
   result[1] = "『♀→Mouth』Pull her face closer in.『Adds #{$data_states[35].UK_name}』"
when 58   #スロート
    #[口→♂] しゃぶる。
   result[0] = "Blowjob"
   result[1] = "『Mouth→♂』Fellatio."
when 59   #ディープスロート
    #[口→♂] 大胆にしゃぶる。[条件：オーラルインサート]
   result[0] = "Deepthroat"
   result[1] = "『Mouth→♂』Suck it.『Req.Oral Insert』"
when 60   #ドロウスロート
    #[口→♂] 控えめにしゃぶる。[条件：オーラルインサート]
   result[0] = "Throat Draw"
   result[1] = "『Mouth→♂』Suck it hard.『Req.Oral Insert』"
when 61   #サック
    #[口→♀] ♀を吸う。
   result[0] = "Lick"
   result[1] = "『Mouth→♀』Lick her ♀."
when 64   #スクイーズ
    #[×××] 締める。[条件：バックインサート]
   result[0] = "Squeeze"
   result[1] = "『×××』Tighten your walls.『Req.Anal Insert』"
when 67   #タイトホール
    #[×××] 締める。[条件：バックインサート]
   result[0] = "Tighten"
   result[1] = "『×××』Tighten your walls.『Req.Anal Insert』"
when 71   #リック
    #[口→♀] 騎乗している相手のアソコを攻める。[追加：潤滑アップ] / Keeping 'Lube' since it's a multiple-states business
   result[0] = "Lick Offering"
   result[1] = "『Mouth→♀』Lick back target's ♀.『Adds Lube』"
when 72   #リック
    #[口→尻] 騎乗している相手の菊座を攻める。[追加：潤滑アップ]
   result[0] = "Clean Offering"
   result[1] = "『Mouth→Ass』Lick back target's ass.『Adds Lube』"
when 73   #ミスチーフ
    #[→全身] 密着した相手を愛撫する。[SSしやすい]
   result[0] = "Tickle"
   result[1] = "『→Body』Tickle back the target.『SS rate↑』"
when 74   #リアカレス
    #[→全身] 密着した相手を愛撫する。
   result[0] = "Caress"
   result[1] = "『→Body』Caress back the target."
when 79   #レックレス
    #抵抗し、ホールドレベルを下げる。[追加：スタン][先制]
   result[0] = "Squirm"
   result[1] = "Attempt to break free the hold.『Adds #{$data_states[16].UK_name}』『1st strike』"
when 81,87   #キッス
    #[口→口] キスで攻める。[追加：ムードアップ]
   result[0] = "Kiss"
   result[1] = "『Mouth→Mouth』Kissing attack.『Mood +』"
when 82   #バスト
    #[手/口→胸] 胸を攻める。
   result[0] = "Chest"
   result[1] = "『Hand/Mouth→Tits』Breasts attack."
when 83   #ヒップ
    #[手/口→尻] お尻を攻める。[追加：ディレイ]
   result[0] = "Hips"
   result[1] = "『Hand/Mouth→Ass』Buttocks attack.『Adds #{$data_states[13].UK_name}』"
when 84   #クロッチ
    #[手/口→♀] アソコを攻める。[相手着衣↓][追加：潤滑アップ]
   result[0] = "Crotch"
   result[1] = "『Hand/Mouth→♀』Vagina attack.『Clothing↓』『Adds Lube』"
when 85   #カレス
    #[→全身] 全身を優しく愛撫する。[追加：感度アップ] / keeping "sensitivity" as a noun != #{$data_states[45].UK_name})
   result[0] = "Caress"
   result[1] = "『→Body』Gently caress the whole body.『Sensitivity↑』"
when 91   #ツーパフ
    #[胸→口] 胸で相手の顔を挟み込む。[自分着衣↓][追加：恍惚]
   result[0] = "Chest Press"
   result[1] = "『Tits→Mouth』Enclose her face between.『Self Clothing↓』『Adds #{$data_states[34].UK_name}』"
when 101   #ティーズ
    #[手/口→体] 相手を焦らす。[追加：感度アップ][焦らし] TODO: check 'tease' effect consistency
   result[0] = "Tease"
   result[1] = "『Hand/Mouth→Body』Tease the target.『Sensitivity↑』『Teaser』"
when 102   #ミスチーフ（没）
    #[手/口→体] ホールド状態の相手を効果的に焦らす。[焦らし] TODO: check when usable 
   result[0] = "Tease Out"
   result[1] = "『Hand/Mouth→Body』Tease an held opponent.『Teaser』"
when 103   #ファストレイド
    #[手/口→体] 素早く攻める。[先制行動]
   result[0] = "Quick Raid"
   result[1] = "『Hand/Mouth→Body』Quick attack.『1st Strike』"
when 104   #トリックレイド
    #[手/口→体] 不意打ちする。チェック済みの相手へのSS率が高い。 TODO: check what are +/- SS rate conditions
   result[0] = "Trick Raid"
   result[1] = "『Hand/Mouth→Body』Surprise attack. SS rate↑ on cheked-out targets."
when 106   #ディバウアー
    #[手/口→体] 激しく攻める。[条件：ムード30]
   result[0] = "Devour"
   result[1] = "『Hand/Mouth→Body』Strong attack.『Req.Mood 30+』"
when 111   #プレジャー
    #[手→]自分を慰め、高揚させる。   TODO: will probably change 高揚 state to 'horny' (merry, currently)
   result[0] = "Self-Pleasure"
   result[1] = "『Hand→』Attack self. Become #{$data_states[41].UK_name}."
when 121   #ブレス
    #ＥＰを小回復する。
   result[0] = "Breath"
   result[1] = "Recover some EP."
when 122   #カームブレス
    #ＥＰを中回復する。
   result[0] = "Calm Breath"
   result[1] = "Recover more EP."
when 123   #ウェイト
    #ＥＰを微量回復する。
   result[0] = "Wait"
   result[1] = "Recover a little EP."
when 124   #イントラスト
    #暫くの間無抵抗になり、夢魔たちに好きに任せる。
   result[0] = "Entrust"
   result[1] = "Stop resisting and let them have their way."
when 125   #リフレッシュ
    #自身に影響のある効果を全て解除する。
   result[0] = "Refresh"
   result[1] = "Cures abnormal statuses."
when 126   #チェック
    #夢魔の性格、性感帯を調べる。
   result[0] = "Check"
   result[1] = "Check personality and weak points."
when 127   #アナライズ
    #夢魔の性格、性感帯、ＥＰとＶＰの最大値を調べる。
   result[0] = "Analyze"
   result[1] = "Check personality, weak points and EP/VP."
when 135   #ストリップ
    #パートナーの服を脱がせる。
   result[0] = "Team Strip"
   result[1] = "Strip an ally."
when 140   #テンプテーション
    #相手を中確率で恍惚させる。
   result[0] = "Temptation"
   result[1] = "Chance to inflict #{$data_states[34].UK_name}."
when 145   #ガード
    #このターン、攻撃から身を守る。[快感減衰][耐性アップ] *TODO*: check 耐性 consistency 
   result[0] = "Guard"
   result[1] = "Protect one's body.『Pleasure↓』『Endurance↑』"
when 146   #インデュア
    #このターン、攻撃から堅固に身を守る。[快感激減][耐性アップ]
   result[0] = "Endure"
   result[1] = "Reduce incoming pleasure.『Pleasure↓』『Endurance↑』"
when 148   #アピール
    #このターン、自分が状態異常でなければ自分を狙わせる。 TODO:check consistency (state resist, or weakness?)
   result[0] = "Appeal"
   result[1] = "For 1 turn, taunt enemies to attack you."
when 149   #プロヴォーク
    #４ターンの間、自分が状態異常でなければ自分を狙わせる。
   result[0] = "Provoke"
   result[1] = "For 4 turns, taunt enemies to attack you."
when 161   #イリスシード
    #[魔法] 味方１人のＥＰを小回復させる。
   result[0] = "Iris Seed"
   result[1] = "『Magic』Target recovers a little EP."
when 162   #イリスペタル
    #[魔法] 味方１人のＥＰを中回復させる。
   result[0] = "Iris Petal"
   result[1] = "『Magic』Target recovers some EP."
when 163   #イリスフラウ
    #[魔法] 味方１人のＥＰを大回復させる。
   result[0] = "Iris Aura "
   result[1] = "『Magic』Target recovers more EP."
when 164   #イリスコロナ
    #[魔法] 味方１人のＥＰを超回復させる。
   result[0] = "Iris Corona"
   result[1] = "『Magic』Target recovers much EP."
when 165   #イリスシード・アルダ
    #[魔法] 味方全体のＥＰを小回復させる。
   result[0] = "Iris Seed - All "
   result[1] = "『Magic』Party recovers a little EP."
when 166   #イリスペタル・アルダ
    #[魔法] 味方全体のＥＰを中回復させる。
   result[0] = "Iris Petal - All"
   result[1] = "『Magic』Target recovers some EP."
when 167   #イリスフラウ・アルダ
    #[魔法] 味方全体のＥＰを大回復させる。
   result[0] = "Iris Aura - All "
   result[1] = "『Magic』Target recovers more EP."
when 171   #ラナンブルム
    #[魔法] 味方１人の魅力を強める。   *TODO* check base stats consistency for ↓↑
   result[0] = "Lanan Bloom"
   result[1] = "『Magic』Charm↑ for 1 ally."
when 172   #ラナンブルム・アルダ
    #[魔法] 味方全員の魅力を強める。
   result[0] = "Lanan Bloom - All"
   result[1] = "『Magic』Charm↑ for party."
when 173   #ラナンイーザ
    #[魔法] 敵１人の魅力を弱める。
   result[0] = "Lananize"
   result[1] = "『Magic』Charm↓ for 1 enemy."
when 174   #ラナンイーザ・アルダ
    #[魔法] 敵全員の魅力を弱める。
   result[0] = "Lananize - All"
   result[1] = "『Magic』Charm↓ for all enemies."
when 175   #ネリネブルム
    #[魔法] 味方１人の忍耐を強める。
   result[0] = "Neline Bloom"
   result[1] = "『Magic』Endurance↑ for 1 ally."
when 176   #ネリネブルム・アルダ
    #[魔法] 味方全員の忍耐を強める。
   result[0] = "Neline Bloom - All"
   result[1] = "『Magic』Endurance↑ for party."
when 177   #ネリネイーザ
    #[魔法] 敵１人の忍耐を弱める。
   result[0] = "Nelinaze"
   result[1] = "『Magic』Endurance↓ for 1 enemy."
when 178   #ネリネイーザ・アルダ
    #[魔法] 敵全員の忍耐を弱める。
   result[0] = "Nelinaze - All"
   result[1] = "『Magic』Endurance↓ for all enemies."
when 179   #エルダブルム
    #[魔法] 味方１人の精力を強める。
   result[0] = "Elder Bloom"
   result[1] = "『Magic』Vigor↑ for 1 ally."
when 180   #エルダブルム・アルダ
    #[魔法] 味方全員の精力を強める。
   result[0] = "Elder Bloom - All"
   result[1] = "『Magic』Vigor↑ for party."
when 181   #エルダイーザ
    #[魔法] 敵１人の精力を弱める。
   result[0] = "Elderize"
   result[1] = "『Magic』Vigor↓ for 1 enemy."
when 182   #エルダイーザ・アルダ
    #[魔法] 敵全員の精力を弱める。
   result[0] = "Elderize - All"
   result[1] = "『Magic』Vigor↓ for all enemies."
when 183   #サフラブルム
    #[魔法] 味方１人の器用さを強める。
   result[0] = "Saffron Bloom"
   result[1] = "『Magic』Dexterity↑ for 1 ally."
when 184   #サフラブルム・アルダ
    #[魔法] 味方全員の器用さを強める。
   result[0] = "Saffron Bloom - All"
   result[1] = "『Magic』Dexterity↑ for party."
when 185   #サフライーザ
    #[魔法] 敵１人の器用さを弱める。
   result[0] = "Saffrize"
   result[1] = "『Magic』Dexterity↓ for 1 enemy."
when 186   #サフライーザ・アルダ
    #[魔法] 敵全員の器用さを弱める。
   result[0] = "Saffrize - All"
   result[1] = "『Magic』Dexterity↓ for all enemies."
when 187   #コリオブルム
    #[魔法] 味方１人の素早さを強める。
   result[0] = "Kurio Bloom"
   result[1] = "『Magic』Speed↑ for 1 ally."
when 188   #コリオブルム・アルダ
    #[魔法] 味方全員の素早さを強める。
   result[0] = "Kurio Bloom - All"
   result[1] = "『Magic』Speed↑ for party."
when 189   #コリオイーザ
    #[魔法] 敵１人の素早さを弱める。
   result[0] = "Kuriolize "
   result[1] = "『Magic』Speed↓ for 1 enemy."
when 190   #コリオイーザ・アルダ
    #[魔法] 敵全員の素早さを弱める。
   result[0] = "Kuriolize - All "
   result[1] = "『Magic』Speed↓ for all enemies."
when 191   #アスタブルム
    #[魔法] 味方１人の精神力を強める。
   result[0] = "Aster Bloom"
   result[1] = "『Magic』Magic↑ for 1 ally."
when 192   #アスタブルム・アルダ
    #[魔法] 味方全員の精神力を強める。
   result[0] = "Aster Bloom - All "
   result[1] = "『Magic』Magic↑ for party."
when 193   #アスタイーザ
    #[魔法] 敵１人の精神力を弱める。
   result[0] = "Asterize"
   result[1] = "『Magic』Magic↓ for 1 enemy."
when 194   #アスタイーザ・アルダ
    #[魔法] 敵全員の精神力を弱める。
   result[0] = "Asterize - All"
   result[1] = "『Magic』Magic↓ for all enemies."
when 195   #ストレリブルム
    #[魔法] 味方１人の全ての能力を強める。
   result[0] = "Storm Bloom "
   result[1] = "『Magic』Endurance↑ for 1 ally."
when 196   #ストレリブルム・アルダ
    #[魔法] 味方全員の全ての能力を強める。
   result[0] = "Storm Bloom - All "
   result[1] = "『Magic』All Stats↑ for party."
when 197   #ストレリイーザ
    #[魔法] 敵１人の全ての能力を弱める。
   result[0] = "Storm Wither"
   result[1] = "『Magic』All Stats↓ for 1 enemy."
when 198   #ストレリイーザ・アルダ
    #[魔法] 敵全員の全ての能力を弱める。
   result[0] = "Storm Wither - All"
   result[1] = "『Magic』All Stats↓ for all enemies."
when 200   #チャーム
    #[魔法] 敵１人を中確率で恍惚させる。
   result[0] = "Charm"
   result[1] = "『Magic』#{$data_states[34].UK_name} chance on 1 enemy."
when 201   #ペイド・チャーム
    #[魔法] 敵全員を中確率で恍惚させる。
   result[0] = "Mass Charm"
   result[1] = "『Magic』#{$data_states[34].UK_name} chance on all enemies."
when 202   #ラスト
    #[魔法] 敵１人を中確率で欲情させる。
   result[0] = "Lust"
   result[1] = "『Magic』#{$data_states[35].UK_name} chance on 1 enemy."
when 203   #ペイド・ラスト
    #[魔法] 敵全員を中確率で欲情させる。
   result[0] = "Mass Lust "
   result[1] = "『Magic』#{$data_states[35].UK_name} chance on all enemies."
when 204   #フィルス
    #[魔法] 敵１人を中確率で暴走させる。
   result[0] = "Flirt "
   result[1] = "『Magic』#{$data_states[36].UK_name} chance on 1 enemy."
when 205   #ペイド・フィルス
    #[魔法] 敵全員を中確率で暴走させる。
   result[0] = "Mass Flirt"
   result[1] = "『Magic』#{$data_states[36].UK_name} chance on all enemies."
when 206   #レザラジィ
    #[魔法] 敵１人を中確率で虚脱させる。
   result[0] = "Lethargy"
   result[1] = "『Magic』#{$data_states[37].UK_name} chance on 1 enemy."
when 207   #ペイド・レザラジィ
    #[魔法] 敵全員を中確率で虚脱させる。
   result[0] = "Mass Lethargy "
   result[1] = "『Magic』#{$data_states[37].UK_name} chance on all enemies."
when 208   #テラー
    #[魔法] 敵１人を中確率で畏怖させる。 / *TODO* Change 'soft' to 'Stricken'...
   result[0] = "Terror"
   result[1] = "『Magic』#{$data_states[38].UK_name} chance on 1 enemy."
when 209   #ペイド・テラー
    #[魔法] 敵全員を中確率で畏怖させる。
   result[0] = "Mass Terror "
   result[1] = "『Magic』#{$data_states[38].UK_name} chance on all enemies."
when 210   #パラライズ
    #[魔法] 敵１人を中確率で麻痺させる。
   result[0] = "Paralyze"
   result[1] = "『Magic』#{$data_states[39].UK_name} chance on 1 enemy."
when 211   #ペイド・パラライズ
    #[魔法] 敵全員を中確率で麻痺させる。
   result[0] = "Mass Paralyze "
   result[1] = "『Magic』#{$data_states[39].UK_name} chance on all enemies."
when 212   #ルーズ
    #[魔法] 敵１人を中確率で意識散漫にさせる。/ *TODO* Change 'tipsy' to 'Bewitched' or 'Entranced'...
   result[0] = "Trance"
   result[1] = "『Magic』#{$data_states[40].UK_name} chance on 1 enemy."
when 213   #ペイド・ルーズ
    #[魔法] 敵全員を中確率で意識散漫にさせる。
   result[0] = "Mass Trance "
   result[1] = "『Magic』#{$data_states[40].UK_name} chance on all enemies."
when 215   #トリムルート
    #[魔法] 味方１人の恍惚・欲情・暴走を解除する。
   result[0] = "Treme Root"
   result[1] = "『Magic』Heals #{$data_states[34].UK_name},#{$data_states[35].UK_name},#{$data_states[36].UK_name}."
when 216   #トリムストーク
    #[魔法] 味方１人の虚脱・畏怖・麻痺・散漫を解除する。
   result[0] = "Treme Stalk "
   result[1] = "『Magic』Heals #{$data_states[37].UK_name},#{$data_states[38].UK_name},#{$data_states[39].UK_name},#{$data_states[40].UK_name}."
when 217   #トリムヴァイン
    #[魔法] 味方１人の張型・触手・呪詛を解除する。
   result[0] = "Treme Stem"
   result[1] = "『Magic』Remove a dildo,feeler or curse."
when 219   #ブルムカール
    #[魔法] 敵１人の強化効果全てを解除する。
   result[0] = "Bloom Call"
   result[1] = "『Magic』Dispel magical buffs on 1 enemy."
when 220   #ブルムカール・アルダ
    #[魔法] 敵全員の強化効果全てを解除する。
   result[0] = "Bloom Call - All"
   result[1] = "『Magic』Dispel magical buffs on all enemies."
when 221   #イーザカール
    #[魔法] 味方１人の弱化効果全てを解除する。
   result[0] = "Lyzing Call "
   result[1] = "『Magic』Dispel magical debuffs on 1 ally."
when 222   #イーザカール・アルダ
    #[魔法] 味方全員の弱化効果全てを解除する。
   result[0] = "Lyzing Call - All "
   result[1] = "『Magic』Dispel magical debuffs on party."
when 224   #ウォッシュフルード
    #[魔法] 場に掛かっている効果を全て無くす。
   result[0] = "Cleansing Waters"
   result[1] = "『Magic』Dispel all magical buffs/debuffs."
when 239   #シャイニングレイジ
    #[魔法] 憤怒の雷撃を撃ち落とす、光属性最上位魔法。
   result[0] = "Shining Rage"
   result[1] = "『Magic』Ultimate, Light-element, shattering magic."
when 241   #クッキング
    #調理する。
   result[0] = "Cooking"
   result[1] = "Cook."
when 248   #サーヴァントコール
    #使用人を呼びつけ、様々な手配をしてもらう。
   result[0] = "Call Servant"
   result[1] = "Call an underling to adress your needs."
when 249   #ランクアップ
    #ランクアップする。
   result[0] = "Rank Up"
   result[1] = "Evolve to a more powerful form."
when 253   #ショウダウン
    #自分の服を脱ぐ。
   result[0] = "Showdown"
   result[1] = "Take off your own clothes."
when 257   #服を脱がす
    #[レジスト] 相手の服を脱がせる。
   result[0] = "Expose"
   result[1] = "『Resist』Attempt to strip an opponent."
when 260   #品定め
    #[→体] 相手を品定めする。 / pretty sure description never shows for these
   result[0] = "Check Out"
   result[1] = "『→Body』Evaluate the goods."
when 261   #手ほどき
    #[→体] 相手を手ほどきする。
   result[0] = "Foreplay"
   result[1] = "『→Body』Perform the first moves."
when 262   #甘やかし
    #[→体] 相手を甘やかす。
   result[0] = "Indulge"
   result[1] = "『→Body』Take care of oneself's needs."
when 263   #スパンク
    #[手→尻] 相手を尻を叩く。[S]
   result[0] = "Spank"
   result[1] = "『Hand→Ass』Slap the buttocks.『S』"
when 275   #やけくそ三連撃
    #憤怒の雷撃を撃ち落とす、光属性最上位魔法。
   result[0] = "Desperation 3-Ways"
   result[1] = "憤怒の雷撃を撃ち落とす、光属性最上位魔法。"
when 276   #ヒーローキリング
    #憤怒の雷撃を撃ち落とす、光属性最上位魔法。
   result[0] = "Hero Killer"
   result[1] = "憤怒の雷撃を撃ち落とす、光属性最上位魔法。"
when 277   #メテオエクリプス
    #憤怒の雷撃を撃ち落とす、光属性最上位魔法。
   result[0] = "Meteo Rain"
   result[1] = "憤怒の雷撃を撃ち落とす、光属性最上位魔法。"
when 278   #ワールドブレイカー
    #憤怒の雷撃を撃ち落とす、光属性最上位魔法。
   result[0] = "World Breaker"
   result[1] = "憤怒の雷撃を撃ち落とす、光属性最上位魔法。"
=begin
disabling these as a test. I'm pretty sure they never show.
when 279   #スキル決め直し
    #ランダムスキル用。これが選ばれるとスキルを決め直しさせる。
   result[0] = "Pick Again"
   result[1] = "ランダムスキル用。これが選ばれるとスキルを決め直しさせる。"
when 281   #【RD】キッス
    #[ランダム] キッス攻撃を行う
   result[0] = "Kiss"
   result[1] = "『ランダム』キッス攻撃を行う"
when 282   #【RD】手攻め
    #[ランダム] 手で攻める
   result[0] = "Attack w/ hand"
   result[1] = "『ランダム』手で攻める"
when 283   #【RD】口攻め
    #[ランダム] 口で攻める
   result[0] = "Attack w/ mouth"
   result[1] = "『ランダム』口で攻める"
when 284   #【RD】胸攻め
    #[ランダム] 胸で攻める
   result[0] = "Attack w/ chest"
   result[1] = "『ランダム』胸で攻める"
when 285   #【RD】アソコ攻め
    #[ランダム] アソコで攻める.
   result[0] = "Attack w/ pussy"
   result[1] = "『ランダム』アソコで攻める."
when 286   #【RD】足攻め
    #[ランダム] 足で攻める
   result[0] = "Attack w/ feet"
   result[1] = "『ランダム』足で攻める"
when 287   #【RD】愛撫
    #[ランダム] 愛撫を行う
   result[0] = "Caress"
   result[1] = "『ランダム』愛撫を行う"
when 288   #【RD】尻尾攻め
    #[ランダム] 尻尾で攻撃を行う
   result[0] = "Tail attack"
   result[1] = "『ランダム』尻尾で攻撃を行う"
when 289   #【RD】道具攻め
    #[ランダム] 道具で攻撃を行う
   result[0] = "Tool attack"
   result[1] = "『ランダム』道具で攻撃を行う"
when 290   #【RD】特殊身体攻め
    #[ランダム] 特殊な身体能力で攻撃を行う
   result[0] = "Special anatomy attack"
   result[1] = "『ランダム』特殊な身体能力で攻撃を行う"
when 292   #【RD】ホールド技
    #[ランダム] 自分がホールド状態の時の攻め
   result[0] = "Hold attack"
   result[1] = "『ランダム』自分がホールド状態の時の攻め"
when 293   #【RD】自分ホールド中の攻め
    #[ランダム] 自分がホールド状態の時の攻め
   result[0] = "Attack while held"
   result[1] = "『ランダム』自分がホールド状態の時の攻め"
when 294   #【RD】味方ホールド中の援護
    #[ランダム] 味方が相手にホールドされ中に行う援護
   result[0] = "Defend held friend"
   result[1] = "『ランダム』味方が相手にホールドされ中に行う援護"
when 296   #【RD】コンフューズ
    #混乱暴走して何をするか判らない状態
   result[0] = "Confused"
   result[1] = "混乱暴走して何をするか判らない状態"
when 297   #フィアー
    #畏怖して動けない状態
   result[0] = "Fear"
   result[1] = "畏怖して動けない状態"
when 298   #フリーアクション
    #夢魔ごとに特徴のある行動を行う（行動放棄）
   result[0] = "Free Action"
   result[1] = "夢魔ごとに特徴のある行動を行う（行動放棄）"
when 299   #エモーション
    #夢魔の性格ごとに様々な表情を見せる（行動放棄）
   result[0] = "Emotion"
   result[1] = "夢魔の性格ごとに様々な表情を見せる（行動放棄）"
back to business 
=end
when 359   #セットサークル
    #[手→] ３ターンの間、自分が使用する魔法の消費ＶＰが０になる。
   result[0] = "Set Circle"
   result[1] = "『Hand→』For 3 turns, magic will consume no VP."
when 360   #コールドタッチ
    #[手→体] 冷たい手で愛撫する。[追加：ディレイ]
   result[0] = "Cold Touch"
   result[1] = "『Hand→Body』Caress with an icy hand.『Adds #{$data_states[13].UK_name}』"
when 361   #サディストカレス
    #[手→体] 意地悪に愛撫する。[追加：スタン][特効：畏怖の相手] TODO: thoroughly check this...
   result[0] = "Touch of Sadism"
   result[1] = "『Hand→Body』A wicked touch.『Adds #{$data_states[16].UK_name}』『#{$data_states[38].UK_name} for Ms』"
when 362   #プライスオブハレム
    #[手→体] 敵全員を攻める。[条件：ムード30]
   result[0] = "Please Harem"
   result[1] = "『Hand→Body』Attack all enemies.『Req.Mood 30+』"
when 363   #プライスオブシナー
    #[手→体] 敵全員を攻める。[条件：ムード30]
   result[0] = "Bushin Pleasure"
   result[1] = "『Hand→Body』Attack all enemies.『Req.Mood 30+』"
when 364   #ペルソナブレイク
    #[手→] 相手１人を破面状態にする。 TODO: check wtf that does
   result[0] = "Persona Break"
   result[1] = "『Hand→』Attempt to thoroughly break an enemy."
when 365   #キャストエントリー
    #夢世界がキャストを作り出す。 TODO: double-check
   result[0] = "Caster Gate"
   result[1] = "Opens a gate through the dream world."
when 415   #ハウリング
    #[口→] 自身の精力を強める。 #*TODO* consistency
   result[0] = "Howling"
   result[1] = "『Mouth→』Increase your own Vigor."
when 416   #魔性の口付け
    #[口→口] 味方に口付けをする。[追加：魅力↑]
   result[0] = "Devil's Kiss"
   result[1] = "『Mouth→Mouth』Kiss an ally.『Adds Charm↑』"
when 417   #祝福の口付け
    #[口→口] 味方に口付けをする。[追加：状態異常耐性↑]
   result[0] = "Blessing Kiss"
   result[1] = "『Mouth→Mouth』Kiss an ally.『Status Resist↑』"
when 418   #スイートウィスパー
    #[口→耳] 相手1人の感度を上げ、ムードアップさせる。
   result[0] = "Sweet Whisper"
   result[1] = "『Mouth→Ear』Make the listener more sensitive. Mood↑"
when 419   #アンラッキーロア
    #[口→耳] 相手全員を不幸状態にする。（敵用） / TODO: check wtf this does
   result[0] = "Dejected Love"
   result[1] = "『Mouth→Ear』Make party unlucky.（Enemy use）"
when 420   #アンラッキーロア
    #一定歩数の間、不幸状態になる。不幸の時は経験値量が増加。
   result[0] = "Dejected Love"
   result[1] = "During walking,become unlucky,experience bonus."
when 421   #懺悔なさい
    #[口→耳] 相手1人を低確率で虚脱にする。
   result[0] = "Confess"
   result[1] = "『Mouth→Ear』Chance to inflict #{$data_states[37].UK_name}."
when 586   #レストレーション
    #身体を覆う粘液を復元する。
   result[0] = "Restoration"
   result[1] = "Grow back some slime covering."
when 587   #スライミーリキッド
    #粘液を相手に塗り、裸になる。
   result[0] = "Slimy Fluids"
   result[1] = "Throw off one's slime. Undress self, inflict #{$data_states[29].UK_name}."
when 588   #激励
    #自分以外の味方を高揚させる。戦闘に参加せずとも使用可。 *TODO* stick to 'merry', then?
   result[0] = "Cheer"
   result[1] = "Let an ally gain adds #{$data_states[41].UK_name}."
when 589   #バッドスポア
    #[胞子] 敵１人をそれぞれ低確率で虚脱、麻痺、散漫にする。
   result[0] = "Noxious Spores"
   result[1] = "『Spore』Chance to inflict #{$data_states[37].UK_name},#{$data_states[39].UK_name},#{$data_states[40].UK_name}."
when 590   #スポアクラウド
    #[胞子] 敵全員をディレイにする。
   result[0] = "Spore Cloud"
   result[1] = "『Spore』Inflict #{$data_states[13].UK_name} on all enemies."
when 591   #アイヴィクローズ
    #[触手→体] 敵1人を低確率で拘束状態にする。
   result[0] = "Entangle"
   result[1] = "『Feeler→Body』Chance to inflict #{$data_states[105].UK_name}."
when 592   #デモンズクローズ
    #[触手→体] 敵1人を低確率で畏怖・拘束状態にする。
   result[0] = "Demon Wrap"
   result[1] = "『Feeler→Body』Chance to inflict #{$data_states[38].UK_name},#{$data_states[105].UK_name}."
when 599   #焦燥
    #自分を焦燥状態にする。（精力素早さ↑器用さ精神力↓） *TODO* consistency
   result[0] = "Haste"
   result[1] = "Become more pumped-up.（Vigor,Speed↑/Dexterity,Endurance↓）"
when 600   #専心
    #自分を専心状態にする。（器用さ精神力↑精力素早さ↓）
   result[0] = "Concentrate"
   result[1] = "Become more focused.（Dexterity,Endurance↑/Vigor,Speed↓）"
when 601   #本能の呼び覚まし
    #自分を暴走状態にする。
   result[0] = "Primal Instincts"
   result[1] = "Adds #{$data_states[36].UK_name} to oneself."
when 602   #自信過剰
    #自分の魅力を上げ、高揚状態にし、ムードを上げる。
   result[0] = "Overconfidence"
   result[1] = "Charm↑,Mood↑,adds #{$data_states[41].UK_name}."
when 611   #リラックスタイム
    #[場：自] ５ターンの間、味方全員を回復する。 / Center:self -> field
   result[0] = "Relaxation Time"
   result[1] = "『Field』『5 turns』Party EP recovery."
when 612   #スイートアロマ
    #[場：自] ５ターンの間、味方全員の魅力が上がる。
   result[0] = "Sweet Aroma"
   result[1] = "『Field』『5 turns』Party Charm↑."
when 613   #パッションビート
    #[場：自] ５ターンの間、味方全員の精力と素早さが上がる。
   result[0] = "Passion Beats"
   result[1] = "『Field』『5 turns』Party Vigor↑,Speed↑."
when 614   #マイルドパフューム
    #[場：自] ５ターンの間、味方全員の状態異常耐性を上げる。
   result[0] = "Mild Perfume"
   result[1] = "『Field』『5 turns』Party Status Resist↑."
when 615   #レッドカーペット
    #[場：自] ５ターンの間、交代後の仲間の魅力と素早さを強化する。
   result[0] = "Red Carpet"
   result[1] = "『Field』『5 turns』Party Charm↑,Speed↑."
when 618   #ストレンジスポア
    #[胞子 場：敵] ５ターンの間、敵全員の状態異常耐性を下げる。
   result[0] = "Strange Spores"
   result[1] = "『Spore Field』『5 turns』Status Resist↓ for enemies."
when 619   #ウィークスポア
    #[胞子 場：敵] ５ターンの間、状態異常の敵の被SS率が上がる。
   result[0] = "Weakening Spores"
   result[1] = "『Spore Field』『5 turns』SS rate↑ VS ailed enemies."
when 620   #威迫
    #[場：敵] ５ターンの間、敵全員のレジストを弱化させる。
   result[0] = "Intimidate"
   result[1] = "『5 turns』Lowers all enemies\'『Resist』strength."
when 621   #心掴み
    #[魔法 場：敵] ５ターンの間、敵全員は逃げられない。
   result[0] = "Heart Grasp"
   result[1] = "『Magic Field』『5 turns』Escaping is impossible."
when 622   #全ては現
    #[魔法 場：敵] ５ターンの間、敵全員の被SS率が上がる。 TODO:check if only allies or including enemies too
   result[0] = "One with the Flow"
   result[1] = "『Magic Field』『5 turns』SS rate↑."
when 625   #ラブフレグランス
    #[場：全] ５ターンの間、ムードが上昇する。
   result[0] = "Love Fragrance"
   result[1] = "『Area』『5 turns』Mood↑"
when 626   #スライムフィールド
    #[場：全] ５ターンの間、全員の潤滑度が上がりやすくなる。
   result[0] = "Slime Field"
   result[1] = "『Area』『5 turns』Lubrication rate↑."
when 631   #激励を受ける
    #自分を高揚させる。
   result[0] = "Cheer up"
   result[1] = "Adds #{$data_states[41].UK_name} to oneself."
when 689   #フラッタナイズ
    #[レジスト] 互いに唇を貪りあう
   result[0] = "Lock Lips"
   result[1] = "『Resist』Lock in a kiss."
when 692   #インモラルビュー
    #[レジスト] 自分のアナルを相手の口に押し付ける
   result[0] = "Dark Side"
   result[1] = "『Resist』Push your butt in her face."
when 696   #エキシビジョン
    #[レジスト] 自分が拘束中の相手の両足を開かせる
   result[0] = "Spread and Open"
   result[1] = "『Resist』Hold both of her legs open wide."
when 697   #ペリスコープ
    #[レジスト] 自分の胸で相手のペニスを挟みしごく / Note: all enemies are female so it'll never show... Hopefully no one does a 'yaoi' mod.
   result[0] = "Paizuri Lock"
   result[1] = "『Resist』Entrap ♂ between 'dem boobies."
when 698   #ヘブンリーフィール
    #[レジスト] 自分の胸で相手の顔を抱きしめる
   result[0] = "Heaven's Feel"
   result[1] = "『Resist』Hold target's head against one's chest."
when 705   #インサートテイル
    #[レジスト] 自分の尻尾を相手のアソコに挿入する
   result[0] = "Tail Insert"
   result[1] = "『Resist』Attempt to insert tail in target's ♀."
when 706   #マウスインテイル
    #[レジスト] 自分の尻尾を相手の口に挿入する
   result[0] = "Oral Tail Insert"
   result[1] = "『Resist』Attempt to insert tail in target's mouth."
when 707   #バックインテイル
    #[レジスト] 自分の尻尾を相手のアナルに挿入する
   result[0] = "Anal Tail Insert"
   result[1] = "『Resist』Attempt to insert tail in target's butt."
when 710   #ディルドインサート
    #[レジスト] 自分に装着したディルドを相手のアソコに挿入する
   result[0] = "Dildo Insert"
   result[1] = "『Resist』Attempt to insert strapon in target's ♀."
when 711   #ディルドインマウス
    #[レジスト] 自分に装着したディルドを相手の口に挿入する
   result[0] = "Oral Dildo Insert"
   result[1] = "『Resist』Attempt to insert strapon in target's mouth."
when 712   #ディルドインバック
    #[レジスト] 自分に装着したディルドを相手のアナルに挿入する
   result[0] = "Anal Dildo Insert"
   result[1] = "『Resist』Attempt to insert strapon in target's butt."
when 715   #アイヴィクローズ  / 591 is similar
    #[レジスト] 触手で拘束する。
   result[0] = "Entangle"
   result[1] = "『Resist』Coil and restrain with an appendage."
when 716   #デモンズクローズ
    #[レジスト] 触手で拘束する。
   result[0] = "Demon Wrap"
   result[1] = "『Resist』Coil and restrain with an appendage."
when 719   #インサルトツリー
    #[レジスト] 触手で拘束した相手を開脚させる
   result[0] = "Tentacle Wrap"
   result[1] = "『Resist』Lets you straddle a restrained opponent."
when 772   #エナジードレイン / Enemy moves,right?
    #[×××] 腰を振る。[インサート(LvMAX)][VPドレイン]
   result[0] = "Energy Drain"
   result[1] = "『×××』Grind.『Insert(LvMAX)』『VP Drain』"
when 773   #レベルドレイン
    #[×××] 腰を振る。[インサート(LvMAX)][レベルドレイン]
   result[0] = "Level Drain"
   result[1] = "『×××』Grind.『Insert(LvMAX)』『Lv Drain』"
when 971   #もがく
    #もがいて抵抗する。
   result[0] = "Struggle"
   result[1] = "Try to resist."


   
   end

      return result

end
