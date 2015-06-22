/*
 * grunt-autoprefixer
 *
 * Copyright (c) 2013 Dmitry Nikitenko
 * Licensed under the MIT license.
 */

module.exports = function(grunt) {
    grunt.initConfig({
        autoprefixer: {
            options: {
            },
            single_file: {
                src: './css/my-styles.css',
                dest: './css/my-styles.css'
            },
        }
    });

    grunt.loadNpmTasks('grunt-autoprefixer');

    grunt.registerTask('default', ['autoprefixer']);

};
