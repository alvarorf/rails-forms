# Ruby on Rails Bare Metal Forms and Helpers

> Welcome to our **Ruby on Rails Bare Metal Forms and Helpers** built mainly with `Ruby` and `Ruby on Rails`. The main purpose of this app is to practice the use of form helper functions (such as *form_for*) in `Ruby on Rails`.

### Built With

- Ruby
- Ruby on Rails
- Rubocop
- Visual Studio Code
- Linux
- SQL

### Setup

NOTE: You need to have `Bundler` installed and, of course, `Ruby`. If don't have `Bundler` installed you can install it with `gem install bundler`.

Assuming that `Bundler` is installed, you can continue with the following steps:
- Step 1: Clone this repository. Just use: `git clone https://github.com/guillainbisimwa/micro-reddit/`.
- Step 2: Open the project folder where the repository was downloaded. Once you are in that folder, open a terminal and make sure that it will be opened in that specific folder.
- Step 3: Once you are in the terminal, just type in: `bundle install`. This will install the required dependencies for this project.
- Step 4: Now, you need to run the migrations. To do this, while in the project root folder type in: `rails db:migrate`.
- Step 5: Now, to try the project type in: `rails server` and then go to `localhost:3000/users/new`. There, you will be able to add users (make sure that you type in a valid email address, a user longer than 3 characters and a password of at least 8 characters). If you want to edit a user, you can do so by going to `localhost:3000/users/:id/edit`, for instance: `localhost:3000/users/1/edit` to edit the information of the user with the id of 1. If you are unsure if this worked, you can check the users created by typing in in your terminal `rails console` and then listing the users with `User.all`.

### Authors

👤 **Alvaro Ruiz**

- Github: [@alvarorf](https://github.com/alvarorf)
- Twitter: [@aaruizf](https://twitter.com/aaruizf)
- Linkedin: [Álvaro Ruiz](https://www.linkedin.com/in/alvaro-andr%C3%A9s-ruiz-florez/)

👤 **Guillain Bisimwa**

- Github : [@guillainbisimwa](https://github.com/guillainbisimwa)
- Twitter : [@gullain_bisimwa](https://twitter.com/gullain_bisimwa)
- Linkedin : [guillain-bisimwa](https://www.linkedin.com/in/guillain-bisimwa-8a8b7a7b/)

### 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

### Show your support

Give a ⭐️ if you like this project!


### 📝 License

This project is for microverse course purposes.
