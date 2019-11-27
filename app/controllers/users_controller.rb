class UsersController < ApplicationController
  def index
    users = User.select(:id, :name).order(created_at: :desc)

    render partial: 'users/users_table', locals: { users: users }
  end

  def create
    User.create(name: FFaker::Name.unique.name)

    render js: 'alert("OK")'
  end
end
