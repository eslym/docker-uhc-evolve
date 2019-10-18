import java.io.*;
import java.util.Properties;

public class Prop{
    public static void main(String[] args){
        try{
            Properties prop = new Properties();
            File file = new File("server.properties");
            if(file.exists()){
                FileInputStream in = new FileInputStream(file);
                prop.load(in);
                in.close();
            }

            String motd = Prop.getenv("MOTD", "UHC Evolve");
            motd = motd.replace("&&", "\001");
            motd = motd.replace("&", "§");
            motd = motd.replace("\001", "&");
            motd = motd.replace("\\n", "\n");
            motd = motd.replace("\\t", "\t");
            motd = motd.replace("\\\\", "\\");

            prop.setProperty("motd", motd);
            prop.setProperty("white-list", Prop.getenv("WHITELIST", "false"));
            prop.setProperty("max-players", Prop.getenv("MAX_PLAYERS", "20"));
            prop.setProperty("online-mode", Prop.getenv("ONLINE_MODE", "true"));
            prop.setProperty("allow-nether", Prop.getenv("NETHER", "true"));

            prop.setProperty("pvp", "true");
            prop.setProperty("difficulty", "hard");
            prop.setProperty("enable-command-block", "true");
            prop.setProperty("broadcast-console-to-ops", "false");
            prop.setProperty("spawn-protection", "0");

            FileOutputStream out = new FileOutputStream(file);
            prop.store(out, "Auto generated");;
            out.close();
        } catch (IOException ex){
            ex.printStackTrace();
            System.exit(1);
        }
    }

    private static String getenv(String key, String def){
        String env = System.getenv(key);
        if(env == null){
            return def;
        }
        return env;
    }
}