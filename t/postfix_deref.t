use strict;
use warnings;
use Compiler::Lexer;
use Test::More;

is_deeply([ map { $_->name } @{Compiler::Lexer->new->tokenize('$foo->@*')} ], [qw/GlobalVar Pointer PostfixArrayDereference/]);

done_testing;
