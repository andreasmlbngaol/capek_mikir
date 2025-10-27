import 'package:capek_mikir/models/categories.dart';
import 'package:capek_mikir/models/question.dart';

class QuestionList {
  static final Map<Categories, List<Question>> questions = {
    // ==========================================================
    Categories.programming: [
      const Question(
        problem: "Apa nama file utama yang pertama kali dijalankan di project Flutter?",
        choices: ["index.dart", "main.dart", "app.dart", "run.dart"],
        solution: "main.dart",
        explanation: "Flutter menjalankan fungsi main() yang ada di file main.dart sebagai entry point aplikasi.",
      ),
      const Question(
        problem: "Widget mana yang digunakan untuk menampung seluruh tampilan aplikasi Flutter?",
        choices: ["Scaffold", "Container", "AppShell", "MaterialApp"],
        solution: "MaterialApp",
        explanation: "MaterialApp adalah widget root untuk aplikasi bergaya Material Design di Flutter.",
      ),
      const Question(
        problem: "Bahasa apa yang digunakan untuk membuat aplikasi Flutter?",
        choices: ["Dart", "Kotlin", "Swift", "C++"],
        solution: "Dart",
        explanation: "Flutter dibangun menggunakan bahasa Dart yang dikembangkan oleh Google.",
      ),
      const Question(
        problem: "Kotlin Multiplatform digunakan untuk apa?",
        choices: [
          "Membuat UI Android",
          "Berbagi logic antar platform",
          "Deploy aplikasi ke cloud",
          "Membuat game",
        ],
        solution: "Berbagi logic antar platform",
        explanation: "Kotlin Multiplatform memungkinkan kode logic dibagi antara Android, iOS, dan platform lain.",
      ),
      const Question(
        problem: "Keyword apa yang digunakan untuk membuat class immutable di Dart?",
        choices: ["const", "static", "final", "immutable"],
        solution: "const",
        explanation: "Keyword const membuat objek bersifat compile-time constant dan immutable.",
      ),
      const Question(
        problem: "Fungsi 'hot reload' di Flutter gunanya untuk apa?",
        choices: [
          "Meningkatkan performa runtime",
          "Menjalankan ulang app dari awal",
          "Update UI tanpa restart app",
          "Menghapus cache",
        ],
        solution: "Update UI tanpa restart app",
        explanation: "Hot reload memperbarui UI tanpa kehilangan state aplikasi.",
      ),
      const Question(
        problem: "Package manager bawaan Flutter adalah?",
        choices: ["pub", "npm", "gradle", "cargo"],
        solution: "pub",
        explanation: "Flutter menggunakan pub.dev sebagai package repository dan pub sebagai package manager-nya.",
      ),
      const Question(
        problem: "Di Kotlin, 'val' berarti apa?",
        choices: [
          "Variable yang bisa diubah",
          "Constant / immutable variable",
          "Function",
          "Class static variable",
        ],
        solution: "Constant / immutable variable",
        explanation: "'val' mendeklarasikan variabel yang nilainya tidak dapat diubah setelah inisialisasi.",
      ),
      const Question(
        problem: "Platform mana yang bisa dijalankan oleh Flutter?",
        choices: ["Mobile only", "Mobile & Web", "Mobile, Web, Desktop", "Android only"],
        solution: "Mobile, Web, Desktop",
        explanation: "Flutter mendukung multi-platform: Android, iOS, Web, dan Desktop.",
      ),
      const Question(
        problem: "Method mana yang pertama kali dipanggil di StatefulWidget?",
        choices: ["build()", "initState()", "dispose()", "createState()"],
        solution: "initState()",
        explanation: "initState() dipanggil sekali sebelum widget pertama kali dirender.",
      ),
      const Question(
        problem: "Kotlin dikembangkan oleh perusahaan apa?",
        choices: ["Oracle", "JetBrains", "Google", "Microsoft"],
        solution: "JetBrains",
        explanation: "JetBrains adalah perusahaan di balik pengembangan Kotlin dan IntelliJ IDEA.",
      ),
      const Question(
        problem: "Extension function di Kotlin berguna untuk?",
        choices: [
          "Menambah fitur ke class tanpa inheritance",
          "Menghapus class lama",
          "Membuat anonymous class",
          "Mengatur visibility",
        ],
        solution: "Menambah fitur ke class tanpa inheritance",
        explanation: "Extension function menambahkan fungsi baru ke class tanpa perlu mengubah source-nya.",
      ),
      const Question(
        problem: "Perintah untuk membuat project Flutter baru adalah?",
        choices: [
          "flutter make project",
          "flutter create",
          "flutter init",
          "flutter new",
        ],
        solution: "flutter create",
        explanation: "Command 'flutter create' digunakan untuk membuat project Flutter baru.",
      ),
      // Tambahan
      const Question(
        problem: "Widget apa yang digunakan untuk layout vertikal di Flutter?",
        choices: ["Column", "Row", "Stack", "ListView"],
        solution: "Column",
        explanation: "Column digunakan untuk menyusun widget secara vertikal.",
      ),
      const Question(
        problem: "Kotlin berjalan di atas platform apa?",
        choices: ["JVM", "CLR", "WebAssembly", "Python VM"],
        solution: "JVM",
        explanation: "Kotlin berjalan di atas Java Virtual Machine (JVM) sama seperti Java.",
      ),
      const Question(
        problem: "Apa fungsi 'setState()' di Flutter?",
        choices: [
          "Menyimpan data ke database",
          "Mengubah tampilan saat state berubah",
          "Menjalankan ulang aplikasi",
          "Menambahkan widget baru",
        ],
        solution: "Mengubah tampilan saat state berubah",
        explanation: "setState() memberi tahu Flutter bahwa data berubah dan UI harus di-rebuild.",
      ),
    ],

    // ==========================================================
    Categories.game: [
      const Question(
        problem: "Karakter utama dalam seri The Legend of Zelda bernama?",
        choices: ["Zelda", "Link", "Ganondorf", "Midna"],
        solution: "Link",
        explanation: "Link adalah protagonis di seri Zelda; Zelda adalah nama putri dalam cerita.",
      ),
      const Question(
        problem: "Game mana yang dikenal dengan kalimat 'The cake is a lie'?",
        choices: ["Portal", "Half-Life", "Undertale", "Skyrim"],
        solution: "Portal",
        explanation: "Kalimat itu muncul di Portal sebagai lelucon tentang janji palsu GLaDOS.",
      ),
      const Question(
        problem: "Developer dari game Minecraft adalah?",
        choices: ["Mojang", "Epic Games", "Valve", "Ubisoft"],
        solution: "Mojang",
        explanation: "Minecraft dikembangkan oleh Mojang sebelum diakuisisi Microsoft.",
      ),
      const Question(
        problem: "Karakter utama di game God of War bernama?",
        choices: ["Ares", "Kratos", "Hades", "Zeus"],
        solution: "Kratos",
        explanation: "Kratos adalah prajurit Sparta yang menjadi Dewa Perang dalam seri tersebut.",
      ),
      const Question(
        problem: "Map 'Dust 2' berasal dari game apa?",
        choices: ["CS:GO", "Valorant", "PUBG", "Overwatch"],
        solution: "CS:GO",
        explanation: "Dust 2 adalah map klasik dari seri Counter-Strike.",
      ),
      const Question(
        problem: "Senjata paling ikonik di Valorant adalah?",
        choices: ["Vandal", "M4A1", "Phantom", "Operator"],
        solution: "Vandal",
        explanation: "Vandal dikenal karena damage-nya yang konsisten di semua jarak.",
      ),
      const Question(
        problem: "Siapa karakter yang suka bilang 'Hey, listen!' di Zelda?",
        choices: ["Navi", "Epona", "Midna", "Fi"],
        solution: "Navi",
        explanation: "Navi adalah peri pendamping Link di Ocarina of Time.",
      ),
      const Question(
        problem: "Nama kota utama di GTA San Andreas?",
        choices: ["Vice City", "Los Santos", "Liberty City", "San Fierro"],
        solution: "Los Santos",
        explanation: "Los Santos terinspirasi dari Los Angeles di dunia nyata.",
      ),
      const Question(
        problem: "Di Among Us, siapa yang bisa bunuh orang?",
        choices: ["Crewmate", "Engineer", "Impostor", "Scientist"],
        solution: "Impostor",
        explanation: "Impostor punya kemampuan membunuh dan mensabotase sistem.",
      ),
      const Question(
        problem: "Karakter Mario pertama kali muncul di game apa?",
        choices: ["Super Mario Bros", "Donkey Kong", "Mario Kart", "Yoshi's Island"],
        solution: "Donkey Kong",
        explanation: "Mario pertama kali muncul sebagai 'Jumpman' di Donkey Kong (1981).",
      ),
      const Question(
        problem: "Game battle royale pertama yang populer banget?",
        choices: ["Fortnite", "PUBG", "Free Fire", "Apex Legends"],
        solution: "PUBG",
        explanation: "PUBG mempopulerkan genre battle royale modern pada 2017.",
      ),
      const Question(
        problem: "Nama burung di game Angry Birds warna merah adalah?",
        choices: ["Red", "Chuck", "Bomb", "Matilda"],
        solution: "Red",
        explanation: "Red adalah karakter utama di seri Angry Birds.",
      ),
      const Question(
        problem: "Developer Genshin Impact adalah?",
        choices: ["HoYoverse", "Tencent", "miHoYo", "Bandai Namco"],
        solution: "HoYoverse",
        explanation: "HoYoverse adalah nama global baru dari studio miHoYo.",
      ),
      // Tambahan
      const Question(
        problem: "Game MOBA populer yang dikembangkan oleh Riot Games adalah?",
        choices: ["Dota 2", "Valorant", "League of Legends", "Overwatch"],
        solution: "League of Legends",
        explanation: "League of Legends adalah game MOBA buatan Riot Games.",
      ),
      const Question(
        problem: "Di game Mobile Legends, role 'Tank' berfungsi untuk?",
        choices: [
          "Memberi damage besar",
          "Menahan serangan musuh",
          "Heal tim",
          "Menyerang dari jarak jauh",
        ],
        solution: "Menahan serangan musuh",
        explanation: "Tank berfungsi sebagai pelindung tim dengan HP dan defense besar.",
      ),
      const Question(
        problem: "Karakter utama di game The Witcher bernama?",
        choices: ["Geralt of Rivia", "Ezio Auditore", "Arthur Morgan", "Ellie"],
        solution: "Geralt of Rivia",
        explanation: "Geralt adalah pemburu monster dalam seri The Witcher.",
      ),
    ],

    // ==========================================================
    Categories.history: [
      const Question(
        problem: "Siapa penemu bola lampu?",
        choices: ["Nikola Tesla", "Thomas Edison", "Einstein", "Newton"],
        solution: "Thomas Edison",
        explanation: "Edison dikenal karena menyempurnakan dan mempopulerkan bola lampu pijar.",
      ),
      const Question(
        problem: "Kapan Indonesia merdeka?",
        choices: ["1942", "1945", "1950", "1965"],
        solution: "1945",
        explanation: "Indonesia memproklamasikan kemerdekaan pada 17 Agustus 1945.",
      ),
      const Question(
        problem: "Negara mana yang pertama kali mendarat di bulan?",
        choices: ["China", "Rusia", "Amerika Serikat", "Jepang"],
        solution: "Amerika Serikat",
        explanation: "NASA berhasil mendaratkan manusia pertama di bulan tahun 1969 lewat Apollo 11.",
      ),
      const Question(
        problem: "Siapa presiden pertama Republik Indonesia?",
        choices: ["Soekarno", "Soeharto", "Habibie", "Megawati"],
        solution: "Soekarno",
        explanation: "Ir. Soekarno menjadi presiden pertama setelah proklamasi kemerdekaan.",
      ),
      const Question(
        problem: "Perang Dunia II berakhir pada tahun?",
        choices: ["1942", "1945", "1950", "1939"],
        solution: "1945",
        explanation: "PD II berakhir setelah Jepang menyerah pada Sekutu tahun 1945.",
      ),
      const Question(
        problem: "Pirámida Giza ada di negara mana?",
        choices: ["Mesir", "Meksiko", "Yunani", "Maroko"],
        solution: "Mesir",
        explanation: "Piramida Giza terletak di Mesir dan termasuk Tujuh Keajaiban Dunia Kuno.",
      ),
      const Question(
        problem: "Kerajaan Majapahit berdiri di pulau mana?",
        choices: ["Sumatra", "Jawa", "Bali", "Kalimantan"],
        solution: "Jawa",
        explanation: "Majapahit adalah kerajaan besar di Jawa Timur pada abad ke-13.",
      ),
      const Question(
        problem: "Siapa yang menemukan mesin cetak?",
        choices: ["Johannes Gutenberg", "Isaac Newton", "Benjamin Franklin", "Da Vinci"],
        solution: "Johannes Gutenberg",
        explanation: "Gutenberg menemukan mesin cetak modern sekitar tahun 1440 di Jerman.",
      ),
      const Question(
        problem: "Revolusi industri pertama terjadi di negara mana?",
        choices: ["Amerika Serikat", "Prancis", "Inggris", "Jerman"],
        solution: "Inggris",
        explanation: "Inggris memulai revolusi industri pada abad ke-18 dengan mesin uap.",
      ),
      const Question(
        problem: "Siapa tokoh di balik teori relativitas?",
        choices: ["Einstein", "Newton", "Bohr", "Tesla"],
        solution: "Einstein",
        explanation: "Albert Einstein memperkenalkan teori relativitas khusus dan umum.",
      ),
      const Question(
        problem: "Bahtera Nuh termasuk kisah dari agama apa?",
        choices: ["Hindu", "Kristen", "Islam", "Buddha"],
        solution: "Kristen",
        explanation: "Kisah Bahtera Nuh berasal dari Perjanjian Lama dalam Alkitab.",
      ),
      const Question(
        problem: "Perang Diponegoro terjadi pada abad ke-?",
        choices: ["17", "18", "19", "20"],
        solution: "19",
        explanation: "Perang Diponegoro terjadi antara tahun 1825–1830 di Jawa.",
      ),
      const Question(
        problem: "Candi Borobudur dibangun pada masa kerajaan?",
        choices: ["Majapahit", "Mataram Kuno", "Sriwijaya", "Kediri"],
        solution: "Mataram Kuno",
        explanation: "Borobudur dibangun pada masa Dinasti Syailendra di Kerajaan Mataram Kuno.",
      ),
      // Tambahan
      const Question(
        problem: "Siapa penemu telepon?",
        choices: ["Alexander Graham Bell", "Nikola Tesla", "Thomas Edison", "Marconi"],
        solution: "Alexander Graham Bell",
        explanation: "Bell menemukan telepon pada tahun 1876.",
      ),
      const Question(
        problem: "Kerajaan Sriwijaya berasal dari pulau?",
        choices: ["Sumatra", "Jawa", "Bali", "Sulawesi"],
        solution: "Sumatra",
        explanation: "Kerajaan Sriwijaya berpusat di Palembang, Sumatra Selatan.",
      ),
      const Question(
        problem: "Siapa penulis naskah proklamasi Indonesia?",
        choices: ["Soekarno", "Hatta", "Sayuti Melik", "Ahmad Subardjo"],
        solution: "Soekarno",
        explanation: "Naskah proklamasi ditulis tangan oleh Soekarno.",
      ),
    ],

    // ==========================================================
    Categories.language: [
      const Question(
        problem: "Apa arti 'AFK' dalam dunia gaming?",
        choices: ["Away From Keyboard", "Always For Killing", "All Friends Killed", "A Free Kill"],
        solution: "Away From Keyboard",
        explanation: "AFK artinya pemain sedang tidak aktif atau meninggalkan keyboard.",
      ),
      const Question(
        problem: "Bahasa resmi di Brasil adalah?",
        choices: ["Spanyol", "Portugis", "Italia", "Prancis"],
        solution: "Portugis",
        explanation: "Brasil menggunakan bahasa Portugis karena dijajah oleh Portugis dulu.",
      ),
      const Question(
        problem: "Istilah 'ngab' berasal dari kata apa?",
        choices: ["Bang", "Gabung", "Ngobrol", "Ngabers"],
        solution: "Bang",
        explanation: "'Ngab' adalah kebalikan dari 'Bang', sering dipakai di bahasa gaul Gen Z.",
      ),
      const Question(
        problem: "Kata 'LOL' biasa dipakai untuk?",
        choices: ["Marah", "Sedih", "Ketawa", "Diam"],
        solution: "Ketawa",
        explanation: "LOL adalah singkatan dari 'Laugh Out Loud' yang berarti tertawa keras.",
      ),
      const Question(
        problem: "Bahasa pemrograman Python dinamai dari?",
        choices: ["Ular", "Komedi Inggris", "Dewa Mesir", "Nama pembuatnya"],
        solution: "Komedi Inggris",
        explanation: "Python dinamai dari grup komedi Inggris ‘Monty Python’, bukan ular.",
      ),
      const Question(
        problem: "Kata 'baper' berarti?",
        choices: ["Bawa perasaan", "Bawa perlengkapan", "Banyak persoalan", "Bawa persepsi"],
        solution: "Bawa perasaan",
        explanation: "‘Baper’ berarti terlalu terbawa perasaan terhadap sesuatu.",
      ),
      const Question(
        problem: "‘Slay’ di slang Gen Z berarti?",
        choices: ["Menang besar", "Gagal total", "Keren banget", "Membunuh beneran"],
        solution: "Keren banget",
        explanation: "‘Slay’ artinya tampil keren atau melakukan sesuatu dengan sangat baik.",
      ),
      const Question(
        problem: "Bahasa yang paling banyak digunakan di dunia?",
        choices: ["Inggris", "Mandarin", "Spanyol", "Hindi"],
        solution: "Mandarin",
        explanation: "Bahasa Mandarin digunakan oleh lebih dari 1 miliar orang.",
      ),
      const Question(
        problem: "Arti kata ‘simp’ di internet slang?",
        choices: ["Orang bucin", "Pemarah", "Lucu", "Pintar banget"],
        solution: "Orang bucin",
        explanation: "‘Simp’ adalah seseorang yang terlalu bucin terhadap orang lain.",
      ),
      const Question(
        problem: "Bahasa Latin sekarang dianggap sebagai?",
        choices: ["Bahasa mati", "Bahasa gaul", "Bahasa resmi dunia", "Bahasa programming"],
        solution: "Bahasa mati",
        explanation: "Bahasa Latin sudah tidak digunakan dalam percakapan sehari-hari.",
      ),
      const Question(
        problem: "Arti singkatan ‘BRB’?",
        choices: ["Be Right Back", "Be Really Bad", "Bring Real Book", "Bad Really Bad"],
        solution: "Be Right Back",
        explanation: "BRB artinya ‘akan segera kembali’.",
      ),
      const Question(
        problem: "Bahasa yang digunakan di Korea Selatan adalah?",
        choices: ["Mandarin", "Korea", "Jepang", "Vietnam"],
        solution: "Korea",
        explanation: "Bahasa resmi Korea Selatan adalah Bahasa Korea (Hangul).",
      ),
      const Question(
        problem: "Bahasa pemrograman ‘Swift’ dibuat oleh?",
        choices: ["Apple", "Google", "Microsoft", "Adobe"],
        solution: "Apple",
        explanation: "Swift dibuat oleh Apple untuk menggantikan Objective-C di iOS dan macOS.",
      ),
      // Tambahan
      const Question(
        problem: "Apa arti kata ‘OOTD’?",
        choices: ["Outfit of the Day", "Out of the Door", "Out of the Deal", "Order of the Day"],
        solution: "Outfit of the Day",
        explanation: "OOTD adalah singkatan dari Outfit of the Day, biasanya buat pamer baju di medsos.",
      ),
      const Question(
        problem: "Kata ‘ghosting’ dalam hubungan berarti?",
        choices: ["Menghilang tiba-tiba tanpa kabar", "Menjadi teman dekat", "Curhat terus", "Menikah diam-diam"],
        solution: "Menghilang tiba-tiba tanpa kabar",
        explanation: "Ghosting berarti seseorang tiba-tiba menghilang tanpa penjelasan dalam hubungan.",
      ),
      const Question(
        problem: "Apa arti singkatan ‘TBH’?",
        choices: ["To Be Honest", "Too Bad Honey", "Try Being Happy", "Thanks By Heart"],
        solution: "To Be Honest",
        explanation: "TBH berarti ‘sejujurnya’.",
      ),
    ],

    // ==========================================================
    Categories.twice: [
      const Question(
        problem: "Berapa jumlah member TWICE?",
        choices: ["7", "8", "9", "10"],
        solution: "9",
        explanation: "TWICE terdiri dari 9 member.",
      ),
      const Question(
        problem: "Siapa leader dari TWICE?",
        choices: ["Nayeon", "Jihyo", "Mina", "Tzuyu"],
        solution: "Jihyo",
        explanation: "Jihyo adalah leader TWICE sejak debut.",
      ),
      const Question(
        problem: "TWICE debut di tahun berapa?",
        choices: ["2014", "2015", "2016", "2017"],
        solution: "2015",
        explanation: "TWICE debut pada Oktober 2015 dengan lagu 'Like OOH-AHH'.",
      ),
      const Question(
        problem: "Agensi yang menaungi TWICE adalah?",
        choices: ["YG Entertainment", "SM Entertainment", "JYP Entertainment", "HYBE"],
        solution: "JYP Entertainment",
        explanation: "TWICE berada di bawah naungan JYP Entertainment.",
      ),
      const Question(
        problem: "Member termuda (maknae) TWICE adalah?",
        choices: ["Dahyun", "Tzuyu", "Chaeyoung", "Momo"],
        solution: "Tzuyu",
        explanation: "Tzuyu adalah maknae TWICE yang berasal dari Taiwan.",
      ),
      const Question(
        problem: "Judul lagu debut TWICE adalah?",
        choices: ["Cheer Up", "TT", "Like OOH-AHH", "Signal"],
        solution: "Like OOH-AHH",
        explanation: "‘Like OOH-AHH’ adalah lagu debut TWICE pada tahun 2015.",
      ),
      const Question(
        problem: "Nama fandom resmi TWICE adalah?",
        choices: ["Once", "Twink", "T-Unit", "Candy"],
        solution: "Once",
        explanation: "Fandom resmi TWICE disebut ‘ONCE’.",
      ),
      const Question(
        problem: "Member TWICE asal Jepang ada berapa?",
        choices: ["2", "3", "4", "5"],
        solution: "3",
        explanation: "Member asal Jepang adalah Momo, Sana, dan Mina.",
      ),
      const Question(
        problem: "Lagu TWICE dengan ekspresi tangan ‘TT’ di koreografinya adalah?",
        choices: ["Cheer Up", "TT", "Fancy", "Likey"],
        solution: "TT",
        explanation: "‘TT’ punya gerakan tangan membentuk huruf T yang ikonik.",
      ),
      const Question(
        problem: "Member TWICE yang dikenal dengan line 'sha sha sha' di lagu 'Cheer Up' adalah?",
        choices: ["Nayeon", "Momo", "Sana", "Jihyo"],
        solution: "Sana",
        explanation: "Line 'sha sha sha' yang ikonik dibawakan oleh Sana.",
      ),
      const Question(
        problem: "Apa judul album debut TWICE?",
        choices: ["The Story Begins", "Page Two", "Twicetagram", "Signal"],
        solution: "The Story Begins",
        explanation: "Album mini debut TWICE berjudul 'The Story Begins'.",
      ),
      const Question(
        problem: "Lagu berbahasa Inggris pertama TWICE adalah?",
        choices: ["The Feels", "Moonlight Sunrise", "I Can't Stop Me", "More & More"],
        solution: "The Feels",
        explanation: "'The Feels' adalah single berbahasa Inggris pertama dari TWICE.",
      ),
       const Question(
        problem: "Reality show yang membentuk TWICE bernama?",
        choices: ["Produce 101", "SIXTEEN", "Finding TWICE", "TWICE TV"],
        solution: "SIXTEEN",
        explanation: "TWICE dibentuk melalui program survival show JYP yang bernama SIXTEEN.",
      ),
      const Question(
        problem: "Siapa main dancer di TWICE?",
        choices: ["Sana", "Mina", "Momo", "Chaeyoung"],
        solution: "Momo",
        explanation: "Momo adalah main dancer TWICE yang dikenal dengan kemampuan menarinya yang luar biasa.",
      ),
      const Question(
        problem: "Apa nama light stick resmi TWICE?",
        choices: ["Candy Bong", "Twice Stick", "Once Bong", "Lighty"],
        solution: "Candy Bong",
        explanation: "Light stick resmi TWICE dinamakan 'Candy Bong' yang terinspirasi dari permen lolipop.",
      ),
    ],
  };
}
