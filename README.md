Apa saja pesan log yang dicetak pada panel Output?

&nbsp;&nbsp;&nbsp;"Reached objective!"

Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

&nbsp;&nbsp;&nbsp;Sama seperti sebelumnya, tetapi terjadi 2 kali.

Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

&nbsp;&nbsp;&nbsp;ObjectiveArea merupakan type Area2D dimana memiliki signal body_entered() yang terhubung ke funtion _on_ObjectiveArea_body_entered() dimana ketika Object dengan tipe data Node2D collision dengan Area2D, maka akan mengexecute function _on_ObjectiveArea_body_entered() dan ada pengecekan apakah node2D merupakan "Blueship" atau tidak, jika Iya maka akan print("Reached Objective!"). Kenapa pada percobaan kedua akan print 2 kali, karena saya menggerakkan landasan hingga menyentuh batas atas sehingga Object Blueship sudah keluar dari Area2D sehingga, ketika saya turunkan lagi, maka signal tersebut akan mengirim lagi sehingga menjalankan function tersebut lagi.