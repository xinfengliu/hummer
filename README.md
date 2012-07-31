hummer
======

Too simple twitter web app on openshift cloud. 
Requires ruby 1.9 and rails 3.x
Support proxy (when you don't deploy it in the public cloud).

###Usage###

1. Create an account at http://openshift.redhat.com/ and setup environments as per the instructions of openshift website.

1. Create a domain then a rails app on openshift: 

     ```
     rhc app create -a <yourapp> -t ruby-1.9
     ```

1. Register your app on https://dev.twitter.com

1. Add this upstream quickstart repository

     ```
     git remote add upstream -m master https://github.com/xinfengliu/hummer.git
     git pull -s recursive -X theirs upstream master
     ```

1. Modify config/twitter_auth.yml, input your oauth_consumer_key and oauth_consumer_secret acquired in Step 3.

1. Modify the last line of config/twitter_auth.yml, input your app and domain name acquired in Step 1 and Step 2.

1. Push the code to openshift

     ```
     git push
     ```

1. Visit http://<yourapp>-<yourdomain>.rhcloud.com

###Acknowledgement###
In fact, I wrote this simple app in 2009 and at that time it leveraged https://github.com/mbleigh/twitter-auth. Since twitter-auth hasn't been updated since 2009, it is not compatible with rails 3, so for now I integrated some codes directly to my source repository.

###Issues###
Again, since twitter-auth was old, the codes does not work with http://api.twitter.com, instead, the codes still work with https://twitter.com. This means someday the codes might not work anymore. In fact, currently the twitter list timeline does not work in this simple app.


