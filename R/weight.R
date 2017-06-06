#' Convert from one unit of weight measurement to another
#'
#' @param n #quantity to change
#' @param from # unit of quantity
#' @param to #desired unit
#'
#' @return #returns desired quantity in the desired unit
#' @export
#'
#' @examples
#' weight_conv(500,"lb","kg") = 226.796
#' weight_conv(10,"kg","T") = 0.01102312
#' weight_conv(10,"g","mg") = 10000
weight_conv = function(n,from,to) {
  metric=data.frame(order=-3:3,symbol=c("mg","cg","dg","g","dag","hg","kg"))
  us = c("oz","lb","T")
  #error checking
  if(!(from %in% metric$symbol | from %in% us ))
    stop('ERROR: 2nd argument invalid. Valid arguments for units are: "mg","cg","dg","g","dag","hg","kg", "oz", "lb", "T"\n', call=F)
  if(!(to %in% metric$symbol | to %in% us ))
    stop('ERROR: 3nd argument invalid. Valid arguments for units are: "mg","cg","dg","g","dag","hg","kg", "oz", "lb", "T"\n', call=F)

  #metric to metric
  if(from %in% metric$symbol & to %in% metric$symbol){
    #finds difference in metric magnitudes
    diff=weight[weight$symbol==from,][1] - weight[weight$symbol==to,][1]
    return(as.double(n*10^diff))
  }
  #us to us
  if(from %in% us & to %in% us){
    if(from=="oz"){
      if(to=="lb")
        return(n*1/16)
      if(to=="T")
        return(n*1/16/2000)
    }
    if(from=="lb"){
      if(to=="oz")
        return(n*16)
      if(to=="T")
        return(n*1/2000)
    }
    if(from=="T"){
      if(to=="lb")
        return(n*2000)
      if(to=="oz")
        return(n*16*2000)
    }
  }
  #us to metric
  #idea is first to change to grams and then to required unit
  if(from %in% us & !(to %in% us)){
    if(from=="oz")
      return(weight_conv(n*28.3495,"g",to))
    if(from=="lb")
      return(weight_conv(n*453.592,"g",to))
    if(from=="T")
      return(weight_conv(n*2000*453.592,"g",to))
  }
  #metric to us
  #idea is too first change to grams and then to required unit
  if(from %in% metric$symbol & to %in% us){
    in_grams = weight_conv(n,from,"g")
    if(to=="oz")
      return(in_grams/28.3495)
    if(to=="lb")
      return(in_grams/453.592)
    if(to=="T")
      return(in_grams/453.592/2000)
  }


}

