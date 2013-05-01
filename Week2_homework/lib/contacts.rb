##
# class to manage list of contacts
#
class Contacts

  ##
  # create a Contacts object from string of pipe delimited ("|") fields, one record per line
  # e.g. "Brandon Faloona|Seattle|WA|bfaloona@uw.edu\nBarack Obama|Washington|DC|president@wh.gov"
  #
  def initialize data
    @raw_entries = data.split("\n")
    # set @contacts to an array of contacts
    @contacts = @raw_entries.collect do |line|
      contact_hash line
    end
  end

  def raw_entries
    @raw_entries
  end

  ##
  # the list of fields expected in input lines
  #
  def fields
    [:full_name, :city, :state, :email]
  end

  ##
  # create a contact (a hash) from raw input line
  #
  def contact_hash line
    values = line.split("|")
    Hash[fields.zip values]
  end

  ##
  # return a comma separated list of formatted email addresses
  #
  def email_list
    @raw_entries.collect do |line|
      name, city, state, email = line.split("|")
      format_email_address name, email.chomp
    end.join(", ")
  end

  ##
  # returns "Display Name" <email@address> given name and email
  #
  def format_email_address name, email
    %{\"#{name}\" <#{email}>}
  end

  def num_entries
    @raw_entries.length
  end

  def contact index
    @contacts[index.to_i]
  end

  #########

  def format_contact(hash = {})

    @full_name = hash[:full_name]
    @city = hash[:city]
    @state = hash[:state]
    @email = hash[:email]

    %{"#{@full_name} of #{@city} #{@state}" <#{@email}>}
  end

  def all

    @contacts

  end

  def formatted_list
      concattest = Array.new
      str = ""

     for index in 0 ... all.size
       concattest.push  format_contact(all[index])
     end

      str = concattest.join ("\n")

  end

  def full_names
    names = Array.new

    for index in 0 ... all.size
      names.push all[index] [:full_name]
    end

    names

  end

  def cities

    cities = Array.new
    str = ""
    for index in 0 ... all.size
      cities.push all[index] [:city]
    end

    cities.uniq

  end

  def append_contact contact

    @contacts << contact

  end

  def delete_contact index

    @contacts.delete_at(index)

  end

  def search string

    @contacts.select {|x| x.value? string}

  end

  def all_sorted_by field
    @contacts.sort {|x,y| x[field] <=> y[field]  }
  end
  
end
