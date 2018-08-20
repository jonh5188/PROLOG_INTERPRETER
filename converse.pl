a = 'John is a man'.
b = 'A man is a person'.
c = 'Is John a person'.

man(John).
person(man).
person(woman).

start:- talk,
        nl.

talk:- write('Say something... '),
          nl,
          read(X),  
          respond(X).

respond(X):- (X == 'John is a man' ->
	           	write('ok');
              X == 'A man is a person' ->
                 	write('ok');
              X == 'Is John a person' ->
                  	write('yes');
              X \= a ->
                	write('unknown');
              X \= b ->
                	write('unknown');     
              X \= c ->
                	write('unknown')).
