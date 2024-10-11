# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@names = ['Марина','Сережа','Оля','Максим','Ксения','Злата','Саша','Настя','Ева']

@titles = ['Очень здорово','Вот это да','Новость века','Шикарный продукт','Кто напишет код?']

@startups = ['Киоски с конфетами','Искусственная радуга','Цирк из людей','Школа для носорогов','Прогерский коворкинг']

def seed
  reset_db
  create_user(10)
  create_chat(2...5)
  create_message(2...8)
  create_post(2...8)
  create_startup(1...3)
  create_comment(2...8)
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_user(quantity)
  quantity.times do
    user = User.create!(name:  @names.sample)
    puts "User with name #{user.name} just created"
  end
end

def create_post(quantity)
  User.all.each do |user|
    quantity.to_a.sample.times do
      post = user.posts.create!(title:  @titles.sample)
      puts "Post with title #{post.title} just created"
    end
  end
end

def create_startup(quantity)
  User.all.each do |user|
    quantity.to_a.sample.times do
      startup = user.startups.create!(name:  @startups.sample)
      puts "Startup with title #{startup.name} just created"
    end
  end
end

def create_chat(quantity)
  User.all.each do |user|
    i = 1

    quantity.to_a.sample.times do
      chat = user.chats.create!(chat_number: i)
      i += 1

      puts "Chat with name #{chat.chat_number} just build for user #{chat.user.name} just created"
    end
  end
end

def create_message(quantity)
  Chat.all.each do |chat|
    i = 1

    quantity.to_a.sample.times do
      message = chat.messages.create!(text: "Текст сообщения номер #{i}")
      i += 1

      puts "Message with text #{message.text} just build for chat #{message.chat.chat_number} just created"
    end
  end
end

def create_comment(quantity)
  Post.all.each do |post|
    i = 1

    quantity.to_a.sample.times do
      comment = post.comments.create!(text: "Текст комментария номер #{i}")
      i += 1

      puts "Comment with text #{comment.text} just build for chat #{comment.post.title} just created"
    end
  end
end

seed