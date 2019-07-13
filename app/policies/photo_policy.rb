class PhotoPolicy < ApplicationPolicy
  attr_reader :user, :photo

  def initialize(user, photo)
    @user = user
    @photo = photo
  end

  def show?
    true
  end

  def destroy?
    album_owner?
  end

  def update?
    album_owner?
  end

  def create?
    album_owner?
  end


  private

  def album_owner?
    photo.album.user_id == user&.id
  end
end
