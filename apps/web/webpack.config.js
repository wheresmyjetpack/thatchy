const path = require('path');

module.exports = {
  entry:  {
    test: './assets/javascripts/test_component.js',
  },
  output: {
    filename: '[name].bundle.js',
    path: path.resolve('../..', 'public/assets')
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /(node_modules|bower_components)/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['env']
          }
        }
      }
    ]
  }
}
