class Contact
  include ActiveModel::Model
  include ActiveModel::Validations
  include ActiveModel::Serialization

  attr_accessor :full_name, :email_address, :comments

  validates :full_name, :email_address, :comments, presence: true

  def save
    return unless valid?
    Pony.mail(
      to: ENV['CONTACT_EMAIL'],
      from: ENV['CONTACT_EMAIL'],
      subject: 'brittany.design contact form entry',
      body: self.serializable_hash)
  end

  def attributes
    { 'full_name' => nil,
      'email_address' => nil,
      'comments' => nil }
  end

end
