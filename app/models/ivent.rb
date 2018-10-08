class Ivent < ApplicationRecord
  belongs_to :user
  has_many :photos
 
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Ivent.where(['ivent_title LIKE ?', "%#{search}%"])

    else
      Ivent.all #全て表示。
    end
  end
end

