/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.model;

/**
 *
 * @author user
 */
public class Item {

    private int code;
    private String desc;
    private double price;
    private int quantity;

    public Item(int code, int quantity) {
        this.code = code;
        this.desc = generateDesc(code);
        this.quantity = quantity;
        this.price = generatePrice(code, quantity);
    }

    public String generateDesc(int code) {
        if (code == 1) {
            return "Atchar and Cheese";
        } else if (code == 2) {
            return "Atchar, Cheese and Chips";
        } else {
            return "Atchar, Cheese, Chips and Polony";
        }
    }

    public double generatePrice(int code, int quantity) {
        if (code == 1) {
            return 15.00 * quantity;
        } else if (code == 2) {
            return 20.00 * quantity;
        } else {
            return 25.00 * quantity;
        }
    }

    public int getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }
    

}
