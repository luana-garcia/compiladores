lexer grammar LALexer;

COMENTARIO: '{' ~('}')* '}'  -> skip;
WHITESPACE: (' ' | '\t' | '\r' | '\n') -> skip;

PALAVRA_CHAVE: ('fim_algoritmo' | 'algoritmo' | 'declare' | 'leia' | 'escreva' | 'se' | 'senao' | 'entao' | 'fim_se' |  'caso' | 'fim_caso' | 'seja' | 'para' | 'ate' | 'faca' | 'fim_para' | 'fim_enquanto');
TIPO: ('inteiro' | 'literal' | 'real' | 'logico');
CADEIA: '"' ~('"')* '"';
NUM_INT: ('+' | '-')?('0'..'9')+;
NUM_REAL: ('+' | '-')?('0'..'9')+ ('.' ('0'..'9')+)?;
OPERADOR: ('+' | '-' | '/' | '*' | '>' | '<' | '<=' | '>=' | '<>' | '=' | '<-' | 'e' | 'ou' | 'nao');
PONTUACAO: (',' | ':' | '(' | ')' | '..');
IDENT: ('a'..'z' | 'A'..'Z') ('a'..'z' | 'A'..'Z' | '0'..'9')*;
