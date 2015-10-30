package org.glytoucan.sync;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.glytoucan.client.Application;
import org.glytoucan.client.GlycanRest;
import org.glytoucan.client.GlycanSpec;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Hello world!
 *
 */
public class SyncApp {
	private static final Log logger = LogFactory.getLog(SyncApp.class);

	public static void main(String[] args) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(GlycanSpec.SEQUENCE, "RES\n" + "1b:b-dglc-HEX-1:5\n" + "2s:n-acetyl\n" + "3b:b-dgal-HEX-1:5\n" + "LIN\n"
				+ "1:1d(2+1)2n\n" + "2:1o(4+1)3d");

		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(Application.class);
		ctx.refresh();

		GlycanSpec glycanSpec = ctx.getBean(GlycanRest.class);
		Map<String, Object> results = glycanSpec.registerStructure(map);

		logger.debug(results);
	}
}
