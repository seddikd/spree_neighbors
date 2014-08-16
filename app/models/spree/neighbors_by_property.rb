class Spree::NeighborsByProperty < ActiveRecord::Base
  belongs_to :property, class_name: "Spree::Property"
  belongs_to :neighbors_settings, class_name: "Spree::NeighborsSettings"
end
