# frozen_string_literal: true

require 'colorize'

class Pet
  attr_writer :need_vet,
              :need_sleep

  attr_reader :life

  def initialize(name)
    @pet        = 'Лев'
    @name       = name
    @life       = 3
    @water_lvl  = 3
    @feed_lvl   = 3
    @energy_lvl = 3
    @mood       = 'Доволен'
    @need_vet   = false
    @need_sleep = false

    puts "#{@pet} #{@name} родился".yellow
    puts
  end

  # Animal indicators
  def info
    puts "Информация о питомце:",
         "  Животное:                     #{@pet}".light_yellow,
         "  Имя животного:                #{@name}".light_yellow,
         "  Жизни животного:              #{@life}".light_yellow,
         "  Кл-во воды животного:         #{@water_lvl}".light_yellow,
         "  Голод животного:              #{@feed_lvl}".light_yellow,
         "  Энергия животного:            #{@energy_lvl}".light_yellow,
         "  Настроение животного:         #{@mood}".light_yellow,
         "  Животное нуждается во сне:    #{@need_sleep}".light_yellow,
         "  Животному нужно к ветеринару: #{@need_vet}".light_yellow

    puts
  end

  # Play with animal
  def play
    @mood        = 'Счастлив'
    @energy_lvl -= 1

    puts "Вы играете со своим питомцем.".blue,
         ("Питомец " + "#{@mood}" + ".").blue,
         "*Ваш питомец устал".light_blue,
         "*Ваш питомец голоден".light_blue,
         "*Ваш питомец хочет пить".light_blue
    puts
    check
    passage_of_time
  end

  # Feed your animal
  def feed
    if @feed_lvl <= 2
      @mood      = 'Доволен'
      @feed_lvl += 1

      puts "Хрум-хрум. Вкусно то как!".light_blue
      puts "Я не наелся, хочу ещё!".light_blue if @feed_lvl < 3
      puts "Ваш питомец сыт".blue
    else
      puts "Я не голоден!".light_blue
    end
    puts
  end

  # Water your animal

  def water
    if @water_lvl <= 2
      @mood       = 'Доволен'
      @water_lvl += 1

      puts "Ваш питомец выпил воды".blue
      puts "Бульк-бульк. водииичка!".light_blue
      puts "Я не напился, хочу ещё!".light_blue if @feed_lvl < 3
    else
      puts "Я не хочу пить!".light_blue
    end
    puts
  end

  # Put your animal to sleep
  def sleep
    @mood       = 'Сонный'
    @energy_lvl = 3

    puts "Ваш питомец спит".blue,
         "юхххррррр.... ххрррррююююю....".light_blue

    temp = rand(2)
    if temp.zero?
      @energy_lvl = 1

      puts "Ваш питомец неожиданно проснулся".magenta,
           "афф гаф ррр гаф".light_magenta,
           "Ему приснилось нечто ужасное".magenta,
           "гаф ррр афф гаф".light_magenta,
           "В ужасе бегает по комнате и лает".magenta,
           "афф гаф ррр гаф".light_magenta
    else
      puts "Ваш питомец выспался".blue,
           "Ура! Теперь я полон сил!".light_blue
    end
    puts
    passage_of_time
  end

  # Go to the vet
  def vet
    if @life < 3
      @mood       = 'Счастлив'
      @life       = 3
      @feed_lvl   = 3
      @water_lvl  = 3
      @energy_lvl = 3

      puts "Вы пошли к ветеринару".blue,
           "Ну вот, тепкрь всё будет хорошо!".light_blue
    else
      puts "Вам не нужно к ветеринару".light_black
    end
    puts
    passage_of_time
    check
  end


  private

  def dead?
    exit if @life.zero?
  end

  def need_sleep?
    @need_sleep = true if @energy_lvl != 3
  end

  def need_vet?
    @need_vet = true if @life != 3
  end

  # Maybe take one life?
  def check
    need_sleep?
    need_vet?
    if @water_lvl < 1 || @feed_lvl < 1 || @energy_lvl < 1
      if @water_lvl < 0 || @feed_lvl < 0 || @energy_lvl < 0
        @water_lvl  = 3
        @feed_lvl   = 3
        @energy_lvl = 3
      end
      @mood  = 'Разочарован'
      @life -= 1

      puts "Вы плохо следите за питомцем".red,
           "У питомца осталось #{@life} жизни".light_red
      puts
    end
  end

  # Passage of time
  def passage_of_time
    if @water_lvl || @feed_lvl >= 1
      @feed_lvl  -= rand(2)
      @water_lvl -= rand(2)
    else
      puts "Вы только вышли из дома, а питомец уже устал...".blue
    end
  end

end

puts 'Дейте имя питомцу:'.light_black
name = gets.chomp.capitalize
pet = Pet.new name

while  pet.life.positive?
  puts "Выберите действие: ",
       "  1 - информация о питомце".light_green,
       "  2 - играть с питомцем".light_green,
       "  3 - напоить питомца".light_green,
       "  4 - накормить питомца".light_green,
       "  5 - положить спать".light_green,
       "  6 - пойти к ветеринару".light_green
  puts
  puts "  q - закрыть игру".light_red
  puts

  action = gets.chomp.downcase

  case action
  when '1' then pet.info
  when '2' then pet.play
  when '3' then pet.water
  when '4' then pet.feed
  when '5' then pet.sleep
  when '6' then pet.vet

  when 'q' then exit
  end
end
