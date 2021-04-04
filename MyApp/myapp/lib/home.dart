import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [

ImageDetails(
    imagePath: 'images/1.jpg',
    title: 'Childrens Day 2020',
    details: 'Hello miss motta, kuch sujha nahi toh ye app bnaye',
  ),

  ImageDetails(
    imagePath: 'images/3.jpg',
    title: 'Lets RUUUN!',
    details: 'Wo school days tha jaha sbse best moments tmhre sath shaare kiye',
  ),

  ImageDetails(
    imagePath: 'images/4.jpg',
    title: 'The day when saleha failed',
    details: 'Tum toh aj kal kaha rehti ho tmhi jano, pata nahi din bhr wahi book n 4 deewar k beech kaise reh leti ho. Pose marte rho',
  ),

    ImageDetails(
    imagePath: 'images/2.jpg',
    title: 'Teddy with Teddy',
    details: 'I hope tmko ye pasnd aaye, bcs ye ek memoir h, jo yd dilayeg ak ha Maaz nam ka tha koi',
  ),

  ImageDetails(
    imagePath: 'images/5.jpg',
    title: 'Hehe',
    details: 'Wo school bunk wo jo aj tk tmhri mummy ko pta nahi h yd h na? yhi ldka karwaya tha na?',
  ),

  ImageDetails(
    imagePath: 'images/6.jpg',
    title: 'Pooose',
    details:'Last Bday bhi kuch kr nhi paye the xm bol kr, aur ye saal bhi manhus nikla accha hua 11 me hi tmhra muh me cake laga diye ',
  ),

  ImageDetails(
    imagePath: 'images/8.jpg',
    title: 'Ufff ladki',
    details: 'Ye toh bs ek bahana h tmko wo sara chis wpas se yd dilane k liye, wrna tm bhulakkad bhul hi jao. and pose marte rho',
  ),

  ImageDetails(
    imagePath: 'images/9.jpg',
    title: 'Just Timepass',
    details: ' Mara toh dumm ghut jaye, tmko miss bhi krre h, ek kam krona khud ko parcel krdo na idhr, pleajjj',
  ),

  ImageDetails(
    imagePath: 'images/10.jpg',
    title: 'Haaay Garmi',
    details: 'Haa Haa dekho dekho, gaur se dekho apna iss foto ko, aisa fot toh bhejne ka hota nahi h bs snappy deta h.',
  ),

  ImageDetails(
    imagePath: 'images/11.jpg',
    title: 'Always Snapchat',
    details: 'Firse wahi, apun ka kismat hi khrb h,hm ye snapchat ko ya tmhra fone ko ya dno ko utha kr phek denge koi din dekh lena ha ni to',
  ),

  ImageDetails(
    imagePath: 'images/12.jpg',
    title: 'PVR...you know',
    details: 'Ha thik h thik h, hmko pta h tm smile krri ho, zda sochne ka zrurt nahi h, badmash No.1, pitta kr denge.',
  ),

    ImageDetails(
    imagePath: 'images/7.jpg',
    title: 'Fahadwa',
    details: 'Is k sath tmhra 9 ka chats yd h na? ye sc dikhaya tha n audio bheja tha, lol...hm haste haste pagal hogye the',
  ),

  ImageDetails(
    imagePath: 'images/14.jpg',
    title: 'Once Again',
    details: 'Apun ko kuch bolna hi nahi h, apun ja rha h idhr se, aur ye dekha nahi jata',
  ),

  ImageDetails(
    imagePath: 'images/15.jpg',
    title: 'Before feeding Pedigree',
    details: 'Mera paltu kutta ko khilane k liya aapka bhot bhot shukriya, kripya zda na khilaye wrna wo apko kha jyega',
  ),

  ImageDetails(
    imagePath: 'images/16.jpg',
    title: 'After feeding Pedigree',
    details: 'Dekh rhi ho uske shaqal pr hawas ka pallu? dikhne me seedhi h, par h pedigree jaisi tedi, bach kr rehna.',
  ),

  ImageDetails(
    imagePath: 'images/17.jpg',
    title: 'Old School Fun',
    details: 'Kya din tha wo sab bhi jb tm hila dula krti thi, ab toh ye lg gya kidhr h wo bhi nahi pata, and tmbhi sirf ghr me.',
  ),

  ImageDetails(
    imagePath: 'images/18.jpg',
    title: 'Cute',
    details: 'de de re bhai gaal, pleaj hath jod rhe h dedo na gaal, kithna soft sa h, kha jyege pura ek bar me.',
  ),

  ImageDetails(
    imagePath: 'images/19.jpg',
    title: 'Cute + Extra cheese ',
    details: 'KFC ka chicken burger se zda cheesy and tasty lg rha h, ha tm kha lena KFC bt hmko gaal toh dedooo',
  ),

  ImageDetails(
    imagePath: 'images/21.jpg',
    title: 'Cute + Bumper topping',
    details: 'Kuch nhi bolenge aur, khali lalach dilati ho bt no gaal, hm ni dekhege aur idhr, accha ek last bar dekh lete h.. hee', 
  ),

  ImageDetails(
    imagePath: 'images/22.jpg',
    title: 'Girrrl..',
    details: 'kaash tm abhi mra muh dekh pati sexo lady, agr aise kbhi mil gyi na toh mra toh chro tm toh, gyi pura gyi',
  ),

  ImageDetails(
    imagePath: 'images/23.jpg',
    title: 'Lost in friendship',
    details: 'Finally ek last foto with our beloved rasgulla, pata nahi ye bhi kaha h, chlo agya end ye journey ka, I mean ye app ka, zda aand mand mt baka krna on insta ploxx and, love baaaa & once again Happy Birthday Love.',
  ),


];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
              ),
            Text('Happy Birthday', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                  ), itemBuilder: (context, index){
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            imagePath: _images[index].imagePath,
                            title: _images[index].title,
                            details: _images[index].details,
                          ),
                         ),
                        );
                      },
                      child: Container(
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                  ),
                ),
              ),
          ],
        ),
        ),
    );
  }
}

class ImageDetails{

  final String imagePath;  
  final String title;
  final String details;

  ImageDetails(
    {
      @required this.imagePath,  
      @required this.title, 
      @required this.details,
    });
}