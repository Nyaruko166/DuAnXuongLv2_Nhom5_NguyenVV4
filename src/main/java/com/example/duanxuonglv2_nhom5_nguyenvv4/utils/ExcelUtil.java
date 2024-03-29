/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.utils;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.*;
import com.example.duanxuonglv2_nhom5_nguyenvv4.repository.*;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.IChiTietSanPhamService;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

@Component
public class ExcelUtil {

    @Autowired
    private IChiTietSanPhamService chiTietSanPhamService;

    @Autowired
    private ChatLieuRepository chatLieuRepository;

    @Autowired
    private FormDangRepository formDangRepository;

    @Autowired
    private KichCoRepository kichCoRepository;

    @Autowired
    private LoaiSanPhamRepository loaiSanPhamRepository;

    @Autowired
    private MauSacRepository mauSacRepository;

    @Autowired
    private NSXRepository nsxRepository;

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Autowired
    private ThietKeRepository thietKeRepository;

    public void copyFile(MultipartFile file, String fileName) {
        try {
            String uploadPath = "./src/main/webapp/uploads";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            Path path = Paths.get(uploadPath);
            try (InputStream inputStream = file.getInputStream()) {
                Path filePath = path.resolve(fileName);
                Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
            } catch (IOException e) {
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Boolean validateExcel(MultipartFile file) {
        return Objects.equals(file.getContentType(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    }

    public List<ChiTietSanPham> readExcel(String path) throws IOException {

        String ma = "";
        String moTa = "";
        Integer soLuong = null;
        BigDecimal giaNhap = null;
        BigDecimal giaBan = null;
        Integer trangThai = null;
        ChatLieu chatLieu = new ChatLieu();
        SanPham sanPham = new SanPham();
        MauSac mauSac = new MauSac();
        LoaiSanPham loaiSanPham = new LoaiSanPham();
        NSX nsx = new NSX();
        KichCo kichCo = new KichCo();
        ThietKe thietKe = new ThietKe();
        FormDang formDang = new FormDang();

        List<ChiTietSanPham> lstCTSP = new ArrayList<>();

        FileInputStream fileInputStream = new FileInputStream(path);
        XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
        XSSFSheet firstSheet = workbook.getSheetAt(0);

        int rowIndex = 0;

        for (Row row : firstSheet) {
            if (rowIndex == 0) {
                rowIndex++;
                continue;
            }
            Iterator<Cell> cellIterator = row.iterator();
            int cellIndex = 0;
            while (cellIterator.hasNext()) {
                Cell cell = cellIterator.next();
                switch (cellIndex) {
                    case 0 -> ma = cell.getStringCellValue();
                    case 1 -> moTa = cell.getStringCellValue();
                    case 2 -> soLuong = (int) cell.getNumericCellValue();
                    case 3 -> giaNhap = BigDecimal.valueOf(cell.getNumericCellValue());
                    case 4 -> giaBan = BigDecimal.valueOf(cell.getNumericCellValue());
                    case 5 -> trangThai = (int) cell.getNumericCellValue();
                    case 6 -> chatLieu = chatLieuRepository.findByTen(cell.getStringCellValue());
                    case 7 -> sanPham = sanPhamRepository.findByTen(cell.getStringCellValue());
                    case 8 -> mauSac = mauSacRepository.findByTen(cell.getStringCellValue());
                    case 9 -> loaiSanPham = loaiSanPhamRepository.findByTen(cell.getStringCellValue());
                    case 10 -> nsx = nsxRepository.findByTen(cell.getStringCellValue());
                    case 11 -> kichCo = kichCoRepository.findByTen(cell.getStringCellValue());
                    case 12 -> thietKe = thietKeRepository.findByTen(cell.getStringCellValue());
                    case 13 -> formDang = formDangRepository.findByTen(cell.getStringCellValue());
                    default -> {
                    }
                }
                cellIndex++;
            }
            java.util.Date date = new java.util.Date();
            java.sql.Date sqlDate = new java.sql.Date(date.getTime());
            lstCTSP.add(new ChiTietSanPham(null, ma, moTa, soLuong, giaNhap, giaBan, null,
                    sqlDate, sqlDate, trangThai, chatLieu, sanPham, mauSac, loaiSanPham,
                    nsx, kichCo, thietKe, formDang));
        }
        workbook.close();
        fileInputStream.close();
        //Xoa file sau khi import
        File file = new File(path);
        file.delete();
        return lstCTSP;
    }

}
