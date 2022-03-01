all:
	rm -rf  *~ */*~  erl_cra*;
	rm -rf _build;
	rm -rf ebin;
	mkdir ebin;
	rebar3 compile;
	cp -r _build/default/lib/*/ebin/* ebin;	
	rm -rf _build;
	erlc -o test_ebin test/*.erl;
	erl -pa test_ebin -pa ebin -sname test -run mydivi_eunit test
	echo Done
eunit:
	rm -rf  *~ */*~  erl_cra*;
	rm -rf _build;
	rm -rf ebin;
	mkdir ebin;
	rebar3 compile;
	cp -r _build/default/lib/*/ebin/* ebin;
	erlc -o test_ebin test/*.erl;
	erl -pa test_ebin -pa ebin -sname test -run mydivi_eunit test
