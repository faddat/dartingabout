// Copyright (c) 2017, faddat. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'hello_dialog/hello_dialog.dart';
import 'post/post.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [Post])

class AppComponent {
  var name = 'Angular';
  GetStuff {

  }
}