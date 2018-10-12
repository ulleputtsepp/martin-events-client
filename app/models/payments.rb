class Payments

	def request
		net_http.request(req)
	end

	def req
    req2 = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    req2.body = body.to_json
    req2
  end

  def uri
    URI('http://vso17.cariba.ee/payments.json')
  end

  def net_http
    Net::HTTP.new(uri.host, uri.port)
  end

  def body
    {
      "amount": 120,
      "sender_account": "ulle",
      "recipient_name": "Ülle Püttsepp",
      "recipient_account": "test",
      "description": Event.first.name,
      "token": "2899cfab862af6858bb8c2eb174da0fe"
    }
end

end