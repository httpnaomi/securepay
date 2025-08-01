import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeDisplayScreen extends StatefulWidget {
  const QRCodeDisplayScreen({super.key});

  @override
  State<QRCodeDisplayScreen> createState() => _QRCodeDisplayScreenState();
}

class _QRCodeDisplayScreenState extends State<QRCodeDisplayScreen> {
  // TODO: Backend team will implement these functions and data
  String _transactionId = 'TXN_1749016295189';
  String _amount = '\M\W\K25.98';
  String _merchantId = 'MERCH_001';
  String _securityToken = 'TOKEN_hy...'; // Truncated for display
  int _remainingSeconds = 98; // 1:38 in seconds

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    // TODO: Backend team will implement proper timer logic
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted && _remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
        _startTimer();
      }
    });
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  // TODO: Backend team will implement this function
  void _onQRCodeTap() {
    // This will be implemented by the backend team
    print('QR Code tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.qr_code,
                color: Color(0xFF4CAF50),
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              'QR Code Display',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // QR Code Display Area
            Expanded(
              child: Center(
                child: Container(
                  width: 280,
                  height: 280,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFE0E0E0),
                      width: 1,
                    ),
                  ),
                  child: Stack(
                    children: [
                      // QR Code
                      Center(
                        child: GestureDetector(
                          onTap: _onQRCodeTap,
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: QrImageView(
                              data: 'Transaction: $_transactionId\nAmount: $_amount\nMerchant: $_merchantId',
                              version: QrVersions.auto,
                              size: 200,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              embeddedImage: const AssetImage('assets/shield_icon.png'),
                              embeddedImageStyle: QrEmbeddedImageStyle(
                                size: const Size(40, 40),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Timer Badge
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF4CAF50),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: Colors.white,
                                size: 14,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                _formatTime(_remainingSeconds),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Transaction Details
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFE3F2FD),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF2196F3),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  _buildDetailRow('Amount', _amount, isBold: true),
                  const SizedBox(height: 12),
                  _buildDetailRow('Transaction ID', _transactionId),
                  const SizedBox(height: 12),
                  _buildDetailRow('Merchant', _merchantId),
                  const SizedBox(height: 12),
                  _buildDetailRow('Security Token', _securityToken),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Status Indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Encrypted Status
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4CAF50),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.security,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Encrypted',
                      style: TextStyle(
                        color: Color(0xFF4CAF50),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                // Dynamic Status
                Row(
                  children: [
                    const Icon(
                      Icons.flash_on,
                      color: Color(0xFF9C27B0),
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Dynamic',
                      style: TextStyle(
                        color: Color(0xFF9C27B0),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: const Color(0xFF2196F3),
            fontSize: 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
          ),
        ),
      ],
    );
  }
} 