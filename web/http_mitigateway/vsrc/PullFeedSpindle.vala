using aroop;
using shotodol;
using shotodol.fork;

/** \addtogroup loadbalancer
 *  @{
 */
public class shotodol.http_lbgateway.PullFeedSpindle : Spindle {
	PullFeedStream?pfs;
	public class PullFeedSpindle(InputStream?source, OutputStream?down) {
		pfs = new PullFeedStream(source, down);
	}
	public void feed(OutputStream down) {
		pfs.feed(down);
	}
	public override int start(Spindle?plr) {
		//print("Started console stepping ..\n");
		
		return 0;
	}

	public override int step() {
		try {
			pfs.step();
		} catch (IOStreamError.OutputStreamError e) {
			print("Error in standard input\n");
			return 0;
		}
		return 0;
	}

	public override int cancel() {
		return 0;
	}
}
/* @} */
