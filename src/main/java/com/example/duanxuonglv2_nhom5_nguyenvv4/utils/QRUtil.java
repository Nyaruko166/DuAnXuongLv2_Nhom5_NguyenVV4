/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.utils;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Base64;

@Component
public class QRUtil {

    String path = "./src/main/webapp/uploads/qrcode";

    public String generateQR(String data, String fileName) {
        String pathQR = path + "/" + fileName + ".png";
        File qrFolder = new File(path);
        if (!qrFolder.exists()) {
            qrFolder.mkdir();
        }
        try {
            BitMatrix matrix = new MultiFormatWriter().encode(data, BarcodeFormat.QR_CODE, 240, 240);
            MatrixToImageWriter.writeToPath(matrix, "png", Paths.get(pathQR));
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new File(pathQR).getAbsolutePath();
    }

    public String convertToBase64(String path) {
        File qrFile = new File(path);
        try {
            FileInputStream fileInputStream = new FileInputStream(qrFile);
            byte[] imageBytes = new byte[(int) qrFile.length()];
            fileInputStream.read(imageBytes);
            fileInputStream.close();
            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
            return base64Image;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

}
