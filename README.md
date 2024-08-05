# EstateSearch

![Version](https://img.shields.io/badge/dynamic/json?color=blue&label=version&prefix=v&query=%24.version&url=https%3A%2F%2Fe49ee07a33e40aab8c7c4b39816a12eb6734f2f0%40raw.githubusercontent.com%2FAutorama%2Fcustomers%2Fdevelop%2Fpackage.json)
![License](https://img.shields.io/badge/dynamic/json?color=888&label=license&query=%24.license&url=https%3A%2F%2Fe49ee07a33e40aab8c7c4b39816a12eb6734f2f0%40raw.githubusercontent.com%2FAutorama%2Fcustomers%2Fdevelop%2Fpackage.json)

Rails app to load Dog API images asynchronous.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Prerequisites

- Install [Ruby](https://www.ruby-lang.org/en/downloads/) 3.3.0
- Install [Rails](https://rubyonrails.org/) 7.1.3.4

## Installing

Pull the application code from the github repo.

```sh
git clone git@github.com:Vitalijus/estate-search.git
```

Change into the application directory.

```sh
cd estate-search
```

Install dependencies

```sh
bundle install
```

Run app

```sh
rails server
```

### Visit

- Open page: [http://localhost:3000/](http://localhost:3000/).

## Running the tests

Testing is implemented using

- rspec-rails

To run the whole test suite

```sh
bundle exec rspec
```

To run an individual spec

```sh
bundle exec rspec spec/path/to/test
```

## Authors

- **Vitalijus Desukas** - _Lead engineer_ -
  [Vitalijus](https://github.com/Vitalijus)
