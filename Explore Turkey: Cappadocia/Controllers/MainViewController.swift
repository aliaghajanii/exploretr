//
//  MainViewController.swift
//  Explore Turkey: Cappadocia
//
//  Created by ali aghajani on 9/26/19.
//  Copyright © 2019 ali aghajani. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    //MARK: - Properties
    
    
    
    var visitedplaces: [CityDetail] = [
        CityDetail(name: "Göreme", dscription: "ncredibly cute and perfectly photogenic, Göreme has been voted one of the most beautiful villages in the world by several travel magazines for good reason. The village is half buried into the hill, its stone house facades hiding a maze of cave rooms below. The fresco-adorned El Nazar Kilise (Evil Eye Church) and Sakli Kilise (Hidden Church) are both on Müze Caddesi, a short walk from the center on the way to Göreme Open-Air Museum.\nThe village is the main base for walkers itching to head out on a hike, with all the main valleys branching out from here offering a plethora of trails that lead past kooky rock formations, known locally as fairy chimneys, and hidden cave churches up to panoramic viewpoints.", image: UIImage(named: "adasdas")!, address: "Cappadocia, Goreme", phone: "No number added yet", lat: 38.6437, lon: 34.83529, gallary: [UIImage(named: "adasdas")!, UIImage(named: "adasssss")!, UIImage(named: "adscaswqq")!, UIImage(named: "aascasqdwa")!, UIImage(named: "adadwdffffff")!, UIImage(named: "adasdas")!]),
        CityDetail(name: "Hot Air Ballooning", dscription: "For many visitors, going for an early morning hot air balloon ride in Cappadocia is one of Turkey's highlights. In high season, over 100 hot air balloons take to the skies just after sunrise and give you bird's-eye views of the valleys and their rock formations. Hot air balloon rides take around one hour (with deluxe packages lasting around 90 minutes) and are available year-round, weather permitting. All tours include pickup and drop-off from your hotel.", image: UIImage(named: "dadascacsa")!, address: "Müze Cd. No:46/1, Göreme, 50180 Göreme/Nevşehir Merkez/Nevşehir", phone: "No number added yet", lat: 38.6444, lon: 34.8333, gallary: [UIImage(named: "dascfvwvwvw")!, UIImage(named: "dadascacsa")!, UIImage(named: "adcalc;jljnnk")!, UIImage(named: "dasasdqqwqd")!, UIImage(named: "kljlj")!, UIImage(named: "facacqqq")!]),
        CityDetail(name: "Kaymakli Underground City", dscription: "Cappadocia's underground cities first began to be chiseled out of the ground in the Bronze Age Hittite era, but they are most famous for their early Byzantine history (6th and 7th centuries), when the region's Christians took to living underground for long periods to escape from Arab and Persian invaders. Kaymakli Underground City is Cappadocia's largest example, with a labyrinth of rooms connected by tunnels that extends for eight levels. Four of these levels can be explored by visitors.\nHeading underground into the mazy network of tunnels is a fascinating experience, but those with claustrophobia should be aware that some of the tunnels are exceedingly narrow.", image: UIImage(named: "acascascacvvv")!, address: "Derinkuyu, Turkey", phone: "No number added yet", lat: 38.4572, lon: 34.7523, gallary: [UIImage(named: "dasacasca")!, UIImage(named: "acascascacvvv")!, UIImage(named: "adsd")!, UIImage(named: "adcqqqqqq")!]),
        CityDetail(name: "Çavusin", dscription: "The main attractions in the dinky village of Çavusin are two lovely Byzantine churches. By the entrance into town is the Çavusin Church (also known as the Big Pigeon House Church, due to having been used as a local pigeon house in the early 20th century) with a stunning interior of frescoes. In the old village center, after hiking high up on the ridge above the tumble of derelict houses, is the Church of St. John the Baptist. This is thought to be the oldest church in Cappadocia, and its basilica-like proportions and fat columns are an impressive sight.", image: UIImage(named: "dadaffffasa")!, address: "2. Küme Mevkii No:109/1-2 Çavuşin Köyü- Kapadokya, 50500 Çavuşin/Avanos/Nevşehir", phone: "No number added yet", lat: 38.6728, lon: 34.8394, gallary: [UIImage(named: "adadada")!, UIImage(named: "adaaffffff")!, UIImage(named: "dadaffffasa")!]),
        CityDetail(name: "Uçhisar", dscription: "The village of Uçhisar is dominated by a mammoth rock-cut fortress riddled with tunnels and caves. Just like the region's underground cities, this rocky outcrop provided villagers with protection from invaders during the Roman and Byzantine eras. The fortress can be climbed to the top, where you are rewarded with sweeping panoramas over the undulating valleys that surround the village.\nUçhisar is also a good starting point for valley walks. In particular, trails through Pigeon Valley and White Valley run from here to Göreme, making for a very scenic walk between villages.", image: UIImage(named: "adaffaffff")!, address: "Tekelli, 50240 Uçhisar/Nevşehir Merkez/Nevşehir", phone: "No number added yet", lat: 38.6289, lon: 34.8039, gallary: [UIImage(named: "adacaccac")!, UIImage(named: "daadqqqqqq")!, UIImage(named: "facavaevsvv")!, UIImage(named: "adaffaffff")!, UIImage(named: "dacacvkk")!,])
    ]
    
    
    var bars : [CityDetail] = [
        CityDetail(name: "Cafe Safak", dscription: "Fellow coffee lovers, this is, hands down, Göreme’s best caffeine fix that you will find also called the cafe dawn. This cafe is well known for its Latte’s, Meatballs, healthy lentil soup, and daily specials; so, why not try for yourself. They also do gözleme and scrumptious sandwiches, typically savory pancakes, including a choco-banana combo besides whipping up picnic packs (₺15) for hikers who are headed into the beautiful valleys.", image: UIImage(named: "dadccccc")!, address: "Müze Cd. No:28, 50180 Göreme Belediyesi/Nevşehir Merkez/Nevşehir, Turkey", phone: "(0384) 271 25 97", lat: 38.643516, lon: 34.831626, gallary: [UIImage(named: "dadasdddd")!, UIImage(named: "fsfsfdsdvvvv")!, UIImage(named: "dadccccc")!]),
        CityDetail(name: "Heybeli Turku Bar", dscription: "This place is good to stay with a neat fire while outside is freezing cold. Music is Turkish and only Turkish but the atmosphere inside is very warm. The crowd in this bar is very energetic and the place is always alive with the enthusiasm of the locals as well as the travellers or tourists. Make sure to visit this place in the early hours of the evening to avoid the midnight crowd.", image: UIImage(named: "daascaccc")!, address: "Yunak Mahallesi, Tevfik Fikret Caddesi, No:28, Urgup 50530, Turkey", phone: "(0384) 341 63 21", lat: 38.633408, lon: 34.906525, gallary: [UIImage(named: "daascaccc")!, UIImage(named: "adasccccvvv")!]),
        CityDetail(name: "One Way", dscription: "One Way Cafe is a very cozy place and the staff is super friendly. They play some of the best Turkish music. The prices are affordable considering it is one of the touristic places in Cappadocia. This is one of the rare places in the town that serves dinner along with alcohol and has live Turkish music performances by various local artists. There is a remarkable collection of wines here.", image: UIImage(named: "oneway")!, address: "Uzundere Cad, Göreme, Nevşehir, Turkey", phone: "(0384) 271 23 40", lat: 38.643377, lon: 34.828954, gallary: [UIImage(named: "eeeeeww")!, UIImage(named: "oneway")!]),
        CityDetail(name: "Asım’ın Yeri", dscription: "This place in terms of entertainment, food, and the price is very economical. This place is the real deal for the services they offer at that price. This is the perfect spot for wine, dine and clubbing as well. The food offered is next to heaven and the live Turkish music performances set the mood right for the evening. Often referred to as the Dionysus’ wine house and the perfect stage for live Turkish music. They have one of the best Discos available with the top of the pop dancing music gallery.", image: UIImage(named: "dascacvavvv")!, address: "Esbelli Mah. Dolay-2 Sok. | No: 24, Urgup 50400, Turkey", phone: "(0384) 341 28 67", lat: 38.636233, lon: 34.901919, gallary: [UIImage(named: "nmnmkjkjk")!, UIImage(named: "kiohdohibibbv")!, UIImage(named: "ddddaaddd")!])
        
    ]
    
    var restaurants: [CityDetail] = [
        CityDetail(name: "Elai", dscription: "Once a village cafe, Elai has become one of the best restaurants in Cappadocia. Standing in the shade of Üçhisar Castle and overlooking part of the Red Valley and Pigeon Valley, the outdoor terrace offers magnificent sights. The splendid Cappadocian landscape stretches as far as Mount Erciyes and is a joy for the eye. Guests can enjoy wine and cocktails on the terrace as well as an elaborate menu in the authentic atmosphere of the rock-carved dining halls. The Turkish fusion menu brings together traditional local dishes with a modern twist and plates from international cuisines.", image: UIImage(named: "lmlllnlk")!, address: "Elai Restaurant, Tekelli Mahallesi Goreme Cad. 61 Üçhisar, 50420 Üçhisar", phone: "(0384) 219 31 81", lat: 38.630947, lon: 34.806875, gallary: [UIImage(named: "ddaddfff")!, UIImage(named: "faffwqq")!, UIImage(named: "yyyytt")!, UIImage(named: "lmlllnlk")!]),
        CityDetail(name: "Han Çiragan", dscription: "The lower level of Han Çiragan restaurant rests in the shadow of a vine lattice, providing a shady spot. The extensive menu at Han Çiragan offers a variety of Turkish traditional dishes stamped with a modern accent. Saç tava, dolmas and pot kebabs come from a the busy kitchen where guests are welcome to pop in. The restaurant also prides itself on a strong list of regional wines like Kalecikkarasi, Öküzgözü, and Bogazkere, and hosts live jazz concerts every night.", image: UIImage(named: "faffffqqq")!, address: "Dereler, Cumhuriyet Mey. No:4, 50400 Ürgüp/Nevşehir", phone: "(0384) 341 25 66", lat: 38.630598, lon: 34.909796, gallary: [UIImage(named: "afffqqqqq")!, UIImage(named: "fqqfqffqqfqqf")!, UIImage(named: "ffqqqffeeeqeee")!, UIImage(named: "faffffqqq")!]),
        CityDetail(name: "Lil’a", dscription: "Located within Üçhisar’s fine Museum Hotel , Lil’a allows diners to delight in splendid sights through the windows of the elegant dining rooms, as well as from the beautiful terrace decorated with tall, luxuriant flower vases. Award-winning chef Mustafa Buyukhan carefully crafts a menu that offers modern interpretations of classical Turkish dishes in exceptional presentations. Under his supervision, the keenest of foodies can also learn how to prepare a perfect Turkish meal in one of the cooking classes offered at the restaurant.", image: UIImage(named: "awwqwqqq")!, address: "Tekelli mah Eski, Göreme Cd. No.2, 50240 Nevşehir", phone: "(0384) 219 22 20", lat: 38.633342, lon: 34.807108, gallary: [UIImage(named: "awwqwqqq")!, UIImage(named: "lknlnl")!, UIImage(named: "fsffeeeeeee")!, UIImage(named: "dqfqfqfqfq")!, UIImage(named: "qfqfqqfqffqffqffq")!, UIImage(named: "awwqwqqq")!]),
        CityDetail(name: "Sira", dscription: "Our restaurant offers great choice of traditional cappadocian, turkish and international meals paired with specially selected wines from cappadocia and other wine regons of turkey. It is also distinguished with its breathtaking panorama of cappadocia and professional service.", image: UIImage(named: "lflabfklabfakbf")!, address: "Tekelli, Göreme Cd. No.87, 50240 Uçhisar/Nevşehir Merkez/Nevşehir", phone: "(0384) 219 30 37", lat: 38.632937, lon: 34.806631, gallary: [UIImage(named: "khlohi")!, UIImage(named: "fwqqfqff")!, UIImage(named: "dqfqfffqqqq")!, UIImage(named: "lflabfklabfakbf")!]),
        CityDetail(name: "Dibek", dscription: "An entrance enclosed in blooming ivy welcomes guests into Dibek, in the centre of Göreme. The traditional atmosphere of the 475-year-old building place is preserved by the low wooden tables around which guests can enjoy typical Turkish food and homemade wine. Dumplings, known locally as manti, are among the highlights of Dibek’s menu, together with testi kebabı, a slow cooked kebab meal prepared (upon reservation) in a sealed terracotta pot which is then broken at the table.", image: UIImage(named: "qqfqffqfqf")!, address: "Dibek Restoran, 50180 Göreme/Nevşehir, Turkey", phone: "(0384) 271 22 09", lat: 38.642628, lon: 34.829251, gallary: [UIImage(named: "dqfffff")!, UIImage(named: "dddqqd")!, UIImage(named: "dqfqedqdqfqfff")!, UIImage(named: "qqfqffqfqf")!])
        
        
    ]
    
    var hotels: [CityDetail] = [
        CityDetail(name: "Ariana Sustainable Luxury Lodge", dscription: "Hotel Description:\nOur luxury suites are exquisitely decorated with an inviting ambience to transform your stay into a one of a kind experience. All of our suites offer the perfect blend of contemporary comfort and luxuriously appointed style.The Hotel offers alacarte breakfast,Free Wifi in whole property,afternoon tea and more... EXPLORE THE WONDERS OF ANCIENT ANATOLIA IN THE LAND OF MYSTERY, WHERE EAST MEETS WEST. Located atop the Uchisar Valley, Ariana Lodge offers you a completely unique perspective of Cappadocia; lands that witnessed the rise of the first civilizations in world history.Cappadocia lies in the heart of Ancient Anatolia, one of the cradles of human civilization. Here,Here, the earliest cities in world history appeared, about 5000 BC. Today, new archeological discoveries suggest the ancient civilized cities date back to 12.000 BC. Eastern Anatolia hosts some of the most important archaeological digs currently being undertaken anywhere in the world; representing a major shift in our understanding of man's early history. Along with Ancient Mesopotamia and Anatolia, many cultures around the world have interesting myths about the Sun and the Moon, reflecting its importance in all our lives. Arinna was one of the most important solar deities of the Hittite pantheon. She was perceived to be a paramount chthonic or earth goddess. 'EVERY MORNING, THE GATES IN THE EAST OPENED UP, AND THE GODDESS APPEARED. SHE TRAVELED ACROSS THE SKY, AND ENTERED THE GATE IN THE WEST. ARIANA REPRESENTS THE HOLY LANDS OVER WHICH THE SUN GODDESS LIGHTENS UP'", image: UIImage(named: "sddsdd")!, address: "Tekelli Mahallesi - Tekelli Kumesi No:8 Tekelli Mahallesi, Uchisar 50420 Turkey", phone: "(0384) 219 22 23", lat: 38.634349, lon: 34.806498, gallary: [UIImage(named: "dqqfqf")!, UIImage(named: "dadas")!, UIImage(named: "sddsdd")!, UIImage(named: "cacsc")!, UIImage(named: "dqdwcqw")!]),
        CityDetail(name: "Vineyard Cave Hotel", dscription: "Hotel Description:\nSee why so many travelers make Vineyard Cave Hotel their small hotel of choice when visiting Goreme. Providing an ideal mix of value, comfort and convenience, it offers a family-friendly setting with an array of amenities designed for travelers like you. Vineyard Cave Hotel offers guests an array of room amenities including a flat screen TV, air conditioning, and a minibar, and getting online is possible, as free wifi is available. The small hotel offers a 24 hour front desk, a rooftop terrace, and a concierge, to make your visit even more pleasant. The property also features free breakfast. Guests arriving by vehicle have access to free parking. Nearby landmarks such as Sunset Point (0.4 mi) and Zemi Valley (1.2 mi) make Vineyard Cave Hotel a great place to stay when visiting Goreme. While visiting Goreme, you may want to try some falafel at one of the nearby restaurants, such as Anatolian Kitchen or Göreme Restaurant. If you are interested in exploring Goreme, check out a history museum, such as Goreme Acikhava Muzesi. We’re sure you’ll enjoy your stay at Vineyard Cave Hotel as you experience all of the things Goreme has to offer.", image: UIImage(named: "cacacsa")!, address: "KarsI Bucak Caddesi Ayaz Efendi Sokak No 12, Goreme 50180 Turkey", phone: "(0384) 271 20 77", lat: 38.644240, lon: 34.826134, gallary: [UIImage(named:"cacasac")!, UIImage(named: "adacacccc")!, UIImage(named: "rgegrev")!, UIImage(named: "vvvvv")!]),
        CityDetail(name: "Chelebi Cave House", dscription: "Hotel Description:\nA small boutique hotel at heart of Cappadocia which can provide airport transfer,daily tours and balloon flight.Thank you for booking with us,you will never regret :)", image: UIImage(named: "acacacac")!, address: "Orta Aydinli Mahallesi, Aydınlı Sk. No:6, 50180 Göreme/Nevşehir Merkez/Nevşehir", phone: "(0384) 271 20 37", lat: 38.642113, lon: 34.826850, gallary: [UIImage(named: "acqqcqqwq")!, UIImage(named: "acccqqcq")!, UIImage(named: "acsacacsacaccccc")!, UIImage(named: "acacacac")!]),
        CityDetail(name: "SOS Cave Hotel", dscription: "Hotel Description:\nSOS Cave Hotel is an excellent choice for travelers visiting Goreme, offering a family-friendly environment alongside many helpful amenities designed to enhance your stay. Nearby landmarks such as Sunset Point (0.3 mi) and Zemi Valley (1.0 mi) make SOS Cave Hotel a great place to stay when visiting Goreme. Free wifi is offered to guests, and rooms at SOS Cave Hotel offer air conditioning. During your stay, take advantage of some of the amenities offered, including a 24 hour front desk, a rooftop terrace, and a concierge. Guests of Sos Cave Pansion Hotel are also welcome to enjoy free breakfast, located on site. For travelers arriving by car, free parking is available. When you’re feeling hungry, be sure to check out Pasha Cafe, Cafe Safak, and Keyif Cafe & Restaurant, which are some cafes that are popular with locals and out-of-towners alike. Should time allow, Goreme Acikhava Muzesi and Goreme National Park are some popular attractions that are within walking distance. Enjoy your stay in Goreme!", image: UIImage(named: "qcqcwccff")!, address: "Goreme Center Aydınlı Mah. Cakmaklı Sokak No:4, Goreme Turkey", phone: "(0384) 271 21 34", lat: 38.641249, lon: 34.824922, gallary: [UIImage(named: "dadacccc")!, UIImage(named: "kllnlknl")!, UIImage(named: "adwcfwwwwwww")!]),
        CityDetail(name: "Dervish Cave House", dscription: "Hotel Description:\nCappadocia Dervish Cave House offers enchanting and elegant accommodation in a restored old Cappadocia House. Close and convenient to downtown, restaurants, Museums, shopping and attractions in Cappadocia. Immerse yourself in an atmosphere that is delightfully different... Cappadocia Dervish Cave House is a traditional central Anatolian style hotel. It has been built and hand-crafted with the natual cave and stone of Cappadocia. We offer an excellent blend of Turkish warmth and hospitality. Something special!​​", image: UIImage(named: "iagagjchagjhvaa")!, address: "Gaferli Mah. Cevizler Sok. No: 6, Goreme 50180 Turkey", phone: "(0384) 271 21 85", lat: 38.640732, lon: 34.829908, gallary: [UIImage(named: "jbjhvjhvjvjvj")!, UIImage(named: "jhbwfjhwbfjwfvww")!, UIImage(named: "kjbkjbkbjkb")!, UIImage(named: "hjvjvj")!]),
        CityDetail(name: "Goreme Inn Hotel", dscription: "Hotel Description:\nIn Cappadocia’s magical landscape of fairy chimneys, is a unique hotel made by very old and historical stones, Göreme Inn Hotel. Göreme Inn Hotel is an inspiring hotel – an ideal base for exploring Cappadocia’s elaborate underground cities, hidden cavernous churches and enchanting rock terrain. The hotel is located in the heart of Göreme which offers modern conveniences without distracting from the spiritual feeling of the area which has been known to be inhabited for more than five thousand years. The hotel has a total of 15 rooms with four categories: Standard Double Rooms, Triple Cave Rooms, Suites and Superior Double Room", image: UIImage(named: "abjdbvaj")!, address: "Orta Mah. Efendi Sok. No:5-6, Goreme 50180 Turkey", phone: "(0384) 271 31 11", lat: 38.643910, lon: 34.825627, gallary: [UIImage(named: "kjbkjbkjbaaa")!, UIImage(named: "djkakakad")!, UIImage(named: "kjbkbkb")!, UIImage(named: "kbkjbkb")!]),
        CityDetail(name: "Village Cave House Hotel", dscription: "Hotel Description:\nVillage Cave House Hotel is an excellent choice for travelers visiting Goreme, offering a charming environment alongside many helpful amenities designed to enhance your stay. Village Cave House Hotel features a 24 hour front desk, a concierge, and 24 hour check-in. In addition, as a valued Village Cave House Hotel guest, you can enjoy free breakfast that is available on-site. Guests arriving by vehicle have access to free parking. Given the close proximity of popular landmarks, such as Sunset Point (0.1 mi) and Zemi Valley (0.9 mi), guests of Village Cave House Hotel can easily experience some of Goreme's most well known attractions. While you’re here, be sure to check out Urizip Korean Restaurant, one of the Korean restaurants that can be found in Goreme, which is a short distance from Village Cave House Hotel. Plus, during your trip, don't forget to check out a natural history museum, such as Silkroad Rent A Car. Enjoy your stay in Goreme!", image: UIImage(named: "adascscaca")!, address: "Gaferli Mah. Unlu Sok. No:18, Goreme 50180 Turkey", phone: "(0384) 271 21 82", lat: 38.641772, lon: 34.830959, gallary: [UIImage(named: "dasdasdadcfwf")!, UIImage(named: "kjabkjbackjcbaccc")!, UIImage(named: "kksjbvksbkjsv")!]),
        CityDetail(name: "Cappadocia Cave Suites", dscription: "Hotel Description:\nCappadocia Cave Suites is located in the city of Goreme, one of the most beautiful and characteristic locales in the Cappadocia region. The famous fairy chimneys and fantastic colorful shapes of the landscape, make this region a natural wonder of the world. Come to relax and explore this historic, wondrous and romantic landscape while enjoying the finest in hotel accommodations and world famous Turkish hospitality...", image: UIImage(named: "knkankada")!, address: "Gafferli Mah. Unlu Sokak No 19, Goreme 50180 Turkey", phone: "(0384) 271 28 00", lat: 38.641934, lon: 34.831403, gallary: [UIImage(named: "ddacacs")!, UIImage(named: "wqdqqdq")!, UIImage(named: "csacabkabdba")!, UIImage(named: "klcnlaknclanc")!]),
        CityDetail(name: "Mithra Cave Hotel", dscription: "Hotel description:\nMithra Cave Hotel has a total of 39 individial rooms consisting in original cave rooms, authentic Cappadocian arch rooms and traditional stone rooms each one different from one another. We are located on the top of Goreme town, where, from our terraces, you can enjoy the beautiful view. Early in the morning while the balloons are flying, you can enjoy the most amazing view of Cappadocia. We are only within 5 minutes walking distance from the main center of Goreme town. Our rooms have been decorated to reflect the authenticity of the Cappadocian Culture and living style.", image: UIImage(named: "jabajbkbakc")!, address: "Aydınlı Mahallesi, Akgül Sk. No:10, 50180 Göreme/Nevşehir Merkez/Nevşehir", phone: "(0384) 271 22 95", lat: 38.641206, lon: 34.826081, gallary: [UIImage(named: "kkjnknk")!, UIImage(named: "kjbkjbkabkabda")!, UIImage(named: "blkblakldnddd")!]),
        CityDetail(name: "Sultan Cave Suites", dscription: "Hotel Description:\nSultan Cave Suites is a special, recently renovated small hotel located in the heart of Cappadocia, Goreme. There are 35 total units in two blocks as junior suites, suites and king suites. Most of the rooms are carved into cave. Charming place to enjoy many activities, relax and learn about the natural and cultural history.", image: UIImage(named: "accacaccacc")!, address: "Aydınlı Mah, Aydınlı Sk. No : 40, 50180 Göreme/Nevşehir Merkez/Nevşehir", phone: "(0384) 271 30 23", lat: 38.641408, lon: 34.825808, gallary: [UIImage(named: "kbkjbkajbkbkaaaa")!, UIImage(named: "lknlknlaaaa")!, UIImage(named: "koainlanlaa")!, UIImage(named: "lanlknldaaaa")!]),
        CityDetail(name: "Maccan Cave Hotel", dscription: "Hotel Description:\nMaccan Cave Hotel is an excellent choice for travelers visiting Goreme, offering a boutique environment alongside many helpful amenities designed to enhance your stay. Maccan Cave Hotel offers guests an array of room amenities including a flat screen TV, air conditioning, and a minibar, and getting online is possible, as free wifi is available. The hotel offers a 24 hour front desk, a concierge, and a rooftop terrace, to make your visit even more pleasant. The property also features breakfast. Guests arriving by vehicle have access to free parking. Given the close proximity of popular landmarks, such as Sunset Point (0.3 mi) and Zemi Valley (1.0 mi), guests of Maccan Cave Hotel can easily experience some of Goreme's most well known attractions. While you’re here, be sure to check out some of the Chinese restaurants, including Jiao Zi Queen Chinese Restaurant and Meihua Chinese Restaurant, all of which are a short distance from Maccan Cave Hotel. During your visit, be sure to check out popular attractions like Goreme Acikhava Muzesi (1.1 mi) and Goreme National Park (0.7 mi), which are all within walking distance of the hotel. Enjoy your stay in Goreme!", image: UIImage(named: "sjhbjshvjs")!, address: "Aydınlı Mahallesi Aydınlı Sokak No:17 Göreme Kasabası, 50180 Nevşehir", phone: "(0384) 271 23 42", lat: 38.640878, lon: 34.827000, gallary: [UIImage(named: "jbajbjkbcajasaa")!, UIImage(named: "kjvkjvjhvjhaaaa")!, UIImage(named: "sadadcfqfqwwff")!,UIImage(named: "kbkajbjkvcjha")!]),
        CityDetail(name: "Goreme Kaya Hotel", dscription: "Hotel Description:\nGöreme Kaya Hotel is placed at the heart of Cappadocia. The natural rock and stone rooms provide an ideal mix of comfort and luxury to the guests. On the terrace, you may enjoy the unmatched beauty of Cappadocia valleys. Interior design has a touch of the local culture and traditions, while providing all required amenities for a perfect holiday. Göreme Kaya Otel is the first ''boutique'' rock-carved hotel of the region. The building includes 32 standard stone rooms, 13 cave rooms, 6 deluxe caves. 4 cave suits.", image: UIImage(named: "terrace")!, address: "Uzundere Cad No:43, 50180 Nevşehir Merkez/Nevşehir", phone: "(0384) 271 23 11", lat: 38.641019, lon: 34.825197, gallary: [UIImage(named: "acaavfghre")!,UIImage(named: "kadjbkjbak")!, UIImage(named: "fsfsvsvsvsbsb")!, UIImage(named: "daacacaccvv")!, UIImage(named: "lknlnlnk")!]),
        CityDetail(name: "Bedrock Cave Hotel", dscription: "Hotel Description:\nThe hotel itself consists of 12 such cave rooms and a restaurant, all renovated a year ago with obsessive attention to detail and utter respect for the past. With fantastic breakfasts, friendly English-speaking service.We have a 24 hour reception with a night manager. Think of our front Office team as your personal concierge, ready to asist with your special plans and create a memorable stay. You can join daily tours or private tours to visit the region.", image: UIImage(named: "hgcytdctrdrd")!, address: "Müdür Sk. No:11, 50180 Göreme/Nevşehir Merkez/Nevşehir", phone: "(0384) 271 23 68", lat: 38.642269, lon: 34.830430, gallary: [UIImage(named: "jkbgiugbjmv")!, UIImage(named: "acqcqcqcqcqc")!, ])
        
    ]
    
    var airports: [CityDetail] = [
        CityDetail(name: "Nevsehir Kapadokya Airport", dscription: "Nevşehir Kapadokya Airport is an airport serving, and located 30 kilometres in the northwest of, Nevşehir, Turkey.\n\nNevşehir airport to Göreme – 41km, 40 minutes\nNevşehir airport to Avanos – 35km, 30 minutes\nNevşehir airport to Ürgüp – 48km, 43 minutes\n\nTo/From Nevşehir Kapadokya Airport:\nTurkish Airlines 1-3 flights per day (depends on the day)", image: UIImage(named: "qdwcqcqwc")!, address: "Tuzköyü, Nevşehir Kapadokya Havaalanı Girişi, 50900 Gülşehir/Nevşehir", phone: "(0384) 421 44 55", lat: 38.772022, lon: 34.523269, gallary: [UIImage(named: "qdwcqcqwc")!]),
        CityDetail(name: "Kayseri Erkilet Airport", dscription: "Erkilet International Airport or Kayseri Erkilet Airport is a military airbase and public airport located 5 km north of Kayseri in the Kayseri Province of Turkey.\n\nKayseri airport to Göreme – 75km, 60 minutes\nKayseri airport to Avanos – 68km, 54 minutes\nKayseri airport to Ürgüp – 69km, 56 minutes\n\nTo/From Kayseri Airport:\nTurkish Airlines/Anadolu Jet 8-11 flights per day\nPegasus Airlines 4-6 flights per day only from/to Sabiha Gökçen", image: UIImage(named: "kbvakjvckav")!, address: "Ahmet Yasevi Mahallesi, Mustafa Kemal Paşa Blv., 38090 Merkez/Kocasinan/Kayseri", phone: "(0352) 337 52 44", lat: 38.772194, lon: 35.493044, gallary: [UIImage(named: "kbvakjvckav")!])
        
        
        
    ]
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    var defaultVisitWidth: NSLayoutConstraint?
    var animatedVisitWidth: NSLayoutConstraint?
    
    var defaultBarWidth: NSLayoutConstraint?
    var animatedBarWidth: NSLayoutConstraint?
    
    var defaultRestaurantWidth: NSLayoutConstraint?
    var animatedRestaurantWidth: NSLayoutConstraint?
    
    var defaultHotelWidth: NSLayoutConstraint?
    var animatedHotelWidth: NSLayoutConstraint?
    
    var defaultAirportWidth: NSLayoutConstraint?
    var animatedAirportWidth: NSLayoutConstraint?
    
    
    
    
    fileprivate var sepView: UIView = {
        var uv = UIView()
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    let BackgroundImageView: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "sbabsajsbj")
        hi.contentMode = .scaleAspectFill
        hi.clipsToBounds = true
        hi.alpha = 0.7
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let headerView: UIView = {
        let mv = UIView()
        mv.backgroundColor = colors.customBlackHighlited
        mv.layer.cornerRadius = 15
        mv.layer.shadowColor   = UIColor.black.cgColor
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 12
        mv.layer.shadowOpacity = 0.8
        mv.clipsToBounds       = false
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let headerImage: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "capheader")
        hi.contentMode = .scaleAspectFill
        hi.alpha = 0.85
        hi.layer.cornerRadius = 15
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let cityLogo: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "capasunset")
        hi.contentMode = .scaleAspectFill
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let cityLabel: UILabel = {
        let nl = UILabel()
        //        nl.adjustsFontSizeToFitWidth = true
        nl.text =  "Select what You\nWant to do In this city"
        nl.numberOfLines = 2
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 18)
        nl.textAlignment = .left
        nl.backgroundColor = .clear
        nl.textColor = .white
        nl.adjustsFontSizeToFitWidth = true
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let mainView: UIView = {
        let mv = UIView()
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let HistoryButton: UIButton = {
        let cb = UIButton()
        cb.setTitle("City's\n Detail &\nHistory", for: .normal)
        cb.titleLabel?.numberOfLines = 3
        cb.setTitleColor(colors.customBlackHighlited, for: .normal)
        cb.titleLabel?.textAlignment = .center
        cb.titleLabel?.font = UIFont(name: "Futura-CondensedExtraBold", size: 12)
        cb.layer.shadowColor   = UIColor.black.cgColor
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 30
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(handlePopToHistory), for: .touchUpInside)
        cb.layer.cornerRadius = 35
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    
    lazy var visitView: UIView = {
        let mv = UIView()
        mv.layer.cornerRadius = 12
        mv.layer.cornerRadius = 12
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 16
        mv.layer.shadowOpacity = 0.8
        mv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handlevisit)))
        mv.isUserInteractionEnabled = true
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let visitBackgroundImage: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "qwq1212")
        hi.contentMode = .scaleAspectFill
        hi.alpha = 0.85
        hi.layer.cornerRadius = 12
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let visitButton: UIButton = {
        let cb = UIButton()
        cb.setImage(UIImage(named: "visiticon"), for: .normal)
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 25
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(handlevisit), for: .touchUpInside)
        
        cb.alpha = 0
        
        cb.layer.cornerRadius = 25
        cb.backgroundColor = .white
        cb.clipsToBounds = true
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    lazy var visitLabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.text =  "Places To Visit"
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        nl.textAlignment = .left
        nl.textColor = .white
        nl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handlevisit)))
        nl.isUserInteractionEnabled = true
        nl.alpha = 0
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    lazy var barView: UIView = {
        let mv = UIView()
        mv.layer.cornerRadius = 12
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 16
        mv.layer.shadowOpacity = 0.8
        mv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleBars)))
        mv.isUserInteractionEnabled = true
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let barBackgroundImage: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "qwdqddqd")
        hi.alpha = 0.85
        hi.contentMode = .scaleAspectFill
        hi.layer.cornerRadius = 12
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let barButton: UIButton = {
        let cb = UIButton()
        cb.setImage(UIImage(named: "baricon"), for: .normal)
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 30
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(handleBars), for: .touchUpInside)
        cb.layer.cornerRadius = 25
        cb.alpha = 0
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    lazy var barLabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.text =  "Bars"
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        nl.textAlignment = .left
        nl.textColor = .white
        nl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleBars)))
        nl.isUserInteractionEnabled = true
        nl.alpha = 0
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    
    lazy var resturantView: UIView = {
        let mv = UIView()
        mv.layer.cornerRadius = 12
        mv.layer.cornerRadius = 12
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 16
        mv.layer.shadowOpacity = 0.8
        mv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleRestaurants)))
        mv.isUserInteractionEnabled = true
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let restaurantBackgroundImage: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "adada")
        hi.contentMode = .scaleAspectFill
        hi.alpha = 0.85
        hi.layer.cornerRadius = 12
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let restaurantButton: UIButton = {
        let cb = UIButton()
        cb.setImage(UIImage(named: "restauranticon"), for: .normal)
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 20
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(handleRestaurants), for: .touchUpInside)
        cb.layer.cornerRadius = 25
        cb.alpha = 0
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    lazy var restaurantLabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.text =  "Restaurants"
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        nl.textAlignment = .left
        nl.textColor = .white
        nl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleRestaurants)))
        nl.isUserInteractionEnabled = true
        nl.alpha = 0
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    
    lazy var hotelView: UIView = {
        let mv = UIView()
        mv.layer.cornerRadius = 12
        mv.layer.cornerRadius = 12
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 16
        mv.layer.shadowOpacity = 0.8
        mv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleHotels)))
        mv.isUserInteractionEnabled = true
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let hotelBackgroundImage: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "hhhhhhhh")
        hi.contentMode = .scaleAspectFill
        hi.alpha = 0.85
        hi.layer.cornerRadius = 12
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let hotelButton: UIButton = {
        let cb = UIButton()
        cb.setImage(UIImage(named: "hotelicon"), for: .normal)
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 20
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(handleHotels), for: .touchUpInside)
        cb.layer.cornerRadius = 25
        cb.alpha = 0
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    lazy var hotelLabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.text =  "Hotels"
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        nl.textAlignment = .left
        nl.textColor = .white
        nl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleHotels)))
        nl.isUserInteractionEnabled = true
        nl.alpha = 0
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    
    lazy var airportView: UIView = {
        let mv = UIView()
        mv.layer.cornerRadius = 12
        mv.layer.cornerRadius = 12
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 16
        mv.layer.shadowOpacity = 0.8
        mv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleAirports)))
        mv.isUserInteractionEnabled = true
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let airportBackgroundImage: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "ffffffff")
        hi.contentMode = .scaleAspectFill
        hi.alpha = 0.85
        hi.layer.cornerRadius = 12
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let airportButton: UIButton = {
        let cb = UIButton()
        cb.setImage(UIImage(named: "airporticon"), for: .normal)
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 20
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(handleAirports), for: .touchUpInside)
        cb.layer.cornerRadius = 25
        cb.alpha = 0
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    lazy var airportLabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.text =  "Airports"
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        nl.textAlignment = .left
        nl.textColor = .white
        nl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleAirports)))
        nl.isUserInteractionEnabled = true
        nl.alpha = 0
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    
    
    //MARK: - Inits
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colors.backgroundColor
        setupConstraint()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        starterAnimate()
    }
    
    //MARK: - Handlers
    
    fileprivate func starterAnimate() {
        
        defaultVisitWidth?.isActive = false
        self.animatedVisitWidth?.isActive = true
        
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
            self.view.layoutIfNeeded()
        }) { (true) in
            self.defaultBarWidth?.isActive = false
            self.animatedBarWidth?.isActive = true
            UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseInOut, animations: {
                self.visitButton.alpha = 1
                self.visitLabel.alpha = 1
                self.view.layoutIfNeeded()
                
            }, completion: { (true) in
                self.defaultRestaurantWidth?.isActive = false
                self.animatedRestaurantWidth?.isActive = true
                
                UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseInOut, animations: {
                    self.barButton.alpha = 1
                    self.barLabel.alpha = 1
                    self.view.layoutIfNeeded()
                }, completion: { (true) in
                    self.defaultHotelWidth?.isActive = false
                    self.animatedHotelWidth?.isActive = true
                    
                    UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseInOut, animations: {
                        self.restaurantLabel.alpha = 1
                        self.restaurantButton.alpha = 1
                        self.view.layoutIfNeeded()
                    }, completion: { (true) in
                        self.defaultAirportWidth?.isActive = false
                        self.animatedAirportWidth?.isActive = true
                        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseInOut, animations: {
                            self.hotelLabel.alpha = 1
                            self.hotelButton.alpha = 1
                            self.view.layoutIfNeeded()
                        }, completion: { (true) in
                            self.airportLabel.alpha = 1
                            self.airportButton.alpha = 1
                        })
                    })
                })
                
            })
            
            
            
            
        }
        
    }
    
    @objc fileprivate func handlevisit() {
        let vistVC = ListOfPlacesViewController()
        vistVC.cityDetail = visitedplaces
        vistVC.ListLabel.text = "Places That You Should Go"
        present(vistVC, animated: true)
    }
    
    @objc fileprivate func handleBars() {
        let vistVC = ListOfPlacesViewController()
        vistVC.cityDetail = bars
        vistVC.ListLabel.text = "Cafe & Bars You Should check out"
        present(vistVC, animated: true)
    }
    
    @objc fileprivate func handleRestaurants() {
        let vistVC = ListOfPlacesViewController()
        vistVC.cityDetail = restaurants
        vistVC.ListLabel.text = "Best Restaurants in Cappadocia"
        present(vistVC, animated: true)
        
    }
    
    @objc fileprivate func handleHotels() {
        let vistVC = ListOfPlacesViewController()
        vistVC.cityDetail = hotels
        vistVC.ListLabel.text = "Best Hotels in Cappadocia"
        present(vistVC, animated: true)
        
    }
    
    @objc fileprivate func handleAirports() {
        let vistVC = ListOfPlacesViewController()
        vistVC.cityDetail = airports
        vistVC.ListLabel.text = "list of Airports near by Cappadocia"
        present(vistVC, animated: true)
    }
    
    @objc fileprivate func handlePopToHistory() {
        present(HistoryViewController(), animated: true)
        
    }
    
    
    fileprivate func setupConstraint() {
        
        view.addSubview(BackgroundImageView)
        NSLayoutConstraint.activate([
            BackgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            BackgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            BackgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            BackgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor)])
        
        
        view.addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.widthAnchor.constraint(equalTo: view.widthAnchor),
            mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.68)])
        
        view.addSubview(headerView)
        NSLayoutConstraint.activate([
            headerView.bottomAnchor.constraint(equalTo: mainView.topAnchor, constant: -12),
            headerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            headerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.23)])
        
        headerView.addSubview(headerImage)
        NSLayoutConstraint.activate([
            headerImage.topAnchor.constraint(equalTo: headerView.topAnchor),
            headerImage.bottomAnchor.constraint(equalTo: headerView.bottomAnchor),
            headerImage.leftAnchor.constraint(equalTo: headerView.leftAnchor),
            headerImage.rightAnchor.constraint(equalTo: headerView.rightAnchor)])
        
        
        headerView.addSubview(cityLabel)
        NSLayoutConstraint.activate([
            cityLabel.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.6),
            cityLabel.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 12),
            cityLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -6),
            cityLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.48)])
        
        view.addSubview(sepView)
        NSLayoutConstraint.activate([
            sepView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            sepView.heightAnchor.constraint(equalToConstant: 1),
            sepView.widthAnchor.constraint(equalTo: view.widthAnchor),
            sepView.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
        view.addSubview(HistoryButton)
        NSLayoutConstraint.activate([
            HistoryButton.centerYAnchor.constraint(equalTo: sepView.centerYAnchor),
            HistoryButton.rightAnchor.constraint(equalTo: headerView.rightAnchor, constant: -12),
            HistoryButton.widthAnchor.constraint(equalToConstant: 70),
            HistoryButton.heightAnchor.constraint(equalToConstant: 70)])
        
        
        view.addSubview(visitView)
        NSLayoutConstraint.activate([
            visitView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 8),
            visitView.heightAnchor.constraint(equalToConstant: 60),
            visitView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -10)])
        
        defaultVisitWidth = visitView.widthAnchor.constraint(equalToConstant: 0)
        defaultVisitWidth?.isActive = true
        animatedVisitWidth = visitView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        
        
        
        
        view.addSubview(barView)
        NSLayoutConstraint.activate([
            barView.topAnchor.constraint(equalTo: visitView.bottomAnchor, constant: 12),
            barView.heightAnchor.constraint(equalToConstant: 60),
            barView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -10)])
        
        defaultBarWidth = barView.widthAnchor.constraint(equalToConstant: 0)
        defaultBarWidth?.isActive = true
        animatedBarWidth = barView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        
        
        view.addSubview(resturantView)
        NSLayoutConstraint.activate([
            resturantView.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 12),
            resturantView.heightAnchor.constraint(equalToConstant: 60),
            resturantView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -10)])
        
        defaultRestaurantWidth = resturantView.widthAnchor.constraint(equalToConstant: 0)
        defaultRestaurantWidth?.isActive = true
        animatedRestaurantWidth = resturantView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        
        
        view.addSubview(hotelView)
        NSLayoutConstraint.activate([
            hotelView.topAnchor.constraint(equalTo: resturantView.bottomAnchor, constant: 12),
            hotelView.heightAnchor.constraint(equalToConstant: 60),
            hotelView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -10)])
        
        defaultHotelWidth = hotelView.widthAnchor.constraint(equalToConstant: 0)
        defaultHotelWidth?.isActive = true
        animatedHotelWidth = hotelView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        
        
        view.addSubview(airportView)
        NSLayoutConstraint.activate([
            airportView.topAnchor.constraint(equalTo: hotelView.bottomAnchor, constant: 12),
            airportView.heightAnchor.constraint(equalToConstant: 60),
            airportView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -10)])
        
        defaultAirportWidth = airportView.widthAnchor.constraint(equalToConstant: 0)
        defaultAirportWidth?.isActive = true
        animatedAirportWidth = airportView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        
        
        visitView.addSubview(visitBackgroundImage)
        NSLayoutConstraint.activate([
            visitBackgroundImage.leftAnchor.constraint(equalTo: visitView.leftAnchor),
            visitBackgroundImage.bottomAnchor.constraint(equalTo: visitView.bottomAnchor),
            visitBackgroundImage.topAnchor.constraint(equalTo: visitView.topAnchor),
            visitBackgroundImage.rightAnchor.constraint(equalTo: visitView.rightAnchor)])
        
        barView.addSubview(barBackgroundImage)
        NSLayoutConstraint.activate([
            barBackgroundImage.leftAnchor.constraint(equalTo: barView.leftAnchor),
            barBackgroundImage.bottomAnchor.constraint(equalTo: barView.bottomAnchor),
            barBackgroundImage.topAnchor.constraint(equalTo: barView.topAnchor),
            barBackgroundImage.rightAnchor.constraint(equalTo: barView.rightAnchor)])
        
        resturantView.addSubview(restaurantBackgroundImage)
        NSLayoutConstraint.activate([
            restaurantBackgroundImage.leftAnchor.constraint(equalTo: resturantView.leftAnchor),
            restaurantBackgroundImage.bottomAnchor.constraint(equalTo: resturantView.bottomAnchor),
            restaurantBackgroundImage.topAnchor.constraint(equalTo: resturantView.topAnchor),
            restaurantBackgroundImage.rightAnchor.constraint(equalTo: resturantView.rightAnchor)])
        
        hotelView.addSubview(hotelBackgroundImage)
        NSLayoutConstraint.activate([
            hotelBackgroundImage.leftAnchor.constraint(equalTo: hotelView.leftAnchor),
            hotelBackgroundImage.bottomAnchor.constraint(equalTo: hotelView.bottomAnchor),
            hotelBackgroundImage.topAnchor.constraint(equalTo: hotelView.topAnchor),
            hotelBackgroundImage.rightAnchor.constraint(equalTo: hotelView.rightAnchor)])
        
        airportView.addSubview(airportBackgroundImage)
        NSLayoutConstraint.activate([
            airportBackgroundImage.leftAnchor.constraint(equalTo: airportView.leftAnchor),
            airportBackgroundImage.bottomAnchor.constraint(equalTo: airportView.bottomAnchor),
            airportBackgroundImage.topAnchor.constraint(equalTo: airportView.topAnchor),
            airportBackgroundImage.rightAnchor.constraint(equalTo: airportView.rightAnchor)])
        
        
        visitView.addSubview(visitButton)
        NSLayoutConstraint.activate([
            visitButton.leftAnchor.constraint(equalTo: visitView.leftAnchor, constant: 18),
            visitButton.heightAnchor.constraint(equalToConstant: 50),
            visitButton.widthAnchor.constraint(equalToConstant: 50),
            visitButton.centerYAnchor.constraint(equalTo: visitView.centerYAnchor)])
        
        visitView.addSubview(visitLabel)
        NSLayoutConstraint.activate([
            visitLabel.leftAnchor.constraint(equalTo: visitButton.rightAnchor,constant: 8),
            visitLabel.heightAnchor.constraint(equalToConstant: 50),
            visitLabel.rightAnchor.constraint(equalTo: visitView.rightAnchor, constant: -4),
            visitLabel.centerYAnchor.constraint(equalTo: visitView.centerYAnchor)])
        
        barView.addSubview(barButton)
        NSLayoutConstraint.activate([
            barButton.leftAnchor.constraint(equalTo: barView.leftAnchor, constant: 18),
            barButton.heightAnchor.constraint(equalToConstant: 50),
            barButton.widthAnchor.constraint(equalToConstant: 50),
            barButton.centerYAnchor.constraint(equalTo: barView.centerYAnchor)])
        
        barView.addSubview(barLabel)
        NSLayoutConstraint.activate([
            barLabel.leftAnchor.constraint(equalTo: barButton.rightAnchor,constant: 8),
            barLabel.heightAnchor.constraint(equalToConstant: 50),
            barLabel.rightAnchor.constraint(equalTo: barView.rightAnchor, constant: -4),
            barLabel.centerYAnchor.constraint(equalTo: barView.centerYAnchor)])
        
        resturantView.addSubview(restaurantButton)
        NSLayoutConstraint.activate([
            restaurantButton.leftAnchor.constraint(equalTo: resturantView.leftAnchor, constant: 18),
            restaurantButton.heightAnchor.constraint(equalToConstant: 50),
            restaurantButton.widthAnchor.constraint(equalToConstant: 50),
            restaurantButton.centerYAnchor.constraint(equalTo: resturantView.centerYAnchor)])
        
        resturantView.addSubview(restaurantLabel)
        NSLayoutConstraint.activate([
            restaurantLabel.leftAnchor.constraint(equalTo: restaurantButton.rightAnchor,constant: 8),
            restaurantLabel.heightAnchor.constraint(equalToConstant: 50),
            restaurantLabel.rightAnchor.constraint(equalTo: resturantView.rightAnchor, constant: -4),
            restaurantLabel.centerYAnchor.constraint(equalTo: resturantView.centerYAnchor)])
        
        hotelView.addSubview(hotelButton)
        NSLayoutConstraint.activate([
            hotelButton.leftAnchor.constraint(equalTo: hotelView.leftAnchor, constant: 18),
            hotelButton.heightAnchor.constraint(equalToConstant: 50),
            hotelButton.widthAnchor.constraint(equalToConstant: 50),
            hotelButton.centerYAnchor.constraint(equalTo: hotelView.centerYAnchor)])
        
        hotelView.addSubview(hotelLabel)
        NSLayoutConstraint.activate([
            hotelLabel.leftAnchor.constraint(equalTo: hotelButton.rightAnchor,constant: 8),
            hotelLabel.heightAnchor.constraint(equalToConstant: 50),
            hotelLabel.rightAnchor.constraint(equalTo: hotelView.rightAnchor, constant: -4),
            hotelLabel.centerYAnchor.constraint(equalTo: hotelView.centerYAnchor)])
        
        airportView.addSubview(airportButton)
        NSLayoutConstraint.activate([
            airportButton.leftAnchor.constraint(equalTo: airportView.leftAnchor, constant: 18),
            airportButton.heightAnchor.constraint(equalToConstant: 50),
            airportButton.widthAnchor.constraint(equalToConstant: 50),
            airportButton.centerYAnchor.constraint(equalTo: airportView.centerYAnchor)])
        
        airportView.addSubview(airportLabel)
        NSLayoutConstraint.activate([
            airportLabel.leftAnchor.constraint(equalTo: airportButton.rightAnchor,constant: 8),
            airportLabel.heightAnchor.constraint(equalToConstant: 50),
            airportLabel.rightAnchor.constraint(equalTo: airportView.rightAnchor, constant: -4),
            airportLabel.centerYAnchor.constraint(equalTo: airportView.centerYAnchor)])
        
    }
    
    
}
