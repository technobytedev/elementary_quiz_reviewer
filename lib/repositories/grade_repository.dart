import '../models/grade_model.dart';

class GradeRepository {
  static final Map<String, Map<String, dynamic>> _gradeData = {
    'Grade 1': {
      "grade_level": "Grade 1",
      "academic_year": "2026-2027",
      "curriculum": [
{
  "subject_name": "Language",
  "questions": [
    {"question": "Ano ang tunog ng letrang 'M'?", "choices": ["Aaaa", "Mmmm", "Ssss", "Oooo"], "correct_answer": "Mmmm"},
    {"question": "Alin sa mga ito ang huni ng ibon?", "choices": ["Twit-twit", "Moo-moo", "Meow-meow", "Kokak-kokak"], "correct_answer": "Twit-twit"},
    {"question": "Anong bahagi ng aklat ang makikita sa harap na may pamagat?", "choices": ["Dahon", "Pabalat", "Glosaryo", "Indeks"], "correct_answer": "Pabalat"},
    {"question": "Aling salita ang nagsisimula sa letrang 'S'?", "choices": ["Aso", "Lapis", "Saging", "Mesa"], "correct_answer": "Saging"},
    {"question": "Ilan ang pantig ng salitang 'Pa-a-ra-lan'?", "choices": ["1", "2", "3", "4"], "correct_answer": "4"},
    {"question": "Alin ang tamang bati sa umaga?", "choices": ["Magandang Gabi", "Magandang Umaga", "Magandang Hapon", "Salamat"], "correct_answer": "Magandang Umaga"},
    {"question": "Ano ang kasalungat ng 'Mainit'?", "choices": ["Malamig", "Mataas", "Malaki", "Mabilis"], "correct_answer": "Malamig"},
    {"question": "Alin ang ngalan ng isang lugar?", "choices": ["Guro", "Simbahan", "Pusa", "Lapis"], "correct_answer": "Simbahan"},
    {"question": "Anong bantas ang ginagamit sa dulo ng pangungusap na nagtatanong?", "choices": [".", ",", "!", "?"], "correct_answer": "?"},
    {"question": "Alin sa mga sumusunod ang 'magkasingtunog'?", "choices": ["Lata-Mata", "Aso-Pusa", "Bahay-Paaralan", "Gatas-Tubig"], "correct_answer": "Lata-Mata"},
    {"question": "Sino ang sumusulat ng kwento sa isang aklat?", "choices": ["Tagaguhit", "May-akda", "Mambabasa", "Guro"], "correct_answer": "May-akda"},
    {"question": "Anong salita ang nagsisimula sa patinig na 'A'?", "choices": ["Ulan", "Ibon", "Atis", "Eroplano"], "correct_answer": "Atis"},
    {"question": "Ano ang tamang sagot kapag tinanong ka ng 'Ano ang pangalan mo?'", "choices": ["Ako ay 6 na taong gulang.", "Nakatira ako sa Manila.", "Ang pangalan ko ay Juan.", "Salamat po."], "correct_answer": "Ang pangalan ko ay Juan."},
    {"question": "Alin ang huling tunog ng salitang 'Atis'?", "choices": ["/a/", "/t/", "/i/", "/s/"], "correct_answer": "/s/"},
    {"question": "Alin ang tamang baybay ng salitang para sa 'bahay'?", "choices": ["B-a-h-a-y", "B-a-y-a-h", "B-h-a-a-y", "B-a-a-h-y"], "correct_answer": "B-a-h-a-y"},
    {"question": "Ano ang ginagawa mo kung ikaw ay nagbabasa?", "choices": ["Kumakain", "Tumitingin sa mga letra at salita", "Natutulog", "Naglalaro"], "correct_answer": "Tumitingin sa mga letra at salita"},
    {"question": "Alin ang ngalan ng bagay?", "choices": ["Nanay", "Lapis", "Palengke", "Bantay"], "correct_answer": "Lapis"},
    {"question": "Anong salita ang may 2 pantig?", "choices": ["Ibon", "Mataas", "Paaralan", "A"], "correct_answer": "Ibon"},
    {"question": "Alin ang kasingkahulugan ng 'Masaya'?", "choices": ["Malungkot", "Galit", "Maligaya", "Takot"], "correct_answer": "Maligaya"},
    {"question": "Ano ang ginagamit natin sa pakikipag-usap?", "choices": ["Kamay", "Wika", "Paa", "Buhok"], "correct_answer": "Wika"},
    {"question": "Alin ang wastong pagkakasunod-sunod: 'A, B, C, __'?", "choices": ["E", "D", "G", "F"], "correct_answer": "D"},
    {"question": "Ano ang tawag sa mga letrang A, E, I, O, U?", "choices": ["Katinig", "Patinig", "Pantig", "Salita"], "correct_answer": "Patinig"},
    {"question": "Alin ang salitang kilos?", "choices": ["Tumakbo", "Maganda", "Bata", "Dito"], "correct_answer": "Tumakbo"},
    {"question": "Anong tunog ang maririnig sa gitna ng 'Lata'?", "choices": ["/l/", "/a/", "/t/", "/s/"], "correct_answer": "/a/"},
    {"question": "Anong sasabihin mo bago pumasok sa silid-aralan?", "choices": ["Paalam po", "Mawalang-galang na po", "Salamat po", "Tulog na po"], "correct_answer": "Mawalang-galang na po"},
    {"question": "Alin ang tamang gamit ng 'Si'?", "choices": ["Si Lapis", "Si Juan", "Si Mesa", "Si Pusa"], "correct_answer": "Si Juan"},
    {"question": "Anong salita ang hindi kabilang sa grupo?", "choices": ["Pula", "Bughaw", "Luntian", "Mabilis"], "correct_answer": "Mabilis"},
    {"question": "Ano ang tawag sa drowing sa aklat?", "choices": ["Pamagat", "Ilustrasyon", "Teksto", "Pahina"], "correct_answer": "Ilustrasyon"},
    {"question": "Alin ang tamang pagkakasulat?", "choices": ["ang bata ay masaya", "Ang bata ay masaya.", "Ang bata ay Masaya", "ang Bata ay masaya."], "correct_answer": "Ang bata ay masaya."},
    {"question": "Anong hayop ang huni ay 'Kokak'?", "choices": ["Manok", "Palaka", "Bibe", "Kambing"], "correct_answer": "Palaka"},
    {"question": "Alin ang ngalan ng hayop?", "choices": ["Mangga", "Kalabaw", "Plaza", "Pulis"], "correct_answer": "Kalabaw"},
    {"question": "Ano ang ibig sabihin ng 'Mabilis'?", "choices": ["Mabagal", "Matulin", "Malaki", "Maliit"], "correct_answer": "Matulin"},
    {"question": "Alin ang nagsisimula sa letrang 'K'?", "choices": ["Kama", "Lata", "Susi", "Watawat"], "correct_answer": "Kama"},
    {"question": "Ilan ang pantig sa 'Ka-la-ba-sa'?", "choices": ["2", "3", "4", "5"], "correct_answer": "4"},
    {"question": "Alin ang 'Katinig'?", "choices": ["A", "E", "B", "O"], "correct_answer": "B"},
    {"question": "Anong bantas ang para sa gulat o matinding damdamin?", "choices": [".", "!", "?", ","], "correct_answer": "!"},
    {"question": "Aling salita ang naglalarawan?", "choices": ["Pula", "Takbo", "Bata", "Ilog"], "correct_answer": "Pula"},
    {"question": "Ano ang huling letra ng 'Abakada'?", "choices": ["A", "B", "K", "D"], "correct_answer": "A"},
    {"question": "Ano ang sasabihin mo kapag binigyan ka ng regalo?", "choices": ["Paalam", "Salamat po", "Patawad", "Walang anuman"], "correct_answer": "Salamat po"},
    {"question": "Alin ang tamang bati sa hapon?", "choices": ["Magandang Gabi", "Magandang Hapon", "Magandang Umaga", "Hi"], "correct_answer": "Magandang Hapon"},
    {"question": "Ano ang tunog ng 'T'?", "choices": ["/t-t-t/", "/s-s-s/", "/m-m-m/", "/k-k-k/"], "correct_answer": "/t-t-t/"},
    {"question": "Aling salita ang tumutukoy sa marami?", "choices": ["Ang bata", "Ang mga bata", "Si bata", "Isang bata"], "correct_answer": "Ang mga bata"},
    {"question": "Anong bahagi ng katawan ang gamit sa pakikinig?", "choices": ["Mata", "Ilong", "Tenga", "Kamay"], "correct_answer": "Tenga"},
    {"question": "Alin ang kasalungat ng 'Malaki'?", "choices": ["Mataas", "Maliit", "Mataba", "Mahaba"], "correct_answer": "Maliit"},
    {"question": "Saan tayo nag-aaral?", "choices": ["Ospital", "Paaralan", "Palengke", "Simbaan"], "correct_answer": "Paaralan"},
    {"question": "Alin ang tamang gamit ng 'Sina'?", "choices": ["Sina Maria", "Sina Maria at Juan", "Sina Lapis", "Sina Mesa"], "correct_answer": "Sina Maria at Juan"},
    {"question": "Anong letra ang nawawala: M-A-S-A-Y-_?", "choices": ["A", "E", "I", "O"], "correct_answer": "A"},
    {"question": "Alin ang hindi kabilang sa mga patinig?", "choices": ["I", "O", "U", "K"], "correct_answer": "K"},
    {"question": "Ano ang 'aso' sa wikang Ingles?", "choices": ["Cat", "Bird", "Dog", "Pig"], "correct_answer": "Dog"},
    {"question": "Aling salita ang may 1 pantig lamang?", "choices": ["Araw", "At", "Bata", "Kama"], "correct_answer": "At"}
  ]
},
{
  "subject_name": "Reading and Literacy",
  "questions": [
    {"question": "Anong tunog ang maririnig sa simula ng salitang 'Ulan'?", "choices": ["/a/", "/e/", "/i/", "/u/"], "correct_answer": "/u/"},
    {"question": "Aling salita ang may tatlong pantig (syllables)?", "choices": ["Mesa", "Paaralan", "Mata", "Lapis"], "correct_answer": "Paaralan"},
    {"question": "Alin sa mga ito ang pangalan ng isang tao?", "choices": ["Pusa", "Lolo", "Silya", "Parke"], "correct_answer": "Lolo"},
    {"question": "Anong letra ang dapat ipalit sa 'm' sa salitang 'maba' upang maging 'saba'?", "choices": ["t", "s", "k", "l"], "correct_answer": "s"},
    {"question": "Alin ang tamang baybay ng salitang 'pencil' sa Filipino?", "choices": ["L-a-p-i-s", "L-a-f-i-s", "L-a-p-e-s", "L-a-p-i-z"], "correct_answer": "L-a-p-i-s"},
    {"question": "Alin sa mga ito ang salitang magkasingtunog (rhyming words)?", "choices": ["Aso-Pusa", "Lata-Mata", "Bahay-Paaralan", "Gulay-Prutas"], "correct_answer": "Lata-Mata"},
    {"question": "Ano ang ibig sabihin ng salitang 'maliit'?", "choices": ["Big", "Small", "Tall", "Short"], "correct_answer": "Small"},
    {"question": "Aling salita ang nagsisimula sa katinig na 'B'?", "choices": ["Aso", "Ibon", "Bibe", "Ulan"], "correct_answer": "Bibe"},
    {"question": "Anong bahagi ng libro ang binabasa upang malaman ang kwento?", "choices": ["Pabalat", "Pahina", "Likod ng aklat", "Talaan ng Nilalaman"], "correct_answer": "Pahina"},
    {"question": "Alin ang tamang panghalip para sa iyong sarili?", "choices": ["Ikaw", "Siya", "Ako", "Tayo"], "correct_answer": "Ako"},
    {"question": "Anong tunog ang maririnig sa huli ng salitang 'Kamay'?", "choices": ["/m/", "/a/", "/y/", "/k/"], "correct_answer": "/y/"},
    {"question": "Alin sa mga sumusunod ang isang 'parirala' (phrase)?", "choices": ["Ang bata.", "Masaya ang bata.", "Ang aso ay tumatakbo.", "Kumakain ang pusa."], "correct_answer": "Ang bata."},
    {"question": "Ilan ang patinig sa salitang 'Eroplano'?", "choices": ["2", "3", "4", "5"], "correct_answer": "4"},
    {"question": "Anong salita ang mabubuo kung pagsasamahin ang 'ba' at 'hay'?", "choices": ["Bhay", "Bahay", "Bhaya", "Hayba"], "correct_answer": "Bahay"},
    {"question": "Alin ang tamang gamit ng 'Ang mga'?", "choices": ["Ang mga bata", "Ang mga bata ay", "Ang mga Juan", "Ang mga silya"], "correct_answer": "Ang mga bata"},
    {"question": "Sino ang tauhan sa kwento na karaniwang isang hayop na nagsasalita?", "choices": ["Alamat", "Pabula", "Balita", "Resipe"], "correct_answer": "Pabula"},
    {"question": "Alin ang tamang bantas para sa pangungusap na: 'Saan ka pupunta'?", "choices": [".", "!", "?", ","], "correct_answer": "?"},
    {"question": "Anong salita ang naglalarawan sa kulay ng uling?", "choices": ["Puti", "Itim", "Pula", "Dilaw"], "correct_answer": "Itim"},
    {"question": "Alin ang huling letra ng alpabetong Filipino?", "choices": ["Z", "Y", "Ng", "X"], "correct_answer": "Z"},
    {"question": "Anong salita ang tumutukoy sa lugar na pinupuntahan para mag-aral?", "choices": ["Palengke", "Paaralan", "Ospital", "Simbahan"], "correct_answer": "Paaralan"},
    {"question": "Alin ang kasingkahulugan ng 'Mabango'?", "choices": ["Mabaho", "Masarap", "Maaliwalas", "Mahalimuyak"], "correct_answer": "Mahalimuyak"},
    {"question": "Anong letra ang nawawala sa: S_N_G (bagay na nagbibigay liwanag)?", "choices": ["I, A", "U, I", "I, I", "A, A"], "correct_answer": "I, A"},
    {"question": "Alin ang tamang pagkakasunod-sunod ng mga letra?", "choices": ["A, B, D, C", "A, B, C, D", "D, C, B, A", "B, A, C, D"], "correct_answer": "A, B, C, D"},
    {"question": "Anong uri ng salita ang 'Tumalon'?", "choices": ["Ngalan", "Kilos", "Lugar", "Bagay"], "correct_answer": "Kilos"},
    {"question": "Alin ang tamang pantukoy para kay Gng. Santos?", "choices": ["Ang", "Si", "Sina", "Ang mga"], "correct_answer": "Si"},
    {"question": "Ano ang tawag sa grupong 'A, E, I, O, U'?", "choices": ["Katinig", "Patinig", "Abakada", "Alpabeto"], "correct_answer": "Patinig"},
    {"question": "Aling salita ang may pinakamaraming pantig?", "choices": ["Ilog", "Bundok", "Kapaligiran", "Dagat"], "correct_answer": "Kapaligiran"},
    {"question": "Ano ang kasalungat ng 'Mataas'?", "choices": ["Mababa", "Malaki", "Mahaba", "Malawak"], "correct_answer": "Mababa"},
    {"question": "Alin ang tamang panghalip kung itinuturo ang isang bagay na malayo sa iyo?", "choices": ["Ito", "Iyan", "Iyon", "Dito"], "correct_answer": "Iyon"},
    {"question": "Anong salita ang mabubuo sa mga tunog na /s/, /a/, /m/, /a/?", "choices": ["Sama", "Masa", "Asam", "Amma"], "correct_answer": "Sama"},
    {"question": "Alin sa mga ito ang isang 'pangungusap'?", "choices": ["Ang pulang bag.", "Si Maria ay nagbabasa.", "Masarap na pagkain.", "Mabait na bata."], "correct_answer": "Si Maria ay nagbabasa."},
    {"question": "Anong bantas ang ginagamit sa dulo ng: 'Aray! Nasaktan ako'?", "choices": [".", "?", "!", ","], "correct_answer": "!"},
    {"question": "Alin ang tamang salita para sa larawan ng maraming saging?", "choices": ["Saging", "Mga saging", "Si saging", "Sina saging"], "correct_answer": "Mga saging"},
    {"question": "Anong letra ang nagsisimula sa salitang 'Yoyo'?", "choices": ["W", "Y", "L", "M"], "correct_answer": "Y"},
    {"question": "Alin ang ngalan ng isang hayop na lumilipad?", "choices": ["Aso", "Pusa", "Ibon", "Isda"], "correct_answer": "Ibon"},
    {"question": "Ano ang gagawin mo kapag may nakitang tuldok (.) sa dulo ng binabasa?", "choices": ["Hihinto", "Magsisigaw", "Bibilisan", "Uulitin"], "correct_answer": "Hihinto"},
    {"question": "Alin ang tamang baybay?", "choices": ["M-a-n-o-k", "M-a-n-u-k", "M-a-n-o-c", "M-a-n-u-c"], "correct_answer": "M-a-n-o-k"},
    {"question": "Anong salita ang kasingtunog ng 'Bahay'?", "choices": ["Buhay", "Palay", "Kahoy", "Tulay"], "correct_answer": "Tulay"},
    {"question": "Alin ang hindi kabilang sa pangkat?", "choices": ["Lapis", "Papel", "Bag", "Saging"], "correct_answer": "Saging"},
    {"question": "Anong salita ang nagsisimula sa 'Ng'?", "choices": ["Ngipin", "Niyog", "Nanay", "Nars"], "correct_answer": "Ngipin"},
    {"question": "Ano ang tawag sa taong gumagawa ng mga drowing sa libro?", "choices": ["Author", "Illustrator", "Teacher", "Doctor"], "correct_answer": "Illustrator"},
    {"question": "Alin ang tamang pagkakasulat ng pangalan?", "choices": ["juan dela cruz", "Juan Dela Cruz", "juan Dela Cruz", "JUAN dela cruz"], "correct_answer": "Juan Dela Cruz"},
    {"question": "Anong letra ang kasunod ng 'L'?", "choices": ["M", "N", "K", "O"], "correct_answer": "M"},
    {"question": "Ano ang mararamdaman mo kung bibigyan ka ng regalo?", "choices": ["Malungkot", "Masaya", "Galit", "Takot"], "correct_answer": "Masaya"},
    {"question": "Alin ang wastong salita para sa '10'?", "choices": ["Sampu", "Siyam", "Walo", "Pito"], "correct_answer": "Sampu"},
    {"question": "Anong salita ang may kambal-katinig (cluster) na 'br'?", "choices": ["Bata", "Braso", "Bote", "Bukas"], "correct_answer": "Braso"},
    {"question": "Alin sa mga ito ang gamit sa pagsulat?", "choices": ["Lapis", "Kutsara", "Suklay", "Baso"], "correct_answer": "Lapis"},
    {"question": "Ano ang tunog ng 'S'?", "choices": ["/b-b-b/", "/s-s-s/", "/m-m-m/", "/t-t-t/"], "correct_answer": "/s-s-s/"},
    {"question": "Alin ang unang pantig ng salitang 'Manggagawa'?", "choices": ["Mang", "Ga", "Ma", "Mangga"], "correct_answer": "Mang"},
    {"question": "Saan nakasulat ang pamagat ng aklat?", "choices": ["Pahina 1", "Pabalat", "Likod", "Glosaryo"], "correct_answer": "Pabalat"}
  ]
},
{
  "subject_name": "Mathematics",
  "questions": [
    {"question": "Ano ang kasunod na bilang sa 1, 2, 3, 4, ___?", "choices": ["5", "6", "7", "8"], "correct_answer": "5"},
    {"question": "Ilan ang sampu (tens) sa bilang na 25?", "choices": ["5", "2", "25", "0"], "correct_answer": "2"},
    {"question": "Ano ang simbolo para sa 'plus' o pagdaragdag?", "choices": ["-", "x", "+", "="], "correct_answer": "+"},
    {"question": "Kung may 3 bola ka at binigyan ka ng 2 pa, ilan lahat ang bola mo?", "choices": ["4", "5", "6", "7"], "correct_answer": "5"},
    {"question": "Anong hugis ang parang pinto o blackboard?", "choices": ["Bilog", "Tatsulok", "Parisukat", "Parihaba"], "correct_answer": "Parihaba"},
    {"question": "Aling bilang ang mas malaki: 15 o 51?", "choices": ["15", "51", "Pareho lang", "Wala"], "correct_answer": "51"},
    {"question": "Ano ang sagot sa 10 - 4?", "choices": ["4", "5", "6", "7"], "correct_answer": "6"},
    {"question": "Anong bilang ang nasa pagitan ng 18 at 20?", "choices": ["17", "19", "21", "22"], "correct_answer": "19"},
    {"question": "Ilan ang sulok (corners) ng isang tatsulok?", "choices": ["2", "3", "4", "5"], "correct_answer": "3"},
    {"question": "Ano ang tawag sa sagot sa subtraction?", "choices": ["Sum", "Difference", "Product", "Total"], "correct_answer": "Difference"},
    {"question": "Alin ang 'isahan' (ones) sa bilang na 47?", "choices": ["4", "7", "40", "11"], "correct_answer": "7"},
    {"question": "Ano ang simbolo para sa 'katumbas' o equals?", "choices": ["+", "-", "=", ">"], "correct_answer": "="},
    {"question": "Ilan ang lahat kapag pinagsama ang 0 at 9?", "choices": ["0", "9", "90", "1"], "correct_answer": "9"},
    {"question": "Alin ang hugis ng piso?", "choices": ["Parisukat", "Bilog", "Tatsulok", "Parihaba"], "correct_answer": "Bilog"},
    {"question": "Ano ang kasunod sa pattern na ito: 🍎, 🍌, 🍎, 🍌, ___?", "choices": ["🍎", "🍌", "🍊", "🍇"], "correct_answer": "🍎"},
    {"question": "Anong bilang ang katumbas ng 'dalawampu't isa'?", "choices": ["12", "20", "21", "22"], "correct_answer": "21"},
    {"question": "Ilan ang daliri sa dalawang kamay?", "choices": ["5", "10", "15", "20"], "correct_answer": "10"},
    {"question": "Ano ang bilang na kulang: 10, 20, 30, ___, 50?", "choices": ["35", "40", "45", "60"], "correct_answer": "40"},
    {"question": "Alin ang mas maikli: Lapis o Ruler?", "choices": ["Lapis", "Ruler", "Pareho", "Wala"], "correct_answer": "Lapis"},
    {"question": "Anong araw ang kasunod ng Lunes?", "choices": ["Linggo", "Martes", "Miyerkules", "Huwebes"], "correct_answer": "Martes"},
    {"question": "Kung may 8 kendi ka at kinain mo ang 3, ilan ang natira?", "choices": ["3", "4", "5", "6"], "correct_answer": "5"},
    {"question": "Anong hugis ang may apat na gilid na magkakasinghaba?", "choices": ["Parisukat", "Parihaba", "Tatsulok", "Bilog"], "correct_answer": "Parisukat"},
    {"question": "Ilan ang kalahati (half) ng 6?", "choices": ["2", "3", "4", "5"], "correct_answer": "3"},
    {"question": "Alin ang simbolo para sa 'less than' o mas maliit?", "choices": [">", "<", "=", "+"], "correct_answer": "<"},
    {"question": "Ano ang zero sa Tagalog?", "choices": ["Wala", "Sampu", "Isa", "Marami"], "correct_answer": "Wala"},
    {"question": "Ilan ang buwan sa isang taon?", "choices": ["7", "10", "12", "30"], "correct_answer": "12"},
    {"question": "Ano ang kabuuan (sum) ng 5 + 5?", "choices": ["5", "10", "15", "20"], "correct_answer": "10"},
    {"question": "Alin ang pinakamaliit na bilang: 12, 8, 15, 20?", "choices": ["12", "8", "15", "20"], "correct_answer": "8"},
    {"question": "Ano ang value ng 3 sa bilang na 34?", "choices": ["3", "30", "4", "34"], "correct_answer": "30"},
    {"question": "Anong oras ang ipinapakita kung ang mahabang kamay ay nasa 12 at maikli ay nasa 3?", "choices": ["12:00", "3:00", "6:00", "9:00"], "correct_answer": "3:00"},
    {"question": "Ilang barya na 5-piso ang kailangan para maging 10 piso?", "choices": ["1", "2", "3", "4"], "correct_answer": "2"},
    {"question": "Ano ang 7 + 0?", "choices": ["0", "7", "70", "8"], "correct_answer": "7"},
    {"question": "Alin ang mas mabigat: Bulak o Bato?", "choices": ["Bulak", "Bato", "Pareho", "Wala"], "correct_answer": "Bato"},
    {"question": "Ilan ang 10 + 10 + 10?", "choices": ["10", "20", "30", "40"], "correct_answer": "30"},
    {"question": "Ano ang tawag sa perang papel sa Pilipinas?", "choices": ["Dolyar", "Piso", "Yen", "Euro"], "correct_answer": "Piso"},
    {"question": "Alin ang tamang bilang para sa 'labing-pito'?", "choices": ["16", "17", "18", "19"], "correct_answer": "17"},
    {"question": "Anong bilang ang labis ng isa sa 49?", "choices": ["48", "50", "51", "60"], "correct_answer": "50"},
    {"question": "Ilang gilid (sides) mayroon ang isang parisukat?", "choices": ["2", "3", "4", "5"], "correct_answer": "4"},
    {"question": "Anong numero ang nagsisimula sa pagbibilang?", "choices": ["0", "1", "2", "3"], "correct_answer": "1"},
    {"question": "Ano ang sagot sa 9 - 9?", "choices": ["0", "9", "1", "18"], "correct_answer": "0"},
    {"question": "Alin ang hugis ng bubong ng bahay (karaniwan)?", "choices": ["Bilog", "Tatsulok", "Parisukat", "Biluhaba"], "correct_answer": "Tatsulok"},
    {"question": "Ilang araw mayroon sa isang linggo?", "choices": ["5", "6", "7", "8"], "correct_answer": "7"},
    {"question": "Ano ang tawag sa pagbibilang ng 2, 4, 6, 8...?", "choices": ["Skip counting by 2", "Skip counting by 5", "Counting by 1", "Backward counting"], "correct_answer": "Skip counting by 2"},
    {"question": "Ilang 1-piso ang katumbas ng isang 20-piso bill?", "choices": ["10", "15", "20", "25"], "correct_answer": "20"},
    {"question": "Aling bilang ang mas maliit sa 30?", "choices": ["31", "40", "29", "50"], "correct_answer": "29"},
    {"question": "Anong instrumentong panukat ang ginagamit sa timbang?", "choices": ["Ruler", "Timbangan", "Relo", "Thermometer"], "correct_answer": "Timbangan"},
    {"question": "Ano ang 6 + 4?", "choices": ["8", "9", "10", "11"], "correct_answer": "10"},
    {"question": "Aling bilang ang 'even number'?", "choices": ["1", "3", "4", "5"], "correct_answer": "4"},
    {"question": "Ano ang tawag sa perang barya?", "choices": ["Papel", "Barya/Coins", "Ginto", "Tanso"], "correct_answer": "Barya/Coins"},
    {"question": "Ilan ang lahat kapag ang 12 ay dinagdagan ng 2?", "choices": ["13", "14", "15", "16"], "correct_answer": "14"}
  ]
},
{
  "subject_name": "Makabansa",
  "questions": [
    {"question": "Sino ang itinuturing na Pambansang Bayani ng Pilipinas?", "choices": ["Andres Bonifacio", "Jose Rizal", "Apolinario Mabini", "Emilio Aguinaldo"], "correct_answer": "Jose Rizal"},
    {"question": "Ano ang pambansang watawat ng Pilipinas?", "choices": ["Bandila", "Kalasag", "Watawat", "Sagisag"], "correct_answer": "Watawat"},
    {"question": "Aling kulay sa watawat ang sumasagisag sa kagitingan at pagkamakabayan?", "choices": ["Asul", "Pula", "Puti", "Dilaw"], "correct_answer": "Pula"},
    {"question": "Ilan ang bituin sa watawat ng Pilipinas?", "choices": ["1", "2", "3", "4"], "correct_answer": "3"},
    {"question": "Ano ang pambansang ibon ng Pilipinas?", "choices": ["Maya", "Agila", "Kalapati", "Manok"], "correct_answer": "Agila"},
    {"question": "Sino ang namumuno sa isang pamilya?", "choices": ["Magulang", "Anak", "Kaibigan", "Kalaro"], "correct_answer": "Magulang"},
    {"question": "Alin sa mga ito ang pangunahing pangangailangan ng tao?", "choices": ["Laruan", "Pagkain", "Cellphone", "Alahas"], "correct_answer": "Pagkain"},
    {"question": "Anong bahagi ng komunidad ang pinupuntahan para mag-aral?", "choices": ["Palengke", "Paaralan", "Ospital", "Simbahan"], "correct_answer": "Paaralan"},
    {"question": "Sino ang nagpapanatili ng kaayusan at kapayapaan sa komunidad?", "choices": ["Guro", "Pulis", "Doktor", "Magsasaka"], "correct_answer": "Pulis"},
    {"question": "Ano ang pambansang bulaklak ng Pilipinas?", "choices": ["Rosas", "Sampaguita", "Orchids", "Gumamela"], "correct_answer": "Sampaguita"},
    {"question": "Aling sining ang gumagamit ng lapis at papel para gumuhit?", "choices": ["Pagguhit", "Pag-awit", "Pagsayaw", "Pagtakbo"], "correct_answer": "Pagguhit"},
    {"question": "Ano ang dapat gawin habang inaawit ang Lupang Hinirang?", "choices": ["Tumakbo", "Tumayo nang tuwid", "Maglaro", "Matulog"], "correct_answer": "Tumayo nang tuwid"},
    {"question": "Alin ang halimbawa ng masustansyang pagkain?", "choices": ["Kendi", "Gulay", "Softdrinks", "Chichirya"], "correct_answer": "Gulay"},
    {"question": "Anong kilos ang nagpapakita ng pag-eehersisyo?", "choices": ["Pagtakbo", "Pagkain", "Panonood ng TV", "Pagtulog"], "correct_answer": "Pagtakbo"},
    {"question": "Ano ang tawag sa tirahan ng isang pamilya?", "choices": ["Paaralan", "Bahay", "Opisina", "Kalsada"], "correct_answer": "Bahay"},
    {"question": "Alin ang ginagamit sa paglilinis ng katawan?", "choices": ["Sabon", "Lapis", "Papel", "Laruan"], "correct_answer": "Sabon"},
    {"question": "Sino ang tumutulong sa mga may sakit?", "choices": ["Pulis", "Doktor", "Bumbero", "Magsasaka"], "correct_answer": "Doktor"},
    {"question": "Aling kulay sa watawat ang sumasagisag sa kapayapaan?", "choices": ["Asul", "Pula", "Dilaw", "Itim"], "correct_answer": "Asul"},
    {"question": "Saan tayo bumibili ng mga pagkain at kagamitan?", "choices": ["Ospital", "Palengke", "Paaralan", "Simbahan"], "correct_answer": "Palengke"},
    {"question": "Ano ang pambansang puno ng Pilipinas?", "choices": ["Narra", "Niyog", "Mangga", "Kawayan"], "correct_answer": "Narra"},
    {"question": "Alin ang tamang oras ng pagtulog para sa isang bata?", "choices": ["Maaga", "Madaling araw", "Tanghali", "Hatinggabi"], "correct_answer": "Maaga"},
    {"question": "Anong hayop ang sumisimbolo sa sipag ng mga Pilipino?", "choices": ["Pusa", "Kalabaw", "Aso", "Ibon"], "correct_answer": "Kalabaw"},
    {"question": "Aling sining ang gumagamit ng boses?", "choices": ["Pag-awit", "Pagguhit", "Paglilok", "Pagsasayaw"], "correct_answer": "Pag-awit"},
    {"question": "Ano ang dapat gawin bago at pagkatapos kumain?", "choices": ["Maglaro", "Maghugas ng kamay", "Matulog", "Tumakbo"], "correct_answer": "Maghugas ng kamay"},
    {"question": "Alin ang halimbawa ng 'pangunahing kulay'?", "choices": ["Pula", "Berde", "Orange", "Violet"], "correct_answer": "Pula"},
    {"question": "Sino ang gumagawa ng ating mga kasuotan?", "choices": ["Modista/Mananahi", "Magsasaka", "Karpintero", "Guro"], "correct_answer": "Modista/Mananahi"},
    {"question": "Aling bahagi ng katawan ang ginagamit sa pagtakbo?", "choices": ["Kamay", "Paa", "Ilong", "Tenga"], "correct_answer": "Paa"},
    {"question": "Ano ang pambansang laro ng Pilipinas?", "choices": ["Basketball", "Arnis", "Sipa", "Patintero"], "correct_answer": "Arnis"},
    {"question": "Saan nakatira ang ating mga ninuno noong unang panahon?", "choices": ["Gusali", "Kuweba", "Condo", "Hotel"], "correct_answer": "Kuweba"},
    {"question": "Alin ang hindi kabilang sa pamilya?", "choices": ["Nanay", "Tatay", "Kalaro", "Kuya"], "correct_answer": "Kalaro"},
    {"question": "Anong gamit ang pang-alis ng dumi sa ngipin?", "choices": ["Sipilyo", "Suklay", "Sapatos", "Bag"], "correct_answer": "Sipilyo"},
    {"question": "Ano ang sumisimbolo sa walong lalawigan na unang nag-alsa sa watawat?", "choices": ["Bituin", "Araw", "Asul na kulay", "Puting tatsulok"], "correct_answer": "Araw"},
    {"question": "Aling pagkilos ang nagpapakita ng paggalang sa watawat?", "choices": ["Paglalakad habang may flag ceremony", "Pagtakip sa ulo", "Paglalagay ng kanang kamay sa dibdib", "Pakikipag-usap sa katabi"], "correct_answer": "Paglalagay ng kanang kamay sa dibdib"},
    {"question": "Sino ang nagtatanim ng palay at gulay?", "choices": ["Pulis", "Magsasaka", "Bumbero", "Nars"], "correct_answer": "Magsasaka"},
    {"question": "Alin ang pambansang prutas ng Pilipinas?", "choices": ["Saging", "Mangga", "Pinya", "Atis"], "correct_answer": "Mangga"},
    {"question": "Anong bahagi ng komunidad ang lugar dalanginan?", "choices": ["Simbahan/Moske", "Palengke", "Ospital", "Pook-laruan"], "correct_answer": "Simbahan/Moske"},
    {"question": "Alin sa mga ito ang kabilang sa sining ng sayaw?", "choices": ["Tinikling", "Lupang Hinirang", "Pagpinta", "Pagtula"], "correct_answer": "Tinikling"},
    {"question": "Bakit kailangang maligo araw-araw?", "choices": ["Para maging madumi", "Para manatiling malinis at malusog", "Para makapaglaro", "Para antukin"], "correct_answer": "Para manatiling malinis at malusog"},
    {"question": "Sino ang 'Ilaw ng Tahanan'?", "choices": ["Tatay", "Nanay", "Anak", "Lolo"], "correct_answer": "Nanay"},
    {"question": "Sino ang 'Haligi ng Tahanan'?", "choices": ["Tatay", "Nanay", "Anak", "Lola"], "correct_answer": "Tatay"},
    {"question": "Anong instrumentong musikal ang may mga kwerdas?", "choices": ["Gitara", "Tambol", "Pito", "Pompyang"], "correct_answer": "Gitara"},
    {"question": "Alin ang ginagamit upang hindi mabasa ng ulan?", "choices": ["Payong", "Sapatos", "Salamin", "Sombrero"], "correct_answer": "Payong"},
    {"question": "Ano ang dapat gawin sa mga basura?", "choices": ["Ikalat", "Itapon sa tamang basura", "Iwan sa kalsada", "Ihagis sa ilog"], "correct_answer": "Itapon sa tamang basura"},
    {"question": "Saan matatagpuan ang National Capital Region (NCR)?", "choices": ["Luzon", "Visayas", "Mindanao", "Palawan"], "correct_answer": "Luzon"},
    {"question": "Anong okasyon ang ipinagdiriwang tuwing Hunyo 12?", "choices": ["Pasko", "Araw ng Kalayaan", "Bagong Taon", "Araw ng mga Patay"], "correct_answer": "Araw ng Kalayaan"},
    {"question": "Alin sa mga ito ang isang anyong lupa?", "choices": ["Ilog", "Bundok", "Dagat", "Lawa"], "correct_answer": "Bundok"},
    {"question": "Alin sa mga ito ang isang anyong tubig?", "choices": ["Kapatagan", "Bundok", "Karagatan", "Bulkan"], "correct_answer": "Karagatan"},
    {"question": "Ano ang tawag sa pagtutulungan ng mga Pilipino?", "choices": ["Bayanihan", "Pag-aaway", "Pagtatago", "Paglalaro"], "correct_answer": "Bayanihan"},
    {"question": "Anong kulay ang mabubuo kung paghahaluin ang pula at dilaw?", "choices": ["Berde", "Asul", "Orange", "Lila"], "correct_answer": "Orange"},
    {"question": "Saan dapat tumawid ang mga tao sa kalsada?", "choices": ["Kahit saan", "Sa pedestrian crossing/zebra crossing", "Sa gitna ng tulay", "Sa ilalim ng sasakyan"], "correct_answer": "Sa pedestrian crossing/zebra crossing"}
  ]
},
{
  "subject_name": "GMRC",
  "questions": [
    {"question": "Ano ang sasabihin mo kapag ikaw ay nagkamali sa iyong kalaro?", "choices": ["Salamat", "Paalam", "Patawad po", "Ayoko na"], "correct_answer": "Patawad po"},
    {"question": "Alin sa mga sumusunod ang nagpapakita ng paggalang sa nakatatanda?", "choices": ["Pagsigaw", "Pagmamano", "Pag-alis nang walang paalam", "Pagtatago"], "correct_answer": "Pagmamano"},
    {"question": "Ano ang dapat mong sabihin bago pumasok sa bahay ng ibang tao?", "choices": ["Tao po", "Alis diyan", "Akin na yan", "Sulat po"], "correct_answer": "Tao po"},
    {"question": "Kapag binigyan ka ng pagkain ng iyong guro, ano ang sasabihin mo?", "choices": ["Ayoko nito", "Salamat po", "Penge pa", "Wala lang"], "correct_answer": "Salamat po"},
    {"question": "Alin ang tamang gawi bago kumain?", "choices": ["Maglaro", "Maghugas ng kamay", "Manood ng TV", "Matulog"], "correct_answer": "Maghugas ng kamay"},
    {"question": "Ano ang ginagawa sa mga gamit matapos itong gamitin sa paglalaro?", "choices": ["Iwanan sa sahig", "Ilagay sa tamang lalagyan", "Itapon sa labas", "Ibigay sa aso"], "correct_answer": "Ilagay sa tamang lalagyan"},
    {"question": "Paano mo tutulungan ang iyong nanay sa gawaing bahay?", "choices": ["Magkalat", "Magligpit ng sariling higaan", "Mag-iyak", "Tumakbo palayo"], "correct_answer": "Magligpit ng sariling higaan"},
    {"question": "Ano ang sasabihin mo kung dadaan ka sa pagitan ng dalawang taong nag-uusap?", "choices": ["Tabi kayo", "Mawalang-galang na po", "Huwag kayong mag-usap", "Dadaan ako"], "correct_answer": "Mawalang-galang na po"},
    {"question": "Sino ang dapat nating igalang sa paaralan?", "choices": ["Guro lamang", "Mga kaklase lamang", "Lahat ng tao sa paaralan", "Wala"], "correct_answer": "Lahat ng tao sa paaralan"},
    {"question": "Ano ang gagawin mo kung nakakita ka ng pera sa loob ng silid-aralan?", "choices": ["Itago sa bulsa", "Ibigay sa guro", "Ibigay sa kaibigan", "Ibilis ng kendi"], "correct_answer": "Ibigay sa guro"},
    {"question": "Alin ang nagpapakita ng pagiging matapat?", "choices": ["Pagsasabi ng totoo", "Pagsisinungaling", "Pagkuha ng hindi sa iyo", "Pagtatago ng mali"], "correct_answer": "Pagsasabi ng totoo"},
    {"question": "Ano ang dapat mong gawin kung may nakita kang matanda na nahihirapang tumawid?", "choices": ["Pagtawanan", "Tulungan o tumawag ng tulong", "Hayaan lang", "Takbuhan"], "correct_answer": "Tulungan o tumawag ng tulong"},
    {"question": "Paano mo maipakikita ang pagmamahal sa Diyos?", "choices": ["Pagdarasal", "Pag-aaway", "Pagsisigaw", "Pagsuway sa utos"], "correct_answer": "Pagdarasal"},
    {"question": "Ano ang tamang sagot kapag pinasalamatan ka ng isang tao?", "choices": ["Wala lang", "Walang anuman po", "Sige na", "Salamat din"], "correct_answer": "Walang anuman po"},
    {"question": "Alin ang dapat gawin sa mga halaman sa paligid?", "choices": ["Pitasin ang mga dahon", "Diligan at alagaan", "Tapakan ang mga bulaklak", "Bunutin"], "correct_answer": "Diligan at alagaan"},
    {"question": "Ano ang gagawin mo kung nakita mong malungkot ang iyong kaibigan?", "choices": ["Asarin siya", "Aliwin at damayan siya", "Iwanan siya", "Pagtawanan siya"], "correct_answer": "Aliwin at damayan siya"},
    {"question": "Bakit kailangang sumunod sa mga babala sa kalsada?", "choices": ["Para maparusahan", "Para maging ligtas", "Para maging sikat", "Para makarating agad"], "correct_answer": "Para maging ligtas"},
    {"question": "Alin sa mga ito ang magandang asal sa hapag-kainan?", "choices": ["Maglaro ng pagkain", "Magsalita nang may laman ang bibig", "Magdasal bago kumain", "Mag-unahan sa pagkuha"], "correct_answer": "Magdasal bago kumain"},
    {"question": "Ano ang dapat gawin kung tapos na ang klase at aalis na sa silid?", "choices": ["Iwanang bukas ang ilaw", "Iligpit ang gamit at ayusin ang upuan", "Tumakbo agad", "Hayaan ang basura"], "correct_answer": "Iligpit ang gamit at ayusin ang upuan"},
    {"question": "Ano ang gagawin mo kung hindi mo naintindihan ang sinabi ng guro?", "choices": ["Umiyak", "Magtanong nang may paggalang", "Matulog", "Makipag-usap sa katabi"], "correct_answer": "Magtanong nang may paggalang"},
    {"question": "Sino ang tinatawag nating 'Pangalawang Magulang' sa paaralan?", "choices": ["Principal", "Guro", "Guard", "Kaklase"], "correct_answer": "Guro"},
    {"question": "Alin ang nagpapakita ng pagtulong sa kapwa?", "choices": ["Pagbabahagi ng baon", "Pagdadamot", "Pang-aagaw", "Pananakit"], "correct_answer": "Pagbabahagi ng baon"},
    {"question": "Ano ang dapat gawin sa mga basura sa pampublikong lugar?", "choices": ["Iwan sa upuan", "Itapon sa tamang basurahan", "Ihulog sa kanal", "Isilid sa bulsa ng iba"], "correct_answer": "Itapon sa tamang basurahan"},
    {"question": "Paano mo maipakikita ang paggalang sa watawat ng Pilipinas?", "choices": ["Umupo habang kumakanta", "Tumayo nang matuwid at ilagay ang kamay sa dibdib", "Maglaro", "Makipagkwentuhan"], "correct_answer": "Tumayo nang matuwid at ilagay ang kamay sa dibdib"},
    {"question": "Ano ang sasabihin mo kapag gusto mong hiramin ang lapis ng iyong kaklase?", "choices": ["Akin na yan", "Maaari ko bang hiramin ang lapis mo?", "Kukunin ko ito", "Pahiram!"], "correct_answer": "Maaari ko bang hiramin ang lapis mo?"},
    {"question": "Alin ang tamang gawi kapag nakikipag-usap sa matanda?", "choices": ["Pagsagot ng 'Po' at 'Opo'", "Pagsagot nang pabalang", "Hindi pakikinig", "Pag-irap"], "correct_answer": "Pagsagot ng 'Po' at 'Opo'"},
    {"question": "Ano ang dapat gawin bago matulog sa gabi?", "choices": ["Maglaro ng gadgets", "Magdasal at maglinis ng katawan", "Kumain ng madami", "Magsigaw"], "correct_answer": "Magdasal at maglinis ng katawan"},
    {"question": "Paano mo aalagaan ang iyong katawan?", "choices": ["Hindi maliligo", "Kakain ng masustansyang pagkain", "Pagtulog nang puyat", "Hindi pagsisipilyo"], "correct_answer": "Kakain ng masustansyang pagkain"},
    {"question": "Ano ang gagawin mo kung may nakita kang batang nadapa?", "choices": ["Pagtawanan", "Tulungang tumayo", "Hayaan lang", "Takbuhan"], "correct_answer": "Tulungang tumayo"},
    {"question": "Alin ang nagpapakita ng pagiging masunurin?", "choices": ["Pagsunod sa utos ng magulang", "Pagdabog kapag inuutusan", "Hindi pakikinig", "Pag-alis nang walang paalam"], "correct_answer": "Pagsunod sa utos ng magulang"},
    {"question": "Ano ang dapat mong gawin sa iyong mga lumang laruan na hindi na ginagamit?", "choices": ["Iwan sa labas", "Ibigay o i-donate sa ibang bata", "Sirain", "Itapon sa basura"], "correct_answer": "Ibigay o i-donate sa ibang bata"},
    {"question": "Ano ang gagawin mo kung binibigyan ka ng utos ng iyong guro?", "choices": ["Gawin ito nang maayos", "Huwag pansinin", "Magreklamo", "Ipaubaya sa iba"], "correct_answer": "Gawin ito nang maayos"},
    {"question": "Alin ang nagpapakita ng pagmamahal sa kapatid?", "choices": ["Pakikipag-away", "Pagbabahagi ng laruan", "Pang-aasar", "Pagkuha ng gamit niya"], "correct_answer": "Pagbabahagi ng laruan"},
    {"question": "Ano ang dapat gawin sa mga gamit sa silid-aklatan?", "choices": ["Punitin ang pahina", "Maging tahimik at ingatan ang libro", "Magsisigaw", "Kumain"], "correct_answer": "Maging tahimik at ingatan ang libro"},
    {"question": "Kapag may kausap kang tao, ano ang dapat mong gawin?", "choices": ["Tumingin sa mata at makinig", "Tumingin sa malayo", "Maglaro ng cellphone", "Tumalikod"], "correct_answer": "Tumingin sa mata at makinig"},
    {"question": "Alin ang nagpapakita ng pagtitipid?", "choices": ["Paggamit ng tubig nang wasto", "Pag-iiwan ng bukas na gripo", "Pagtatapon ng pagkain", "Paghingi ng pera palagi"], "correct_answer": "Paggamit ng tubig nang wasto"},
    {"question": "Ano ang gagawin mo kung may nakita kang batang binu-bully?", "choices": ["Sumali sa pag-bully", "Magsabi sa guro o nakatatanda", "Manood lang", "Tumawa"], "correct_answer": "Magsabi sa guro o nakatatanda"},
    {"question": "Alin ang tamang gawi sa loob ng simbahan?", "choices": ["Pagtakbo", "Pananahimik at pagdarasal", "Pakikipagkwentuhan", "Pagkain"], "correct_answer": "Pananahimik at pagdarasal"},
    {"question": "Paano mo aalagaan ang iyong kapaligiran?", "choices": ["Pagtatapon ng basura kahit saan", "Pagtatanim ng puno at halaman", "Pagpitas ng mga bulaklak sa parke", "Pagsusulat sa mga pader"], "correct_answer": "Pagtatanim ng puno at halaman"},
    {"question": "Ano ang dapat gawin kapag tinatawag ka ng iyong nanay?", "choices": ["Sumagot agad at lumapit", "Huwag sumagot", "Magkunwaring hindi narinig", "Magpatuloy sa paglalaro"], "correct_answer": "Sumagot agad at lumapit"},
    {"question": "Alin ang nagpapakita ng pagiging matiyaga?", "choices": ["Pagsuko agad", "Pagtatapos ng gawain kahit mahirap", "Umiyak kapag nahihirapan", "Ipagawa sa iba"], "correct_answer": "Pagtatapos ng gawain kahit mahirap"},
    {"question": "Ano ang dapat mong sabihin kapag may nagawa kang mabuti sa kapwa?", "choices": ["Magyabang", "Manatiling mapagkumbaba", "Humingi ng bayad", "Ibalita sa lahat"], "correct_answer": "Manatiling mapagkumbaba"},
    {"question": "Ano ang gagawin mo sa tirang pagkain na pwede pa?", "choices": ["Itapon sa basura", "Ibigay sa alagang hayop o itabi", "Ikalat sa lamesa", "Ilaro"], "correct_answer": "Ibigay sa alagang hayop o itabi"},
    {"question": "Alin ang nagpapakita ng paggalang sa opinyon ng iba?", "choices": ["Pakikinig nang maayos", "Pagsigaw", "Pag-alis habang nagsasalita", "Pagtawa"], "correct_answer": "Pakikinig nang maayos"},
    {"question": "Ano ang dapat mong gawin sa mga gamit ng paaralan?", "choices": ["Sulatan ang mga mesa", "Ingatan at huwag sirain", "Sirain ang mga upuan", "Itago"], "correct_answer": "Ingatan at huwag sirain"},
    {"question": "Paano mo maipakikita ang pagiging malinis sa sarili?", "choices": ["Pagsusuot ng maruming damit", "Pagsisipilyo ng ngipin", "Hindi paghuhugas ng kamay", "Paglalaro sa putik"], "correct_answer": "Pagsisipilyo ng ngipin"},
    {"question": "Ano ang dapat gawin kung may nakitang nakabukas na gripo sa paaralan?", "choices": ["Hayaan lang", "Isara ang gripo", "Maglaro ng tubig", "Tumakbo"], "correct_answer": "Isara ang gripo"},
    {"question": "Alin sa mga ito ang magandang katangian ng isang Pilipino?", "choices": ["Pagiging magalang", "Pagiging tamad", "Pagiging madamot", "Pagiging palaaway"], "correct_answer": "Pagiging magalang"},
    {"question": "Ano ang gagawin mo sa iyong mga gamit bago matulog?", "choices": ["Iwan kung saan-saan", "Ihanda ang mga gamit para sa kinabukasan", "Itago sa ilalim ng kama", "Ikalat"], "correct_answer": "Ihanda ang mga gamit para sa kinabukasan"},
    {"question": "Bakit mahalaga ang magkaroon ng mabuting asal?", "choices": ["Para marami ang magalit", "Para maging maayos ang pakikipagkapwa-tao", "Para maging sikat", "Para laging may regalo"], "correct_answer": "Para maging maayos ang pakikipagkapwa-tao"}
  ]
}
      ]
    },
    'Grade 2': {
      "grade_level": "Grade 2",
      "academic_year": "2025-2026",
      "curriculum": [
        {
          "subject_name": "Language",
          "questions": [
            {
              "question": "Sample question for Grade 2 Language",
              "choices": ["Option A", "Option B", "Option C", "Option D"],
              "correct_answer": "Option A"
            }
          ]
        }
      ]
    },
    'Grade 3': {
      "grade_level": "Grade 3",
      "academic_year": "2025-2026",
      "curriculum": [
        {
          "subject_name": "Language",
          "questions": [
            {
              "question": "Sample question for Grade 3 Language",
              "choices": ["Option A", "Option B", "Option C", "Option D"],
              "correct_answer": "Option A"
            }
          ]
        }
      ]
    },
    'Grade 4': {
      "grade_level": "Grade 4",
      "academic_year": "2025-2026",
      "curriculum": [
        {
          "subject_name": "Language",
          "questions": [
            {
              "question": "Sample question for Grade 4 Language",
              "choices": ["Option A", "Option B", "Option C", "Option D"],
              "correct_answer": "Option A"
            }
          ]
        }
      ]
    },
    'Grade 5': {
      "grade_level": "Grade 5",
      "academic_year": "2025-2026",
      "curriculum": [
        {
          "subject_name": "Language",
          "questions": [
            {
              "question": "Sample question for Grade 5 Language",
              "choices": ["Option A", "Option B", "Option C", "Option D"],
              "correct_answer": "Option A"
            }
          ]
        }
      ]
    },
    'Grade 6': {
      "grade_level": "Grade 6",
      "academic_year": "2025-2026",
      "curriculum": [
        {
          "subject_name": "Language",
          "questions": [
            {
              "question": "Sample question for Grade 6 Language",
              "choices": ["Option A", "Option B", "Option C", "Option D"],
              "correct_answer": "Option A"
            }
          ]
        }
      ]
    },
  };

  static GradeLevel? getGradeData(String gradeLevel) {
    final data = _gradeData[gradeLevel];
    if (data == null) return null;
    return GradeLevel.fromJson(data);
  }
}
