# global module: false
# require 'bootcamp'
module.exports = (grunt) ->

  # Modules
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Grunt Tasks
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    meta: version: '<%= pkg.version %>'

    # Sass
    sass: test:
      options:
        style: 'expanded'
        sourcemap: 'none'
        loadPath: './node_modules/bootcamp/dist'
      files: './results.css' : './tests.scss'

    # Bootcamp
    bootcamp:
      files: src: ['./results.css']

  grunt.loadTasks 'node_modules/bootcamp/tasks'

  # Tasks
  grunt.registerTask 'test',    ['sass', 'bootcamp']