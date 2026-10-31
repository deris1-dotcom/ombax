// lib/config/assets_config.dart
// Assets Config - Logo Path LOCK

class AssetsConfig {
  static const String logoWaveCompass = 'assets/logo/ombax_wave_compass.png';
  
  // Make sure Bos file ini ada Bos di folder Bos:
  // /assets/logo/ombax_wave_compass.png
  // Logo: Great Wave + Compass Star 8-point - Clean Background - High Res
  
  static const String fallbackLogoText = 'OMBAX'; // If logo not found Bos
}

// INSTRUKSI BOS ASSETS FOLDER BOS:
/*
1. Buat folder Bos: assets/logo/ 
2. Taruh file Bos: ombax_wave_compass.png (logo yang tadi Bos final Bos clean Bos)
3. Run Bos: flutter pub get
4. Kalau Bos belum punya logo file Bos, app akan pakai Icon fallback Bos sementara Bos!

Folder Structure Bos Final Bos:
- assets/
    - logo/
        - ombax_wave_compass.png  <-- INI BOS WAJIB ADA BOS!
    - images/
    - icons/
*/
