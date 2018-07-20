component extends="coldbox.system.testing.BaseTestCase" appMapping="/root" {

	function run() {
		describe( "Main Handler", function() {
			beforeEach( function( currentSpec ) {
				setup();
			} );

			it( "should not break in the routing service", function() {
                prepareMock( getRequestContext() )
                    .$( "getHTTPHeader" )
                    .$args( "X-Api-Token" )
                    .$results( "valid-api-token" );

                // The RoutingService error will happen here.
                var event = execute( route = "/" );
            } );
		});
	}

}
