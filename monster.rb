class Monster < Character

  def appear(monster)
    puts "#{@name}があらわれた！"
  end

  def attack(brave)

    puts "#{@name}の攻撃！"

    # モンスターからゆうしゃへのダメージの計算の呼び出し
    damage = calculate_damage(brave)

    # ゆうしゃへのダメージの呼び出し
    damage_brave(brave, damage)

  end

  private

  def calculate_damage(brave)

    # モンスターから勇者へのダメージの計算
    damage =  @offense - brave.defense / 2

  end

  # ゆうしゃへのダメージ
  def damage_brave(brave, damage)

    # ゆうしゃのHPから計算したダメージを引く（ゆうしゃの残りのHP）
    brave.hp -= damage

    # もしゆうしゃのHPがマイナスになるなら0を代入
    brave.hp = 0 if brave.hp < 0

    puts "#{brave.name}は#{damage}のダメージを受けた！"

  end

end
