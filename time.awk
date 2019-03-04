# improved mktime that returns time from epoch in milliseconds
# expects input of the form 2018-10-15 06:59:20.697 or more granularity
function mktimei(timestamp){
  gsub("[-:./]", " ", timestamp);
  timebase = substr(timestamp, 0, 19)
  timems = substr(timestamp, 21, 3)
  return mktime(timebase)*1000 + timems
}

# improved mktime that returns time in seconds from epoch
function mktimei_sec(timestamp){
  gsub("[/:]", " ", timestamp);
  timebase = substr(timestamp, 0, 19)
  return mktime(timebase)
}
