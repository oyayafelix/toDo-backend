class ApplicationController < Sinatra::Base

  # Get all owners
  get '/owners' do
    owners = Owner.all
    owners.to_json
  end

  # Create a new owner
  post '/owners' do
    owner = Owner.create(name: params[:name])
    owner.to_json
  end

  # Get all todos
  get '/todos' do
    owners = Todo.all.order(:created_at)
    owners.to_json
  end

  # Create new todos
  post '/todos' do
    todo = Todo.create(body: params[:body], owner_id: params[:owner_id])
    todo.to_json
  end

  # Update todo
  patch '/todos/:id' do 
    todo = Todo.all.find(id: params[:id])
    todo.update(body: params[:body])
    to.to_json
  end

  # Delete a todo
  delete '/todos/:id' do
    todo = Todo.all.find(params[:id])
    todo.delete
    todo.to_json
  end

end