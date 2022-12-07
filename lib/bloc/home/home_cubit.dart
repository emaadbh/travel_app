import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:travel/model/product_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<ProductModel> _cartProduct = [];
  List<ProductModel> get cartProduct => _cartProduct;

  void addProduct(ProductModel data) {
    _cartProduct.add(data);
    emit(HomeAdded());
  }

  void removeProduct(ProductModel data) {
    _cartProduct.remove(data);
    emit(HomeAdded());
  }
}
