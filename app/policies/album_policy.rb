class AlbumPolicy < ApplicationPolicy
  attr_reader :user, :album

  def initialize(user, album)
    @user = user
    @album = album
  end

  def destroy?
    album.user_id == user&.id
  end

  def update?
    album.user_id == user&.id
  end

  def create?
    !user.nil?
  end
end
