require "csv"

puts "「 あ 」＝新規でメモを作成　「 い 」＝既存のメモを編集する"

memo_type = gets.chomp

if memo_type == "あ"
  puts "拡張子を除いたファイル名を入力"
  file_name = gets.chomp
  file= File.open("#{file_name}.csv","w")
  
  puts "メモを入力"
  puts "入力したら、「ENTER」で保存"
  memo = gets
  file.puts "#{memo}"
  
elsif memo_type == "い"
  puts "拡張子を除いたファイル名を入力"
  file_name = gets.chomp
  file = File.open("#{file_name}.csv","a")
  puts "メモを入力"
  puts "入力したら、「ENTER」で保存"
  memo = gets
  file.puts "#{memo}"
  
  
end