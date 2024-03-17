# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


    Article.destroy_all
    article_path = File.join(File.dirname(__FILE__), "/article.json")
    article_records = JSON.parse(File.read(article_path))
    article_records.each do |record|
        Article.create!(record)
    end
    p "Created #{Article.count} articles"

    User.destroy_all
    user_path = File.join(File.dirname(__FILE__), "/user_sample.json")
    user_records = JSON.parse(File.read(user_path))
    user_records.each do |record|
        User.create!(record)
    end
    p "Created #{User.count} user samples"