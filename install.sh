if [[ ! -x `which elixir` ]]
  brew install elixir
fi

mix local.hex --force
mix local.rebar --force

mix deps.get
mix deps.compile

# get their personal access token

# write their personal access token into ~/.bellboy

mix escript.build
