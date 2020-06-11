module ApplicationHelper
  include JsonWebToken
end

# 2020-06-11T17:38:17.610039+00:00 app[web.1]: /app/app/helpers/application_helper.rb:2:in `include': wrong argument type Class (expected Module) (TypeError)

# heroku ps:scale web=1