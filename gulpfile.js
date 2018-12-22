//编译scss文件为css文件
var gulp = require('gulp');
var sass = require('gulp-sass');
var pump = require('pump');
// gulp.task('bianyi',function(){
//     return gulp.src('./src/sass/a.scss').pipe(sass()).pipe(gulp.dest('./src/css/'))
// });
// gulp.task('jt',function(){
//     gulp.watch('./src/sass/a.scss',gulp.series('bianyi'))
// })
gulp.task('bianyi',function(){
		return	pump([gulp.src('./src/sass/a.scss'),
		sass(),
		gulp.dest('./src/css/')
	])
})
gulp.task('jt',function(){
	
		gulp.watch('./src/sass/a.scss',gulp.series('bianyi'))
	
})
//压缩html
// var  gulp = require('gulp');
// var  htmlmin = require('gulp-htmlmin');
 
// gulp.task('minify', () => {
//   return gulp.src('./src/html/01.sass学习.html')
//     .pipe(htmlmin({ collapseWhitespace: true }))
//     .pipe(gulp.dest('./dist'));
// });

//压缩css
// let gulp = require('gulp');
// let cleanCSS = require('gulp-clean-css');
 
// gulp.task('minify-css', () => {
//   return gulp.src('./src/css/a.css')
//     .pipe(cleanCSS({compatibility: 'ie8'}))
//     .pipe(gulp.dest('./dist'));
// });

//浏览器同步修改
// var gulp = require('gulp');
// var browserSync = require("browser-sync");
// // 静态服务器
// gulp.task('server',()=>{
// 	browserSync({
// 		// 服务器路径
// 		// server:'./src/',
// 		// 代理服务器，必须绑定到当前服务器路径一致
// 		proxy:'http://localhost:12340',
// 		// // 端口
// 		// port:666,
// 		// 监听文件修改，自动刷新
// 		files:['./src/**/*.html','./src/css/*.css','./src/api/*.php']
// 	});
// 	// 监听sass文件修改，并自动编译
// 	gulp.watch('./src/sass/*.scss',gulp.series('bianyi'))	
// })
// //监听的文件修改，页面html对应修改。通过brower-sync服务只能看到页面修改


