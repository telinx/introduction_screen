import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

const kImageDemo =
    "https://cdn4.iconfinder.com/data/icons/onboarding-material-color/128/__14-512.png";

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key key}) : super(key: key);

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage() {
    return Align(
      child: Image.network(kImageDemo, height: 175.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            dotsDecorator: const DotsDecorator(
              activeColor: Colors.red,
            ),
            boxDecoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/30/w1080h1350/20191101/af7b-ihuuxut4756281.jpg'),
                fit: BoxFit.cover
              )
            )
          ),
          // title: "First title page",
          // body: "Text of the first page of this onboarding",
          // image: _buildImage(),
        ),
        PageViewModel(
          decoration: PageDecoration(
            dotsDecorator: const DotsDecorator(
              activeColor: Colors.red,
            ),
            boxDecoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/30/w1080h1350/20191101/af7b-ihuuxut4756281.jpg'),
                fit: BoxFit.cover
              )
            )
          ),
          // title: "Second title page",
          // body: "Text of the second page of this onboarding",
          // image: _buildImage(),
          // footer: RaisedButton(
          //   onPressed: () {/* Nothing */},
          //   child: const Text('Button', style: TextStyle(color: Colors.white)),
          //   color: Colors.lightBlue,
          // ),
        ),
        PageViewModel(
          
          title: "Third title page",
          body: "Text of the third page of this onboarding",
          image: _buildImage(),
          decoration: PageDecoration(
            // titleTextStyle: const TextStyle(
            //   fontSize: 28.0,
            //   fontWeight: FontWeight.w600,
            //   color: Colors.red,
            // ),
            bodyTextStyle: const TextStyle(fontSize: 22.0),
            dotsDecorator: const DotsDecorator(
              activeColor: Colors.red,
              activeSize: Size.fromRadius(8),
            ),
            // pageColor: Colors.grey[200],
            boxDecoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/30/w1080h1350/20191101/af7b-ihuuxut4756281.jpg'),
                fit: BoxFit.cover
              )
            )
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            dotsDecorator: const DotsDecorator(
              activeColor: Colors.red,
            ),
            boxDecoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/30/w1080h1350/20191101/af7b-ihuuxut4756281.jpg'),
                fit: BoxFit.cover
              )
            )
          ),
          title: "Fourth title page",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on "),
              Icon(Icons.edit),
              Text(" to edit a post"),
            ],
          ),
          // image: _buildImage(),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
