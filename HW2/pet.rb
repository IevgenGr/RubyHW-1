# frozen_string_literal: true

require 'colorize'

class Pet_ru
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
    puts "Информация о питомце: ",
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
           "ррррр".light_magenta,
           "Ему приснилось нечто ужасное".magenta,
           "гргргрррр грр".light_magenta,
           "В ужасе бегает по комнате и рычит".magenta,
           "гррр ггргрррр".light_magenta
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

  def train
    @energy_lvl = 1
    @feed_lvl   = 1
    @water_lvl  = 1
    @mood       = 'Злой'
    puts "Вы отдали питомца на дрессировку".blue,
         "ррррр".light_blue,
         "*бегает и выполняет команды".light_blue
    puts
    passage_of_time
    check
  end

  def hunt
    @water_lvl  = 2
    @energy_lvl = 1
    @feed_lvl   = 2
    @mood       = 'Уставший'
    puts "Вы идёте на охоту за кабанами".blue,
         "РРРРррРРрр".light_blue,
         "Побежал за кабаном".blue,
         "Кабан убежал".blue,
         "Вы возвращаетесь домой".blue
    puts
    passage_of_time
    check
  end

  def wash
    @need_sleep = true
    @mood       = 'Довольный'
    puts "Вы моете питомца".blue,
         "рррРрррРРРр".light_blue
    puts
    passage_of_time
    check
  end

  def toilet
    @water_lvl = 1
    @feed_lvl  = 1
    puts "Пошёл в туалет".blue
    puts
    passage_of_time
    check
  end

  def kill
    puts "Питомец одичал и напал на вас!".white.on_red,
         "Кстати, вы мертвы :)".black.on_red
    exit
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

class Pet_eng
  attr_writer :need_vet,
              :need_sleep

  attr_reader :life

  def initialize(name)
    @pet        = 'Lion'
    @name       = name
    @life       = 3
    @water_lvl  = 3
    @feed_lvl   = 3
    @energy_lvl = 3
    @mood       = 'Satisfied'
    @need_vet   = false
    @need_sleep = false

    puts "#{@pet} #{@name} is born".yellow
    puts
  end

  # Animal indicators
  def info
    puts "Pet Information: ",
         "  Animal:                                     #{@pet}".light_yellow,
         "  Animal Name:                                #{@name}".light_yellow,
         "  The life of an animal:                      #{@life}".light_yellow,
         "  The amount of water the animal has:         #{@water_lvl}".light_yellow,
         "  Animal hunger:                              #{@feed_lvl}".light_yellow,
         "  Animal Energy:                              #{@energy_lvl}".light_yellow,
         "  The mood of the animal:                     #{@mood}".light_yellow,
         "  An animal needs sleep:                      #{@need_sleep}".light_yellow,
         "  The animal needs to see a vet:              #{@need_vet}".light_yellow

    puts
  end

  # Play with animal
  def play
    @mood        = 'Happy'
    @energy_lvl -= 1

    puts "You play with your pet".blue,
         ("Pet is " + "#{@mood}" + ".").blue,
         "*Your pet is tired".light_blue,
         "*Your pet is hungry".light_blue,
         "*Your pet is thirsty".light_blue
    puts
    check
    passage_of_time
  end

  # Feed your animal
  def feed
    if @feed_lvl <= 2
      @mood      = 'Satisfied'
      @feed_lvl += 1

      puts "Crunchy crunchy. That's delicious!".light_blue
      puts "I'm not full, I want more!".light_blue if @feed_lvl < 3
      puts "Your pet is full".blue
    else
      puts "I'm not hungry!".light_blue
    end
    puts
  end

  # Water your animal

  def water
    if @water_lvl <= 2
      @mood       = 'Satisfied'
      @water_lvl += 1

      puts "Your pet drank the water".blue
      puts "Boop, boop, boop. wateryyyyyyy!".light_blue
      puts "I'm not drunk, I want more!".light_blue if @feed_lvl < 3
    else
      puts "I don't want to drink!".light_blue
    end
    puts
  end

  # Put your animal to sleep
  def sleep
    @mood       = 'Sleepy'
    @energy_lvl = 3

    puts "Your pet is sleeping".blue,
         "yuhrrrrr.... xxxrrryuuuu....".light_blue

    temp = rand(2)
    if temp.zero?
      @energy_lvl = 1

      puts "Your pet woke up unexpectedly".magenta,
           "hrrrrhrrr".light_magenta,
           "He had a terrible dream.".magenta,
           "hrhrrh hrrr".light_magenta,
           "He runs around the room in terror and growls".magenta,
           "hrrhhhrrrrr".light_magenta
    else
      puts "Your pet got a good night's sleep".blue,
           "Yay! Now I'm full of energy!".light_blue
    end
    puts
    passage_of_time
  end

  # Go to the vet
  def vet
    if @life < 3
      @mood       = 'Happy'
      @life       = 3
      @feed_lvl   = 3
      @water_lvl  = 3
      @energy_lvl = 3

      puts "You went to the vet".blue,
           "There you go, now everything will be all right!".light_blue
    else
      puts "You don't need to go to the vet.".light_black
    end
    puts
    passage_of_time
    check
  end

  def train
    @energy_lvl = 1
    @feed_lvl   = 1
    @water_lvl  = 1
    @mood       = 'Angry'
    puts "You gave your pet to training".blue,
         "hrrr".light_blue,
         "*Runs and obeys commands".light_blue
    puts
    passage_of_time
    check
  end

  def hunt
    @water_lvl  = 2
    @energy_lvl = 1
    @feed_lvl   = 2
    @mood       = 'Tired'
    puts "You're going on a boar hunt".blue,
         "hrrrhrrrr".light_blue,
         "Ran after the boar".blue,
         "The boar ran away".blue,
         "You're coming home".blue
    puts
    passage_of_time
    check
  end

  def wash
    @need_sleep = true
    @mood       = 'Satisfied'
    puts "You wash your pet".blue,
         "hhRrRRrhhrrr".light_blue
    puts
    passage_of_time
    check
  end

  def toilet
    @water_lvl = 1
    @feed_lvl  = 1
    puts "Went to the bathroom.".blue
    puts
    passage_of_time
    check
  end

  def kill
    puts "A pet went feral and attacked you!".white.on_red,
         "By the way, you are dead. :)".black.on_red
    exit
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
      @mood  = 'Disappointed'
      @life -= 1

      puts "You are not taking good care of your pet".red,
           "The pet has #{@life} lives left".light_red
      puts
    end
  end

  # Passage of time
  def passage_of_time
    if @water_lvl || @feed_lvl >= 1
      @feed_lvl  -= rand(2)
      @water_lvl -= rand(2)
    else
      puts "You have just left the house and your pet is already tired...".blue
    end
  end

