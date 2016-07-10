/* eslint-env node */
const path = require('path')
const ExtractTextPlugin = require("extract-text-webpack-plugin");

const shareCSS = new ExtractTextPlugin('css/share.css');

module.exports = {
  context: path.resolve(__dirname, 'web/static'),
  entry: {
    app: './js/app/app.js',
    admin: './js/admin/admin.js'
  },
  output: {
    path: path.resolve(__dirname, 'priv/static'),
    filename: 'js/[name].js'
  },
  resolve: {
    modulesDirectories: ['node_modules'],
    extensions: ['', '.js', '.css', '.scss', '.vue']
  },
  module: {
    loaders: [
      { test: /\.js$/, loader: 'babel', exclude: /node_modules/ },
      { test: /\.scss$/, loader: 'sass' },
      { test: /\.vue$/, loader: 'vue' },

      // bootstrap
      { test: /\.(woff|woff2)(\?v=\d+\.\d+\.\d+)?$/, loader: 'url?limit=10000&mimetype=application/font-woff' },
      { test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/, loader: 'url?limit=10000&mimetype=application/octet-stream' },
      { test: /\.eot(\?v=\d+\.\d+\.\d+)?$/, loader: 'file' },
      { test: /\.svg(\?v=\d+\.\d+\.\d+)?$/, loader: 'url?limit=10000&mimetype=image/svg+xml' }
    ],
    postLoaders: [
      { test: /\.s?css$/, loader: shareCSS.extract('style', 'css') },
    ]
  },
  plugins: [
    shareCSS
  ]
}
