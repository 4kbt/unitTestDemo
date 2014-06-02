%Add two integers between 0 and 100 and return the result
function o = add( a , b)
	%Check for valid input
	if ( a < 0 || b < 0 || a > 100 || b > 100)
		error('arguments to add() out of range');
	end
	if ( size(a) ~= [1 1] && size(b) ~= [1 1] )
		error('matrix arguments passed to add()');
	end

	%initialize counter
	o = a ;

	ctr = 0;
	while ( ctr < b) 
		o++;
		ctr++;
	end
end

%!test
%! 'Simple test'
%! assert( add( 1, 0 ) == 1 )
%! assert( add( 1, 1 ) == 2 )

%!test
%! 'Commutative?'
%! for i = 1:100
%! 	a = floor( 100 * rand );
%!	b = floor( 100 * rand );
%!      assert( add( a , b) == add( b , a) );
%! end

% 2x test
%!test
%! for i = 1:100
%!	assert( add( i , i ) = 2*i );
%! end

%!test
%! 'Brute Force Test'
%! for i = 0:100
%!   for j = 0:100
%!	ctr = 0;
%!	for k = 1:i
%!		ctr++;
%!	end
%!	for k = 1:j
%!		ctr++;
%!	end
%!	assert( add( i , j ) == ctr );
%!   end %j
%! end %i

