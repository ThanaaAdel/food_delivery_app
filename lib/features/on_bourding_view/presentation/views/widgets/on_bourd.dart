class OnBourd {
  final String title, description, image;

  OnBourd(
      {
        required this.title,
        required this.description,
        required this.image});
}
  final List<OnBourd> demo_data = [
    OnBourd(
        title: 'All Your Favorates',
        description: 'Get all your loved foods in one once place,you just place the orer we do the rest',
        image: 'assets/images/aniation cooker.webp'),
    OnBourd(title: 'All Your Favorates', description: 'Get all your loved foods in one once place,you just place the orer we do the rest',
        image: 'assets/images/chef chubby.png'),
    OnBourd(title: 'Order from choosen chef', description: 'Get all your loved foods in one once place,you just place the orer we do the rest',
        image: 'assets/images/carton chef girl.webp'),
    OnBourd(title: 'Order from choosen chef', description: 'Get all your loved foods in one once place,you just place the orer we do the rest', image: 'assets/images/girl-cooker.webp')
  ];
