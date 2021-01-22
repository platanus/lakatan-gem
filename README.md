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
  config.site_url = "https://lakatan.dev/api/v1/bearers"
  config.authorization_token = "XXX"
end
```

### Resources

#### User

##### Find User

```ruby
user = Lakatan::User.find(115)
```

**Attributes:**

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
user = Lakatan::Team.find(115)
```

**Attributes:**

```ruby
user.id #=> 115
user.name #=> "Keepers of the seven keys"
user.purpose #=> "Definir cómo se entregan accesos y permisos a los distintos sistemas que necesitamos dentro de Platanus."
user.created_at #=> Thu, 17 Dec 2020 20:40:08 +0000
user.updated_at #=> Thu, 24 Dec 2020 20:23:00 +0000
user.user_ids #=> [139, 140]
user.task_ids #=> [33, 99]
```

##### Find Teams

```ruby
users = Lakatan::Team.all
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
