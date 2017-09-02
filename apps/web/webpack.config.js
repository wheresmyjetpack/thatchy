const path = require('path');
const webpack = require('webpack');

module.exports = {
  entry:  {
    test: './assets/javascripts/test_component.js',
  },
  output: {
    filename: '[name].bundle.js',
    path: path.resolve('../..', 'public/assets'),
    publicPath: 'http://localhost:8080/assets/'
  },
  devtool: 'inline-source-map',
  devServer: {
    contentBase: path.resolve('../../public/assets'),
    hot: true,
    allowedHosts: [
      'localhost'
    ]
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin()
  ],
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
