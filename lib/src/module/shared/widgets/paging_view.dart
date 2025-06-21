import 'package:mindshaper/src/module/shared/base/paging_controller.dart';
import 'package:mindshaper/src/module/shared/model/page_state.dart';
import 'package:mindshaper/src/module/shared/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

///ignore: must_be_immutable
class PagingView<T> extends StatelessWidget {
  final Widget child;
  final Function() loadData;
  final Future<void> Function()? onRefresh;
  final Axis scrollDirection;
  final PagingController<T> controller;

  ScrollController? scrollController;

  final _debouncer = Debouncer(delay: Duration(milliseconds: 500));

  PagingView({
    Key? key,
    required this.child,
    required this.loadData,
    required this.controller,
    this.onRefresh,
    this.scrollController,
    this.scrollDirection = Axis.vertical,
  }) : super(key: key) {
    scrollController ??= ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollController != null) {
          var triggerFetchMoreSize = 0.85 * scrollController!.position.maxScrollExtent;

          if (scrollController!.position.pixels >= triggerFetchMoreSize &&
              (scrollController!.position.userScrollDirection == ScrollDirection.reverse) &&
              !(controller.pageState == PageState.LOADING)) {
            _debouncer.call(() {
              loadData();
            });
          }
        }

        return true;
      },
      child: onRefresh == null ? _scrollableView() : RefreshIndicator(child: _scrollableView(), onRefresh: onRefresh!),
    );
  }

  _scrollableView() {
    return Stack(
      children: [
        SingleChildScrollView(controller: scrollController, scrollDirection: scrollDirection, child: child),
        Obx(
          () =>
              controller.pageState == PageState.LOADING
                  ? Positioned(top: 0, bottom: 0, left: 0, right: 0, child: const Loading())
                  : Container(),
        ),
      ],
    );
  }
}
