# UsOfBb
Display BrightBytes customer penetration on a physical map of the United States using LED lights
to convey the information.

Currently this is built on Elixir Nerves running on a Raspberry Pi 3.

## Installation
We started with a `nerves.new` project as [described here](https://hexdocs.pm/nerves/getting-started.html).

## Deploy
We must compile, make firmware and load it on a micro SD card. To start your Nerves app:

  * Install dependencies with `mix deps.get`
  * Create firmware with `mix firmware`
  * Burn to an SD card with `mix firmware.burn`

## Learn more

  * Official docs: https://hexdocs.pm/nerves/getting-started.html
  * Official website: http://www.nerves-project.org/
  * Discussion Slack elixir-lang #nerves ([Invite](https://elixir-slackin.herokuapp.com/))
  * Source: https://github.com/nerves-project/nerves
