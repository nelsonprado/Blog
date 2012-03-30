class Post < ActiveRecord::Base
	has_many :comentarios

	validates :titulo, :presence => true, :length => { :minimum => 10 }
	validates :conteudo, :presence => true

	#has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
