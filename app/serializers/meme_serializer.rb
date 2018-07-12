class MemeSerializer < ActiveModel::Serializer
  attributes :id, :title, :gif_text, :user_name

  def user_name
    object.user.name
  end
end
