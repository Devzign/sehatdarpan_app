import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "image": "assets/images/doctor_on1.png",
      "title": "Find Trusted Hospitals",
      "description": "Access a network of trusted hospitals for all your medical needs, right at your fingertips."
    },
    {
      "image": "assets/images/hospital_on2.png",
      "title": "Consult with Top Doctors",
      "description": "Connect with highly qualified doctors for expert medical advice and consultations."
    },
    {
      "image": "assets/images/doctor_on1.png",
      "title": "Visit Nearby Clinics",
      "description": "Locate clinics near you for quick and convenient medical care anytime you need it."
    },
    {
      "image": "assets/images/hospital_on2.png",
      "title": "Get Lab Tests Done",
      "description": "Easily book lab tests and receive accurate results to monitor your health effectively."
    },
    {
      "image": "assets/images/doctor_on1.png",
      "title": "Order Medicines Online",
      "description": "Find and order medicines from trusted medical stores, with doorstep delivery available."
    },
  ];

  void _nextPage() {
    if (_currentPage < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Navigate to your main app page or login screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemCount: _onboardingData.length,
        itemBuilder: (context, index) => OnboardingContent(
          image: _onboardingData[index]["image"]!,
          title: _onboardingData[index]["title"]!,
          description: _onboardingData[index]["description"]!,
          onNext: _nextPage,
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String image, title, description;
  final VoidCallback onNext;

  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 250),
        const SizedBox(height: 20),
        Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        const SizedBox(height: 40),
        IconButton(
          icon: const Icon(Icons.arrow_forward, color: Colors.green),
          onPressed: onNext,
          iconSize: 40,
        ),
      ],
    );
  }
}
