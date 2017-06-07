
## Unit Converter R Package

<h3> Overview </h3>

This package implements unit conversion for time, length, and weight/mass.

<h6> Time Conversion </h6>

<h6> Length Conversion </h6>
  
<h6> Weight/Mass Conversion: weight_conv() </h6>


This function converts between mass/weight units. It can convert between the metric and imperial systems.
For know the only units that are available for conversion are: "mg" "cg" "dg" "g" "dag" "hg" "kg" "oz" "lb" "T"

Usage:

  n = quantity to change,
  from = unit of quantity to change,
  to = desired unit to be converted to.
  weight_conv(n, from, to)
  
Examples of usage:

  weight_conv(10, "mg", "oz")
  weight_conv(60, "kg", "g")
  
