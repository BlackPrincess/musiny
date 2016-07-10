# Musiny
## Instation

### For Mac(Dev)

```sh
# Elixir
brew install exenv
brew install elixir-build
echo 'export PATH="$HOME/.exenv/bin:$PATH"' >> ~/.zshenv # or ~/.bash_profile
echo 'eval "$(exenv init -)"' >> ~/.zshenv # or ~/.bash_profile

exenv install -l
exenv install 1.2.5
exenv global 1.2.5
```

```sh
# Postgresql
brew install postgres
initdb /usr/local/var/postgres -E utf8
postgres -D /usr/local/var/postgres
```

```sh
# /etc/hosts
127.0.0.1 postgre95
```

```sh
mix deps.get
mix ecto.create && mix ecto.migrate
npm install
mix phoenix.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
