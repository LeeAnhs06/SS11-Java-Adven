package Session11.Ex4;

import Session11.Ex5.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Main {
    public void searchPatient(String inputName) {

        String sql = "SELECT * FROM Patients WHERE full_name = ?";

        try (
                Connection con = DBContext.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ps.setString(1, inputName);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                System.out.println(rs.getString("full_name"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}