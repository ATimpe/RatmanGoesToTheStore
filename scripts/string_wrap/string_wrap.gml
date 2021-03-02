/// @desc string_wrap(str, max_width)
/// @arg str
/// @arg max_width
function string_wrap(argument0, argument1) {

	str = argument0;
	max_width = argument1;

	str_len = string_length(str);
	last_space = 1;

	count = 1;

	repeat(str_len) {
		substr = string_copy(str, 1, count);
	
		if (string_char_at(str, count) == " ") {
			last_space = count;
		}
	
		if (string_width(substr) > max_width) {
			str = string_insert("\n", str, last_space);
		
			count++;
		
		}
	
		count++;
	}

	str = string_replace(str, "\n ", "\n"); // deletes unessarsary spaces

	return str;


}
