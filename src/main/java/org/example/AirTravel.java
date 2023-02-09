package org.example;

import java.sql.*;

public class AirTravel {
    private final String URL = "jdbc:postgresql://localhost:5432/air_travel";
    private final String USER = "postgres";
    private final String PASSWORD = "postgres";

    public Connection connect() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }
    public boolean registration(AviaCompany aviaCompany) {
        Boolean success = true;
        String SQL = "insert into \"Company\"(id, name)\n" +
                "values (?,?);";


        try (Connection conn = connect()) {
            PreparedStatement preparedStatement = conn.prepareStatement(SQL);
            preparedStatement.setLong(1, aviaCompany.getId());
            preparedStatement.setString(2, aviaCompany.getName());

            int rows = preparedStatement.executeUpdate();

            System.out.printf("(registration) rows added: "+rows);

            if(rows>0) success = false;


        }


        catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return success;
    }

    public void getPassenger(String name) {

        String SQL = "select distinct  C.name, \"Trip\".plane,P.name,Pit.place,\"Trip\".town_from,\"Trip\".town_to\n" +
                "from \"Trip\"\n" +
                "    join \"Company\" C on C.id = \"Trip\".company_id\n" +
                "join \"Pass_in_trip\" Pit on \"Trip\".id = Pit.trip_id\n" +
                "join \"Passenger\" P on P.id = Pit.passenger_id\n" +
                "where P.name = '"+name+"';";


        try (Connection conn = connect()) {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(SQL);
            while (rs.next()) {
                System.out.print("Company name: "+rs.getString(1));
                System.out.print(" Plane name: "+rs.getString(2));
                System.out.print(" Passenger name:"+rs.getString(3));
                System.out.print(" Place number: "+rs.getString(4));
                System.out.print(" Town from: "+rs.getString(5));
                System.out.println(" Town to: "+rs.getString(6));
                System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");



            }


        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}
