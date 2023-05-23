module.exports = {
  apps: [
    {
      name: "TSWaitingList",
      script: "./bin/www",

      env: {
        NODE_ENV: "development",
      },
      env_production: {
        NODE_ENV: "production",
      },
    },
  ],
};
