.multilog_info <- function(msg) {
  flog.info(msg, name = "console")
  flog.info(msg, name = "logfile")
}
.multilog_trace <- function(msg) {
  flog.trace(msg, name = "console")
  flog.trace(msg, name = "logfile")
}
.multilog_warn <- function(msg) {
  flog.warn(msg, name = "console")
  flog.warn(msg, name = "logfile")
}
.multilog_debug <- function(msg) {
  flog.debug(msg, name = "console")
  flog.debug(msg, name = "logfile")
}
.multilog_fatal <- function(msg) {
  flog.fatal(msg, name = "console")
  flog.fatal(msg, name = "logfile")
}
.multilog_error <- function(msg) {
  flog.error(msg, name = "console")
  flog.error(msg, name = "logfile")
}

.multilog_thresold <- function(console = INFO, logfile = TRACE) {
  flog.threshold(console, name = "console")
  flog.threshold(logfile, name = "logfile")
}
.multilog_setup <- function(LOGFILE = NULL) {
  if (!is.null(LOGFILE)) {
    flog.logger(
      name = "logfile",
      appender = appender.file(LOGFILE),
      threshold = TRACE
    )
  }
  flog.logger(
    name = "console",
    appender = appender.console(),
    threshold = INFO
  )
}
