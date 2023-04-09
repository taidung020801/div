class StaticFunction{
  ///callback quay lại màn hình gốc
  static Function? goRoot;

  static void set({
    Function? onGoRoot
  }){
    goRoot = onGoRoot;
  }
}