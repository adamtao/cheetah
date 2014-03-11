CheetahMail for ruby
====================

A fork of Dan Rodriguez' original gem which interacts with the CheetahMail API. This is an attempt to make it work with newer rubies (the original only seemed to work ruby 1.8.x).

To use this fork in your project, add to your Gemfile:

```ruby
gem 'cheetah', git: 'https://github.com/harman-signal-processing/cheetah.git'
```

Then run bundler. There are a whole lot of dependencies. I'm trying to sort out which are really still needed.


Original Documentation
----------------------

Sorry for not much documentation. I have to work on that...

But basically you create a Cheetah instance like so:


    cheetah = Cheetah::Cheetah.new({
      :host             => 'ebm.cheetahmail.com',
      :username         => 'foo_api_user',
      :password         => '12345',
      :aid              => '67890',                  # the 'affiliate id'
      :whitelist_filter => //,                       # if set, emails will only be sent to addresses which match this pattern
      :enable_tracking  => true,                     # determines whether cheetahmail will track the sending of emails for analytics purposes
      :messenger        => Cheetah::ResqueMessenger
    })


,and then there are three methods you need to know about:


    cheetah.send_email(
      eid,    # cheetahmail's EID for the event triggered email
      email,
      params, # a hash of parameters used to populate any dynamic fields in the email template
    )
    
    cheetah.mailing_list_update(
      email,
      params # a hash of parameters to populate the mailing list fields with
    )
    
    cheetah.mailing_list_email_change(
      oldemail,
      newemail
    )
