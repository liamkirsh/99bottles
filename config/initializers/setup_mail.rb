ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'example.com',
  user_name:            'heyimuzz@gmail.com',
  password:             'testgithub',
  authentication:       'plain',
  enable_starttls_auto: true  
}