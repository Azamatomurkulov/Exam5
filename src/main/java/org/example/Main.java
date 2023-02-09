package org.example;

public class Main {
    public static void main(String[] args) {

        AviaCompany aviaCompany = new AviaCompany(6L,"SomeCompany");
        AirTravel airTravel = new AirTravel();
//        airTravel.addNewCompany(aviaCompany); данная компания уже добавлена в список
        airTravel.getPassengerInfo("Bruce Willis");
    }
}