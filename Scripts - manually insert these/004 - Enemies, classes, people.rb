module RPG
  class Class
    attr_accessor :UK_name
    def UK_name
      case @id
when 1   #none
  return "none"
when 2,3,271   #人間
  return "Human"
when 5,6   #レッサーサキュバス
  return "Lesser Succubus"
when 10,11   #サキュバス
  return "Succubus"
when 15,16   #サキュバスロード
  return "Succubus Lord"
when 21,22   #インプ
  return "Imp"
when 26,27   #デビル
  return "Devil"
when 31,32   #デーモン
  return "Demon"
when 37,38   #プチウィッチ
  return "Little Witch"
when 42,43   #ウィッチ
  return "Witch"
when 47   #ヘカテー
  return "Hecate"
when 53,54   #キャスト
  return "Caster"
when 58   #ハイキャスト
  return "High Caster"
when 63   #スレイヴ
  return "Slave"
when 69   #スリーピィ
  return "Sleepy"
when 74,75   #ナイトメア
  return "Nightmare"
when 80   #スライム
  return "Slime"
when 85   #クイーンスライム
  return "Queen Slime"
when 90   #ゴールドスライム
  return "Gold Slime"
when 96,97   #ファミリア
  return "Familiar"
when 100,101   #ワーウルフ
  return "Werewolf"
when 104,105   #ワーキャット
  return "Werecat"
when 108   #ゴブリン
  return "Goblin"
when 111   #ギャングコマンダー
  return "Gang Leader"
when 114   #ギャングチーフ
  return "Goblin Chieftain"
when 118   #プリーステス
  return "Priestess"
when 122   #カースメイガス
  return "Cursed Magus"
when 126,127   #アルラウネ
  return "Alraune"
when 129   #マンイーター
  return "Maneater"
when 133   #マタンゴ
  return "Matango"
when 137   #ダークエンジェル
  return "Dark Angel"
when 141   #ガーゴイル
  return "Gargoyle"
when 145,146   #ミミック
  return "Mimic"
when 148   #パンドラボックス
  return "Pandora Box"
when 152   #タマモ
  return "Tamano"
when 156   #リリム
  return "Lilim"
when 251,252,253,255,256,258   #ユニークサキュバス
  return "Unique Succubus"
when 254   #ユニークタイクーン
  return "Unique Tycoon"
when 257   #ユニークウィッチ
  return "Unique Witch"
