/*
 * Copyright (c) 2023. Nyaruko.
 */

function showPopup() {
    const popup = document.getElementById('popup');
    popup.style.display = 'block';

    // Lấy chiều rộng và chiều cao của pop-up
    const popupWidth = popup.offsetWidth;
    const popupHeight = popup.offsetHeight;

    // Lấy chiều rộng của cửa sổ trình duyệt
    const windowWidth = window.innerWidth;

    // Xác định toạ độ left cho pop-up
    let popupLeft = windowWidth - popupWidth - 20; // Để cách mép phải 20px
    popup.style.left = popupLeft + 'px';
}

function hidePopup() {
    document.getElementById('popup').style.display = 'none';
}

function downloadQRCode() {
    // Lấy base64 của ảnh
    const base64Image = document.getElementById('qrCodeImage').getAttribute('src').split(',')[1];

    // Tạo link tải xuống
    const a = document.createElement('a');
    a.href = 'data:image/png;base64,' + base64Image;
    a.download = 'qrcode.png';
    a.click();
}