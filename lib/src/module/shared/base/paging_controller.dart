import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/shared/base/base_controller.dart';
import 'package:mindshaper/src/module/shared/model/page_state.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class PagingController<T> extends BaseController {
  final listItems = RxList<T>();
  int pageNumber = AppValues.defaultPageNumber;
  bool endOfList = false;
  final isEmpty = false.obs;

  initRefresh() {
    listItems.value = [];
    pageNumber = AppValues.defaultPageNumber;
    endOfList = false;
    isEmpty.value = false;
  }

  bool canLoadNextPage() {
    return !(pageState == PageState.LOADING) && !endOfList;
  }

  appendPage(List<T> items) {
    isEmpty.value = false;
    listItems.addAll(items);
    pageNumber++;
  }

  appendLastPage(List<T> items) {
    listItems.addAll(items);
    endOfList = true;
  }
}
