# Stackbit Exto Theme

This site was generated by [www.stackbit.com](https://www.stackbit.com), v0.2.92.

Stackbit Exto Theme original README is located [here](./README.theme.md).

The content of this site is managed by Sanity.io. Visit https://__SANITY_PROJECT_NAME__.sanity.studio/ to manage site content

# Running Your Site Locally

1. Install [Node.js and npm](https://nodejs.org/en/)

1. Install npm dependencies:

        npm install

1. get "netlify-api-key" from project menu in [Stackbit dashboard](https://app.stackbit.com/dashboard)

1. run the following command to assign this key to `STACKBIT_API_KEY` environment variable:

        export STACKBIT_API_KEY={stackbit_netlify_api_key}

1. run the following command to fetch site contents from Sanity:

        npx @stackbit/stackbit-pull --stackbit-pull-api-url=__STACKBIT_PULL_API_URL__

1. [Optional] Running Sanity Studio locally: install sanity-cli `npm install -g @sanity/cli`, navigate to the `/studio` directory, and run `sanity install` and `sanity start`.
You may be required to login with the Sanity CLI.

1. Starts a development server

        npm run develop

1. Browse to [http://localhost:8000/](http://localhost:8000/)
