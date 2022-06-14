import 'package:flutter/material.dart';
import 'package:fun_novel/pages/base/base_widget.dart';
import 'package:fun_novel/pages/book/book_ctr.dart';
import 'package:fun_novel/pages/book/phone/book_phone_page.dart';

/// @Author: gstory
/// @CreateDate: 2022/6/11 11:03
/// @Email gstory0404@gmail.com
/// @Description: dart类作用描述 

class BookPage extends BaseWidget<BookCtr>{

  @override
  Widget desktopPage(BuildContext context) {
    return Container();
  }

  @override
  Widget phonePage(BuildContext context) {
    return BookPhonePage();
  }

}

