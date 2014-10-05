module.exports = function(grunt) {
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.initConfig({
        sass: {
            test: {
                options: {
                    style: 'expanded',
                    sourcemap: 'none',
                    loadPath: './node_modules/bootcamp/dist'
                },
                files: {
                    './results.css': './tests.scss'
                }
            }
        },
        bootcamp: {
            files: {
                src: ['./results.css']
            }
        }
    });
    grunt.loadTasks('node_modules/bootcamp/tasks');
    return grunt.registerTask('test', ['sass', 'bootcamp']);
};
