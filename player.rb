class Player

  def initialize (gold_coins, health_points, lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  def level_up
    @lives = @lives + 1
    return @lives
  end

  def collect_treasure
    @gold_coins = @gold_coins + 1
    if @gold_coins % 10 == 0
      level_up
    end
    return @gold_coins
  end

  def restart
    puts "Restarting..."
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def do_battle(damage)
    @health_points = @health_points  - (damage)
    if @health_points == 0
       @lives = @lives -1
       @health_points = 10
        if @lives == 0
          restart
        end
    end
  end

  def show_status
    if @lives == 0
      puts "You are dead"
    else
      puts "You are alive"
    end
  end

end

laurentius_da_vourda = Player.new(0, 10, 5)
laurentius_da_vourda.do_battle(10)
laurentius_da_vourda.do_battle(10)
laurentius_da_vourda.show_status
