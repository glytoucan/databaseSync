@GrabResolver(name='glycoinfo', root='http://nexus.glycoinfo.org/content/groups/public/')
@GrabResolver(name='glycoinfo-snapshots', root='http://nexus.glycoinfo.org/content/repositories/snapshots/')
@Grab('org.glytoucan:client:1.2.5-TOCO-SNAPSHOT')
import org.glytoucan.client.AntiSpringJavaRest
def asjr = new AntiSpringJavaRest()
String result = asjr.register('Gal')
println result;