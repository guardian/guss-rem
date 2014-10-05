module.exports = (grunt) ->

  # Modules
  grunt.loadNpmTasks 'grunt-contrib-sass'

  # Grunt Tasks
  grunt.initConfig
    sass: test:
      options:
        style: 'expanded'
        sourcemap: 'none'
        loadPath: './node_modules/bootcamp/dist'
      files: './results.css' : './tests.scss'

    bootcamp:
      files: src: ['./results.css']

  grunt.loadTasks 'node_modules/bootcamp/tasks'

  grunt.registerTask 'test',    ['sass', 'bootcamp']