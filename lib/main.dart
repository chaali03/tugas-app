import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Blockchain Jobs',
      theme: CupertinoThemeData(
        primaryColor: Colors.purple,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const BlockchainJobsScreen(),
    );
  }
}

class BlockchainJobsScreen extends StatefulWidget {
  const BlockchainJobsScreen({super.key});

  @override
  State<BlockchainJobsScreen> createState() => _BlockchainJobsScreenState();
}

class _BlockchainJobsScreenState extends State<BlockchainJobsScreen> {
  int _selectedFilterIndex = 0;
  final List<String> _filterOptions = ['All', 'Newest', 'Oldest', 'Nearest'];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Status Bar (simulated)
              Container(
                height: 20,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        '9:41',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.signal_cellular_4_bar, size: 16),
                        const SizedBox(width: 4),
                        const Icon(Icons.wifi, size: 16),
                        const SizedBox(width: 4),
                        const Icon(Icons.battery_full, size: 16),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Header Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo icon dengan design baru
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.indigo[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CustomPaint(
                        size: const Size(40, 40),
                        painter: AppLogoPainter(),
                      ),
                    ),
                    
                    // Bell icon with notification dot
                    Stack(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          child: const Icon(
                            CupertinoIcons.bell,
                            size: 24,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Main Title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Find the world\'s most blockchain jobs',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.2,
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      const Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Search...',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.only(right: 16),
                        child: const Icon(
                          CupertinoIcons.slider_horizontal_3,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Crypto Startup Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Crypto Startup',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.purple[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCryptoAssetIcon('asset/The Graph (GRT) (1).png', 'GRT'),
                        _buildCryptoAssetIcon('asset/Binance Coin (BNB) (1).png', 'BNB'),
                        _buildCryptoAssetIcon('asset/IoTeX (IOTX) (1).png', 'IOTX'),
                        _buildCryptoAssetIcon('asset/The Sandbox (SAND) (1).png', 'SAND'),
                      ],
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Recommendation Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommendation',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.purple[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: _filterOptions.asMap().entries.map((entry) {
                        int index = entry.key;
                        String option = entry.value;
                        bool isSelected = index == _selectedFilterIndex;
                        
                        return Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedFilterIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: index < _filterOptions.length - 1 ? 8 : 0),
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.purple : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: isSelected ? Colors.purple : Colors.grey[300]!,
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                option,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: isSelected ? Colors.white : Colors.grey[700],
                                  fontSize: 14,
                                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Job Listing Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // Company Logo dengan Solana dari asset
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey[300]!),
                            ),
                            child: Center(
                              child: Image.asset(
                                'asset/Solana (SOL).png',
                                width: 32,
                                height: 32,
                                errorBuilder: (context, error, stackTrace) {
                                  return Icon(
                                    CupertinoIcons.bitcoin,
                                    color: Colors.grey[600],
                                    size: 24,
                                  );
                                },
                              ),
                            ),
                          ),
                          
                          const SizedBox(width: 12),
                          
                          // Company Info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Axie Infinity',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Ho Chi Minh City',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // Bookmark icon
                          const Icon(
                            CupertinoIcons.bookmark,
                            color: Colors.grey,
                            size: 24,
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Job Title
                      const Text(
                        'Jr. Game Designer',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      
                      const SizedBox(height: 8),
                      
                      // Job Details
                      Text(
                        '2 days ago • 134 Applicants',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.purple[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Job Tags
                      Row(
                        children: [
                          _buildJobTag('Design'),
                          const SizedBox(width: 8),
                          _buildJobTag('Full Time'),
                          const SizedBox(width: 8),
                          _buildJobTag('Gaming'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Bottom Navigation Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildNavItem(CupertinoIcons.house_fill, 'Home', true),
                        _buildNavItem(CupertinoIcons.bookmark, 'Saved', false),
                        _buildNavItem(CupertinoIcons.chat_bubble, 'Message', false),
                        _buildNavItem(CupertinoIcons.person, 'Profile', false),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCryptoAssetIcon(String assetPath, String label) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!, width: 1),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetPath,
              width: 32,
              height: 32,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  CupertinoIcons.bitcoin,
                  color: Colors.grey[600],
                  size: 24,
                );
              },
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildJobTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
  
  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive ? Colors.black : Colors.grey,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.black : Colors.grey,
            fontSize: 12,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ],
    );
  }
} 

class AppLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    
    final center = Offset(size.width / 2, size.height / 2);
    final diamondSize = size.width * 0.15;
    
    // Gambar empat diamond yang membentuk pola cross
    // Diamond atas
    _drawDiamond(canvas, center + Offset(0, -diamondSize * 1.5), diamondSize, paint);
    
    // Diamond bawah
    _drawDiamond(canvas, center + Offset(0, diamondSize * 1.5), diamondSize, paint);
    
    // Diamond kiri
    _drawDiamond(canvas, center + Offset(-diamondSize * 1.5, 0), diamondSize, paint);
    
    // Diamond kanan
    _drawDiamond(canvas, center + Offset(diamondSize * 1.5, 0), diamondSize, paint);
  }
  
  void _drawDiamond(Canvas canvas, Offset center, double size, Paint paint) {
    final path = Path();
    path.moveTo(center.dx, center.dy - size);
    path.lineTo(center.dx + size, center.dy);
    path.lineTo(center.dx, center.dy + size);
    path.lineTo(center.dx - size, center.dy);
    path.close();
    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SolanaLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    
    final center = Offset(size.width / 2, size.height / 2);
    final rectWidth = size.width * 0.6;
    final rectHeight = size.height * 0.15;
    
    // Gambar logo Solana dengan tiga garis horizontal yang tumpang tindih
    // Garis atas
    canvas.drawRect(
      Rect.fromCenter(
        center: center + Offset(0, -rectHeight * 1.5),
        width: rectWidth,
        height: rectHeight,
      ),
      paint,
    );
    
    // Garis tengah
    canvas.drawRect(
      Rect.fromCenter(
        center: center,
        width: rectWidth,
        height: rectHeight,
      ),
      paint,
    );
    
    // Garis bawah
    canvas.drawRect(
      Rect.fromCenter(
        center: center + Offset(0, rectHeight * 1.5),
        width: rectWidth,
        height: rectHeight,
      ),
      paint,
    );
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 