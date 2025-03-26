import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/models/landing_model.dart';
import '../../data/providers/landing_service.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final LandingService _landingService = LandingService();
  late Future<List<LandingModel>> _landingData;

  @override
  void initState() {
    super.initState();
    _landingData = _landingService.fetchLandingData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<LandingModel>>(
        future: _landingData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No data available"));
          } else {
            final landingItems = snapshot.data!;
            return PageView.builder(
              itemCount: landingItems.length,
              itemBuilder: (context, index) {
                final item = landingItems[index];
                return LandingPageItem(
                  title: item.title,
                  message: item.message,
                  imageUrl: item.imageUrl,
                );
              },
            );
          }
        },
      ),
    );
  }
}

class LandingPageItem extends StatelessWidget {
  final String title;
  final String message;
  final String imageUrl;

  LandingPageItem({
    required this.title,
    required this.message,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(title,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const SizedBox(height: 10),
                        Text(message,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white)),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 12),
                          ),
                          child: const Text("NEXT",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.green)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: constraints.maxHeight / 2 - 300,
              left: 0,
              right: 0,
              child: Center(
                child: _buildImageWidget(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildImageWidget() {
    if (imageUrl.toLowerCase().endsWith('.svg')) {
      return SvgPicture.network(
        imageUrl,
        width: 250,
        fit: BoxFit.contain,
      );
    } else {
      return Image.network(
        imageUrl,
        width: 250,
        fit: BoxFit.contain,
      );
    }
  }
}
