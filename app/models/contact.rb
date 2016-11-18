class Contact < ApplicationRecord
  def pretty_update
    updated_at.strftime("%A, %b %d")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japanese_phone
    "+86 " + phone
  end

  def self.all_johns
      @contacts = Contact.all
      @all_johns = []
      @contacts.each do |contact|
        if contact.first_name == "Prince"
           @all_johns << contact
        end
      end
      @all_johns
  end
end
