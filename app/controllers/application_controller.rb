class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  

  get "/friendships" do
{message: "Hello to my friendships!"}.to_json
  end

  get "/users" do
    {message: "Hello to my users!"}.to_json
  end


  get "/transactions" do
    {message: "Hello to my transactions!"}.to_json
    transactions_all = Transaction.all 
    transactions_all.to_json
  end

  get "/transactions/:id" do
	begin
		found_transaction = Transaction.find(params[:id])
		found_transaction.to_json
	end
end

  post "/transactions" do
    create_transactions = Transaction.create(params)
    create_transactions.to_json
  end
 
  get "/transaction_sender" do
    transaction_sender = Transaction.first.sender
    transaction_sender.to_json
  end

  get "/transaction_receiver" do
    transaction_receiver = Transaction.first.receiver 
    transaction_receiver.to_json
  end

end