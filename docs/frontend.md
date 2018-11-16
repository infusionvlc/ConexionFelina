# Front-end development

## Conventions
We are currently developing our front-end views by building [React](https://reactjs.org/) components along with [Storybook](https://storybook.js.org/).

**MAKE SURE YOU DOWNLOAD THE LATEST CHANGES FROM THE `react` BRANCH FIRST**

- All web UI components can be found at `app/javascript/bundles/UI/components`
- All stories are found at `app/javascript/stories/ui`
- All [Jest](https://jestjs.io/) tests lay on `app/javascript/spec`

### Code quality
One of our main goals is to stick to Airbnb's JavaScript style guide to make our code cleaner and clearer.

https://github.com/airbnb/javascript

## Development Environment
### Installing the required tools
- To install Node.js

  `brew install node`

- To install Yarn

  `brew install yarn`

- To install Storybook and other dependencies

  `npm install`

  `yarn install`

### Running front-end tests
- Install and configuration [here](https://blog.arkency.com/testing-react-dot-js-components-with-jest-in-rails-plus-webpacker-plus-webpack-environment/) we change the path to `app/javascript/spec`.
- Write your tests in `app/javascript/spec/`. Quick start tutorial [here](https://medium.com/capital-one-developers/unit-testing-behavior-of-react-components-with-test-driven-development-ae15b03a3689)
- You can test a file with `yarn test nameOfFile` for example `yarn test Input.test.js` if the file is in `app/javascript/spec`.
- Or run all test files with `yarn test`.

### Component styling
We are currently using CSS components for component styling. You can check out the following example to get started:

https://github.com/gajus/react-css-modules#css-modules

### Starting storybook
`npm run storybook`
