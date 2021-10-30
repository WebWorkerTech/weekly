const data = require("./data.json");
module.exports = {
  title: "Web Worker Weekly",
  description: "Web 海洋里乘风破浪！",
  base: "/",
  lang: "zh-CN",
  themeConfig: {
    repo: "WebWorkerFM/weekly",
    docsDir: "docs",

    sidebar: {
      "/": data,
    },
  },
};
