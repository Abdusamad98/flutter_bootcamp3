import 'package:flutter_bootcamp3/my_contact_info.dart';
import 'package:flutter_bootcamp3/utils/icons.dart';

class FakeData {
  static List<MyContactInfo> getMyContacts() {
    List<MyContactInfo> myContactsInfo = [];

    myContactsInfo.add(
      MyContactInfo(
        aboutInfo: "",
        iconPath: MyIcons.notification,
        contactName: "Abdulloh ",
        contactNumber: "+99 899 1234567",
      ),
    );

    myContactsInfo.add(

      MyContactInfo(
        aboutInfo: '''
        Uzbekistan (UK: /ʊzˌbɛkɪˈstɑːn, ʌz-, -ˈstæn/, US: /ʊzˈbɛkɪstæn, -stɑːn/;[12][13] Uzbek: Oʻzbekiston, pronounced [ozbekiˈstɒn]), officially the Republic of Uzbekistan (Uzbek: Oʻzbekiston Respublikasi), is a doubly landlocked country in Central Asia. It is surrounded by five landlocked countries: Kazakhstan to the north; Kyrgyzstan to the northeast; Tajikistan to the southeast; Afghanistan to the south; and Turkmenistan to the south-west. Its capital and largest city is Tashkent. Uzbekistan is part of the Turkic world, as well as a member of the Organization of Turkic States. The Uzbek language is the majority-spoken language in Uzbekistan, other languages include the Russian language and the Tajik language, on the region of Samarkand and Bukhara. Islam is the predominant religion in Uzbekistan, most Uzbeks being Sunni Muslims.[14]

The first recorded settlers in what is now Uzbekistan were Eastern Iranian nomads, known as Scythians, who founded kingdoms in Khwarazm (8th–6th centuries BC), Bactria (8th–6th centuries BC), Sogdia (8th–6th centuries BC), Fergana (3rd century BC – sixth century AD), and Margiana (3rd century BC – sixth century AD).[15] The area was incorporated into the Iranian Achaemenid Empire and, after a period of Macedonian rule, was ruled by the Iranian Parthian Empire and later by the Sasanian Empire, until the Muslim conquest of Persia in the seventh century. The Early Muslim conquests and the subsequent Samanid Empire converted most of the people, including the local ruling classes, into adherents of Islam. During this period, cities such as Samarkand, Khiva, and Bukhara began to grow rich from the Silk Road, and became a center of the Islamic Golden Age, with figures such as Muhammad al-Bukhari, Al-Tirmidhi, al Khwarizmi, al-Biruni, Avicenna and Omar Khayyam.

The local Khwarazmian dynasty was destroyed by the Mongol invasion in the 13th century, leading to a dominance by Turkic peoples. Timur (Tamerlane) who in the 14th century established the Timurid Empire was from Shahrisabz and with his capital in Samarkand, which became a centre of science under the rule of Ulugh Beg, giving birth to the Timurid Renaissance. The territories of the Timurid dynasty were conquered by Uzbek Shaybanids in the 16th century, moving the centre of power to Bukhara. The region was split into three states: the Khanate of Khiva, Khanate of Kokand and Emirate of Bukhara. Conquests by Emperor Babur towards the east led to the foundation of India's newest invasions as Mughal Empire. All of Central Asia was gradually incorporated into the Russian Empire during the 19th century, with Tashkent becoming the political center of Russian Turkestan. In 1924, national delimitation created the Uzbek Soviet Socialist Republic as an independent republic within the Soviet Union. Following the dissolution of the Soviet Union, it declared independence as the Republic of Uzbekistan on 31 August 1991.
        ''',
        iconPath: MyIcons.pitsa,
        contactName: "Ali ",
        contactNumber: "+99 899 4356678",
      ),
    );

    myContactsInfo.add(
      MyContactInfo(
        aboutInfo: "",
        iconPath: MyIcons.food1,
        contactName: "Afghj ",
        contactNumber: "+99 899 234567",
      ),
    );

    myContactsInfo.add(
      MyContactInfo(
        aboutInfo: "",
        iconPath: MyIcons.food2,
        contactName: "Vfghjj ",
        contactNumber: "+99 899 234567",
      ),
    );

    myContactsInfo.add(
      MyContactInfo(
        aboutInfo: "",
        iconPath: MyIcons.food3,
        contactName: "GDFGHJ ",
        contactNumber: "+99 899 2345213",
      ),
    );

    myContactsInfo.add(
      MyContactInfo(
        aboutInfo: "",
        iconPath: MyIcons.image,
        contactName: "Sfghjk ",
        contactNumber: "+99 899 345678",
      ),
    );

    myContactsInfo.add(
      MyContactInfo(
        aboutInfo: "",
        iconPath: MyIcons.image1,
        contactName: "Hfdfghjk ",
        contactNumber: "+99 899 435678",
      ),
    );

    myContactsInfo.add(
      MyContactInfo(
        aboutInfo: "",
        iconPath: MyIcons.image2,
        contactName: "Hfdfghjk ",
        contactNumber: "+99 899 345678",
      ),
    );

    myContactsInfo.add(
      MyContactInfo(
        aboutInfo: "",
        iconPath: MyIcons.image3,
        contactName: "Jffdghj ",
        contactNumber: "+99 899 23245",
      ),
    );

    return myContactsInfo;
  }
}
