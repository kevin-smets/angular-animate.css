module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    bower:
      development:
        options:
          cleanTargetDir: true
          cleanBowerDir: true
          targetDir: './src/lib'

    clean:
      all:['build']

    compass:
      development:
        options:
          sassDir: 'src/style/css'
          cssDir: 'build/css'

  grunt.loadNpmTasks "grunt-contrib-compass"

  # Default task(s).
  grunt.registerTask "default", ["bower:development", "clean:all", "coffee" ,"compass", "jade", "watch"]