class Brave < Character

  def attack(monster)

    puts "#{@name}の攻撃！"

    # ゆうしゃからモンスターへのダメージの計算メソッドの呼び出し
    damage = calculate_damage(monster)

    # モンスターへのダメージをHPに反映させる
    damage_monster(monster, damage)

  end

  private

  def calculate_damage(monster)

    # ゆうしゃからモンスターへのダメージの計算
    damage =  @offense - monster.defense / 2

  end

  # モンスターへのダメージ
  def damage_monster(monster, damage)

    # モンスターのHPから計算したダメージを引く（モンスターの残りのHP）
    monster.hp -= damage

    # もしモンスターのHPがマイナスになるなら0を代入
    monster.hp = 0 if monster.hp < 0

    puts "#{monster.name}に#{damage}のダメージを与えた！"

  end

end
