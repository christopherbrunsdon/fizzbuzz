<?php
/**
 * Christopher Brunsdon
 * christopher@brunsdon.co.za
 *
 * Fizzbuzz in a single line.
 */

echo implode(PHP_EOL,
  array_map(
    function($i){ return ($i%3 ? Null : "fizz").($i%5 ? Null : "buzz")?:$i; },
    range(1, 100)
  )).PHP_EOL;
