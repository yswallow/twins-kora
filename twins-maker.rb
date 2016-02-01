require 'erb'

str = File.read 'rakutan.csv'

hash = {}
subjects = []

default = {
  科目区分: "専門基礎科目",
  科目番号: "1234567",
  科目名: "クソ単位",
  単位数: "1.0",
  年度: "2015",
  評語: "D",
  合否: "否" }
  
str.each_line do |line|
  hash = {}
  line.chomp.split(',').each do |section|
    hash[ case section
      when /\A(専門)?(基礎)(科目)?\z/
        :科目区分
      when /\A\w{7}\z/
        :科目番号
      when /\A\d+\.\d\z/
        :単位数
      when /\A20\d\d\z/
        :年度
      when /\A(A\+|[ABCDPF])\z/
        :評語
      when /\A[合否]\z/
        :合否
      else
        :科目名
      end ] = section
  end
  subjects << default.merge(hash)
end


erb = ERB.new( File.read './layout.erb')
result = erb.result(binding)

#puts result
File.write('twins-kora.html', result)

