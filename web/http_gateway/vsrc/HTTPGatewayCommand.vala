using aroop;
using shotodol;
using shotodol.http_gateway;

/** \addtogroup http_gateway
 *  @{
 */
internal class shotodol.http_gateway.HTTPGatewayCommand : M100Command {
	unowned HTTPPacketSorterServer server;
	public HTTPGatewayCommand(HTTPPacketSorterServer givenServer) {
		var prefix = extring.set_static_string("httpg");
		base(&prefix);
		server = givenServer;
	}
	public override int act_on(extring*cmdstr, OutputStream pad, M100CommandSet cmds) {
		server.close();
		return 0;
	}
}
/* @} */