import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

// ─────────────────────────────────────────────
// MODELO DE DATOS
// ─────────────────────────────────────────────
class TouristSite {
  final String name;
  final String location;
  final String country;
  final String description;
  final String imageUrl;
  final String mapsUrl;
  final double latitude;
  final double longitude;

  const TouristSite({
    required this.name,
    required this.location,
    required this.country,
    required this.description,
    required this.imageUrl,
    required this.mapsUrl,
    required this.latitude,
    required this.longitude,
  });
}

const List<TouristSite> touristSites = [
  TouristSite(
    name: 'Torre Eiffel',
    location: 'París, Francia',
    country: '🇫🇷',
    description:
        'El monumento más icónico de Francia, construido entre 1887 y 1889 '
        'por Gustave Eiffel. Mide 330 metros y recibe más de 7 millones de '
        'visitantes al año. Es símbolo del romanticismo y la ingeniería moderna.',
    imageUrl: 'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?w=600',
    mapsUrl: 'https://maps.google.com/?q=Torre+Eiffel,+Paris,+France',
    latitude: 48.8584,
    longitude: 2.2945,
  ),
  TouristSite(
    name: 'Machu Picchu',
    location: 'Cusco, Perú',
    country: '🇵🇪',
    description:
        'Ciudad inca del siglo XV ubicada en la Cordillera de los Andes a '
        '2.430 metros sobre el nivel del mar. Declarada Patrimonio de la '
        'Humanidad por la UNESCO y Maravilla del Mundo Moderno.',
    imageUrl: 'https://images.unsplash.com/photo-1526392060635-9d6019884377?w=600',
    mapsUrl: 'https://maps.google.com/?q=Machu+Picchu,+Peru',
    latitude: -13.1631,
    longitude: -72.5450,
  ),
  TouristSite(
    name: 'Coliseo Romano',
    location: 'Roma, Italia',
    country: '🇮🇹',
    description:
        'El anfiteatro más grande jamás construido, inaugurado en el año 80 d.C. '
        'Tiene capacidad para 50.000 espectadores y fue escenario de gladiadores '
        'y espectáculos públicos durante siglos.',
    imageUrl: 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?w=600',
    mapsUrl: 'https://maps.google.com/?q=Colosseum,+Rome,+Italy',
    latitude: 41.8902,
    longitude: 12.4922,
  ),
  TouristSite(
    name: 'Gran Muralla China',
    location: 'Beijing, China',
    country: '🇨🇳',
    description:
        'Serie de fortificaciones construidas a lo largo de 21.196 km durante '
        'siglos para proteger los estados chinos. Es uno de los proyectos de '
        'construcción más impresionantes de la historia de la humanidad.',
    imageUrl: 'https://images.unsplash.com/photo-1508804185872-d7badad00f7d?w=600',
    mapsUrl: 'https://maps.google.com/?q=Great+Wall+of+China,+Beijing',
    latitude: 40.4319,
    longitude: 116.5704,
  ),
  TouristSite(
    name: 'Taj Mahal',
    location: 'Agra, India',
    country: '🇮🇳',
    description:
        'Mausoleo de mármol blanco construido entre 1632 y 1653 por el emperador '
        'Shah Jahan en memoria de su esposa. Considerado el mayor ejemplo de '
        'arquitectura mogola y símbolo del amor eterno.',
    imageUrl: 'https://images.unsplash.com/photo-1564507592333-c60657eea523?w=600',
    mapsUrl: 'https://maps.google.com/?q=Taj+Mahal,+Agra,+India',
    latitude: 27.1751,
    longitude: 78.0421,
  ),
  TouristSite(
    name: 'Sagrada Familia',
    location: 'Barcelona, España',
    country: '🇪🇸',
    description:
        'Basílica diseñada por Antoni Gaudí, cuya construcción comenzó en 1882 '
        'y continúa hasta hoy. Combina el estilo gótico con el Art Nouveau. '
        'Es el monumento más visitado de España.',
    imageUrl: 'https://images.unsplash.com/photo-1583779457094-ab6f77f7bf57?w=600',
    mapsUrl: 'https://maps.google.com/?q=Sagrada+Familia,+Barcelona,+Spain',
    latitude: 41.4036,
    longitude: 2.1744,
  ),
  TouristSite(
    name: 'Cataratas del Iguazú',
    location: 'Misiones, Argentina',
    country: '🇦🇷',
    description:
        'Sistema de 275 saltos de agua en la frontera entre Argentina y Brasil, '
        'con una altura de hasta 82 metros. Son las cataratas más anchas del '
        'mundo y Patrimonio Natural de la UNESCO.',
    imageUrl: 'https://images.unsplash.com/photo-1601000938259-b9f392cd4568?w=600',
    mapsUrl: 'https://maps.google.com/?q=Iguazu+Falls,+Argentina',
    latitude: -25.6953,
    longitude: -54.4367,
  ),
  TouristSite(
    name: 'Cristo Redentor',
    location: 'Río de Janeiro, Brasil',
    country: '🇧🇷',
    description:
        'Estatua de Jesucristo de 38 metros ubicada en la cima del cerro '
        'Corcovado a 710 metros sobre el nivel del mar. Inaugurada en 1931, '
        'es una de las Nuevas Siete Maravillas del Mundo Moderno.',
    imageUrl: 'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?w=600',
    mapsUrl: 'https://maps.google.com/?q=Cristo+Redentor,+Rio+de+Janeiro,+Brazil',
    latitude: -22.9519,
    longitude: -43.2105,
  ),
  TouristSite(
    name: 'Petra',
    location: "Ma'an, Jordania",
    country: '🇯🇴',
    description:
        'Ciudad arqueológica excavada en roca rojiza por los nabateos alrededor '
        'del siglo IV a.C. Conocida como la "Ciudad Rosa" por el color de su '
        'piedra. Es Patrimonio de la UNESCO y Maravilla del Mundo Moderno.',
    imageUrl: 'https://images.unsplash.com/photo-1579606032821-4d6b0b6e7e7e?w=600',
    mapsUrl: 'https://maps.google.com/?q=Petra,+Jordan',
    latitude: 30.3285,
    longitude: 35.4444,
  ),
  TouristSite(
    name: 'Mitad del Mundo',
    location: 'Quito, Ecuador',
    country: '🇪🇨',
    description:
        'Complejo turístico situado exactamente en la línea ecuatorial, a 13 km '
        'al norte de Quito, a 2.483 metros de altitud. Aquí puedes pararte en '
        'dos hemisferios al mismo tiempo y vivir curiosos fenómenos físicos.',
    imageUrl: 'https://images.unsplash.com/photo-1585168298049-eb77eddca776?w=600',
    mapsUrl: 'https://maps.google.com/?q=Mitad+del+Mundo,+Quito,+Ecuador',
    latitude: -0.0022,
    longitude: -78.4558,
  ),
];

