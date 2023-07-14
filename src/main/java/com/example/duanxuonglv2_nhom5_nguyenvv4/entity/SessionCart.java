package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class SessionCart {
    private ArrayList<Item> items;
}
