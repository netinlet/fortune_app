class Fortune
  include Mongoid::Document

  field :message, type: String
  field :category, type: String

  def self.random
    all.sample
  end

end
