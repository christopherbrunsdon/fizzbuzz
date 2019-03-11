<?php
/**
 * Christopher Brunsdon
 * christopher@brunsdon.co.za
 *
 * Fizzbuzz in a single line.
 */

function fizz_buzz()
{
	echo implode(PHP_EOL,
		array_map(
			function($i){ return (($i%3 ? Null : "fizz").($i%5 ? Null : "buzz"))?:$i; },
			range(1, 100)
		)).PHP_EOL;
}

// Only run if in cli. Allows us to import fizz_buzz function without executing.
if (php_sapi_name() === 'cli') {
	fizz_buzz();
}
