fs = require 'fs'
sass = require 'node-sass'

describe 'theme-base', ->
  it 'compiles ok', (done) ->
    fs.readFile "#{__dirname}/../scss/theme.scss", 'utf8', (err, content) ->
      css = sass.renderSync data: content
      throw new Error "Failed to compile" unless css?.length > 0
      done()
