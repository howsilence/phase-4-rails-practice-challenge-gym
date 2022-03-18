class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :all_charges

  def all_charges
    self.object.memberships.sum(:charge)
  end
end
