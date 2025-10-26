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
    ],
  };
}
