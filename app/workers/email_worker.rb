class EmailWorker
  include Sidekiq::Worker

  def perform(*args)
    SendMail.new.send# Do something
  end
end