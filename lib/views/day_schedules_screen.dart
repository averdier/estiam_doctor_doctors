import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:estiam_doctor_doctors/redux/models/app_state.dart';
import 'package:redux/redux.dart';

class DayTab extends StatelessWidget {
    DayTab({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
//        return new StoreConnector<AppState, _ViewModel>(
//            converter: (Store<AppState> store) {
//                _ViewModel vm = _ViewModel.fromStore(store);
//                return vm;
//            }, builder: (BuildContext context, vm) {
//          return Scaffold(
//            appBar: AppBar(title: Text('Baby Name Votes')),
//            body: _buildList(context ,vm.products),
//          );
//        });
      return new Text('day tab');
    }

//    Widget _buildList(BuildContext context, List<Product> products) {
//      print(products);
//      if (products == null) return LinearProgressIndicator();
//
//      return ListView.builder(
//        itemCount: products.length,
//        itemBuilder: (context, i) {
//          return _buildListItem(context, products.elementAt(i));
//        }
//      );
//    }
//
//    Widget _buildListItem(BuildContext context, Product product) {
////      final record = Record.fromSnapshot(data);
//
//      return Padding(
//        key: ValueKey(product.name),
//        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//        child: Container(
//          decoration: BoxDecoration(
//            border: Border.all(color: Colors.grey),
//            borderRadius: BorderRadius.circular(5.0),
//          ),
//          child: ListTile(
//            title: Text(product.name),
//            trailing: Text(product.price.toString()),
//          ),
//        ),
//      );
//    }
//}
//
//class _ViewModel {
//    final List<Product> products;
//
//    _ViewModel({
//        @required this.products,
//    });
//
//    static _ViewModel fromStore(Store<AppState> store) {
//        return new _ViewModel(products: store.state.products);
//    }
}