end

start = 1
while start == 1
  puts "Choose a language: ".magenta,
       "RUS      ".yellow + "      ENG".green
  lang = gets.chomp.upcase
  if lang == "RUS"
    puts 'Дейте имя питомцу:'.light_black
    name = gets.chomp.capitalize
    pet_ru = Pet_ru.new name

    while  pet_ru.life.positive?
      puts "Выберите действие: ",
           "  1  -  информация о питомце".light_green,
           "  2  -  играть с питомцем".light_green,
           "  3  -  напоить питомца".light_green,
           "  4  -  накормить питомца".light_green,
           "  5  -  положить спать".light_green,
           "  6  -  пойти к ветеринару".light_green,
           "  7  -  пойти на дрессировку".light_green,
           "  8  -  пойти на охоту".light_green,
           "  9  -  помыть".light_green,
           "  10 -  сводить в туалет".light_green,
           "  11 -  убить? что? кого?".red,

           puts
      puts "  q - закрыть игру".light_red
      puts

      action = gets.chomp.downcase

      case action
      when '1' then pet_ru.info
      when '2' then pet_ru.play
      when '3' then pet_ru.water
      when '4' then pet_ru.feed
      when '5' then pet_ru.sleep
      when '6' then pet_ru.vet
      when '7' then pet_ru.train
      when '8' then pet_ru.hunt
      when '9' then pet_ru.wash
      when '10' then pet_ru.toilet
      when '11' then pet_ru.kill
      when 'q' then exit
      end
    end
  elsif lang == "ENG"
    puts 'Name your pet:'.light_black
    name = gets.chomp.capitalize
    pet_eng = Pet_eng.new name

    while  pet_eng.life.positive?
      puts "Select an action: ",
           "  1  -  pet information".light_green,
           "  2  -  play with the pet".light_green,
           "  3  -  water the pet".light_green,
           "  4  -  feed the pet".light_green,
           "  5  -  put to bed".light_green,
           "  6  -  go to the vet".light_green,
           "  7  -  go to training".light_green,
           "  8  -  go hunting".light_green,
           "  9  -  wash".light_green,
           "  10 -  take him to the bathroom".light_green,
           "  11 -  kill? what? who?".red,

           puts
      puts "  q - close the game".light_red
      puts

      action = gets.chomp.downcase

      case action
      when '1' then pet_eng.info
      when '2' then pet_eng.play
      when '3' then pet_eng.water
      when '4' then pet_eng.feed
      when '5' then pet_eng.sleep
      when '6' then pet_eng.vet
      when '7' then pet_eng.train
      when '8' then pet_eng.hunt
      when '9' then pet_eng.wash
      when '10' then pet_eng.toilet
      when '11' then pet_eng.kill
      when 'q' then exit
      end
    end
  end
end
