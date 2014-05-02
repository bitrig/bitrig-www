'use strict';

module.exports = function (grunt) {
  grunt.loadNpmTasks('grunt-swig');
  grunt.loadNpmTasks('grunt-contrib-copy');

  grunt.initConfig({
    swig: {
      development: {
        init: {
          allowErrors: false,
          autoescape: true
        },
        dest: 'out',
        src: ['src/*.swig'],
        siteUrl: 'http://www.bitrig.org',
        generateSitemap: true,
        generateRobotstxt: true,
        footerdate: "<%= grunt.template.today('yyyy') %>",
        wikiurl: 'https://github.com/bitrig/bitrig/wiki/'
      }
    },

    copy: {
      statics: {
        files: [
          {expand: true, cwd: 'src/static/', src: ['**'], dest: 'out/'}
        ]
      }
    }
  });

  grunt.registerTask('default', ['swig', 'copy']);
};
