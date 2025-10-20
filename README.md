# [Flutter Template] 🚀

[Flutter template pour vous faciliter le développement des applications et aller vite avec les Widgets déjà prédéfinis]

## 📋 Table des Matières

- [Vue d'ensemble](#-vue-densemble)
- [Prérequis](#-prérequis)
- [Installation](#-installation)
- [Architecture](#-architecture)
- [Technologies](#-technologies)
- [Configuration](#-configuration)
- [Utilisation](#-utilisation)
- [API](#-api)
- [Déploiement](#-déploiement)

## 🎯 Vue d'ensemble

**[Nom du Projet]** permet de :
- 🎯 [Fonctionnalité 1]
- 👥 [Fonctionnalité 2]
- ⏱️ [Fonctionnalité 3]
- 💬 [Fonctionnalité 4]
- 🔔 [Fonctionnalité 5]
- 📊 [Fonctionnalité 6]

### Modules / Interfaces

- **[Module 1]** : [Description]
- **[Module 2]** : [Description]

## 🔧 Prérequis

- Flutter SDK : `>=3.0.0`
- Dart SDK : `>=3.0.0`
- Android Studio / VS Code
- Git
- [Autres prérequis spécifiques]

## 📦 Installation

### 1. Cloner le projet

```bash
git clone [repository-url]
cd [project-name]
```

### 2. Installer les dépendances

```bash
flutter pub get
```

### 3. Configuration [Services Tiers]

1. [Étape 1 de configuration]
2. [Étape 2 de configuration]
3. Configurer dans `lib/configs/[service]/[config_file].dart`

### 4. Lancer l'application

```bash
# Mode développement
flutter run

# Mode release
flutter run --release
```

## 🏗️ Architecture

### Structure des Dossiers

```
lib/
├── configs/                              # Configuration générale
│   ├── injectiondepency/
│   │   └── injection.dart               # Injection de dépendances (GetIt)
│   ├── routes/
│   │   ├── app_routes.dart              # Configuration des routes GetX
│   │   ├── navigation.dart              # Méthodes de navigation
│   │   └── page_name.dart               # Définition des noms de routes
│   ├── [service]/
│   │   └── [service]_options.dart       # Configuration service tiers
│   └── middlewares/
│       └── auth_middleware.dart         # Middlewares d'authentification
│
├── constants/                            # Constantes
│   ├── api_path.dart                    # Endpoints API
│   ├── app_constants.dart               # Messages et codes d'erreur
│   ├── app_export.dart                  # Exports centralisés
│   └── assets_path.dart                 # Chemins des assets
│
├── data/                                 # Couche données
│   ├── models/                          # Modèles de données
│   ├── repositories/                    # Repositories (logique métier)
│   └── local/                           # Stockage local
│
├── services/                             # Services
│   ├── locals/
│   │   └── local_storage_service.dart   # Service de stockage local
│   └── networks/                        # Services réseau
│       ├── apis/
│       │   ├── api_base.dart           # Classe de base pour les APIs
│       │   ├── api_controller_operation.dart  # Mixin pour contrôleurs
│       │   ├── interceptors.dart       # Intercepteurs HTTP
│       │   ├── rest_api_response.dart  # Modèle de réponse API
│       │   └── rest_api_service.dart   # Configuration client HTTP
│       └── errors/
│           └── dio_exception.dart      # Gestion des erreurs réseau
│
├── shared_components/                    # Composants réutilisables
│   ├── customs/                         # Widgets personnalisés
│   ├── layout/                          # Layouts de base
│   └── packages/                        # Intégrations packages tiers
│
├── themes/                               # Thème
│   ├── app_theme.dart                   # Configuration du thème
│   ├── colors.dart                      # Palette de couleurs
│   ├── styles.dart                      # Styles de texte et décorations
│   └── size.dart                        # Tailles et espacements
│
├── utils/                                # Utilitaires
│   └── helpers/                         # Fonctions helpers
│
└── main.dart                            # Point d'entrée de l'application
```

### Pattern Architecture

- **Repository Pattern** : Séparation logique métier / données
- **GetX Pattern** : Gestion d'état réactive
- **Dependency Injection** : GetIt pour l'injection de services

## 🛠️ Technologies

| Technologie | Usage | Version |
|------------|-------|---------|
| Flutter | Framework mobile | Latest |
| GetX | State management, routing | Latest |
| GetIt | Dependency injection | Latest |
| Dio | HTTP client | Latest |
| [Package 1] | [Usage] | Latest |
| [Package 2] | [Usage] | Latest |
| [Package 3] | [Usage] | Latest |

### Packages Principaux

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.5
  get_it: ^7.6.0
  dio: ^5.3.2
  shared_preferences: ^2.2.0
  flutter_screenutil: ^5.8.4
  # [Autres packages]
```

## ⚙️ Configuration

### Environnements
**Fichier:** `lib/configs/injectiondepency/injection.dart`

Configurer l'environnement :

```dart
// Développement
sl.get<RestApiServices>().setEnvironment(EnvironmentType.dev);

// Production
sl.get<RestApiServices>().setEnvironment(EnvironmentType.prod);

// Local
sl.get<RestApiServices>().setEnvironment(EnvironmentType.local);
```

### URLs API
**Fichier:** `lib/constants/api_path.dart`

```dart
static const String baseUrlDev = "[URL_DEV]/api/";
static const String baseUrlProd = "[URL_PROD]/api/";
static const String baseUrlLocal = "http://127.0.0.1:8000/api/";
```

### [Services Tiers - Ex: WebSocket, Firebase, etc.]
**Fichier:** `lib/constants/api_path.dart` ou configuration dédiée

```dart
// Exemple WebSocket
host: "[HOST]"
port: [PORT]
key: "[API_KEY]"

// Exemple Firebase
// Configuration dans lib/configs/firebase/firebase_options.dart
```

## 🚀 Utilisation

### Démarrage Rapide

1. **Lancer l'app**
```bash
flutter run
```

2. **[Actions initiales]**
- [Action 1 - ex: Se connecter]
- [Action 2 - ex: Configurer un profil]

3. **Navigation**
**Fichier:** `lib/configs/routes/navigation.dart`

```dart
// Exemples de navigation
MyNavigation.goTo[Page1]();
MyNavigation.goTo[Page2]();
```

### Routes & Pages
**Fichiers:** 
- `lib/configs/routes/page_name.dart` - Définition des routes
- `lib/configs/routes/app_routes.dart` - Configuration des pages

| Route | Page | Description | Binding | Middleware |
|-------|------|-------------|---------|------------|
| `/` ou `/initial` | `[HomePage]` | Page d'accueil / Écran initial | `[Binding]` | `[Middleware]` |
| `/[route1]` | `[Page1]` | [Description] | `[Binding]` | - |
| `/[route2]` | `[Page2]` | [Description] | `[Binding]` | - |
| `/[route3]` | `[Page3]` | [Description] | - | - |
| `/[route4]` | `[Page4]` | [Description] | - | - |
| `/unknownRoute` | `UnknownRoutePage` | Page 404 | - | - |

#### Navigation Programmatique

```dart
// Navigation GetX
Get.toNamed(MyRoutes.[route1]);
Get.offAllNamed(MyRoutes.[route2]);
Get.back();

// Avec arguments
Get.toNamed(MyRoutes.[route], arguments: {'id': 123});

// Récupérer les arguments
final args = Get.arguments;
```

### Injection de Dépendances
**Fichier:** `lib/configs/injectiondepency/injection.dart`

```dart
// Repositories
final [repo1] = sl<[Repository1]>();
final [repo2] = sl<[Repository2]>();

// Services
final storage = sl<LocalStorageServices>();
final api = sl<RestApiServices>();
```

### Stockage Local
**Fichier:** `lib/services/locals/local_storage_service.dart`

```dart
// Sauvegarder des données
sl<LocalStorageServices>().save[Data1] = [value];
sl<LocalStorageServices>().save[Data2] = [value];

// Récupérer des données
final [data1] = sl<LocalStorageServices>().get[Data1];
final [data2] = sl<LocalStorageServices>().get[Data2];

// Supprimer des données
sl<LocalStorageServices>().remove[Data1]();
sl<LocalStorageServices>().clear(); // Tout supprimer
```

## 🌐 API

### Authentification
**Repository:** `lib/data/repositories/auth_repository.dart`

```dart
// Login
POST /[auth-endpoint]
Body: { [field1], [field2] }

// Logout
POST /[logout-endpoint]

// Refresh Token
POST /[refresh-endpoint]
Body: { refresh_token }
```

### [Module/Feature 1]
**Endpoints:** `lib/constants/api_path.dart`

```dart
GET /[endpoint1]              // [Description]
GET /[endpoint2]/{id}         // [Description]
POST /[endpoint3]             // [Description]
PUT /[endpoint4]/{id}         // [Description]
DELETE /[endpoint5]/{id}      // [Description]
```

### [Module/Feature 2]

```dart
GET /[endpoint6]
POST /[endpoint7]
// [Autres endpoints]
```

### Gestion des Erreurs
**Fichier:** `lib/services/networks/errors/dio_exception.dart`

```dart
try {
  final response = await repository.getData();
  response.fold(
    (error) => handleError(error),
    (data) => handleSuccess(data),
  );
} catch (e) {
  print('Exception: $e');
}
```

**Codes d'erreur gérés:**
- `400` : Bad Request
- `401` : Non autorisé → [Action - ex: Redirection login]
- `403` : Interdit
- `404` : Non trouvé
- `422` : Erreur de validation
- `500` : Erreur serveur
- `502` : Bad Gateway
- `[Custom]` : [Description erreur personnalisée]

## 🎨 Thème

### Couleurs
**Fichier:** `lib/themes/colors.dart`

```dart
primaryColor: #[HEXCODE]      // [Nom/Description]
secondaryColor: #[HEXCODE]    // [Nom/Description]
backgroundColor: #[HEXCODE]   // [Nom/Description]
// [Autres couleurs]
```

### Typography
**Fichier:** `lib/themes/styles.dart`

```dart
// Styles de texte
[style1]        // [Taille]sp, [weight], [police]
[style2]        // [Taille]sp, [weight], [police]
[style3]        // [Taille]sp, [weight], [police]

// Décorations
[decoration1]     // [Description]
[decoration2]     // [Description]

// Border Radius
[radius1], [radius2], [radius3]...
```

### Polices
**Fichier:** `lib/constants/assets_path.dart`

```dart
[Font1]       // Police principale
[Font2]       // Police secondaire
// [Autres polices]
```

### Assets
**Fichier:** `lib/constants/assets_path.dart`

```
assets/
├── icons/              # Icônes (SVG/PNG)
│   ├── [icon1].[ext]
│   └── [icon2].[ext]
│
├── images/             # Images
│   ├── [image1].[ext]
│   └── [image2].[ext]
│
├── animations/         # Animations (GIF/Lottie)
│   ├── [anim1].[ext]
│   └── [anim2].[ext]
│
└── [other]/           # [Autres assets]
    └── [file].[ext]
```

## 🔔 [Services Tiers - Ex: Notifications, Analytics, etc.]

### Configuration
**Fichier:** `lib/configs/injectiondepency/injection.dart`

```dart
// Initialisation
await [Service].initialize([params]);

// Configuration
[Service].configure([options]);

// Callbacks/Listeners
[Service].onEvent.listen([callback]);
```

## 🧪 Tests

```bash
# Tests unitaires
flutter test

# Tests d'intégration
flutter test integration_test

# Tests spécifiques
flutter test test/[test_file]_test.dart

# Coverage
flutter test --coverage
```

## 📱 Build

### Android

```bash
# Debug
flutter build apk --debug

# Release
flutter build apk --release

# App Bundle (Play Store)
flutter build appbundle --release
```

### iOS

```bash
# Debug
flutter build ios --debug

# Release
flutter build ios --release

# Archive (App Store)
flutter build ipa
```

## 🐛 Débogage

### Activer les logs réseau
**Fichier:** `lib/services/networks/apis/rest_api_service.dart`

```dart
RestApiServices().isInDebugMode = true;
```

### Vérifier l'état

```dart
// État de l'API
print(controller.apiStatus.value);     // loading, success, failure
print(controller.errorMessage.value);
print(controller.statusCode.value);

// Stockage local
print(sl<LocalStorageServices>().get[Data]);

// [Autres vérifications]
```

### Logs personnalisés

```dart
// Debug
if (kDebugMode) {
  print('[TAG] Message de debug');
}

// Production - Utiliser un service de logging
logger.log('[TAG] Message');
```

## 📝 Bonnes Pratiques

1. ✅ **Navigation avec GetX**
```dart
Get.toNamed(MyRoutes.[route]);
Get.offAllNamed(MyRoutes.[route]);
Get.back();
```

2. ✅ **Injection de dépendances**
```dart
// Toujours utiliser sl<> pour récupérer les services
sl<[Service]>().method();
```

3. ✅ **Gestion d'erreurs avec Either**
**Fichier:** `lib/services/networks/apis/api_base.dart`
```dart
Either<String, Data> result = await repository.getData();
result.fold(
  (error) => showError(error),
  (data) => handleSuccess(data),
);
```

4. ✅ **Stockage sécurisé**
```dart
// Sauvegarder après opérations sensibles
sl<LocalStorageServices>().save[Data] = [value];

// Nettoyer à la déconnexion
sl<LocalStorageServices>().clear();
```

5. ✅ **Utiliser ApiControllerOperationMixin**
**Fichier:** `lib/services/networks/apis/api_controller_operation.dart`
```dart
class [Controller] extends GetxController 
    with ApiControllerOperationMixin {
  
  void loadData() {
    requestBaseController(
      repository.getData()
    );
  }
}
```

6. ✅ **Responsive avec ScreenUtil**
```dart
// Tailles
width: 100.w,
height: 50.h,
fontSize: 16.sp,

// Espacements
padding: EdgeInsets.all(20.r),
```

7. ✅ **Constantes centralisées**
```dart
// Messages d'erreur dans app_constants.dart
// Routes dans page_name.dart
// Assets dans assets_path.dart
// API endpoints dans api_path.dart
```

## ⚠️ Points d'Attention

- 🔴 [Point critique 1]
- 🟡 [Point d'amélioration 1]
- 🟡 [Point d'amélioration 2]
- 🟢 [Bonne pratique à maintenir]

## 🔐 Sécurité

- 🔒 Ne jamais commiter les fichiers de configuration sensibles
- 🔒 Utiliser des variables d'environnement pour les secrets
- 🔒 Activer ProGuard/R8 pour Android en production
- 🔒 [Autres mesures de sécurité]

## 🚀 CI/CD

```bash
# [Plateforme CI/CD utilisée]
# Configuration dans: [chemin/vers/config]

# Workflow:
# 1. [Étape 1]
# 2. [Étape 2]
# 3. [Étape 3]
```

## 📊 Monitoring & Analytics

- **[Service 1]** : [Crashlytics pour crash reports]
- **[Service 2]** : [Analytics pour tracking]
- **[Service 3]** : [Performance monitoring]

## 🤝 Contribution

1. Fork le projet
2. Créer une branche (`git checkout -b feature/[FeatureName]`)
3. Commit (`git commit -m 'Add [Feature]'`)
4. Push (`git push origin feature/[FeatureName]`)
5. Ouvrir une Pull Request

### Guidelines de Contribution

- Respecter l'architecture existante
- Écrire des tests pour les nouvelles fonctionnalités
- Documenter les changements importants
- Suivre les conventions de nommage du projet

## 📄 Licence

[Type de licence - ex: MIT, Apache 2.0, Propriétaire]

## 👥 Équipe

- **[Flutter dev ]** : [Tahirou Oumarou Ismael]

## 📞 Support

Pour toute question :
- 📧 Email : tahirouismael123@gmail.com



## 🗓️ Changelog


### Version [1.0.0] - [20 oct 2025]
- [Changements]

---

**Fait avec ❤️ en Flutter**