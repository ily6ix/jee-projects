/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class Customer {
    private int orderNo;
    private List<Item> orderList;
    private boolean isOrderPaid;
    private String paymentMsg;
    
    public Customer(int orderNum) {
        this.orderList = new ArrayList<>();
        this.isOrderPaid=false;
        this.paymentMsg="";
        this.orderNo=orderNum;
    }

    public int getOrderNo() {
        return orderNo;
    }

    public List<Item> getOrderList() {
        return orderList;
    }

    public boolean isIsOrderPaid() {
        return isOrderPaid;
    }

    public String getPaymentMsg() {
        return paymentMsg;
    }

    public boolean addItem(Item item) {
        if (item != null) {
            this.orderList.add(item);
        }
        return false;
    }

    public double getTotalPrice() {
        if (this.orderList != null) {
            double totalPrice = 0;
            for (Item item : orderList) {
                totalPrice += item.getPrice();
            }
            return totalPrice;
        }
        return 0;
    }
    public int getNumberOfKotas(){
        if(this.orderList!=null){
            return orderList.size();
        }
        return 0;
    }
    public boolean payOrder(double payment){
        this.paymentMsg="Payment Unsuccessfull";
        if(payment>=getTotalPrice()){
            
            if(payment>getTotalPrice()){
                 double change=payment-getTotalPrice();
                 this.paymentMsg="Payment Successfull : Change is R" +change;
            }
            this.paymentMsg="Payment Successfull";
            return true;
                   
        }
        return false;
    }
    
}
