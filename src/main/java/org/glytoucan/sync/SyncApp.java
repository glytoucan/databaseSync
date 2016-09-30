package org.glytoucan.sync;

import org.glytoucan.client.AntiSpringJavaRest;

/**
 * Hello world!
 *
 */
public class SyncApp {
	public static void main(String[] args) {
		AntiSpringJavaRest glyRest = new AntiSpringJavaRest();
		String result = glyRest.register("RES\n" + "1b:b-dglc-HEX-1:5\n" + "2s:n-acetyl\n" + "3b:b-dgal-HEX-1:5\n" + "LIN\n"
				+ "1:1d(2+1)2n\n" + "2:1o(4+1)3d");
		System.out.println(result);
	}
}