enum AppSubPaths {
  home("${AppRoutes.main}${AppRoutes.home}"),
  ;

  final String absolutePath;
  const AppSubPaths(this.absolutePath);
}

class AppRoutes {
  static const initial = '';

  static const main = '/';
  // sub paths of main. thus why we didn't prefix them with /
  static const home = initial;

  // new screens
  static const signUpPath = '/';
  static const signInPath = '/sign-in';

  static bool isPath(String path, RegExp pattern, [bool exact = false]) {
    if (exact) return path.replaceFirst(pattern, '').isEmpty;
    return pattern.matchAsPrefix(path) != null;
  }

  static bool isInMessagesPath(String path, [bool exact = true]) {
    const regex = r'/chat/[0-9]*';
    return isPath(path, RegExp(regex, caseSensitive: false), exact);
  }

  static String originalPath(AppSubPaths subPath) {
    return subPath.absolutePath;
  }
}
