require "csv"

puts "1(新規でメモを作成する）　2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を入力"
  file_name = gets.chomp
  file= File.open("#{file_name}.csv","w")
  
  puts "メモを入力"
  puts "入力したら、ctl+Dで保存"
  memo = STDIN.read
  file.puts "#{memo}"
  
elsif memo_type == 2
  puts "拡張子を除いたファイル名を入力"
  file_name = gets.chomp
  file = File.open("#{file_name}.csv","a")
  puts "メモを入力"
  puts "入力したら、ctl+Dで保存"
  memo = STDIN.read
  file.puts "#{memo}"
  
  
end