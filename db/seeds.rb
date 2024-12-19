# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#text content 

@names = ["Марина","Сережа","Оля","Максим","Ксения","Злата","Саша","Настя","Ева", "Захар", "Вадим"]

@surnames = [ 
  "Шамбинаго", "Плевако", "Дубяго", "Дурново", "Короленко", "Верховых", 
  "Ильиных", "Кузьминых", "Руденко", "Пруденко", "Лагутенко", "Телия", 
  "Данелия", "Берия", "Орджоникидзе", "Оглу", "Джешко", "Манонка", 
  "Гнедых", "Клинтон", "День",
  "Семеных", "Иванко", "Петрюк", "Сидоренко", "Кузнечук", "Николович", 
  "Федорович", "Морозюк", "Соловчук", "Попович", "Василко", "Зайяц", 
  "Борисюк", "Лебедко", "Михайчук", "Сергюк", "Алеско", 
  "Ковальчук", "Тихонко", "Киселевич", "Якошко", "Григорьчук", 
  "Романчук", "Беляшко", "Тимошук", "Шевченко", "Савелло", 
  "Степанюк", "Егорко", "Фроловик", "Кудряшко", "Суханко"
]

@titles = [
  "Какой самый странный совет вам давали по поводу стартапа?",
  "Если бы ваш стартап был животным, то каким?",
  "Как вы справляетесь с неудачами: танцами или шоколадом?",
  "Какой самый нелепый бизнес-план вы когда-либо слышали?",
  "Сколько чашек кофе нужно, чтобы запустить успешный стартап?",
  "Как вы объясняете своей бабушке, чем занимаетесь?",
  "Какой ваш любимый способ убивать время вместо работы?",
  "Если бы ваши идеи могли говорить, что бы они сказали?",
  "Какой самый смешной провал у вас был на стартапе?",
  "Какой ваш секрет успеха: удача или магия?",
  "Какой самый странный вопрос вам задавали инвесторы?",
  "Что вы делаете, когда вдохновение уходит в отпуск?",
  "Какой ваш стартап мог бы стать сюжетом для комедийного фильма?",
  "Какой самый глупый способ вы пытались привлечь клиентов?",
  "Какой самый неожиданный источник вдохновения у вас был?",
  "Как бы вы описали свой стартап в одном предложении — с юмором?",
  "Какой совет вы бы дали себе в начале пути, если бы могли?",
  "Какой ваш любимый способ справляться со стрессом?",
  "Что вы делаете, когда ваш бизнес-план идет не по плану?",
  "Какой ваш любимый мем о стартапах?"]

@startups = ["Киоски с конфетами","Искусственная радуга","Цирк из людей","Школа для носорогов","Прогерский коворкинг",  "Кофе и Котики",
"Сонный Бизнес",
"Стартапы на Диване",
"Креативные Неудачи",
"Проблемы с Кофе",
"Гениальные Провалы",
"Бюрократия 2.0",
"Мечты на Завтрак",
"Деньги из Ничего",
"Стартап для Лентяев",
"Зомби-Бизнес",
"Кофейные Идеи",
"Успех на Шутках",
"Неудачный Гений",
"Стартапы с Хаосом",
"Рецепт Успеха",
"Оптимистичный Провал",
"Стартапы для Мечтателей",
"Бизнес на Кофе",
"Смешные Идеи",
"Волшебные рогоносцы",
"Балалаечный аттракцион",
"Memwolf",
"Удивительный рубильник",
"Аукс или все же ауф?",
"Всемогущий день"]

@tags = ["IT","Экономика","Финансы","Дизайн","Искусственный интеллект","Бизнес-аналитика","Анализ данных","Менеджмент","Предпринимательство","Бизнес"]

@categories = [
"Мнение об идее",
"Мнение о сайте",
"Стартап еще не запущен, нужен совет",
"Стартап уже запущен, нужен совет",
"Нужен совет по маркетингу/финансам/менеджменту",
"В поиске названия",
"Какой бизнес мне начать",
"Апдейт проекта",
"Детали проекта",
"Ищу инвестора",
"Ищу команду",
"How-to гайд"]

@raw_text = "Дом Наркомфина — один из знаковых памятников архитектуры советского авангарда и конструктивизма. Построен в 1928—1930 годах по проекту архитекторов Моисея Гинзбурга, Игнатия Милиниса и инженера Сергея Прохорова для работников Народного комиссариата финансов СССР (Наркомфина). Автор замысла дома Наркомфина Гинзбург определял его как «опытный дом переходного типа». Дом находится в Москве по адресу: Новинский бульвар, дом 25, корпус 1. С начала 1990-х годов дом находился в аварийном состоянии, был трижды включён в список «100 главных зданий мира, которым грозит уничтожение». В 2017—2020 годах отреставрирован по проекту АБ «Гинзбург Архитектс», функционирует как элитный жилой дом. Отдельно стоящий «Коммунальный блок» (историческое название) планируется как место проведения публичных мероприятий."

@words = @raw_text.downcase.gsub(/[—.—,«»:()]/, "").gsub(/  /, " ").split(" ")

#seeds and db

def seed
  reset_db
  create_users(10)
  create_startup(1...3)
  create_post(2...8)
  create_comment(2...8)
end

