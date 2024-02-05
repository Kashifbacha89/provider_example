class BreadCrumbController{
  bool? isActive;
  String? name;

  BreadCrumbController({required this.isActive, required this.name});
  void activate(){
    isActive=true;
  }
}