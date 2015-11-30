# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# data clear
Man.delete_all
Followrelation.delete_all
Message.delete_all

# id inialize
Man.connection.execute("delete from sqlite_sequence where name='men'")
Followrelation.connection.execute("delete from sqlite_sequence where name='followrelations'")
Message.connection.execute("delete from sqlite_sequence where name='messages'")


#Man.create(:name => "安藤")
#Man.create(:name => "佐藤")
#Man.create(:name => "加藤")
#Man.create(:name => "木下")
#Man.create(:name => "鈴木")
#Man.create(:name => "渡辺")

#Message.create(:user_id => 1, :text => "あー")
#Message.create(:user_id => 1, :text => "いー")
#Message.create(:user_id => 1, :text => "うー")
#Message.create(:user_id => 2, :text => "かー")
#Message.create(:user_id => 2, :text => "きー")
#Message.create(:user_id => 3, :text => "くー")
#Message.create(:user_id => 4, :text => "けー")


# フォロー関係
#Followrelation.create(:user_id => 1, :follow_id => 3)
#Followrelation.create(:user_id => 1, :follow_id => 5)
#Followrelation.create(:user_id => 2, :follow_id => 3)
#Followrelation.create(:user_id => 2, :follow_id => 1)
