package org.example;

public class Main {
    public static void main(String[] args) {

        AviaCompany aviaCompany = new AviaCompany(6l,"SomeCompany");
        AirTravel airTravel = new AirTravel();
//        airTravel.registration(aviaCompany);
        airTravel.getPassenger("Bruce Willis");
    }
}