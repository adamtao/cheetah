CheetahMail for ruby
====================

A fork of Dan Rodriguez' original gem which interacts with the CheetahMail API. This is an attempt to make it work with newer rubies (the original only seemed to work ruby 1.8.x).

To use this fork in your project, add to your Gemfile:

```ruby
gem 'cheetah_mail', git: 'https://github.com/adamtao/cheetah_mail.git'
```

Then run bundler. 


Usage
----------------------

Basically you create a Cheetah instance like so:

```ruby
cheetah = CheetahMail::CheetahMail.new({
  :host             => 'ebm.cheetahmail.com',
  :username         => 'foo_api_user',
  :password         => '12345',
  :aid              => '67890',                  # the 'affiliate id'
  :whitelist_filter => //,                       # if set, emails will only be sent to addresses which match this pattern
  :enable_tracking  => true,                     # determines whether cheetahmail will track the sending of emails for analytics purposes
  :messenger        => CheetahMail::ResqueMessenger
})
```

Options for :messenger include CheetahMail::ResqueMessenger or CheetahMail::SynchronousMessenger .

To send a message:
```ruby
cheetah.send_email(
  eid,    # cheetahmail's EID for the event triggered email
  email,
  params, # a hash of parameters used to populate any dynamic fields in the email template
)
```

To add or update a description:
```ruby
cheetah.mailing_list_update(
  email,
  params # a hash of parameters to populate the mailing list fields with
)
```

Finally, update someone's email address:
```ruby
cheetah.mailing_list_email_change(
  oldemail,
  newemail
)
```
