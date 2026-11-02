import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodels/currency_viewmodel.dart';

class CurrencyDialog extends ConsumerStatefulWidget {
  const CurrencyDialog({super.key});

  @override
  ConsumerState<CurrencyDialog> createState() => _CurrencyDialogState();
}

class _CurrencyDialogState extends ConsumerState<CurrencyDialog> {
  late String _selectedCurrency;

  @override
  void initState() {
    super.initState();
    _selectedCurrency = ref.read(currencyViewModelProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Đơn vị tiền tệ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            RadioGroup<String>(
              groupValue: _selectedCurrency,
              onChanged: (val) {
                if (val != null) {
                  setState(() => _selectedCurrency = val);
                }
              },
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() => _selectedCurrency = 'VND');
                    },
                    child: const Row(
                      children: [
                        Radio<String>(
                          value: 'VND',
                          activeColor: Colors.black87,
                        ),
                        Text(
                          'VND (Việt Nam Đồng)',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() => _selectedCurrency = 'USD');
                    },
                    child: const Row(
                      children: [
                        Radio<String>(
                          value: 'USD',
                          activeColor: Colors.black87,
                        ),
                        Text(
                          'USD (Đô la Mỹ)',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      foregroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Hủy'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      ref
                          .read(currencyViewModelProvider.notifier)
                          .setCurrency(_selectedCurrency);
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF333333),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Lưu'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
