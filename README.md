
## Unit Converter R Package

<h3> Overview </h3>

This package implements unit conversion for time, length, and weight/mass.

<h3> Time Conversion </h3>

<h3> Length Conversion </h3>
  
<h3> Weight/Mass Conversion: weight_conv() </h3>


This function converts between mass/weight units. It can convert between the metric and imperial systems.
For know the only units that are available for conversion are: "mg" "cg" "dg" "g" "dag" "hg" "kg" "oz" "lb" "T"

<h6>Usage:</h6>

  n = quantity to change,
  
  from = unit of quantity to change,
  
  to = desired unit to be converted to.
  
  weight_conv(n, from, to)
  
<h6>Examples of usage:</h6>

  weight_conv(10, "mg", "oz")
  
  weight_conv(60, "kg", "g")
  
