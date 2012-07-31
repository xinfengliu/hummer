hummer
======

Too simple twitter web app on openshift cloud.

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


