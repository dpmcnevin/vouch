Vouch
=====

_Please Note_

This is very alpha code at the moment, I just extracted it from a project I am working on.

About
-----

Rails 3 engines to use OAuth2 for authentication

Client
------

To use, include in your `Gemfile`

    gem "vouch"
    
or, to get the latest changes:

    gem "vouch", :git => "git://github.com/dpmcnevin/vouch.git"
    
Then, run the generator

    rails generate vouch:client


Provider
--------

Coming in future releases.

Acknowledgements
----------------

 * [Intridea's OAuth2 gem](http://github.com/intridea/oauth2)
 * [The Modest Rubyist](http://www.themodestrubyist.com/2010/03/05/rails-3-plugins---part-2---writing-an-engine/)
 * [OAuth2 Draft Spec](http://tools.ietf.org/html/draft-ietf-oauth-v2)

Maintainer
----------

Dan McNevin - dpmcnevin@gmail.com