when 272   #【data】夢魔
  return "Dream Demon"
      end
      n = @name.split(/\//)[0]
      #return n.translation_check
      return "Class " + @id.to_s + " unnamed"
    end
  end

  class Game_Battler #no good
   attr_accessor :UK_name
   attr_accessor :UK_personality
    def UK_name
      n = @name.split(/\//)[0]
      return n.translation_check
    end
    def UK_personality
      n = @personality
      return n.translation_check
    end
  end
  
  class Game_Actor < Game_Battler #no good
   attr_accessor :UK_name
    def UK_name
      n = self.name.split(/\//)[0]
      return n.translation_check
    end
  end
  
  class Enemy
    attr_accessor :UK_name
    def UK_name
      case @id
      
when 16,28,55,56,101,166,174,421   #スライム
  return "Slime"
when 25,41,42,43,44,45,85,92,96,100,105,111,130,146,154,158,215,222,226,233,246,258,407,408   #インプ
  return "Imp"
when 26,78,107,113,238,425,426   #ワーウルフ
  return "Werewolf"
when 27,47,48,86,121,278,282,283,417,450   #キャスト
  return "Caster"
when 31,32,33,34,35,36,68,69,81,84,88,91,95,99,104,110,119,128,136,141,163,171,184,196,206,219,230,243,251,255,263,267,277,312,401,402   #レッサーサキュバス
  return "Lesser Succubus"
when 38,39,65,70,122,129,137,139,162,167,170,183,195,207,218,229,244,252,256,264,268,286,287,403,404   #サキュバス
  return "Succubus"
when 50,51,52,53,93,106,112,115,148,149,156,419,420   #ナイトメア
  return "Nightmare"
when 58,59,60,73,123,126,134,181,189,193,201,204,413,414   #プチウィッチ
  return "Little Witch"
when 62,63,74,127,135,182,190,194,202,205,290,291,415,416   #ウィッチ
  return "Witch"
when 66,77,140,147,155,159,216,223,227,234,236,247,259,288,289,409,410   #デビル
  return "Devil"
when 72,131,186,198,208,423,424   #ファミリア
  return "Familiar"
when 75,273,444,568   #フルビュア
  return "Fulbeua"
when 116,443,567   #リジェオ
  return "Rejeo"
when 120,431   #プリーステス
  return "Priestess"
when 132,188,200,265,270,438,439   #ミミック
  return "Mimic"
when 144,152,429   #ゴブリン
  return "Goblin"
when 145,153,430   #ギャングコマンダー
  return "Gang Leader"
when 164,172,176,433,434   #アルラウネ
  return "Alraune"
when 165,173,311,435   #マタンゴ
  return "Matango"
when 177,279,427,428   #ワーキャット
  return "Werecat"
when 178,442,566   #ネイジュレンジ
  return "Neijoronge"
when 185,197,432   #カースメイガス
  return "Cursed Magus"
when 187,199,418   #スレイヴ
  return "Slave"
when 209,422   #ゴールドスライム
  return "Gold Slime"
when 212,447,571   #シルフェ
  return "Sylphe"
when 217,228,237,248,260,272,298,411,412   #デーモン
  return "Demon"
when 220,231,250,262,292,441   #リリム
  return "Lilim"
when 221,232,436   #ダークエンジェル
  return "Dark Angel"
when 239,440   #タマモ
  return "Tamano"
when 240,446,570   #ユーガノット
  return "Younganoth"
when 245,257,269,271,297,405,406   #サキュバスロード
  return "Succubus Lord"
when 249,261,437   #ガーゴイル
  return "Gargoyle"
when 274,445,569   #ギルゴーン
  return "Gilgoon"
when 301,448,572   #ラーミル
  return "Rarmil"
when 302,303,449,573   #ヴェルミィーナ
  return "Vermiena"
when 304   #ラーミルキャスト
  return "Rarmil Cast"
   
  #OFEs
when 501   #【data】レッサーサキュバス橙
  return "Orange Lesser Succubus"
when 502   #【data】レッサーサキュバス桃
  return "Peach Lesser Succubus"
when 503   #【data】サキュバス橙
  return "Orange Succubus"
when 504   #【data】サキュバス桃
  return "Peach Succubus"
when 505,506   #【data】サキュバスロード橙
  return "Orange Succubus Lord"
when 508   #【data】インプ緑
  return "Green Imp"
when 509   #【data】インプ白
  return "White Imp"
when 510   #【data】デビル緑
  return "Green Devil"
when 511   #【data】デビル白
  return "White Devil"
when 512   #【data】デーモン緑
  return "Green Demon"
when 513   #【data】デーモン白
  return "White Demon"
when 515   #【data】プチウィッチ緑
  return "Green Little Witch"
when 516   #【data】プチウィッチ紫
  return "Purple Little Witch"
when 517   #【data】ウィッチ緑
  return "Green Witch"
when 518   #【data】ウィッチ紫
  return "Purple Witch"
when 520   #【data】キャスト黄
  return "Yellow Caster"
when 522   #【data】スレイヴ紫
  return "Purple Slave"
when 524   #【data】ナイトメア黒
  return "Black Nightmare"
when 525   #【data】ナイトメア黄
  return "Yellow Nightmare"
when 527   #【data】スライム青
  return "Blue Slime"
when 530   #【data】ゴールドスライム黄
  return "Yellow Gold Slime"
when 532   #【data】ファミリア青
  return "Blue Familiar"
when 533   #【data】ファミリア緑
  return "Green Familiar"
when 535   #【data】ワーウルフ黒
  return "Black Werewolf"
when 536   #【data】ワーウルフ赤
  return "Red Werewolf"
when 538   #【data】ワーキャット黄
  return "Yellow Werecat"
when 539   #【data】ワーキャット黒
  return "Black Werecat"
when 541   #【data】ゴブリン赤
  return "Red Goblin"
when 543   #【data】ギャングコマンダー赤
  return "Red Gang Leader"
when 546   #【data】プリーステス白
  return "White Priestess"
when 548   #【data】カースメイガス黒
  return "Black Cursed Magus"
when 550   #【data】アルラウネ緑
  return "Green Alraune"
when 551   #【data】アルラウネ青
  return "Blue Alraune"
when 553   #【data】マタンゴ赤
  return "Red Matango"
when 555   #【data】ダークエンジェル白
  return "White Dark Angel"
when 557   #【data】ガーゴイル黒
  return "Black Gargoyle"
when 559   #【data】ミミック青
  return "Blue Mimic"
when 560   #【data】ミミック黒
  return "Black Mimic"
when 562   #【data】タマモ赤
  return "Red Tamano"
when 564   #【data】リリム桃
  return "Peach Lilim"
when 575   #【data】キャスト黒
  return "Black Caster"
  
      end
      text = @name.split(/\//)[0] rescue text = "enemy #{@id}: name error"
      text.sub!(/【(.*)】/,"")
      return text
    end
  end
end


=begin
#***method safekeeping

def build_inma
  b = []
  a = ""
  sorted = []
  namebase = []
  
  # sorting process for duplicates
  for i in $data_enemies
   if i != nil and i.name != nil and i.name != "" and i.name["■"] != "■"
    oldid = i.id.to_s
    oldname = i.name.split(/\//)[0]
      oldname.sub!(/【(.*)】/,"")
    namebase.push(oldname)
    if namebase.uniq == namebase
      sorted.push([oldid,oldname,i.name.split(/\//)[0]])
    # sorted[x][0] = "id" (string)
    # sorted[x][1] = "clean name"
    # sorted[x][2] = "full original name w/o suffixes" 
    else
      namebase.uniq!
      for j in sorted
        j[0] = j[0] + "," + oldid if j[1] == oldname
      end
    end
   end
  end

  for i in sorted
    a = "when " + i[0] + "   \#" + i[2]
      b.push(a)
    a = "  return \"" + i[1] + "\""
#    a = "  return \"" + i[1].translation_check + "\""
#    a = "  return \"" + splitprefix(i[1])[0] + splitprefix(i[1])[1] + "\""
      b.push(a)
  end

    open("zzz.txt","a+") do |log|
    log.puts b
    end
end
  

def splitprefix(name)
    prefix = ""
    prefix = "Orange " if name["橙"] == "橙"
      name.gsub!("橙","")
    prefix = "Peach " if name["桃"] == "桃"
      name.gsub!("桃","")
    prefix = "Green " if name["緑"] == "緑"
      name.gsub!("緑","")
    prefix = "White " if name["白"] == "白"
      name.gsub!("白","")
    prefix = "Purple " if name["紫"] == "紫"
      name.gsub!("紫","")
    prefix = "Black " if name["黒"] == "黒"
      name.gsub!("黒","")
    prefix = "Yellow " if name["黄"] == "黄"
      name.gsub!("黄","")
    prefix = "Red " if name["赤"] == "赤"
      name.gsub!("赤","")
    prefix = "Blue " if name["青"] == "青"
      name.gsub!("青","")
    return [prefix,name]
    #splitprefix("catblack") -> ["black ", "cat"]
end
  
=end  
