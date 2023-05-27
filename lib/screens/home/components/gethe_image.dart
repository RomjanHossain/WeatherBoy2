String getTheimageUrl(int code) {
  if (code == 200 || code == 210 || code == 211) {
    return 'Light';
  } else if (code == 201 ||
      code == 202 ||
      code == 230 ||
      code == 231 ||
      code == 232) {
    return 'Lightning Rain';
  } else if (code == 212 || code == 221) {
    return 'Lightning';
  } else if (code == 611 ||
      code == 612 ||
      code == 300 ||
      code == 301 ||
      code == 313 ||
      code == 310 ||
      code == 500) {
    return 'Rain';
  } else if (code == 302 ||
      code == 311 ||
      code == 312 ||
      code == 313 ||
      code == 314 ||
      code == 501 ||
      code == 502 ||
      code == 503 ||
      code == 504 ||
      code == 511 ||
      code == 520 ||
      code == 521 ||
      code == 522 ||
      code == 531 ||
      code == 321) {
    return 'Rain Water';
  } else if (code == 600 || code == 601 || code == 620) {
    return 'Snow';
  } else if (code == 602 || code == 621 || code == 622) {
    return 'Snowfall';
  } else if (code == 615 || code == 616) {
    return 'Rain Snow Water';
  } else if (code == 800) {
    return 'Sun';
  } else if (code == 781 || code == 771) {
    return 'Windy';
  }
  return 'Cloud';
}

List<String> getTheLottieAnimateUrl(int code) {
  final List<String> lottieUrl = <String>[];
  if (code >= 221 && code < 230) {
    lottieUrl.add('assets/lottie/thunder.json');
  } else if (code == 231 || code == 230) {
    lottieUrl.add('assets/lottie/thunder.json');
    lottieUrl.add('assets/lottie/rain-slow.json');
  } else if (code == 232) {
    lottieUrl.add('assets/lottie/thunder.json');
    lottieUrl.add('assets/lottie/rain-fast.json');
  } else if (code == 300 ||
      code == 301 ||
      code == 613 ||
      code == 612 ||
      code == 511 ||
      code == 521 ||
      code == 500 ||
      code == 520 ||
      code == 611) {
    lottieUrl.add('assets/lottie/rain-slow.json');
  } else if (code == 302 ||
      code == 531 ||
      code == 522 ||
      code == 503 ||
      code == 501 ||
      code == 502 ||
      code == 321 ||
      code == 311 ||
      code == 504) {
    lottieUrl.add('assets/lottie/rain-fast.json');
  } else if (code == 781) {
    lottieUrl.add('assets/lottie/tornado.json');
  } else if (code == 622 ||
      code == 621 ||
      code == 620 ||
      code == 602 ||
      code == 601 ||
      code == 600) {
    lottieUrl.add('assets/lottie/snow.json');
  } else if (code == 616 || code == 615) {
    lottieUrl.add('assets/lottie/snow.json');
    lottieUrl.add('assets/lottie/rain-slow.json');
  } else if (code == 314 ||
      code == 313 ||
      code == 312 ||
      code == 310 ||
      code == 302) {
    lottieUrl.add('assets/lottie/rain-slow.json');
    lottieUrl.add('assets/lottie/rain-fast.json');
  }
  return lottieUrl;
}
