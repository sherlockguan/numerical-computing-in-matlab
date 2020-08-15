% % function handle:  You can create function handles to named and 
% anonymous functions. You can store multiple function handles in an
% array, and save and load them, as you would any other variable.


% To create a handle for a function, precede the function name with an @ sign. For example, if you have a function called myfunction, create a handle named f as follows:
% 
% f = @myfunction; lambda
% sinHandle = @sin
% You call a function using a handle the same way you call the function directly. For example, suppose that you have a function named computeSquare, defined as:


function y = Function_function(x)
y = x.^2;
end
% Create a handle and call the function to compute the square of four.

% << command line below
% f = @Function_function;
% a = 4;
% b = f(a)
% 

% For instance, the HWND in the Win32 API is a handle for a Window.
% By itself it's useless: you can't glean any information from it.
% But pass it to the right API functions,
% and you can perform a wealth of different tricks with it. 
% Internally you can think of the HWND as just an index into the GUI's
% table of windows (which may not necessarily be how it's implemented,
% but it makes the magic make sense).