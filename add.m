%Add two positive integers and return the result
function o = add( a , b)
	%Check for valid input
	if ( a ~> 0 | b ~> 0)
		error('non-positive arguments to add()'
	end
	if ( size(a) ~= [1 1] & size(b ~= [1 1]) )
		error('matrix arguments passed to add()');
	end

	%initialize counter
	o = a ; 

	for ctr = 1:b
		o++;
	end
end

%!test
%! 'Simple test'
%! assert( add( 1, 0 ) == 0 )
%! assert( add( 1, 1 ) == 2 )

%!test
%! 'Commutative?'
%! for i = 1:10000
%! 	a = floor( realmax * rand );
%!	b = floor( realmax * rand );
%!      assert( add( a , b) == add( b , a) ;
%! end

%Brute force test
%!test
%! for i = 1:10000
%!	assert( i , i ) = 2*i 
%! end

