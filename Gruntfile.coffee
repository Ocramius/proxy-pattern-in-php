# Generated on 2013-10-28 using generator-reveal 0.2.0
module.exports = (grunt) ->

    grunt.initConfig

        watch:

            livereload:
                options:
                    livereload: true
                files: [
                    'index.html',
                    'slides/*.md',
                    'slides/*.html',
                    'js/*.js'
                ]

            coffeelint:
                files: ['Gruntfile.coffee']
                tasks: ['coffeelint']

            jshint:
                files: ['js/*.js']
                tasks: ['jshint']

        connect:

            livereload:
                options:
                    port: 9000
                    # Change hostname to '0.0.0.0' to access
                    # the server from outside.
                    hostname: 'localhost'
                    base: '.'
                    open: true
                    livereload: true

        coffeelint:

            options:
                indentation:
                    value: 4

            files: ['Gruntfile.coffee']

        jshint:

            options:
                jshintrc: '.jshintrc'

            files: ['js/*.js']

    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    grunt.registerTask 'server',
        'Run presentation locally and start watch process (living document).', [
            'connect:livereload',
            'watch'
        ]

    # Define default task.
    grunt.registerTask 'default', [
        'coffeelint',
        'jshint',
        'connect:livereload',
        'watch'
    ]
