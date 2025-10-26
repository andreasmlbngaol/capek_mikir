import 'package:capek_mikir/models/categories.dart';
import 'package:capek_mikir/models/question.dart';

class QuestionList {
  static final Map<Categories, List<Question>> questions = {
    Categories.programming: [
      const Question(
        problem: "Apa nama file utama yang pertama kali dijalankan di project Flutter?",
        choices: ["index.dart", "main.dart", "app.dart", "run.dart"],
        solution: "main.dart",
      ),
      const Question(
        problem: "Widget mana yang digunakan untuk menampung seluruh tampilan aplikasi Flutter?",
        choices: ["Scaffold", "Container", "AppShell", "MaterialApp"],
        solution: "MaterialApp",
      ),
      const Question(
        problem: "Bahasa apa yang digunakan untuk membuat aplikasi Flutter?",
        choices: ["Dart", "Kotlin", "Swift", "C++"],
        solution: "Dart",
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
      ),
      const Question(
        problem: "Keyword apa yang digunakan untuk membuat class immutable di Dart?",
        choices: ["const", "static", "final", "immutable"],
        solution: "const",
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
      ),
      const Question(
        problem: "Package manager bawaan Flutter adalah?",
        choices: ["pub", "npm", "gradle", "cargo"],
        solution: "pub",
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
      ),
      const Question(
        problem: "Platform mana yang bisa dijalankan oleh Flutter?",
        choices: ["Mobile only", "Mobile & Web", "Mobile, Web, Desktop", "Android only"],
        solution: "Mobile, Web, Desktop",
      ),
      const Question(
        problem: "Method mana yang pertama kali dipanggil di StatefulWidget?",
        choices: ["build()", "initState()", "dispose()", "createState()"],
        solution: "initState()",
      ),
      const Question(
        problem: "Kotlin dikembangkan oleh perusahaan apa?",
        choices: ["Oracle", "JetBrains", "Google", "Microsoft"],
        solution: "JetBrains",
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
      ),
    ],

    // ==========================================================
    Categories.game: [
      const Question(
        problem: "Karakter utama dalam seri The Legend of Zelda bernama?",
        choices: ["Zelda", "Link", "Ganondorf", "Midna"],
        solution: "Link",
      ),
      const Question(
        problem: "Game mana yang dikenal dengan kalimat 'The cake is a lie'?",
        choices: ["Portal", "Half-Life", "Undertale", "Skyrim"],
        solution: "Portal",
      ),
      const Question(
        problem: "Developer dari game Minecraft adalah?",
        choices: ["Mojang", "Epic Games", "Valve", "Ubisoft"],
        solution: "Mojang",
      ),
      const Question(
        problem: "Karakter utama di game God of War bernama?",
        choices: ["Ares", "Kratos", "Hades", "Zeus"],
        solution: "Kratos",
      ),
      const Question(
        problem: "Map 'Dust 2' berasal dari game apa?",
        choices: ["CS:GO", "Valorant", "PUBG", "Overwatch"],
        solution: "CS:GO",
      ),
      const Question(
        problem: "Senjata paling ikonik di Valorant adalah?",
        choices: ["Vandal", "M4A1", "Phantom", "Operator"],
        solution: "Vandal",
      ),
      const Question(
        problem: "Siapa karakter yang suka bilang 'Hey, listen!' di Zelda?",
        choices: ["Navi", "Epona", "Midna", "Fi"],
        solution: "Navi",
      ),
      const Question(
        problem: "Nama kota utama di GTA San Andreas?",
        choices: ["Vice City", "Los Santos", "Liberty City", "San Fierro"],
        solution: "Los Santos",
      ),
      const Question(
        problem: "Di Among Us, siapa yang bisa bunuh orang?",
        choices: ["Crewmate", "Engineer", "Impostor", "Scientist"],
        solution: "Impostor",
      ),
      const Question(
        problem: "Karakter Mario pertama kali muncul di game apa?",
        choices: ["Super Mario Bros", "Donkey Kong", "Mario Kart", "Yoshi's Island"],
        solution: "Donkey Kong",
      ),
      const Question(
        problem: "Game battle royale pertama yang populer banget?",
        choices: ["Fortnite", "PUBG", "Free Fire", "Apex Legends"],
        solution: "PUBG",
      ),
      const Question(
        problem: "Nama burung di game Angry Birds warna merah adalah?",
        choices: ["Red", "Chuck", "Bomb", "Matilda"],
        solution: "Red",
      ),
      const Question(
        problem: "Developer Genshin Impact adalah?",
        choices: ["HoYoverse", "Tencent", "miHoYo", "Bandai Namco"],
        solution: "HoYoverse",
      ),
    ],

    // ==========================================================
    Categories.history: [
      const Question(
        problem: "Siapa penemu bola lampu?",
        choices: ["Nikola Tesla", "Thomas Edison", "Einstein", "Newton"],
        solution: "Thomas Edison",
      ),
      const Question(
        problem: "Kapan Indonesia merdeka?",
        choices: ["1942", "1945", "1950", "1965"],
        solution: "1945",
      ),
      const Question(
        problem: "Negara mana yang pertama kali mendarat di bulan?",
        choices: ["China", "Rusia", "Amerika Serikat", "Jepang"],
        solution: "Amerika Serikat",
      ),
      const Question(
        problem: "Siapa presiden pertama Republik Indonesia?",
        choices: ["Soekarno", "Soeharto", "Habibie", "Megawati"],
        solution: "Soekarno",
      ),
      const Question(
        problem: "Perang Dunia II berakhir pada tahun?",
        choices: ["1942", "1945", "1950", "1939"],
        solution: "1945",
      ),
      const Question(
        problem: "Pirámida Giza ada di negara mana?",
        choices: ["Mesir", "Meksiko", "Yunani", "Maroko"],
        solution: "Mesir",
      ),
      const Question(
        problem: "Kerajaan Majapahit berdiri di pulau mana?",
        choices: ["Sumatra", "Jawa", "Bali", "Kalimantan"],
        solution: "Jawa",
      ),
      const Question(
        problem: "Siapa yang menemukan mesin cetak?",
        choices: ["Johannes Gutenberg", "Isaac Newton", "Benjamin Franklin", "Da Vinci"],
        solution: "Johannes Gutenberg",
      ),
      const Question(
        problem: "Revolusi industri pertama terjadi di negara mana?",
        choices: ["Amerika Serikat", "Prancis", "Inggris", "Jerman"],
        solution: "Inggris",
      ),
      const Question(
        problem: "Siapa tokoh di balik teori relativitas?",
        choices: ["Einstein", "Newton", "Bohr", "Tesla"],
        solution: "Einstein",
      ),
      const Question(
        problem: "Bahtera Nuh termasuk kisah dari agama apa?",
        choices: ["Hindu", "Kristen", "Islam", "Buddha"],
        solution: "Kristen",
      ),
      const Question(
        problem: "Perang Diponegoro terjadi pada abad ke-?",
        choices: ["17", "18", "19", "20"],
        solution: "19",
      ),
      const Question(
        problem: "Candi Borobudur dibangun pada masa kerajaan?",
        choices: ["Majapahit", "Mataram Kuno", "Sriwijaya", "Kediri"],
        solution: "Mataram Kuno",
      ),
    ],

    // ==========================================================
    Categories.language: [
      const Question(
        problem: "Apa arti 'AFK' dalam dunia gaming?",
        choices: ["Away From Keyboard", "Always For Killing", "All Friends Killed", "A Free Kill"],
        solution: "Away From Keyboard",
      ),
      const Question(
        problem: "Bahasa resmi di Brasil adalah?",
        choices: ["Spanyol", "Portugis", "Italia", "Prancis"],
        solution: "Portugis",
      ),
      const Question(
        problem: "Istilah 'ngab' berasal dari kata apa?",
        choices: ["Bang", "Gabung", "Ngobrol", "Ngabers"],
        solution: "Bang",
      ),
      const Question(
        problem: "Kata 'LOL' biasa dipakai untuk?",
        choices: ["Marah", "Sedih", "Ketawa", "Diam"],
        solution: "Ketawa",
      ),
      const Question(
        problem: "Bahasa pemrograman Python dinamai dari?",
        choices: ["Ular", "Komedi Inggris", "Dewa Mesir", "Nama pembuatnya"],
        solution: "Komedi Inggris",
      ),
      const Question(
        problem: "Kata 'baper' berarti?",
        choices: ["Bawa perasaan", "Bawa perlengkapan", "Banyak persoalan", "Bawa persepsi"],
        solution: "Bawa perasaan",
      ),
      const Question(
        problem: "‘Slay’ di slang Gen Z berarti?",
        choices: ["Menang besar", "Gagal total", "Keren banget", "Membunuh beneran"],
        solution: "Keren banget",
      ),
      const Question(
        problem: "Bahasa yang paling banyak digunakan di dunia?",
        choices: ["Inggris", "Mandarin", "Spanyol", "Hindi"],
        solution: "Mandarin",
      ),
      const Question(
        problem: "Arti kata ‘simp’ di internet slang?",
        choices: ["Orang bucin", "Pemarah", "Lucu", "Pintar banget"],
        solution: "Orang bucin",
      ),
      const Question(
        problem: "Bahasa Latin sekarang dianggap sebagai?",
        choices: ["Bahasa mati", "Bahasa gaul", "Bahasa resmi dunia", "Bahasa programming"],
        solution: "Bahasa mati",
      ),
      const Question(
        problem: "Arti singkatan ‘BRB’?",
        choices: ["Be Right Back", "Be Really Bad", "Bring Real Book", "Bad Really Bad"],
        solution: "Be Right Back",
      ),
      const Question(
        problem: "Bahasa yang digunakan di Korea Selatan adalah?",
        choices: ["Mandarin", "Korea", "Jepang", "Vietnam"],
        solution: "Korea",
      ),
      const Question(
        problem: "Bahasa pemrograman ‘Swift’ dibuat oleh?",
        choices: ["Apple", "Google", "Microsoft", "Adobe"],
        solution: "Apple",
      ),
    ],
  };
}
