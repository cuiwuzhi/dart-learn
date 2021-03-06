void main() {
  var xm = Xiaomi();
  xm.startup();
  xm.shutdown();
  xm.sms();
}

class Phone {
  void startup() {
    print('开机');
  }
  void shutdown() {
    print('关机');
  }
}

class AndroidPhone extends Phone {
  void startup() {
    super.startup();
    print('AndroidPhone 开机');
  }
}

class AndroidSystem {
  void call() {
    print('android call');
  }
}

class Weixin {
  void sms() {
    print('weixin sms');
  }
}

class QQ {
  void sms() {
    print('qq sms');
  }
}

class Xiaomi extends AndroidPhone with AndroidSystem, Weixin, QQ {
  void startup() {
    super.startup();
    print('AndroidPhone 开机');
  }
}