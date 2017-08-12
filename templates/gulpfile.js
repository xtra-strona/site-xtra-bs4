var gulp = require('gulp');
var browserSync = require('browser-sync').create();
var zip = require('gulp-zip');

var concat = require('gulp-concat');
var rename = require('gulp-rename');
var uglify = require('gulp-uglify');

var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var sourcemaps = require('gulp-sourcemaps');

// Static Server + watching scss/php files
gulp.task('serve', ['sass', 'copy-fonts', 'copy-js', 'copy-css',  'scripts'], function() {

    browserSync.init({
        proxy: "localhost/proc-clear/",
        notify: false
            // browser: "chrome"
            // browser: "firefox"
    });

    gulp.watch("assets/scss/*.scss", ['sass']);
    gulp.watch("./**/*.php").on('change', browserSync.reload);
});

// Compile sass into CSS & auto-inject into browsers
gulp.task('sass', function() {
    return gulp.src("assets/scss/*.scss")

        .pipe(sourcemaps.init())

        .pipe(sass({
            outputStyle: 'nested', // nested,compact,expanded,compressed
        }).on('error', sass.logError))

        .pipe(autoprefixer({
            browsers: ['last 2 versions', 'ie >= 9', 'Android >= 2.3', 'Firefox >= 14']
        }))

        .pipe(sourcemaps.write('.'))

        .pipe(gulp.dest("assets/css"))
        .pipe(browserSync.stream());
});

//Compress SCSS File
gulp.task('minify-css', function() {

    return gulp.src("assets/scss/*.scss")

        .pipe(sass({
            outputStyle: 'compressed', // nested,compact,expanded,compressed
        }).on('error', sass.logError))

        .pipe(autoprefixer({
            browsers: ['last 2 versions', 'ie >= 9', 'Android >= 2.3', 'Firefox >= 14']
        }))

        .pipe(gulp.dest("assets/css"))

});


gulp.task('scripts', function() {
    return gulp.src([
                './bower_components/jquery/dist/jquery.min.js',
                './bower_components/owl.carousel/dist/owl.carousel.min.js',
                './bower_components/tether/dist/js/tether.min.js',
                './bower_components/bootstrap/dist/js/bootstrap.min.js',
                './bower_components/cookieconsent/build/cookieconsent.min.js',
                './bower_components/lazyloadxt/dist/jquery.lazyloadxt.min.js'
    ])
        .pipe(concat('scripts.js'))
        .pipe(gulp.dest('./assets/js/'))
        .pipe(rename('scripts.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('./assets/js/'));
});


//Create Folder build with zip package
gulp.task('zip', ['minify-css', 'copy-fonts', 'copy-js', 'copy-css',  'scripts'], () =>
    gulp.src([
        './**', '!./assets/img/raw{,/**/*}',
        '!./build-template{,/**/*}',
        '!./nbproject{,/**/*}',
        '!./bower_components{,/**/*}',
        '!./node_modules{,/**/*}',
        '!./bower.json',
        '!./assets/css/master.css.map',
        '!package.json',
        '!gulpfile.js',
        '!.gitignore',
        '!README.md',
        './master',
    ])
    .pipe(zip('your-page.zip'))
    .pipe(gulp.dest('./build'))
);

gulp.task('copy-fonts', function() {
    gulp.src('./bower_components/font-awesome/fonts/**/*')
        .pipe(gulp.dest('./assets/fonts'));
});

gulp.task('copy-js', function() {
    gulp.src([
            './bower_components/jquery/dist/jquery.min.js',
            './bower_components/jquery/dist/jquery.slim.min.js',
            './bower_components/bootstrap/dist/js/bootstrap.min.js',
            './bower_components/tether/dist/js/tether.min.js',
            './bower_components/owl.carousel/dist/owl.carousel.min.js',
            './bower_components/headroom.min/index.js',
            './bower_components/mixitup/dist/mixitup.min.js',
            './bower_components/cookieconsent/build/cookieconsent.min.js',
            './bower_components/lazyloadxt/dist/jquery.lazyloadxt.min.js'
        ])
        .pipe(gulp.dest('./assets/js'));
});

gulp.task('copy-css', function() {
    gulp.src([
            './bower_components/cookieconsent/build/cookieconsent.min.css'
        ])
        .pipe(gulp.dest('./assets/css'));
});


//Watch For changes
gulp.task('watch', ['serve']);

//Build Package zip
gulp.task('build', ['zip']);
