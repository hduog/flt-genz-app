import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const colorBackground = Color.fromRGBO(255, 255, 255, 1);
const colorBackgoundNavBar = Color.fromRGBO(255, 255, 255, 1);

const colorIconActive = Color.fromRGBO(80, 150, 241, 1);
const colorIconDefault = Color.fromRGBO(101, 101, 101, 1);
const colorTextDefault = Color.fromRGBO(0, 0, 0, 1);
const colorBackgroundCard = Color.fromRGBO(7, 121, 184, 0.05);
const colorTextSubPart = Color.fromRGBO(150, 148, 148, 1);
const colorTextCateBlog = Color.fromRGBO(4, 91, 206, 1);
const colorTextHeader = Color.fromRGBO(15, 101, 214, 1);
const colorIconButtonOverlay = Color.fromRGBO(188, 217, 255, 1);

const colorButton = Color.fromRGBO(0, 84, 255, 1);

const colorError = Color.fromRGBO(224, 60, 55, 1);

class Constants {
  const Constants._();
  static final navigatorKey = GlobalKey<NavigatorState>();
  //TODO Constants
  static const String stringEmpty = "";

  static const int timeConnectTimeout = 15000;
  static const int timeSendTimeout = 15000;
  static const int timeReceiveTimeout = 15000;
  static const int noErrorCode = -1;
  static const int appTimeOutError = -4;
  static const int noInternet = 0;
  static const int errorCode400 = 400;
  static const int errorCode404 = 404;
  static const int errorCode500 = 500;
  static const int errorCode503 = 503;
  static const int errorCode504 = 504;
  static const String awsUrl =
      'https://mygenzmentalheath.s3.ap-southeast-2.amazonaws.com/';
  static const String typeSoundSendSorrowId = 'genzmth@786e342ade';
  static const String typeSoundNaturalId = 'genzmth@987sidh';

  static const String PUBLIC = "genzmth@pms_p_345432";
  static const String PRIVATE = "genzmth@pms_p_887123";
  static const String FOLLOW = "genzmth@pms_p_6673892";
  static const String ID_CHAT_AI = "0308051202024GZMTH";
}

String? formatDate(String? dateStr) {
  if (dateStr == null) return null;
  
  final dateTime = DateTime.parse(dateStr);
  final vietnamTime = dateTime.toUtc().add(const Duration(hours: 7));
  final formatter = DateFormat('dd/MM/yyyy HH:mm');
  return formatter.format(vietnamTime);
}

String? formatBirth(String? dateStr) {
  if (dateStr == null) return null;
  final dateTime = DateTime.parse(dateStr).toLocal();
  final formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(dateTime);
}
