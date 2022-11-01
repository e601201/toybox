=begin
コンテンツ概要
コード例で定義しているPostcardクラスは、Mailモジュールをインクルードしています。そのMailモジュールを定義しましょう。Mailモジュールがインクルードした結果、Postcardクラスに渡される機能は、出力例から推測してください。

この演習を回答するのに必要と思われる時間は、10分です。

演習
以下のコード例を実行した時に、出力例のような文が標準出力へ出力されるように、コードにincludeされる「Mail」モジュールを定義してください。
=end

#回答
# module Mail
#   def write(message)
#     @message = message
#   end
#   def send
#     puts "#{Time.now}: Sending a Postcard to #{@recipient}."
#   end
#   def to_s
#     puts <<~EOS
#     Postcard of #{Time.now}

#     Dear #{@recipient},
    
#     #{@message}

#     Sincerely,
#     #{@sender}
#     EOS
#   end
# end

#模範回答
module Mail
  attr_reader :sender, :recipient, :text, :date

  def send
    puts "#{@date = Time.now}: Sending a #{self.class} to #{self.recipient}."
  end

  def write(text)
    @text = text
  end

  def to_s
    "#{self.class} of #{@date}:\n\nDear #{@recipient},\n\n#{@text}\n\nSincerely,\n#{@sender}"
  end
end

class Postcard
  include Mail
  
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end

card = Postcard.new("Me", "Friend")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card

=begin
出力例
Tue Mar 22 11:59:16 +0900 2011: Sending a Postcard to Friend.
------------------------------------------------------------
Postcard of Tue Mar 22 11:59:16 +0900 2011:

Dear Friend,

Did you forget my birthsday?

Sincerely,
Me
=end