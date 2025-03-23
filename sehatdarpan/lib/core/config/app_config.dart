class AppConfig {
    static const String devBaseUrl = "http://localhost:5001/api/";
  static const String stagingBaseUrl = "https://api.staging.example.com";
  static const String prodBaseUrl = "https://api.example.com";

  static const Environment currentEnvironment = Environment.dev;

  static String get baseUrl {
    switch (currentEnvironment) {
      case Environment.dev:
        return devBaseUrl;
      case Environment.staging:
        return stagingBaseUrl;
      case Environment.prod:
        return prodBaseUrl;
    }
  }
}

enum Environment { dev, staging, prod }
