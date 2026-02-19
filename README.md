Apa saja pesan log yang dicetak pada panel Output?

&nbsp;&nbsp;&nbsp;"Reached objective!"

Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

&nbsp;&nbsp;&nbsp;Sama seperti sebelumnya, tetapi terjadi 2 kali.

Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

&nbsp;&nbsp;&nbsp;ObjectiveArea merupakan type Area2D dimana memiliki signal body_entered() yang terhubung ke funtion _on_ObjectiveArea_body_entered() dimana ketika Object dengan tipe data Node2D collision dengan Area2D, maka akan mengexecute function _on_ObjectiveArea_body_entered() dan ada pengecekan apakah node2D merupakan "Blueship" atau tidak, jika Iya maka akan print("Reached Objective!"). Kenapa pada percobaan kedua akan print 2 kali, karena saya menggerakkan landasan hingga menyentuh batas atas sehingga Object Blueship sudah keluar dari Area2D sehingga, ketika saya turunkan lagi, maka signal tersebut akan mengirim lagi sehingga menjalankan function tersebut lagi.

Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D?

&nbsp;&nbsp;&nbsp;Sprite2D dalam konteks tutorial ini digunakan untuk memberikan texture pada Object/Node dalam hal ini BlueShip dan StonePlatform.

Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

&nbsp;&nbsp;&nbsp;Perbedaan yang paling terlihat diantara 2 tipe node tersebut adalah RigidBody2D tidak bisa digerakkan secara langsung (dalam hal ini manually atau by code) dan hanya bisa bergerak dengan __force__ (seperti gravity, impulses, etc.) dan physics simulation akan mengkalkulasi pergerakannya. Sedangkan pada StaticBody2D kebalikannya, tipe tersebut tidak bisa bergerak dengan __force__, tetapi hanya bisa digerakkan secara manual dengan kode.

Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

&nbsp;&nbsp;&nbsp;Tidak ada perubahan sama sekali dengan waktu serta kecepatan jatuhnya dari BlueShip.

Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

&nbsp;&nbsp;&nbsp;Object BlueShip akan tembus melewati Object StonePlatform.

Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

&nbsp;&nbsp;&nbsp;Object Blueship pastinya akan move jika dirubah Positionnya, akan Rotate jika dirubah Rotationnya, dan akan membesar(>1.00)/mengecil(<1.00) jika dirubah Scalenya.

Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

&nbsp;&nbsp;&nbsp;