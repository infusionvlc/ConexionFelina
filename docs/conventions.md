# Development Conentions

If you've just decided to contribute to the project's codebase, please read our
[installation](installation.md) and [beginner](beginners.md) guides to get started.

## Back-end: Ruby on Rails

### Code Conventions
We follow recommendations by [Airbnb's ruby style guide](https://github.com/airbnb/ruby).
You may want to use [Rubocop](https://github.com/rubocop-hq/rubocop) as a
static code analyzer to fulfill CodeClimate suggestions.

### Automated Testing
We are using [rspec](https://github.com/rspec/rspec-rails) along with
[shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) for our automated tests.

You may run all tests by typing:
```
rspec
```

Or a single file:
```
rspec spec/models/cat_spec.rb
```

Or a even a specific block or line in a file:
```
rspec spec/models/cat_spec.rb:3
```

## Front-end: React

### Code Conventions
We are currently developing our front-end views by building
[React](https://reactjs.org/) components along with
[Storybook](https://storybook.js.org/).

**MAKE SURE YOU DOWNLOAD THE LATEST CHANGES FROM THE `react` BRANCH FIRST**

- All web UI components can be found at `app/javascript/bundles/UI/components`
- All stories are found at `app/javascript/stories/ui`
- All [Jest](https://jestjs.io/) tests lay on `app/javascript/spec`

One of our main goals is to stick to
[Airbnb's JavaScript style guide](https://github.com/airbnb/javascript)
to make our code cleaner and clearer.


### Automated Testing
- Install and configuration [here](https://blog.arkency.com/testing-react-dot-js-components-with-jest-in-rails-plus-webpacker-plus-webpack-environment/)
we change the path to `app/javascript/spec`.
- Write your tests in `app/javascript/spec/`. Quick start tutorial [here](https://medium.com/capital-one-developers/unit-testing-behavior-of-react-components-with-test-driven-development-ae15b03a3689)
- You can test a file with `yarn test nameOfFile` for example `yarn test Input.test.js` if the file is in `app/javascript/spec`.
- Or run all test files with `yarn test`.

### Component styling
We are currently using CSS components for component styling.
You can check out the following example to get started:

https://github.com/gajus/react-css-modules#css-modules

### Starting storybook
`npm run storybook`

