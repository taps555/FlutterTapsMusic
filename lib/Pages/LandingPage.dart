import 'package:flutter/material.dart';
import 'package:solmusic/Style/Style.dart';
import 'package:solmusic/Widget/RoundedButton.dart';
import '../Style/Style.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          //For Desktop Screen
          return DesktopPage();
        } else if (constraints.maxWidth >= 800 &&
            constraints.maxWidth <= 1200) {
          //for Tablet Screen
          return DesktopPage();
        } else {
          //for mobile Screen
          return DesktopPage();
        }
      },
    );
  }
}

class DesktopPage extends StatefulWidget {
  @override
  _DesktopPageState createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  Widget customFlexible(String text, String subText, var icon) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffF24854),
              radius: 32.0,
              child: Icon(icon, color: Colors.white, size: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              text,
              style: ThemText.createText,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              subText,
              style: ThemText.howitworkDec,
            ),
          ],
        ),
      ),
    );
  }

  Widget customCheckBox(String text, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
              activeColor: Color.fromARGB(255, 248, 170, 0),
              value: value,
              onChanged: (value) {}),
          SizedBox(
            width: 16.0,
          ),
          Text(
            text,
            style: ThemText.smallWhiteText,
          ),
        ],
      ),
    );
  }

  Widget customCard(text, img) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0), color: Colors.teal),
          height: MediaQuery.of(context).size.height * 0.47,
          width: MediaQuery.of(context).size.width * 0.22,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          text,
          style: ThemText.cardText,
        )
      ],
    );
  }

  Widget customCircleAvtar(text, img, subText) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage(img),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          text,
          style: ThemText.cardText,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          subText,
          style: ThemText.whitexlText,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //Home Music for everyone
          Container(
            height: size.height,
            width: size.width,
            color: Color(0xff00ADB5),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  width: size.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Music ",
                                  style: ThemText.homePinkTitle,
                                ),
                                Text(
                                  "for",
                                  style: ThemText.homewhiteTitle,
                                ),
                              ],
                            ),
                            Text(
                              "everyone.",
                              style: ThemText.homewhiteTitle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: size.width * 0.40,
                            alignment: Alignment.center,
                            child: Wrap(
                              children: [
                                Text(
                                  "Putar musik kesukaan anda dengan offline hanya di sini dan berbagai macam genre musik sesuai dengan selera anda.",
                                  style: ThemText.homeDescTitle,
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 48.0,
                          vertical: 16.0,
                        ),
                        child: Row(
                          children: [
                            RoundedButton(
                              color: Color.fromARGB(255, 248, 170, 0),
                              textTitle: "download now",
                            ),
                            RoundedButton(
                              color: Color(0xff00ADB5),
                              textTitle: "start free trial",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width / 2,
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Image(
                      image: AssetImage("images/pic1.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Unlimited Access
          Container(
            height: size.height * 0.74,
            width: size.width,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width / 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Wrap(
                      children: [
                        Text(
                          "Akses tak terbatas hingga kapan pun",
                          style: ThemText.bigTextTitle,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              "Nikmati musik dengan akses tak terbatas di setiap lagu di TapsMusik. Dapatkan kebebasan penuh untuk mengeksplorasi ribuan lagu tanpa gangguan iklan. Dengan TapsMusik, Anda bisa menikmati setiap genre musik favorit Anda kapan saja dan di mana saja. Jangan ragu untuk mencoba berbagai playlist, artis, dan album terbaru yang selalu diperbarui untuk memberi Anda pengalaman musik terbaik. TapsMusik menyediakan kualitas suara tinggi dan pilihan lagu yang luas, membuat setiap momen mendengarkan musik Anda semakin berkesan. Jadikan TapsMusik teman setia dalam setiap perjalanan Anda, dengan akses tak terbatas ke musik berkualitas di setiap detik yang Anda nikmati. TapsMusik hadir untuk memanjakan setiap pendengar, menawarkan pengalaman mendengarkan musik yang lebih personal dan menyenangkan.",
                              style: ThemText.describtionTex,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22.0,
                      ),
                      RoundedButton(
                        color: Color.fromARGB(255, 248, 170, 0),
                        textTitle: "try it now",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //How it works
          Container(
            height: size.height * 0.86,
            width: size.width,
            color: Color(0xff00ADB5),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.46,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "How it works",
                        style: ThemText.whititleText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customFlexible(
                        "Create an account",
                        "Daftarkan diri Anda di TapsMusik untuk mulai menikmati layanan musik tak terbatas. Proses pendaftaran cepat dan mudah, memungkinkan Anda untuk segera mengakses semua fitur kami.",
                        Icons.person_pin,
                      ),
                      customFlexible(
                        "Choose a plan",
                        "Pilih paket langganan yang sesuai dengan kebutuhan Anda. Kami menawarkan berbagai pilihan untuk memaksimalkan pengalaman mendengarkan musik Anda, baik untuk penggunaan pribadi maupun keluarga.",
                        Icons.queue_play_next,
                      ),
                      customFlexible(
                        "Download Music",
                        "Nikmati musik favorit Anda dengan cara mengunduh lagu-lagu dari koleksi kami. Akses offline memungkinkan Anda untuk mendengarkan kapan saja tanpa perlu koneksi internet.",
                        Icons.library_music,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //Our Concept
          Container(
            height: size.height * 1.20,
            width: size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                            flex: 2,
                            child: Wrap(
                              children: [
                                Text(
                                  "Our Concept & artists",
                                  style: ThemText.purpuleText,
                                ),
                              ],
                            )),
                        Flexible(
                            flex: 3,
                            child: Wrap(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    "Kami menciptakan pengalaman musik yang lebih personal dengan konsep yang berfokus pada kenyamanan dan aksesibilitas bagi setiap pendengar. Di TapsMusik, kami memahami pentingnya kualitas suara dan kemudahan dalam menemukan musik favorit Anda. Kami bekerja sama dengan berbagai artis berbakat dari berbagai genre untuk memberikan koleksi musik terbaik yang bisa Anda nikmati setiap saat. Dari musisi independen hingga artis terkenal, kami berkomitmen untuk mendukung perjalanan musik mereka dan memberi pendengar akses ke musik yang luar biasa.",
                                    style: ThemText.helpGreyText,
                                  ),
                                )
                              ],
                            ))
                      ],
                    )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                              flex: 1,
                              child:
                                  customCard('TapsMusic', 'images/pic2.jfif')),
                          Flexible(
                              flex: 1,
                              child: customCard(
                                  'Live Konser', 'images/pic3.jfif')),
                          Flexible(
                              flex: 1,
                              child: customCard('Dj Sets', 'images/pic4.jfif')),
                          Flexible(
                              flex: 1,
                              child: customCard(
                                  'Live Streems', 'images/pic5.jfif')),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Subscription
          Container(
            alignment: Alignment.center,
            height: size.height,
            width: size.width,
            color: Color(0xff00ADB5),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Wrap(
                              children: [
                                Text(
                                  "Subscription from 30k/month",
                                  style: ThemText.whititleText,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Wrap(
                              children: [
                                Text(
                                  "Start a free trial now",
                                  style: ThemText.pinkText,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Wrap(
                              children: [
                                Text(
                                  "Mulailah percobaan gratis sekarang dan nikmati akses penuh ke semua fitur TapsMusik. Dengan hanya 30k per bulan, Anda dapat menikmati musik tanpa batas, bebas dari iklan, dan berbagai keuntungan lainnya. Jangan lewatkan kesempatan untuk mendapatkan pengalaman musik terbaik! Cobalah sekarang dan temukan koleksi musik favorit Anda.",
                                  style: ThemText.describtionTex,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          RoundedButton(
                            color: Color.fromARGB(255, 248, 170, 0),
                            textTitle: 'try it now',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Color(0xff393E46),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customCheckBox('Play any track', true),
                              customCheckBox('Listen offline', true),
                              customCheckBox('No ad interruptions', true),
                              customCheckBox('Unlimited skips', true),
                              customCheckBox('High quality audio', true),
                              customCheckBox('Shuffle play', true),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //People
          Container(
            height: size.height * 0.65,
            width: size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customCircleAvtar("No ad interruptions", "images/pic6.jfif",
                    "Nikmati musik tanpa gangguan iklan."),
                customCircleAvtar("High Quality", "images/pic7.jfif",
                    "Dengarkan musik dengan kualitas suara terbaik."),
                customCircleAvtar("Listen Offline", "images/pic8.jfif",
                    "Nikmati musik tanpa koneksi internet."),
                customCircleAvtar("Download Music", "images/pic9.jfif",
                    "Unduh lagu favorit Anda untuk didengarkan kapan saja.")
              ],
            ),
          ),

          //Footer
          Container(
            height: size.height * 0.60,
            width: size.width,
            color: Color(0xff222831),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Questions? Call 000-800-040-1843",
                      style: ThemText.footerText,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          footerText("FAQ"),
                          footerText("Investor Relations"),
                          footerText("Privacy"),
                          footerText("Speed Test"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          footerText("Help Centre"),
                          footerText("Jobs"),
                          footerText("Cookie Preferences"),
                          footerText("Legal Notices"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          footerText("Account"),
                          footerText("Ways to Watch"),
                          footerText("Corporate Information"),
                          footerText("TapsMusik Originals"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          footerText("Media Centre"),
                          footerText("Terms of Use"),
                          footerText("Contact Us"),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "TapsMusik India",
                      style: ThemText.footerText,
                    ),
                  ),
                  Center(
                    child: Text(
                      "© Created By Trio Adhi Pamungkas S -",
                      style: ThemText.footerText,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget footerText(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: ThemText.footerText,
      ),
    );
  }
}