// ─────────────────────────────────────────────
// APP — StatelessWidget
// ─────────────────────────────────────────────
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios Turísticos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1A6B5A)),
        useMaterial3: true,
      ),
      home: const TouristHomePage(),
    );
  }
}

// ─────────────────────────────────────────────
// PÁGINA PRINCIPAL — StatefulWidget
// ─────────────────────────────────────────────
class TouristHomePage extends StatefulWidget {
  const TouristHomePage({super.key});

  @override
  State<TouristHomePage> createState() => _TouristHomePageState();
}

class _TouristHomePageState extends State<TouristHomePage> {
  final Set<int> _favorites = {};

  void _toggleFavorite(int index) {
    setState(() {
      if (_favorites.contains(index)) {
        _favorites.remove(index);
      } else {
        _favorites.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🌍 Sitios Turísticos',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                const SizedBox(width: 4),
                Text(
                  '${_favorites.length}',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(touristSites.length, (index) {
            final site = touristSites[index];
            return Column(
              children: [
                // ── Foto ──
                ImageSection(image: site.imageUrl),
                // ── Título + favorito ──
                TitleSection(
                  name: '${site.country}  ${site.name}',
                  location: site.location,
                  isFavorite: _favorites.contains(index),
                  onFavoriteToggle: () => _toggleFavorite(index),
                ),
                // ── Botones ──
                ButtonSection(mapsUrl: site.mapsUrl),
                // ── Descripción ──
                TextSection(description: site.description),
                // ── Geolocalización ──
                GeoSection(
                  latitude: site.latitude,
                  longitude: site.longitude,
                  mapsUrl: site.mapsUrl,
                ),
                const Divider(height: 1, thickness: 1),
              ],
            );
          }),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
// IMAGEN — StatelessWidget
// ─────────────────────────────────────────────
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          height: 240,
          color: Colors.grey[200],
          child: const Center(child: CircularProgressIndicator()),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: 240,
          color: Colors.grey[300],
          child: const Center(
            child: Icon(Icons.image_not_supported, size: 60, color: Colors.grey),
          ),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────
// TÍTULO CON FAVORITO — StatelessWidget
// El estado del favorito viene del padre
// ─────────────────────────────────────────────
class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  final String name;
  final String location;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          // ── Botón favorito (StatefulWidget con animación) ──
          FavoriteWidget(
            isFavorite: isFavorite,
            onToggle: onFavoriteToggle,
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
// FAVORITO — StatefulWidget
// Maneja la animación interna de la estrella
// ─────────────────────────────────────────────
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({
    super.key,
    required this.isFavorite,
    required this.onToggle,
  });

  final bool isFavorite;
  final VoidCallback onToggle;

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scale = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.5), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 1.5, end: 1.0), weight: 50),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    _controller.forward(from: 0);
    widget.onToggle();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ScaleTransition(
          scale: _scale,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              widget.isFavorite ? Icons.star : Icons.star_border,
              color: Colors.red[500],
              size: 28,
            ),
            onPressed: _handleTap,
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────
// BOTONES — StatelessWidget
// ─────────────────────────────────────────────
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.mapsUrl});

  final String mapsUrl;

  Future<void> _launchMaps(BuildContext context) async {
    final Uri uri = Uri.parse(mapsUrl);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No se pudo abrir Google Maps'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          GestureDetector(
            onTap: () => _launchMaps(context),
            child: ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
// BOTÓN CON TEXTO — StatelessWidget
// ─────────────────────────────────────────────
class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────
// DESCRIPCIÓN — StatelessWidget
// ─────────────────────────────────────────────
class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

// ─────────────────────────────────────────────
// GEOLOCALIZACIÓN — StatelessWidget
// Muestra lat/lon y botón para abrir en Maps
// ─────────────────────────────────────────────
class GeoSection extends StatelessWidget {
  const GeoSection({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.mapsUrl,
  });

  final double latitude;
  final double longitude;
  final String mapsUrl;

  Future<void> _launchMaps(BuildContext context) async {
    final Uri uri = Uri.parse(mapsUrl);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No se pudo abrir Google Maps')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 24),
      child: InkWell(
        onTap: () => _launchMaps(context),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.location_on, color: Colors.red[600], size: 20),
              const SizedBox(width: 8),
              Text(
                'Lat: ${latitude.toStringAsFixed(4)}   Lon: ${longitude.toStringAsFixed(4)}',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[700],
                  fontFamily: 'monospace',
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.open_in_new, size: 14, color: Colors.grey[500]),
            ],
          ),
        ),
      ),
    );
  }
}