def reset_db
  Rake::Task["db:drop"].invoke
  Rake::Task["db:create"].invoke
  Rake::Task["db:migrate"].invoke
end

#random items generation

def get_random_bool
  [true, false].sample
end

def get_random_number
  (5..100).to_a.sample
end

def get_random_date
  year = rand(1970..2006)
  month = rand(1..12)
  day = rand(1..28)

  Date.new(year, month, day)
end

def create_sentence
  sentence = []
  (1..5).to_a.sample.times do
    sentence_words = []
    (10..20).to_a.sample.times do
      sentence_words << @words.sample
    end
    sentence << sentence_words.join(" ").capitalize + "."
  end
  sentence.join(" ")
end


#image generation

def upload_random_image_post_cover
  uploader = PostCoverUploader.new(Post.new, :cover)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, "public/autouploader/posts_covers", "*")).sample))
  uploader
end

def upload_random_image_profile_avatar
  uploader = ProfileAvatarUploader.new(Profile.new, :avatar)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, "public/autouploader/profiles_avatars", "*")).sample))
  uploader
end

def upload_random_image_startup_avatar
  uploader = StartupAvatarUploader.new(Startup.new, :avatar)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, "public/autouploader/startups_avatars", "*")).sample))
  uploader
end


#main seeds


def create_users(quantity)
  i = 1

  quantity.times do
    user_data = {
      email: "user_#{i}@email.com",
      password: "testtest",
    }

    if i == 1
      user_data[:admin] = true
    end

    user = User.create!(
      user_data
    )
    puts "User created with id #{user.id}"

    i = i + 1

    profile_data = {
      avatar: upload_random_image_profile_avatar,
      trust_points: get_random_number, 
      name: @names.sample, 
      surname: @surnames.sample, 
      description: create_sentence, 
      birthday: get_random_date, 
    }

    # Создание профиля для пользователя
    user.create_profile!(profile_data)
    puts "Profile created for user with id #{user.id}: #{profile_data[:name]} #{user.profile.birthday}"

    i += 1
  end
end

def create_post(quantity)
  Startup.all.each do |startup|
    quantity.to_a.sample.times do
      post = startup.posts.create!(
        user: startup.user, 
        title: @titles.sample, 
        startup: startup, 
        text: create_sentence, 
        likes: get_random_number, 
        dislikes: get_random_number, 
        public: get_random_bool,
        cover: upload_random_image_post_cover
      )


      tag_names = @tags.sample(rand(2..3))
      lowercase_tag_names = []
      tag_names.each do |tag|
        lowercase_tag_names << tag.downcase
      end

      post.tag_list = lowercase_tag_names
      post.category_list = @categories.sample.downcase
      post.save!
      puts "Post with title #{post.title} with tags #{post.tag_list} and category #{post.category_list} just created"
    end
  end

  User.all.each do |user|
    quantity.to_a.sample.times do
      post = user.posts.create!(
        title: @titles.sample, 
        text: create_sentence, 
        likes: get_random_number, 
        dislikes: get_random_number, 
        public: get_random_bool,
        cover: upload_random_image_post_cover
      )

      tag_names = @tags.sample(rand(2..3))
      lowercase_tag_names = []
      tag_names.each do |tag|
        lowercase_tag_names << tag.downcase
      end

      post.tag_list = lowercase_tag_names
      post.category_list = @categories.sample.downcase
      post.save!
      puts "Post with title #{post.title} just created"
    end
  end
end




def create_startup(quantity)
  User.all.each do |user|
    quantity.to_a.sample.times do
      startup = user.startups.create!(
        name: @startups.sample, 
        description: create_sentence, 
        public: get_random_bool,
        avatar: upload_random_image_startup_avatar
      )

      tag_names = @tags.sample(rand(2..3))
      lowercase_tag_names = []
      tag_names.each do |tag|
        lowercase_tag_names << tag.downcase
      end

      startup.tag_list = lowercase_tag_names
      startup.save!
      puts "Startup with title #{startup.name} and tags #{startup.tag_list} just created by user #{user.email}"
    end
  end
end

def create_comment(quantity)
  Post.all.each do |post|
    i = 1

    quantity.to_a.sample.times do
      user = User.all.sample
      comment = post.comments.create!(
        user: user, 
        text: create_sentence, 
        likes: get_random_number, 
        dislikes: get_random_number, 
        taps: get_random_number)
      i += 1
      puts "Comment with text #{comment.text} just build for post #{comment.post.title} just created"
    end
  end
end

#def create_tags
#  tags_arr = []
#  2..5.times do
#    tags_arr << @tags.sample
#  end
#  tags_arr.join(", ")
#end


seed


#def create_chat(quantity)
#  User.all.each do |user|
#    i = 1
#
#    quantity.to_a.sample.times do
#      if user.present?
#        chat = user.chats.create!(name: "Чат #{i}", user: user)
#        puts "Chat number #{i} just build for user #{chat.user.email} just created"
#        i += 1
#      end
#    end
#  end
#end
#
#def create_message(quantity)
#  Chat.all.each do |chat|
#    i = 1
#
#    quantity.to_a.sample.times do
#      user = User.all.sample
#      message = chat.messages.create!(text: create_sentence, author_name: user.email, user: user)
#      i += 1
#      puts "Message with text #{message.text} just build for chat #{message.chat.name} just created"
#    end
#  end
#end
