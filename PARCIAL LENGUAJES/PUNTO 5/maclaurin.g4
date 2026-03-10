grammar Maclaurin;

prog: expr EOF;

expr: 'maclaurin' INT INT ;

INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
