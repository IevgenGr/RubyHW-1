
class Snake
  attr_reader :name,
              :mood,
              :health,
              :satiety,
              :crawling

  def initialize(name = 'Oleg')
    @name     = name    # Имя
    @mood     = 'Good'  # Настроение
    @asleep   = false   # Сон
    @health   = 10      # Здоровье
    @satiety  = 4      # Сытость
    @crawling = 0      # Ползать

    p "#{@name} was born."
  end

  def feed
    p "You are feeding #{@name}."
    @satiety += 4
    if @satiety <= 10
      p "#{@name}'s satiety #{@satiety}/10. Please more feed."
    else
      p "#{@name}'s satiety #{@satiety}/10."
      p "#{@name} ate too much! Maybe it's time for him to crawl? (y/n)"
      temp = gets.chomp
      crawl if temp == 'y'
    end
    passage_of_time
  end

  def crawl
    p "You crawl with #{@name}."
    @crawling = 0
    passage_of_time
  end

  def put_to_bed
    p "You put #{@name} to bad."
    @asleep = true
    3.times do
      passage_of_time if @asleep
      p "#{@name} hisses in his sleep." if @asleep
    end
    if @asleep
      @asleep = false
      p "#{@name} slowly wakes up."
    end
  end

  private

  def satiety?
    @satiety <= 2
  end

  def go_to_wc?
    @crawling >= 8
  end

  def passage_of_time
    if @satiety.positive?
      @satiety  -= 1
      @crawling += 1
    else
      if @asleep
        @asleep = false
        p 'He wakes up suddenly!'
      end
      p "#{@name} is HUNGRY! Feed him."
      exit
    end
  end

end

pet = Snake.new 'Alexey'
