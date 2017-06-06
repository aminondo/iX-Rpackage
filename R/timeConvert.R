
#' timeConvert func
#'
#' @param n #quantity to change
#' @param from #unit quantity
#' @param to #unit desired
#'
#' @return #new quantity in right units
#' @export
#'
#' @examples
#' test(4)=  this is a test if 4 works
timeConvert = function(n, from, to){
  if (from == "seconds"){
    if (to == "minutes")
      n=n*60
  }
    if (from == "seconds"){
      if (to == "hours")
        n=n/60/60
    }
      if (from == "seconds"){
       if (to == "days")
        n=n/60/60/24
    }
      if (from == "seconds"){
        if(to == "weeks")
          n=n/60/60/24/7
        }
        if (from == "seconds"){
          if ( to == "years")
            n=n/60/60/24/7/52

        }
  #From minutes
  if (from == "minutes"){
    if(to == "seconds")
    n=n*60
    }
    if (from == "minutes"){
     if ( to == "hours")
      n=n/60
      }
    if (from == "minutes"){
      if(to == "days")
      n=n/60/24
      }
    if (from == "minutes") {
      if(to == "weeks")
      n=n/60/24/7
      }
    if (from == "minutes"){
      if( to == "years")
      n=n/60/24/7/52
    }
      #from hours
    if (from == "hours"){
      if(to == "seconds")
        n=n*60*60
    }
    if (from == "hours"){
      if( to == "minutes"){
      n=n*60
    }
    if (from == "hours") {
      if(to == "days")
      n=n/24
    }
    if (from == "hours"){
      if( to == "weeks")
      n=n/24/7
    }
    if (from == "hours"){
      if(to == "years")
      n=n/24/7/52
    }
      #from days
      if (from == "days"){
        if(to == "seconds")
       n=n*24*60*60
      }
    if (from == "days"){
      if(to == "minutes")
      n=n*24*60
    }
    if (from == "days"){
      if(to == "weeks")
      n=n/7
    }
    if (from == "days"){
      if(to == "years")
      n=n/7/52
    }
      #from weeks
      if (from == "weeks"){
        if(to == "seconds")
        n=n*7*24*60*60
      }
    if (from == "weeks"){
      if(to == "minutes")
      n=n*7*24*60
    }
    if (from == "weeks") {
      if(to == "hours")
      n=n*7*24
    }
    if (from == "weeks"){
      if(to == "days")
      n=n*7
    }
    if (from == "weeks")
      if (to == "years"){
      n=n/52
      }
#from years
      if (from == "years"){
        if(to == "seconds")
        n=n*60*60*24*7*52}

    if (from == "years"){
      if( to == "minutes")
      n=n*60*60*52*7
    }
    if (from == "years")
      if(to == "hours"){
      n=n*52*7*60
    }
    if (from == "years"){
      if( to == "days")
      n=n*52*7
    }
    if(from == "years")
      if(to == "weeks")
      n=n*52
    }
      return (n)
    }

# (timeConvert(5, "days", "weeks")

