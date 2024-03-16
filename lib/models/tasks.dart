class TasksModel {
  final String? image;
  final String? name;
  final String? description;

  TasksModel({required this.image, required this.name ,
  required this.description});
}

List<TasksModel> tasks = [
  TasksModel(
    image: 'task1.jpg',
    name: ' Bilim Arastirmalari',
    description: 'İnsanlar, uzaktaki gezegenleri ve uyduları \nincelemek amacıyla uzay araştırma görevlerine katılabilirler. \nÖzellikle, Mars ve Jüpiterin uyduları (Europa, Ganymede gibi) üzerinde bilimsel araştırmalar yapılabilir.'
  ),
  TasksModel(
    image: 'task2.jpg',
    name: 'Uzay Kolonileştirmesi',
    description: 'Gezegenlerde uzay kolonileri kurma çalışmaları,\n insanların uzun vadeli görevler olarak bir gezegene yerleşmelerini içerebilir.\n Örneğin, Marsta bir koloni kurma projeleri düşünülebilir.'
  ),
  TasksModel(
    image: 'task3.jpg',
    name: 'Astrofizik  Gözlemleri',
    description: 'İnsanlar, uzay teleskopları veya \n uzak gözlem istasyonları üzerinden astrofizik ve astronomi gözlemlerinde bulunabilirler. \nBu gözlemler, evrendeki diğer gezegenler ve galaksiler hakkında daha fazla bilgi sağlamak amacıyla gerçekleştirilebilir.'
  ),
  TasksModel(
    image: 'task44.jpg',
    name: 'Teknoloji Madencilik',
    description: 'Gezegenlerin kaynakları, özellikle de \nay ve asteroidler, insanlar tarafından madencilik faaliyetlerine tabi tutulabilir. \nBu, değerli minerallerin ve diğer kaynakların çıkarılmasını içerebilir.'
  ),
  TasksModel(
    image: 'task5.jpg',
    name: 'Uzayda Enerji Üretimi',
    description: 'Güneş enerjisi ve diğer uzay kaynakları, \ngezegenlerde enerji üretimi amacıyla kullanılabilir. \nBu, uzaya yerleştirilen güneş panelleri veya enerji toplama cihazları ile mümkün olabilir.'
  ),
  TasksModel(
    image: 'task6.jpg',
    name: 'Uzayda Tarim ',
    description: 'Gezegenlerdeki uzun vadeli görevlerde, \ninsanlar kendi yiyeceklerini yetiştirebilirler.\n Uzayda tarım, gezegen kolonilerinde sürdürülebilir bir yaşam sağlamak amacıyla önemli bir faktör olabilir.'
  ),
  TasksModel(
    image: 'task7.jpg',
    name: 'Uzay Turizmi ve Eğlence',
    description: 'Gezegenler arası seyahat ve turizm, \ninsanların farklı gezegenleri ziyaret etmelerini sağlayabilir. \nUzay otelleri veya turistik mekanlar, insanların uzaya ilgi duymalarını teşvik edebilir.'
  ),
];
String taskNews =
    '"Uzay keşfi, gezegenlerin gizemli dünyalarını \naraştırmamızı sağlarken, gelecekteki görevlerimizle birlikte bilinmeyenlerin sınırlarını zorlamaya devam ediyor. "';
