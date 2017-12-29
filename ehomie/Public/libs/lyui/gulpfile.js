var gulp         = require('gulp')
var path         = require('path')
var less         = require('gulp-less')
var autoprefixer = require('gulp-autoprefixer')
var sourcemaps   = require('gulp-sourcemaps')
var cleanCSS     = require('gulp-clean-css')
var rename       = require('gulp-rename')
var concat       = require('gulp-concat')
var uglify       = require('gulp-uglify')
var connect      = require('gulp-connect')
var open         = require('gulp-open')

gulp.task('default', ['less', 'js'])

gulp.task('less', function () {
  return gulp.src('./lyui/lyui.less')
    .pipe(sourcemaps.init())
    .pipe(less())
    .pipe(autoprefixer({
        browsers: ['> 5%', 'Android >= 2.3'],
    }))
    .pipe(rename('lyui.css'))
    .pipe(gulp.dest('dist/css'))
    .pipe(cleanCSS({compatibility: 'ie8'}))
    .pipe(rename({
      suffix: '.min'
    }))
    .pipe(sourcemaps.write('./'))
    .pipe(gulp.dest('dist/css'))
})

gulp.task('js', function () {
  return gulp.src([
      './lyui/bootstrap/js/transition.js',
      './lyui/bootstrap/js/alert.js',
      './lyui/bootstrap/js/affix.js',
      './lyui/bootstrap/js/button.js',
      './lyui/bootstrap/js/carousel.js',
      './lyui/bootstrap/js/collapse.js',
      './lyui/bootstrap/js/dropdown.js',
      './lyui/bootstrap/js/modal.js',
      './lyui/bootstrap/js/tooltip.js',
      './lyui/bootstrap/js/popover.js',
      './lyui/bootstrap/js/scrollspy.js',
      './lyui/bootstrap/js/tab.js',
      './lyui/js/*.js',
    ])
    .pipe(sourcemaps.init())
    .pipe(concat('lyui.js'))
    .pipe(gulp.dest('dist/js'))
    .pipe(uglify())
    .pipe(rename({
      suffix: '.min'
    }))
    .pipe(sourcemaps.write('./'))
    .pipe(gulp.dest('dist/js'))
})
