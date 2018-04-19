# 2-7-9 手続きオブジェクト
# Procについてはあまり触っていなかったので、復習
greeter = Proc.new { |name| puts "Hello, #{name}" }

greeter.call 'Proc' # 'Hello,Proc!'
greeter.call 'Ruby' # 'Hello,Ruby!'

format = Proc.new { |name|
  name = name.capitalize
  "Hello.#{name}"
}

p format.call('alice') # 'Hello,Alice!'

# しかし、Ruby1.9以降は->がよく用いられる
by_proc = proc { |name| puts "Hello,#{name}" }
by_lambda = lambda { |name| puts "Hello,#{name}" }
by_literal = ->(name) { puts "Hello,#{name}" }

by_proc.call('Jagi')
by_lambda.call('Rei')
by_literal.call('Ken')