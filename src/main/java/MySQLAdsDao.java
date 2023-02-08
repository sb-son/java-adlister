import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads{
    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to database.", e);
        }
    }

    @Override
    public List<Ad> all() {
        String selectQuery = "SELECT * FROM ads";

        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(selectQuery);
            List<Ad> ads = new ArrayList<>();

            while (rs.next()) {
                ads.add(
                        new Ad(
                                rs.getLong("id"),
                                rs.getLong("user_id"),
                                rs.getString("title"),
                                rs.getString("description")
                        ));
            }
            return ads;
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to database.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String query = "INSERT INTO ads (user_id, title, description) VALUES (" + ad.getUserId() + ", '"
                    + ad.getTitle() + "', '"
                    + ad.getDescription() + "')";
            Statement statement = connection.createStatement();
            statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new ad", e);
        }
    }
}
