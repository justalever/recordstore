![https://i.imgur.com/fjlYsDH.jpg](https://i.imgur.com/fjlYsDH.jpg)

# Ruby on Rails API with Vue.js

_ An 8-part tutorial on how to build a Ruby on Rails API based app using Vue.js as the frontend_

Did you know Ruby on Rails can be used as a strict API based backend application? What's the benefit to this? Think of it as a single source of truth for multiple _future_ applications to absorb and use this data directly. Anything from a native mobile application, to a front-end framework, can talk with this data. Many apps can essentially communicate with a "source of truth" in return which means more consistent applications for all.

In this build, I'll be crafting a simple but thorough application where Ruby on Rails is our backend and Vue.js + Axios is our front-end. I'll create two apps that communicate in order to achieve the same result of a normal Rails-based app but with all the perks of an API.

#### Used in this build

- `Rails 5.2.2`
- `Ruby 2.5`
- Gem `bcrypt 3.1.7`
- Gem `rack-cors`
- Gem [`redis 4.1.0`](https://github.com/redis/redis-rb)
- Gem [`jwt-sessions`](https://github.com/tuwukee/jwt_sessions)



### What are we building exactly?

This app at its core is simple. It will be an archive of vinyl records for sale and categorized by artist. We won't be implementing a ton of foreign logic but rather just getting the foundations of an API-based application in order. We'll touch on authentication (not using Devise &#x1f609;) and basic CRUD.

There will be two apps.

- A Ruby on Rails backend - This will handle our data, sessions, and authentication.
- A Vue.js frontend - This will be the view layer but also the one responsible for sending and receiving data to our rails-based backend. The front-end will run on a different instance using the [Vue-CLI](https://cli.vuejs.org/) to help us set up an app.

[Read and watch the whole tutorial series](https://web-crunch.com/ruby-on-rails-api-vue-js/)

