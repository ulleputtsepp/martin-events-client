# Project: martin-events-client

## Recaptcha API 

obtain recaptcha API keys: https://www.google.com/recaptcha/admin#list

mark label: 'any you like'; choose the type of reCAPTCHA: 'checkbox'; Domains: 'localhost' or '127.0.0.1'; accept terms of services; register

cloning git repo:
```
git clone https://github.com/ulleputtsepp/martin-events-client
```
open the repo root folder:
```
cd martin-events-client
```
install gems:
```
bundle install
```

add site key and secret key into your secret.env file:
```
export RECAPTCHA_SITE_KEY = 'your key'
export RECAPTCHA_SECRET_KEY = 'your key'
```
in contact/index.html.erb
```
<%= recaptcha_tags %>
```
In .gitignore file:
```
/.ruby-env
secret.env
```
run
```
source secret.env
rails s
```

This is a README and is normally a document or whatever steps to get the application up and running

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.


### Prerequisites

You'll need:

*a computer*

### Installing

A step by step series of examples that tell you how to get a development up and running

Cloning git repo:
```
git clone https://github.com/sinivaal/martin-events-client
```
Opening the repo root folder:
```
cd martin-events-client
```
Important install (dont' ask why):
```
bundle install
```
Making database:
```
rake db:migrate
```
Starting rails server to see your result in a browser:
```
rails s
```

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Version 2.5.1p57
* [Rails](https://rubyonrails.org/) - Version 5.2.1


## Versioning

We use [Git](https://git-scm.com/) for versioning. For the versions available, see the [martin-events-client](https://github.com/sinivaal/martin-events-client). 

## Authors

See the list of [contributors](https://github.com/sinivaal/martin-events-client/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration


