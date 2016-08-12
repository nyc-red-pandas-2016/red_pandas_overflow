get '/' do
  erb :'index'
end

content_for_users = [
  { :username => "waltercat",
    :email  => "walter@cat.com",
    :password => "password"
    },
  { :username => "neillcat",
    :email  => "neill@cat.com",
    :password => "password"
    },
    { :username => "meowmatt",
    :email  => "matt@cat.com",
    :password => "password"
    },
    { :username => "meowlisa",
    :email  => "elisa@cat.com",
    :password => "password"
    },
    { :username => "ameowir",
    :email  => "amir@cat.com",
    :password => "password"
    },
]
