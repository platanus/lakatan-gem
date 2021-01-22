# Lakatan

Ruby Gem to play nice with Lakatam

## Installation

```bash
$ gem install lakatan
```

Or add to your Gemfile:

```ruby
gem "lakatan"
```

```bash
bundle install
```

## Usage

Initialize with the following code:

```ruby
Lakatan.setup do |config|
  config.site_url = "https://lakatan.dev"
  config.url_prefix = "/api/v1/bearers/"
  config.authorization_token = "XXX"
end
```

### Resources

#### User

##### Find User

```ruby
user = Lakatan::User.find(115)
```

###### Attributes:

```ruby
user.id #=> 115
user.name #=> "Andrés Matte"
user.email #=> "andres@platan.us"
user.created_at #=> Thu, 17 Dec 2020 20:40:08 +0000
user.updated_at #=> Thu, 24 Dec 2020 20:23:00 +0000
user.team_ids #=> [103, 97, 96]
user.teams #=> [#<Lakatan::Team:0x00007f93be276178>, #<Lakatan::Team:0x00007f93be276171]
```

##### Find Users

```ruby
users = Lakatan::User.all
```

#### Team

##### Find Team

```ruby
team = Lakatan::Team.find(115)
```

###### Attributes:

```ruby
team.id #=> 115
team.name #=> "Keepers of the seven keys"
team.purpose #=> "Definir cómo se entregan accesos y permisos a los distintos sistemas que necesitamos dentro de Platanus."
team.created_at #=> Thu, 17 Dec 2020 20:40:08 +0000
team.updated_at #=> Thu, 24 Dec 2020 20:23:00 +0000
team.user_ids #=> [139, 140]
team.task_ids #=> [33, 99]
team.users #=> [#<Lakatan::User:0x00007f93be276178>, #<Lakatan::User:0x00007f93be276171]
team.tasks #=> [#<Lakatan::Task:0x00007f93be276178>, #<Lakatan::Task:0x00007f93be276171]
```

##### Find Teams

```ruby
teams = Lakatan::Team.all
```

#### Task

##### Find Task

```ruby
task = Lakatan::Task.find(115)
```

###### Attributes:

```ruby
task.id #=> 115
task.name #=> "Primera entrevista startup"
task.goal #=> "Ir a la primera entrevista startup PV"
task.raffle_type #=> "Equity"
task.created_at #=> Thu, 17 Dec 2020 20:40:08 +0000
task.updated_at #=> Thu, 24 Dec 2020 20:23:00 +0000
task.label_id #=> 0
task.user_minimum #=> 100
task.team_id #=> 10
task.team #=> #<Lakatan::Team:0x00007f93be276178>
```

###### Raffle:

```ruby
raffle = task.raffle #=> #<Lakatan::Raffle:0x00007f93be276178>
raffle.users #=> [#<Lakatan::User:0x00007f93be276178>, #<Lakatan::User:0x00007f93be276171]
```

```ruby
raffle = task.raffle(user_ids: [1, 2]) #=> #<Lakatan::Raffle:0x00007f93be276178>
raffle.users #=> [#<Lakatan::User:0x00007f93be276178>, #<Lakatan::User:0x00007f93be276171]
```

##### Find tasks

```ruby
tasks = Lakatan::Task.all
```

## Testing

To run the specs you need to execute, **in the root path of the gem**, the following command:

```bash
bin/guard
```

You need to put **all your tests** in the `/lakatan/spec/` directory.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Thank you [contributors](https://github.com/platanus/lakatan/graphs/contributors)!

<img src="http://platan.us/gravatar_with_text.png" alt="Platanus" width="250"/>

Lakatan is maintained by [platanus](http://platan.us).

## License

Lakatan is © 2021 platanus, spa. It is free software and may be redistributed under the terms specified in the LICENSE file.
