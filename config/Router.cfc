component{

	function configure(){
		setFullRewrites( true );z

		route( ":handler/:action?" ).end();
	}

}
