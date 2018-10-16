class MessageMailer < ApplicationMailer
  # デフォルトでの送信元のアドレス
  default from: "kyorohiro@gmail.com"

  def hello(name)
    @name = name
    mail(
      # TOは単体のメールアドレスでもArrayのメールアドレスでも大丈夫
      to:      'kyorohiro+777@gmail.com',
      subject: 'Mail from Message',
    ) do |format|
      format.html
    end
  end
end
