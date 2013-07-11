module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    bower:
      production:
        options:
          cleanTargetDir: true
          cleanBowerDir: true
          targetDir: 'src/lib'

    coffee:
      production:
        options:
          bare: true
        files: [
          expand: true,
          src: '**/*.coffee',
          dest: 'build/script',
          cwd: 'src/script',
          ext: '.js'
        ]

    connect:
      server:
        options:
          port: 8080,
          base: 'build'

    clean:
      all:['build']

    compass:
      development:
        options:
          sassDir: 'src/style'
          cssDir: 'build/style'
          specify: 'src/style/angular-animate.sass'
      production:
        options:
          sassDir: 'src/style'
          cssDir: 'build/style'
          specify: 'src/style/angular-animate.min.sass'
          outputStyle: 'compressed'
      distribution:
        options:
          sassDir: 'src/style'
          cssDir: '../'
          specify: 'src/style/angular-animate.sass'
      distributionMinified:
        options:
          sassDir: 'src/style'
          cssDir: '../'
          specify: 'src/style/angular-animate.min.sass'
          outputStyle: 'compressed'

    jade:
      production:
        options:
          pretty: false
        files: [
          expand: true,
          src: '*.jade',
          dest: 'build',
          cwd: 'src/',
          flatten: true,
          ext: '.html'
        ]

    watch:
      compass:
        files: 'src/style/**/*.sass'
        tasks: 'compass'
        options:
          livereload: true
      coffee:
        files: 'src/script/**/*.coffee'
        tasks: 'coffee'
        options:
          livereload: true
      jade:
        files: 'src/**/*.jade'
        tasks: 'jade'
        options:
          livereload: true

  grunt.loadNpmTasks "grunt-bower-task"
  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-compass"
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks "grunt-contrib-jade"
  grunt.loadNpmTasks "grunt-contrib-watch"

  # Default task(s).
  grunt.registerTask "default", ["bower:production", "clean:all", "coffee", "compass", "jade", "connect", "watch"]