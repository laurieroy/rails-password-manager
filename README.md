# Password Manager

This is a password manager built in Rails 7. This is my first time playing around with the new model-level encryption. It uses the browser's navigator clipboard to 
copy the passwords.

Tech Stack
CSS: tailwind
Database: Postgresql
Icons: HeroIcons
Ruby: 3.2.2
User: Devise

The problem solved with this app is to be able to share passwords, so many-to-many for both user and password instead of the usual one-to-many. The expected user is someone who wants to share passwords with other known users, so not adding invitations at this time.


<!-- [GoRails tutorial](gorails.com) -->
  <!-- ## Run locally
  Clone Repo
  ```
  ```
 
  Change to that directory (if renamed in previous step, obviously use that name)
  ```
  cd password_manager
  ```

Install dependencies
```
bundle
```

Create database and run migrations
```
rails db:create && 
``` -->

To start up server + tailwind HMR: 

  ```
  bin/dev
  ```  

  TODO:
  - Update UI - show page, add copy icon to button, tooltip for copied, so size doesn't change

  NExt up: sharing passwords between users