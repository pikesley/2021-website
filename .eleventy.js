const yaml = require("js-yaml");

module.exports = function (eleventyConfig) {
  // Return your Object options:
  eleventyConfig.addDataExtension("yaml", (contents) => yaml.load(contents));
  return {
    dir: {
      input: "src",
      output: "public",
    },
  };
};
