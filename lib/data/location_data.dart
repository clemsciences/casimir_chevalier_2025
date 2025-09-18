import 'package:casimir_chevalier_2025/models/entities/location.dart';

class LocationData {

  static List<Location> locations = [
    Location(name: "Azay", longitude: null, latitude: null, description: "Forêt d'Azay", scale: LocationScale.city),
    Location(name: "Saint-Symphorien", longitude: null, latitude: null, description: "Ville qui a fusionné avec Tours en ...", scale: LocationScale.city),
    Location(name: "Saint-Avertin", scale: LocationScale.city, description: "Ville au sud-est de Tours."),
    Location(name: "Tours", scale: LocationScale.city, description: "Préfecture d'Indre-et-Loire."),
    Location(name: "Vosges", description: "Massif montagneux de l'est de la France.", scale: LocationScale.region),
    Location(name: "la Vendée", description: "Département français des Pays de la Loire.", scale: LocationScale.region),
    Location(name: "Brésil", description: "Le plus grand pays d'Amérique du Sud.", scale: LocationScale.country),
    Location(name: "Ecosse", description: "Membre du Royaume-Uni.", scale: LocationScale.country),
    Location(name: "Suisse", description: "Pays frontalier.", scale: LocationScale.country),
    Location(name: "Indes", description: "Colonie britannique en Asie du sud.", scale: LocationScale.country),
    Location(name: "Sacré-Cœur de Marmoutier", description: "", scale: LocationScale.place),
    Location(name: "chapelle Saint-Martin", description: "Bâtiment provisoire dédié au culte de saint Martin.", scale: LocationScale.place),
    Location(name: "Archevêché", description: "Siège de l'archevêque de Tours.", scale: LocationScale.place),
    Location(name: "Notre-Dame-la-Riche", description: "Eglise de Tours.", scale: LocationScale.place),
    Location(name: "Sacré-Cœur de Montmartre", description: "Basilique mineure de Paris.", scale: LocationScale.place),
    Location(name: "Danube", description: "Le plus long fleuve d'Europe.", scale: LocationScale.river),
    Location(name: "Loire", description: "Le plus long fleuve de France.", scale: LocationScale.river),
    Location(name: "Afrique", description: "Continent", scale: LocationScale.continent),
    Location(name: "rue d'Enger", description: "", scale: LocationScale.street),
    Location(name: "rue Rapin", description: "", scale: LocationScale.street),
    Location(name: "rue de la Bourde", description: "Rue à proximité des Halles de Tours.", scale: LocationScale.street),
    Location(name: "rue de l'Arsenal", description: "", scale: LocationScale.street),
    Location(name: "rue Descartes", description: "Rue nouvelle traversant l'ancienne collégiale Saint-Martin à Tours.", scale: LocationScale.street),
    Location(name: "rue Néricault-Destouches", description: "", scale: LocationScale.street),
    Location(name: "boulevard Béranger", description: "", scale: LocationScale.street),
    Location(name: "rue de la Scellerie", description: "", scale: LocationScale.street),
    Location(name: "rue du Commerce", description: "Rue de Tours", scale: LocationScale.street),
    Location(name: "avenue de Grammont", description: "Grande avenue de Tours", scale: LocationScale.street),
    Location(name: "rue Saint-Martin", description: "", scale: LocationScale.street),
    Location(name: "rue de l'Ancienne Intendance", description: "", scale: LocationScale.street),
    Location(name: "rue des Halles", description: "", scale: LocationScale.street),
    Location(name: "place d’Aumont", description: "", scale: LocationScale.street),
    Location(name: "rue Nationale", description: "", scale: LocationScale.street),
    Location(name: "Ouvroir de Saint-Martin", description: "", scale: LocationScale.place),
    Location(name: "la chaisière", description: "", scale: LocationScale.place),
    Location(name: "église Saint-Clément", description: "", scale: LocationScale.place),
    Location(name: "boulevard Béranger", description: "", scale: LocationScale.place),
    Location(name: "magasin Pigeonneau", description: "", scale: LocationScale.place),
    Location(name: "Annales de la propagation de la Foi", description: "", scale: LocationScale.place),
    Location(name: "Grands Magasins de blanc", description: "", scale: LocationScale.place),
    Location(name: "Hôtel du Faisan", description: "Hôtel présent le long ", scale: LocationScale.place),
    Location(name: "Rampe de la Tranchée", description: "", scale: LocationScale.place),
    Location(name: "descente de la Tranchée", description: "", scale: LocationScale.place),
    Location(name: "église Saint-Clément", description: "Eglise aujourd'uhi détruite près des Halles de Tours.", scale: LocationScale.place),
    Location(name: "Aubrebie", description: "", scale: LocationScale.place),
    Location(name: "Jourdain", description: "", scale: LocationScale.place),
    Location(name: "pensionnat du Sacré-Cœur de Marmoutier", description: "", scale: LocationScale.place),
    Location(name: "Basilique de Saint-Martin", description: "", scale: LocationScale.place),
    Location(name: "tour Charlemagne", description: "Element encore existant de l'ancienne collégiale Saint-Martin.", scale: LocationScale.place),
    Location(name: "tour de l'Horloge", description: "Element encore existant de l'ancienne collégiale Saint-Martin.", scale: LocationScale.place),
    Location(name: "Jardin de la France", description: "Surnom donné ", scale: LocationScale.place),
    Location(name: "Hôtel de ville", description: "", scale: LocationScale.place),
    Location(name: "Marmoutier", description: "", scale: LocationScale.place),
    Location(name: "lieu dit la Croix-du-Rond", description: "", scale: LocationScale.place),
    Location(name: "la Fabrique", description: "", scale: LocationScale.place),
    Location(name: "Marche Indienne de Sellénick", description: "", scale: LocationScale.place),
    Location(name: "ligne de Paris-Bordeaux", description: "", scale: LocationScale.place),
    Location(name: "Port-de-Piles", description: "", scale: LocationScale.place),
    Location(name: "Lycée de jeunes filles", description: "", scale: LocationScale.place),
    Location(name: "Café de la Ville", description: "", scale: LocationScale.place),
    Location(name: "la Ménardière", description: "Nom d'une ferme.", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
    // Location(name: "", description: "", scale: LocationScale.place),
  ];

  List<Location> cities = locations.where((element) => element.scale == LocationScale.city).toList();

  List<Location> citiesOutOfTouraine = [
    Location(name: "Angers", description: "Capitale de l'Anjou", scale: LocationScale.city),
    Location(name: "Châtellerault", description: "", scale: LocationScale.city),
    Location(name: "Grenoble", description: "", scale: LocationScale.city),
    Location(name: "Paris", description: "", scale: LocationScale.city),
    Location(name: "Poitiers", description: "", scale: LocationScale.city),
    Location(name: "Toulon", description: "", scale: LocationScale.city),
    Location(name: "Vichy", description: "", scale: LocationScale.city),
    Location(name: "Blaye", description: "", scale: LocationScale.city, url: "https://fr.wikipedia.org/wiki/Blaye")
  ];
  
  List<Location> citiesOutOfFrance = [
    Location(name: "Alcazar", description: "", scale: LocationScale.city),
    Location(name: "Bologne", description: "", scale: LocationScale.city),
    Location(name: "Héliopolis", description: "", scale: LocationScale.city),
    Location(name: "Prague", description: "", scale: LocationScale.city),
    Location(name: "Ravenne", description: "", scale: LocationScale.city),
    Location(name: "Rome", description: "", scale: LocationScale.city),
    Location(name: "Tonkin", description: "", scale: LocationScale.city)
  ];
  
  List<Location> departments = locations.where((element) => element.scale == LocationScale.region).toList();

  List<Location> countries = locations.where((element) => element.scale == LocationScale.country).toList();

  List regions = [];

  List continents = locations.where((element) => element.scale == LocationScale.continent).toList();

  List existingPlaces = [];

  List fictionalPlaces = [];
  
  List<Location> religiousBuildings = [

  ];

  List<Location> rivers = locations.where((element) => element.scale == LocationScale.river).toList();


  Map<String, dynamic> toJson() {
    return {
      'cities': cities.map((item) => item.toJson()).toList(),
      'citiesOutOfTouraine': citiesOutOfTouraine.map((item) => item.toJson()).toList(),
      'citiesOutOfFrance': citiesOutOfFrance.map((item) => item.toJson()).toList(),
      'departments': departments.map((item) => item.toJson()).toList(),
      'countries': countries.map((item) => item.toJson()).toList(),
    };
  }
}