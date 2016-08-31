#==============================================================================
# �� RPG::Sprite
#------------------------------------------------------------------------------
# �@�X�e�[�g�ʃ��b�Z�[�W�i�[
#==============================================================================
module RPG
  class State
    def name
      return @name.split(/\//)[0]
    end
    def message(state, type, myself, user)
      
      myname = myself.name if myself != nil
      username = user.name if user != nil
      master = $game_actors[101].name
      state_name = state.name.split(/\//)[0]
      effect = recover = report =  ""
      
      case state.id
      when 1 # �퓬�s�\
        effect = recover = report =  ""
      when 2 # ����
        effect = "" #{myname}�͐Ⓒ�ɒB�����I"
        recover = "#{myname} ��ustered the ��illpo��er to stand back up!"
        report = "#{myname} can't ��uster any strength\m\n due to the lingering affects of cli��ax!"
      when 3 # �Ⓒ
        effect = "" #{myname}�͐Ⓒ�ɒB�����I"
        recover = "#{myname}'s orgas�� has settled!"
        report = "#{myname} can't ��uster any strength\m\n due to the lingering affects of cli��ax!"
      when 6 # �N���C�V�X
        effect = "#{myname} nearly ca��e!"
        recover = "#{myname} regained co��posure!"
        report = "#{myname} nearly ca��e!"
      when 5 # ��
        if user.is_a?(Game_Actor)
          if myself.is_a?(Game_Actor)
            effect = "#{myname} beca��e naked!"
            effect = "#{myname} ��as stripped naked!" if $msg.tag == "���ԒE��"
          else
            effect = "#{myname} has been stripped naked!"
            effect = "#{myname} beca��e naked!" if $msg.tag == "�����E��"
          end
        elsif user.is_a?(Game_Enemy)
          if myself.is_a?(Game_Actor)
            effect = "#{myname} ��as stripped naked!"
            effect = "#{myname} beca��e naked as told!" if $game_switches[89] == true
          else
            effect = "#{myname} beca��e naked!"
          end
        end
      when 8 # �}��
        if user.is_a?(Game_Actor)
          effect = "#{username} inserted #{myname}!"
        elsif user.is_a?(Game_Enemy)
          effect = "#{myname} violated #{username}!"
        end
      when 13 # �f�B���C
        effect = "#{myname} yelps in surprise!\n\m #{myname}'s ��ove��ents have dulled!"
        recover = ""
      when 17 # ��ɃX�^��
        if $game_temp.used_skill != nil
          if user.is_a?(Game_Actor)
            if $game_temp.used_skill.element_set.include?(10) #�����n
              if myself == $game_actors[101]
              effect = "#{myname} flinched fro�� the\n\m attack to his ��outh!"
              else
              effect = "#{myname} flinched fro�� the\n\m attack to her ��outh!"
              end
            elsif $game_temp.used_skill.element_set.include?(11) #�芭�n
              if myself == $game_actors[101]
              effect = "#{myname} ��as stunned by the\n\m attack to his ass!"
              else
              effect = "#{myname} ��as stunned by the\n\m attack to her ass!"
              end
            else #��Ɍn
              effect = "#{myname} flinched painfully!"
            end
          else
            if $game_temp.used_skill.element_set.include?(10) #�����n
              effect = "#{myname} s��oons fro�� being\n\m attacked in the ��outh!"
            elsif $game_temp.used_skill.element_set.include?(11) #�芭�n
              effect = "#{myname} cries out fro��\n\m being attacked in the back!"
            else #��Ɍn
              effect = "#{myname} keels fro�� the pain!"
            end
          end
        else
          if user.is_a?(Game_Actor)
            effect = "#{myname} flinched painfully!"
          else
            effect = "#{myname} keels fro�� the pain!"
          end
        end
        recover = ""
      when 14 # �鏊�����x��
        #������Game_Battler4�̃X�L���G�t�F�N�g�Őݒ�
        effect = recover = report =  ""
      when 19 # ������L��
        effect = "#{myname}'s clit begins to enlarge...!\n\m A penis appeared bet��een #{myname}'s crotch!"
        recover = "#{myname}'s penis slo��ly disappeared!"
      when 20 # ������(��)
        effect = "#{myname}'s penis is ��ell-lubricated!"
        recover = ""
      when 21 # ������(��)
        effect = "#{myname}'s penis is extre��ely lubricated!"
        recover = ""
      when 22 # ������(��)
        effect = "#{myname}'s pussy has gotten ��et!"
        effect = "#{myname}'s pussy is sli��y ��ith goo!" if myself.states.include?(27) or myself.states.include?(28)
#        effect = "#{myname}�̃A�\�R����A\n\m���X�ɖ������ݏo�Ă����c�I"
#        effect = "#{myname}�̃A�\�R���A\n\m�t�������S�t�̂����łʂ�ʂ邵�Ă����c�I" if myself.states.include?(27) or myself.states.include?(28)
        recover = ""
      when 23 # ������(��)
        effect = "#{myname}'s pussy is sufficiently ��et!"
        effect = "#{myname}'s pussy is sli��y ��ith goo!" if myself.states.include?(27) or myself.states.include?(28)
#        effect = "#{myname}�̃A�\�R����A\n\m�Ƃ��Ɩ����H�藎���ė����c�I"
#        effect = "#{myname}�̃A�\�R�́A\n\m�S�t�Ɩ{�l�̖��Ƃŏ\�񕪂ɔG��Ă����c�I" if myself.states.include?(27) or myself.states.include?(28)
        recover = ""
      when 24 # ������(��)
        effect = "#{myname}'s pussy is overflo��ing ��ith\n\m vaginal secretions!"
        effect = "#{myname}'s pussy is sli��y ��ith goo!" if myself.states.include?(27) or myself.states.include?(28)
#        effect = "#{myname}�̃A�\�R����A\n\m�����~�߂ǂȂ����o���ė���c�I"
#        effect = "#{myname}�̃A�\�R�́A\n\m�S�t�Ɩ{�l�̖��ƂŊ��ɂ����傮���傾�c�I" if myself.states.include?(27) or myself.states.include?(28)
        recover = ""
      #�A�i���n�X�e�[�g�͑̌��łł͖����ڂȂ̂ŁA��쓮�h�~�̂��߃e�L�X�g����
      when 25 # �����`(��)
        effect = "" #"#{myname}�̋e�傪�����ттĂ����c�I"
        recover = ""
      when 26 # �����`(��)
        effect = "" #"#{myname}�̋e��͏\�񕪂Ɋ����тт��I"
        recover = ""
      when 27 # �S�t����(��)
        effect = recover = ""
      when 28 # �S�t����(��)
        effect = recover = ""
      when 29 # �X���C��
        effect = recover = ""
      when 30 # ����
        effect = "#{myname} ��as poisoned ��ith aphrodisiacs!"
        report = "#{myname} is poisoned ��ith aphrodisiacs!"
        recover = "The poison fang fell out of #{myname}...\w\n" +
                  "Soon after, #{myname}'s body\n\m started to feel hot and flushed!"
        if type == "recover"
          myself.add_state(35)
          myself.add_states_log.clear
        end
      when 32 # �X�^���F�h�L�h�L
        effect = "#{myname}'s chest is thru��ping!"
        effect = "#{myname}'s chest is pounding...!" if $msg.tag == "��d" or $msg.tag == "����"
        recover = ""
      when 33 # �X�^���F�т�����
        effect = "#{myname} is lost in surprise!"
        recover = ""
      when 34 # ����
        effect = "#{myname} got lost in ecstasy!"
        recover = "#{myname} regained sanity!"
        if myself == $game_actors[101]
          report = "#{myname} ��ears an expression\n\m of supre��e bliss on his face!"
        else
          report = "#{myname} ��ears an expression\n\m of supre��e bliss on her face!"
        end
        # ���o�ɓ���������X�L���̏ꍇ�A���b�Z�[�W��ω�
#        if skill != nil and skill != ""
#          if skill.element_set.include?(21)
#            effect = "#{myname}�̎�����#{username}�ɓB�t���ɂȂ����I\w\n" + 
#                     "#{myname}�͐S��D��ꂽ�I"
#          end
#        end
      when 35 # �~��
        if user.is_a?(Game_Actor)
          effect = "#{myname} has been ��ade horny!"
          effect = "#{myname} has beco��e horny!" if $msg.tag == "��d"
        elsif user.is_a?(Game_Enemy)
          effect = "#{myname} has beco��e horny!"
        end
        recover = "#{myname} is no longer horny!"
        report = "#{myname} is horny!"
      when 36 # �\��
        if user.is_a?(Game_Actor)
          effect = "#{myname} has gone berserk!"
          effect = "#{myname} has goes berserk!" if $msg.tag == "��d"
        elsif user.is_a?(Game_Enemy)
          effect = "#{myname} ��ent berserk!"
        end
        recover = "#{myname} has cal��ed do��n!"
        if myself == $game_actors[101]
          report = "#{myname} can't control hi��self!"
        else
          report = "#{myname} can't control herself!"
        end
      when 37 # ���E
        if user.is_a?(Game_Actor)
          effect = "#{myname}'s body started feeling ��eak!"
          effect = "#{myname}'s strength feels like\n\m it's being drained a��ay...!" if $msg.tag == "��d"
          effect = "#{myname}'s strength feels like\n\m it's being drained a��ay...!" if myself.is_a?(Game_Actor)
          effect = "#{myname}'s strength is crushed\n\m by the pressure!" if $game_temp.used_skill.name == "�����Ȃ���"
        elsif user.is_a?(Game_Enemy)
          effect = "#{myname}'s body beca��e ��eak!"
          effect = "#{myname}'s body is ��eak fro�� aphrodisiacs!" if myself.state?(30)
          effect = "#{myname}'s strength is crushed\n\m by the pressure!" if $game_temp.used_skill.name == "�����Ȃ���"
        end
        recover = "#{myname}'s strength has returned!"
        report = "#{myname} can't gather any strength!"
      when 38 # �ؕ|
        if user.is_a?(Game_Actor)
          effect = "#{myname} feels overpo��ered by the ene��y!"
          effect = "#{myname} is feeling over��helmed!" if $msg.tag == "��d"
        elsif user.is_a?(Game_Enemy)
          effect = "#{myname} is feeling over��hel��ed!"
        end
        recover = "#{myname} no longer feels over��hel��ed!"
        report = "#{myname} is a��ed by the ene��y!"
      when 39 # ���
        if user.is_a?(Game_Actor)
          effect = "#{myname} has been paralyzed!"
          effect = "#{myname}'s body has slo��ly beco��e nu��b!" if myself.is_a?(Game_Actor)
        elsif user.is_a?(Game_Enemy)
          effect = "#{myname}'s body has been paralyzed!"
          effect = "#{myname}'s\m\n body has been paralyzed by the poison!" if myself.state?(30)
        end
        recover = "#{myname}'s body\m\n has recovered fro�� paralysis!"
        report = "#{myname}'s body is nu��b...!"
      when 40 # �U��
        if user.is_a?(Game_Actor)
          effect = "#{myname} see��s lost in pleasure!"
          effect = "#{myname} feels a little light-headed...!" if myself.is_a?(Game_Actor)
          effect = "#{myname} feels light-headed...!" if $msg.tag == "��d"
        elsif user.is_a?(Game_Enemy)
          effect = "#{myname} see��s to be lost in pleasure!"
          effect = "#{myname} looks a little light-headed!" if $msg.tag == "��d"
          effect = "#{myname} can't concentrate\n\m because of the aphrodisiac's effects!" if myself.state?(30)
        end
        recover = "#{myname} is no longer lost in pleasure!"
        report = "#{myname} can't focus!"
      when 41 # ���g
        effect = "#{myname} beca��e excited!"
        recover = "#{myname}'s excite��ent has ��orn off!"
        report = ""
      when 42 # ����
        effect = "#{myname} has beco��e co��posed!"
        recover = "#{myname} returned to nor��al!"
        report = ""
      when 45 # �S�g���x�A�b�v
        effect = "#{myname} beca��e sensitive!"
        effect = "#{myname}'s body beca��e sensitive\n\m fro�� the aphrodisiac!" if myself.state?(30)
        recover = ""
      when 46 # �����x�A�b�v
        effect = "#{myname}'s lips beca��e sensitive!"
        recover = ""
      when 47 # �����x�A�b�v
        effect = "#{myname}'s chest beca��e sensitive!"
        recover = ""
      when 48 # �K���x�A�b�v
        effect = "#{myname}'s ass beca��e sensitive!"
        recover = ""
      when 49 # �����x�A�b�v
        effect = "#{myname}'s penis beca��e sensitive!"
        recover = ""
      when 50 # �����x�A�b�v
        effect = "#{myname}'s pussy beca��e sensitive!"
        recover = ""

      when 80 # �X�e�[�g����
        effect = "#{myname}'s stats has increased!" if myself.is_a?(Game_Actor)
        effect = "#{myname}'s stats has increased!" if myself.is_a?(Game_Enemy)
        case $msg.tag
        when "����", "���́{"
          effect.gsub!("�\��","����") 
        when "�E�ϗ�", "�E�ϗ́{"
          effect.gsub!("�\��","�E�ϗ�") 
        when "����", "���́{"
          effect.gsub!("�\��","����") 
        when "��p��", "��p���{"
          effect.gsub!("�\��","��p��") 
        when "�f����", "�f�����{"
          effect.gsub!("�\��","�f����") 
        when "���_��", "���_�́{"
          effect.gsub!("�\��","���_��") 
        end
        if $msg.tag[/�{/] != nil
          effect.gsub!("����","�X�ɋ���") 
        end
        myself.remove_state(80)
        recover = ""
      when 81 # �X�e�[�g����
        effect = "#{myname}'s stats have decreased!" if myself.is_a?(Game_Enemy)
        effect = "#{myname}'s stats have decreased!" if myself.is_a?(Game_Actor)
        case $msg.tag
        when "����", "���́|"
          effect.gsub!("�\��","����") 
        when "�E�ϗ�", "�E�ϗ́|"
          effect.gsub!("�\��","�E�ϗ�") 
        when "����", "���́|"
          effect.gsub!("�\��","����") 
        when "��p��", "���́|"
          effect.gsub!("�\��","��p��") 
        when "�f����", "�f�����|"
          effect.gsub!("�\��","�f����") 
        when "���_��", "���_�́|"
          effect.gsub!("�\��","���_��") 
        end
        if $msg.tag[/�|/] != nil
          effect.gsub!("��̉�","�X�Ɏ�̉�") 
        end
        myself.remove_state(81)
        recover = ""
      when 82 # �X�e�[�g�S����
        effect = "#{myname}�̑S�\�͂����������I" if myself.is_a?(Game_Actor)
        effect = "#{myname}�̑S�\�͂��������ꂽ�I" if myself.is_a?(Game_Enemy)
        myself.remove_state(82)
        recover = ""
      when 83 # �X�e�[�g�S����
        effect = "#{myname}�̑S�\�͂���̉��������I" if myself.is_a?(Game_Enemy)
        effect = "#{myname}�͑S�\�͂���̉�������ꂽ�I" if myself.is_a?(Game_Actor)
        myself.remove_state(83)
        recover = ""
      when 84 # �X�e�[�g�ێ�
        effect = "������#{myname}�ɂ͌��ʂ����������I"
        myself.remove_state(84)
        recover = ""
      when 85 # ��������
        effect = "One of #{myname}'s buffs has ��orn off!" if myself.is_a?(Game_Enemy)
        effect = "One of #{myname}'s buffs has ��orn off!" if myself.is_a?(Game_Actor)
        myself.remove_state(85)
        recover = ""
      when 86 # �ቺ����
        effect = "#{myname} has been cured of a status ailment!" if myself.is_a?(Game_Actor)
        effect = "#{myname} has been cured of a status ailment!" if myself.is_a?(Game_Enemy)
        myself.remove_state(86)
        recover = ""
      when 87 # �S����
        effect = "#{myname}'s strength has been restored!" if myself.is_a?(Game_Enemy)
        effect = "#{myname}'s strength has been restored!" if myself.is_a?(Game_Actor)
        myself.remove_state(87)
        recover = ""
      when 93,94 # �h�䒆�A��h�䒆
        effect = "#{myname} focuses on resisting pleasure!"
        recover = ""
      when 95 # ���C����
        effect = "#{myname} surrenders to the ene��y!"
        report = "#{myname} has surrendered to the ene��y!"
        recover = ""
      when 96 # �U��
=begin
�@�@    s_range = myself.is_a?(Game_Enemy) ? $game_troop.enemies : $game_party.battle_actors
        for i in s_range
          if i.exist?
            n += 1
          end
        end
        s_range_text = n > 1 ? "����" : ""
        effect += "����#{s_range_text}�̋�����#{myname}�Ɉڂ����I" if myself.is_a?(Game_Actor)
        effect += "#{master}#{s_range_text}��#{myname}��\n�ڂ����������Ă��܂����I" if myself.is_a?(Game_Enemy)
=end
      when 97 # �L�X�X�C�b�`�N��
        effect = "#{myname}�̓L�X������ăX�C�b�`���������I"
        recover = ""
      when 98 # ���@�w
        effect = "#{myname}�̏����閂�@�̏�������Ȃ����I"
        recover = "#{myname}�̑����̖��@�w�����ł����I"
      when 99 # �}�[�L���O
        effect = "#{myself.marking_battler.name}��#{myname}��\n"+
                 "�ڂ�t�����Ă��܂����I"
        recover = "#{myname}��#{myself.marking_battler.name}�ւ�\m\n"+
                  "�����������������I"
      when 101 # �j��
        effect = "#{myname}�͏�Ԉُ�ɋ����Ȃ����I"
        recover = "#{myname}�̏j���������Ȃ����I"
      when 102 # �ő�
        effect = "#{myname}�ْ̋������܂��Ă����I"
        recover = "#{myname}�ْ̋����������I"
        report = ""
      when 103 # ��S
        effect = "#{myname}�̐��_���������܂��ꂽ�I"
        recover = "#{myname}�̏W�����؂ꂽ�I"
        report = ""
      when 104 # ����
        recover = "#{myname} is no longer being provocative!"
        report = "#{myname} is ��aking provacative gestures!!"
=begin
        # ���Ȃ��������ŗ�����
�@�@    s_range = $game_troop.enemies if myself.is_a?(Game_Enemy)
        s_range = $game_party.battle_actors if myself.is_a?(Game_Actor)
        for i in s_range
          if i.exist?
            n += 1
          end
        end
        s_range_text = n > 1 ? "����" : ""
        effect += "#{myname}�͖���#{s_range_text}����ڂ�����ꂽ�I" if myself.is_a?(Game_Actor)
        effect += "#{master}#{s_range_text}��#{myname}��\n�C�����������Ă��܂����I" if myself.is_a?(Game_Enemy)
=end
      when 105 # �S��
        if user.is_a?(Game_Actor)
          effect = "#{myname} has been restrained!"
        elsif user.is_a?(Game_Enemy)
          effect = "#{myname} ��as restrained!"
        end
        recover = "#{myname} has been freed!"
        report = "#{myname}'s body is restrained!"
      when 106 # �j��
        effect = "#{myname}�̖{�����\����Ă��܂����I"
        report = "#{myname}�͖{�������U�����Ƃ��ł��Ȃ��I"
        recover = "#{myname}�͗��������߂����I"
      end
      # ���b�Z�[�W�o��
      case type
      when "effect"
        text = effect
      when "recover"
        text = recover
      when "report"
        text = report
      end
      return text
    end
  end
end