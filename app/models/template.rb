class Template
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  #field :author_id, type: User
end
