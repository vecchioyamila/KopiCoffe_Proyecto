var createError = require('http-errors');
var express = require('express');
var session = require("express-session");
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const dotenv = require('dotenv');
dotenv.config();

const indexRouter = require('./routes/index');
const contactoRouter = require('./routes/contacto');
const menuRouter = require('./routes/menu');
const tiendaRouter = require('./routes/tienda');
const loginRouter = require('./routes/login');
const registroRouter = require('./routes/registro');
const carritoComprasRouter = require('./routes/carritoCompras');
const paymentRouter = require('./routes/payment');
const confirmacionRouter = require('./routes/confirmacion');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
	secret: '1234',
	resave: true,
	saveUninitialized: true
}));

app.use('/', indexRouter);
app.use('/contacto', contactoRouter);
app.use('/menu', menuRouter);
app.use('/tienda', tiendaRouter);
app.use('/login', loginRouter);
app.use('/registro', registroRouter);
app.use('/carritoCompras', carritoComprasRouter);
app.use('/payment', paymentRouter);
app.use('/confirmacion', confirmacionRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
