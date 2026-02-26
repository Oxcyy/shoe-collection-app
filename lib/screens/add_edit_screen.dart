import 'package:flutter/material.dart';
import '../models/shoe.dart';

class AddEditScreen extends StatefulWidget {
  final Shoe? shoe;
  const AddEditScreen({super.key, this.shoe});

  @override
  State<AddEditScreen> createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _namaController;
  late TextEditingController _merekController;
  late TextEditingController _ukuranController;
  late TextEditingController _warnaController;
  late TextEditingController _hargaController;

  String _kondisi = 'Baru';
  final List<String> _kondisiOptions = [
    'Baru',
    'Sangat Bagus',
    'Bagus',
    'Bekas',
  ];

  bool get isEditing => widget.shoe != null;

  @override
  void initState() {
    super.initState();
    final s = widget.shoe;
    _namaController = TextEditingController(text: s?.nama ?? '');
    _merekController = TextEditingController(text: s?.merek ?? '');
    _ukuranController = TextEditingController(text: s?.ukuran ?? '');
    _warnaController = TextEditingController(text: s?.warna ?? '');
    _hargaController = TextEditingController(text: s?.harga ?? '');
    _kondisi = s?.kondisi ?? 'Baru';
  }

  @override
  void dispose() {
    _namaController.dispose();
    _merekController.dispose();
    _ukuranController.dispose();
    _warnaController.dispose();
    _hargaController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final shoe = Shoe(
        id: widget.shoe?.id,
        nama: _namaController.text.trim(),
        merek: _merekController.text.trim(),
        ukuran: _ukuranController.text.trim(),
        warna: _warnaController.text.trim(),
        kondisi: _kondisi,
        harga: _hargaController.text.trim(),
        createdAt: widget.shoe?.createdAt,
      );
      Navigator.pop(context, shoe);
    }
  }

  InputDecoration _inputDeco(String label, String hint, IconData icon) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: Icon(icon, color: const Color(0xFF1A1A2E)),
      filled: true,
      fillColor: Colors.grey.shade50,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF1A1A2E), width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(isEditing ? '✏️ Edit Sepatu' : '➕ Tambah Sepatu'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A2E),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Row(
                  children: [
                    Text('👟', style: TextStyle(fontSize: 40)),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Detail Sepatu',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Isi semua informasi dengan benar',
                          style: TextStyle(color: Colors.white60, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _namaController,
                decoration: _inputDeco(
                  'Nama Sepatu *',
                  'cth: Air Jordan 1',
                  Icons.label_outline,
                ),
                validator: (v) =>
                    v!.trim().isEmpty ? 'Nama sepatu wajib diisi' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _merekController,
                decoration: _inputDeco(
                  'Merek *',
                  'cth: Nike, Adidas',
                  Icons.branding_watermark_outlined,
                ),
                validator: (v) =>
                    v!.trim().isEmpty ? 'Merek wajib diisi' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _ukuranController,
                decoration: _inputDeco(
                  'Ukuran (Size) *',
                  'cth: 42',
                  Icons.straighten_outlined,
                ),
                keyboardType: TextInputType.number,
                validator: (v) =>
                    v!.trim().isEmpty ? 'Ukuran wajib diisi' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _warnaController,
                decoration: _inputDeco(
                  'Warna *',
                  'cth: Hitam, Putih',
                  Icons.color_lens_outlined,
                ),
                validator: (v) =>
                    v!.trim().isEmpty ? 'Warna wajib diisi' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _hargaController,
                decoration: _inputDeco(
                  'Harga (Rp) *',
                  'cth: 1.500.000',
                  Icons.attach_money_outlined,
                ),
                keyboardType: TextInputType.number,
                validator: (v) =>
                    v!.trim().isEmpty ? 'Harga wajib diisi' : null,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _kondisi,
                decoration: _inputDeco('Kondisi *', '', Icons.star_outline),
                items: _kondisiOptions
                    .map((k) => DropdownMenuItem(value: k, child: Text(k)))
                    .toList(),
                onChanged: (v) => setState(() => _kondisi = v!),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE94560),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  isEditing ? 'Simpan Perubahan' : 'Tambah ke Koleksi',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => Navigator.pop(context),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: const BorderSide(color: Color(0xFF1A1A2E)),
                ),
                child: const Text(
                  'Batal',
                  style: TextStyle(color: Color(0xFF1A1A2E), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
