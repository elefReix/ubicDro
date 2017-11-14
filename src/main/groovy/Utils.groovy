package portalogin

import grails.util.*
import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest
import java.util.Arrays
import javax.crypto.Cipher
import javax.crypto.SecretKey
import javax.crypto.spec.SecretKeySpec
import org.apache.commons.codec.binary.Base64


class Utils {
	public static asigna(String nombre){
		/*try {
            Desktop desktop = Desktop.getDesktop();
            URI uri = new URI("http://sicosrv09:8080/BOE/CMC/1708221500/admin/App/home.faces?service=%2Fadmin%2FApp%2FappService.jsp&appKind=CMC&bttoken=MDAwRGFkRkoBSTmY0Nlc8MUBNazE3aGtASzpkYUU4MDAEQ");
            desktop.browse(uri);														/1708221500/admin/App/home.faces?service=%2Fadmin%2FApp%2FappService.jsp&appKind=CMC&bttoken=MDAwRGA8aFJgRUo7RWs8N2ROb1lNT1xFRUxgPkZXNTAEQ
        } catch (IOException | URISyntaxException e) {
        }*/
		User usuario = User.findByName(nombre)
		if (usuario) {
				return usuario.urlDestino
		}else
				return "localhost:8080"
		}

		public static String encriptar(String texto) {

         String secretKey = "qualityinfosolutions" //llave para encriptar datos
         String base64EncryptedString = ""

         try {

             MessageDigest md = MessageDigest.getInstance("MD5")
             byte[] digestOfPassword = md.digest(secretKey.getBytes("utf-8"))
             byte[] keyBytes = Arrays.copyOf(digestOfPassword, 24)

             SecretKey key = new SecretKeySpec(keyBytes, "DESede")
             Cipher cipher = Cipher.getInstance("DESede")
             cipher.init(Cipher.ENCRYPT_MODE, key)

             byte[] plainTextBytes = texto.getBytes("utf-8")
             byte[] buf = cipher.doFinal(plainTextBytes)
             byte[] base64Bytes = Base64.encodeBase64(buf)
             base64EncryptedString = new String(base64Bytes)

         } catch (Exception ex) {
         }
         return base64EncryptedString
     }

     public static String desencriptar(String textoEncriptado) throws Exception {

         String secretKey = "qualityinfosolutions" //llave para encriptar datos
         String base64EncryptedString = ""

         try {
             byte[] message = Base64.decodeBase64(textoEncriptado.getBytes("utf-8"))
             MessageDigest md = MessageDigest.getInstance("MD5")
             byte[] digestOfPassword = md.digest(secretKey.getBytes("utf-8"))
             byte[] keyBytes = Arrays.copyOf(digestOfPassword, 24)
             SecretKey key = new SecretKeySpec(keyBytes, "DESede")

             Cipher decipher = Cipher.getInstance("DESede")
             decipher.init(Cipher.DECRYPT_MODE, key)

             byte[] plainText = decipher.doFinal(message)

             base64EncryptedString = new String(plainText, "UTF-8")

         } catch (Exception ex) {
         }
         return base64EncryptedString
     }
	}
