#==============================================================================
# ■ Game_Enemy
#------------------------------------------------------------------------------
# 　エネミーを扱うクラスです。このクラスは Game_Troop クラス ($game_troop) の
# 内部で使用されます。
#==============================================================================

class Game_Enemy < Game_Battler
  #--------------------------------------------------------------------------
  # ● 公開インスタンス変数
  #--------------------------------------------------------------------------
  # ★追加箇所---------------------------------------------------------------
    attr_accessor :screen_x                    # Ｘ座標
    attr_accessor :screen_y                    # Ｙ座標
    attr_accessor :screen_z                    # Ｚ座標
    attr_accessor :treasure                    # トレジャー
    attr_accessor :friendly                    # 友好度
    attr_accessor :before_suffered_skill_id    # 自分が直前に受けたスキルのID
    attr_accessor :position_flag               # ポジション
    attr_accessor :display                     # 表示中
    attr_accessor :display_wait                # 表示までのウェイト
    attr_accessor :start_appear                # 最初から出現している
    attr_accessor :start_front                 # 最初から出現している
    attr_accessor :support_skill_count         # 補助スキルの使用回数
    attr_accessor :present_count               # 贈り物を貰った回数
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #     troop_id     : トループ ID
  #     member_index : トループメンバーのインデックス
  #--------------------------------------------------------------------------
  def initialize(troop_id, member_index)
    super()
    @troop_id = troop_id
    @member_index = member_index
    troop = $data_troops[@troop_id]
    @enemy_id = troop.members[@member_index].enemy_id
    enemy = $data_enemies[@enemy_id]
    @battler_name = enemy.battler_name
    @battler_hue = enemy.battler_hue
    @treasure = enemy.treasure
    @hp = maxhp
    @sp = maxsp
    @hidden = troop.members[@member_index].hidden
    @immortal = troop.members[@member_index].immortal
    @position_flag = 0
    position_check(troop.members[@member_index])
    @friendly = 0
    @before_suffered_skill_id = 0
    @display = true
    @display_wait = 0
    @start_appear = false
    @start_front = false
    @support_skill_count = 0
    @present_count = 0
  end
  #--------------------------------------------------------------------------
  # ● 位置調整
  #--------------------------------------------------------------------------
  def position_check(enemy)
    if boss_graphic?
      @screen_x = 320 # 画面中央に来るように。
      @screen_y = 600
      @position_flag = -1
    else
      @screen_x = enemy.x
      @screen_y = enemy.y + 180
      @screen_z = enemy.y
    end
    @screen_z = enemy.y
  end
  #--------------------------------------------------------------------------
  # ● 初期位置調整
  #--------------------------------------------------------------------------
  def justify(index, max)
    
    # 位置調整
    y_rate = index
    y_rate = 2 if index == 1 and max == 3 
    y_rate = 1 if index == 2 and max == 3 
    
    case max
    when 1
      @screen_x = 320 
    when 2
      @screen_x =  
        case index
        when 0 ; 200
        when 1 ; 448
        end
    when 3
      @screen_x =  
        case index
        when 0 ; 144
        when 1 ; 320
        when 2 ; 496
        end
    end
    
    begin
      bitmap = RPG::Cache.battler(@battler_name, 0)
      y = 480 - (450 - bitmap.height) / 2 - (10 * y_rate)
      z = y - (30 * y_rate)
      if bitmap.height <= 400
        y = 480 - (380 - bitmap.height) / 2 - (20 * y_rate)
        z = y - 100 - (30 * y_rate)
      end
    rescue
      y = 480
      z = 480
    end
    @screen_y = y
    @screen_z = z
    
    # ボスの場合は固定
    if boss_graphic?
      @screen_x = 320
      @screen_y = 600
      @position_flag = -1
    end
    
  end
  #--------------------------------------------------------------------------
  # ● 十分贈り物を貰ったか？
  #--------------------------------------------------------------------------
  def present_fully?
    # 貰うことができる最大値以上貰っていれば、trueを返す
    present_max = 3
    return present_count >= present_max
  end
  
  #--------------------------------------------------------------------------
  # ● エネミーのスキル使用制限判定
  #--------------------------------------------------------------------------
  def enemy_skill_can_use?(skill)
    
    # 無消費の場合はtrueですぐ返す
    if SR_Util.sp_cost_result(self, skill) == 0
      return true
    end
    
    # 補助スキル（サポートスキル、魔法スキル）に関して
    if skill.element_set.include?(4) or skill.element_set.include?(5)
      # 補助スキルはmax_count分だけは使用を保証
      max_count = 4
      # max_countを超えている場合、判定を行う
      if @support_skill_count > max_count and rand(100) < 100 - ((@support_skill_count - max_count) * 10)
        # 今のＶＰと使用スキルの消費ＶＰを見て、余裕がないなら使用不可判定
        if self.sp / 4 < SR_Util.sp_cost_result(self, skill)
          return false
        end
      end
    end
    # すべてクリアしたらtrueで返す
    return true
  end
  #--------------------------------------------------------------------------
  # ● 戦闘開始時のフェードイン設定
  #--------------------------------------------------------------------------
  def set_start_appear(index)
    @display_wait = index * 16
    @start_appear = true
  end 
  #--------------------------------------------------------------------------
  # ● エネミー ID 取得
  #--------------------------------------------------------------------------
  def id
    return @enemy_id
  end
  #--------------------------------------------------------------------------
  # ● インデックス取得
  #--------------------------------------------------------------------------
  def index
    return @member_index
  end
  #--------------------------------------------------------------------------
  # ★ 名前の取得(レベル設定に伴い記述追加)
  #--------------------------------------------------------------------------
  def name
    n = $data_enemies[@enemy_id].name.split(/\//)[0]
    # エネミーアクション固定用【fix】を外す
    n.gsub!("【fix】","")
    return n 
  end
  #--------------------------------------------------------------------------
  # ★ クラスIDの取得
  #--------------------------------------------------------------------------
  def class_id
    n = $data_enemies[@enemy_id].name.split(/\//)[1].to_i
    n = 3 if n == nil
    return n
  end
  #--------------------------------------------------------------------------
  # ★ レベルの取得
  #--------------------------------------------------------------------------
  def level
    n = $data_enemies[@enemy_id].name.split(/\//)[2].to_i
    n = 1 if n == nil
    n = $game_actors[101].level if n == 0
    return n
  end
  #--------------------------------------------------------------------------
  # ● 基本 MaxHP の取得
  #--------------------------------------------------------------------------
  def base_maxhp
    return $data_enemies[@enemy_id].maxhp
  end
  #--------------------------------------------------------------------------
  # ● 基本 MaxSP の取得
  #--------------------------------------------------------------------------
  def base_maxsp
    return $data_enemies[@enemy_id].maxsp
  end
  #--------------------------------------------------------------------------
  # ● 基本腕力の取得
  #--------------------------------------------------------------------------
  def base_str
    return $data_enemies[@enemy_id].str
  end
  #--------------------------------------------------------------------------
  # ● 基本器用さの取得
  #--------------------------------------------------------------------------
  def base_dex
    return $data_enemies[@enemy_id].dex
  end
  #--------------------------------------------------------------------------
  # ● 基本素早さの取得
  #--------------------------------------------------------------------------
  def base_agi
    return $data_enemies[@enemy_id].agi
  end
  #--------------------------------------------------------------------------
  # ● 基本魔力の取得
  #--------------------------------------------------------------------------
  def base_int
    return $data_enemies[@enemy_id].int
  end
  #--------------------------------------------------------------------------
  # ● 基本攻撃力の取得
  #--------------------------------------------------------------------------
  def base_atk
    return $data_enemies[@enemy_id].atk
  end
  #--------------------------------------------------------------------------
  # ● 基本物理防御の取得
  #--------------------------------------------------------------------------
  def base_pdef
    return $data_enemies[@enemy_id].pdef
  end
  #--------------------------------------------------------------------------
  # ● 基本魔法防御の取得
  #--------------------------------------------------------------------------
  def base_mdef
    return $data_enemies[@enemy_id].mdef
  end
  #--------------------------------------------------------------------------
  # ● 基本回避修正の取得
  #--------------------------------------------------------------------------
  def base_eva
    return $data_enemies[@enemy_id].eva
  end
  #--------------------------------------------------------------------------
  # ● 通常攻撃 攻撃側アニメーション ID の取得
  #--------------------------------------------------------------------------
  def animation1_id
    return $data_enemies[@enemy_id].animation1_id
  end
  #--------------------------------------------------------------------------
  # ● 通常攻撃 対象側アニメーション ID の取得
  #--------------------------------------------------------------------------
  def animation2_id
    return $data_enemies[@enemy_id].animation2_id
  end
  #--------------------------------------------------------------------------
  # ● 属性補正値の取得
  #     element_id : 属性 ID
  #--------------------------------------------------------------------------
  def element_rate(element_id)
    # 属性有効度に対応する数値を取得
    table = [0,200,150,100,50,0,-100]
    result = table[$data_enemies[@enemy_id].element_ranks[element_id]]
    # ステートでこの属性が防御されている場合は半減
    for i in @states
      if $data_states[i].guard_element_set.include?(element_id)
        result /= 2
      end
    end
    # メソッド終了
    return result
  end
  #--------------------------------------------------------------------------
  # ● ステート有効度の取得
  #--------------------------------------------------------------------------
  def state_ranks
    return $data_enemies[@enemy_id].state_ranks
  end
  #--------------------------------------------------------------------------
  # ● ステート防御判定
  #     state_id : ステート ID
  #--------------------------------------------------------------------------
  def state_guard?(state_id)
    return false
  end
  #--------------------------------------------------------------------------
  # ● 通常攻撃の属性取得
  #--------------------------------------------------------------------------
  def element_set
    return []
  end
  #--------------------------------------------------------------------------
  # ● 通常攻撃のステート変化 (+) 取得
  #--------------------------------------------------------------------------
  def plus_state_set
    return []
  end
  #--------------------------------------------------------------------------
  # ● 通常攻撃のステート変化 (-) 取得
  #--------------------------------------------------------------------------
  def minus_state_set
    return []
  end
  #--------------------------------------------------------------------------
  # ● アクションの取得
  #--------------------------------------------------------------------------
  def actions
    return $data_enemies[@enemy_id].actions
  end
  #--------------------------------------------------------------------------
  # ● EXP の取得
  #--------------------------------------------------------------------------
  def exp
    return $data_enemies[@enemy_id].exp
  end
  #--------------------------------------------------------------------------
  # ● ゴールドの取得
  #--------------------------------------------------------------------------
  def gold
    return $data_enemies[@enemy_id].gold
  end
  #--------------------------------------------------------------------------
  # ● アイテム ID の取得
  #--------------------------------------------------------------------------
  def item_id
    return $data_enemies[@enemy_id].item_id
  end
  #--------------------------------------------------------------------------
  # ● 武器 ID の取得
  #--------------------------------------------------------------------------
  def weapon_id
    return $data_enemies[@enemy_id].weapon_id
  end
  #--------------------------------------------------------------------------
  # ● 防具 ID の取得
  #--------------------------------------------------------------------------
  def armor_id
    return $data_enemies[@enemy_id].armor_id
  end
  #--------------------------------------------------------------------------
  # ● トレジャー出現率の取得
  #--------------------------------------------------------------------------
  def treasure_prob
    return $data_enemies[@enemy_id].treasure_prob
  end
  #--------------------------------------------------------------------------
  # ● バトル画面 X 座標の取得
  #--------------------------------------------------------------------------
#  def screen_x
#    return $data_troops[@troop_id].members[@member_index].x
#  end
  #--------------------------------------------------------------------------
  # ● バトル画面 Y 座標の取得
  #--------------------------------------------------------------------------
#  def screen_y
#    return $data_troops[@troop_id].members[@member_index].y + 180 #★位置調整
#  end

  #--------------------------------------------------------------------------
  # ● バトル画面 Z 座標の取得
  #--------------------------------------------------------------------------
#  def screen_z
#    return screen_y
#  end
  #--------------------------------------------------------------------------
  # ● 友好度の変更■
  #--------------------------------------------------------------------------
  def friendly=(friendly)
    @friendly = friendly
    @friendly = [@friendly, 100].min
  end
  #--------------------------------------------------------------------------
  # ● 逃げる
  #--------------------------------------------------------------------------
  def escape
    # ヒドゥンフラグをセット
    @hidden = true
    # カレントアクションをクリア
    self.current_action.clear
  end
  #--------------------------------------------------------------------------
  # ● 変身
  #     enemy_id : 変身先のエネミー ID
  #--------------------------------------------------------------------------
  def transform(enemy_id)
    # エネミー ID を変更
    @enemy_id = enemy_id
    # バトラー グラフィックを変更
    @battler_name = $data_enemies[@enemy_id].battler_name
    @battler_hue = $data_enemies[@enemy_id].battler_hue
    # アクション再作成
    make_action
  end
  #--------------------------------------------------------------------------
  # ● アクション作成
  #--------------------------------------------------------------------------
  def make_action
    # カレントアクションをクリア
    self.current_action.clear
    # 動けない場合
    unless self.movable?
      if self.state?(36)
        self.berserk = true
      else
        self.berserk = false
      end
      # メソッド終了
      return
    end
#    # 畏怖の場合、３０％の確率で行動不能になる
#    if self.states.include?(38) and rand(100) < 30
#      self.current_action.kind = 1
#      self.current_action.skill_id = 297
#      self.current_action.decide_random_target_for_enemy
#      self.another_action = false
#      return
#    end
    # 現在有効なアクションを抽出
    available_actions = []
    rating_max = 0
    for action in self.actions
      # ターン 条件確認
      n = $game_temp.battle_turn
      a = action.condition_turn_a
      b = action.condition_turn_b
      if (b == 0 and n != a) or
         (b > 0 and (n < 1 or n < a or n % b != a % b))
        next
      end
      # HP 条件確認
      if self.hp * 100.0 / self.maxhp > action.condition_hp
        next
      end
      # レベル条件確認(多重行動用スキルはレベル条件が１以上で設定)
      if action.condition_level > 1 and not self.another_action
        next
      end
      # スイッチ 条件確認
      switch_id = action.condition_switch_id
      if switch_id > 0 and $game_switches[switch_id] == false
        next
      end
      #●スキル確認条件追加
      # ★有用条件確認---------------------------------------------------
      used_skill = $data_skills[action.skill_id]
      troop = $data_troops[$game_temp.battle_troop_id]
      target = []
      useful = false
      # スキルの対象範囲で分岐
      case used_skill.scope
      when 1..2
        for actor in $game_party.actors
          if actor.exist?
            target.push(actor)
          end
        end
      when 3..4
        for enemy in $game_troop.enemies
          if enemy.exist?
            target.push(enemy)
          end
        end
      when 7
        target.push(self)
      end
      $game_temp.battle_target_battler = target if target != []
      # 使用可能条件確認
      unless skill_can_use?(used_skill.id)
        next
      end
      # 敵に強化効果を受けている対象がいて強化解除魔法の場合
      if used_skill.element_set.include?(65) #強化解除
        for i in target
          correct = [55,56,59,60,63,64,67,68,71,72,75,76]
          for st in correct
            useful = true if i.states.include?(st)
          end
        end
        # 条件を満たしていなければ次へ
        unless useful
          next
        end
      end
      # 味方に弱体効果を受けている対象がいて弱体解除魔法の場合
      if used_skill.element_set.include?(66) #弱体解除
        for i in target
          correct = [57,58,61,62,65,66,69,70,73,74,77,78]
          for st in correct
            useful = true if i.states.include?(st)
          end
        end
        # 条件を満たしていなければ次へ
        unless useful
          next
        end
      end
      # ダメージを受けてる味方がいてかつ回復スキルの場合
      if used_skill.element_set.include?(16) #威力分回復
        for i in target
          useful = true if i.hpp < 75
        end
        # 条件を満たしていなければ次へ
        unless useful
          next
        end
      end
      # 条件に該当 : このアクションを追加
      available_actions.push(action)
      if action.rating > rating_max
        rating_max = action.rating
      end
    end
    # ●多重行動(もし２回行動が許可されていた場合、ここでスキル選別する)
    if self.another_action
      for i in available_actions.dup
        # レベル条件が設定されていないスキルをまず外す
        unless i.condition_level > 1
          available_actions.delete(i)
        end
        # レベル条件が「２」の場合、ムード÷３％で行動する
        if i.condition_level == 2
          unless ($mood.point / 3) > rand(100)
            available_actions.delete(i)
          end
        # レベル条件が「３」の場合、レベル×２％で行動する(最大50％)
        elsif i.condition_level == 3
          unless [(self.level * 2),50].min > rand(100)
            available_actions.delete(i)
          end
        # レベル条件が「４」の場合、５＋(レベル÷５)％で行動する(最大15％)
        elsif i.condition_level == 4
          unless (5 + (self.level / 5).floor) > rand(100)
            available_actions.delete(i)
          end
        #レベル条件が「９９」の場合、必ず行動する
        elsif i.condition_level != 99
          #レベル条件が「４～９８」の場合、その値％で行動する
          unless i.condition_level > rand(100)
            available_actions.delete(i)
          end
        end          
      end
    end
    # available_actionsが空の場合はここで修了
    if available_actions == []
      return
    end
    # 最大のレーティング値を 3 として合計を計算 (0 以下は除外)
    ratings_total = 0
    for action in available_actions
      if action.rating > rating_max - 3
        ratings_total += action.rating - (rating_max - 3)
      end
    end
    # グローバル変数に現在処理中のバトラー情報を入れる
    $game_temp.action_making_battler = self
    # レーティングの合計が 0 ではない場合
    if ratings_total > 0
      # 乱数を作成
      value = rand(ratings_total)
      # 作成した乱数に対応するものをカレントアクションに設定
      for action in available_actions
        if action.rating > rating_max - 3
          if value < action.rating - (rating_max - 3)
            self.current_action.kind = action.kind
            self.current_action.basic = action.basic
            self.current_action.skill_id = action.skill_id
            self.current_action.decide_random_target_for_enemy
            return
          else
            value -= action.rating - (rating_max - 3)
          end
        end
      end
    end
  end
end

