import 'package:flutter/material.dart';

import 'bot_toast.dart';

class ErrorHelper {
  final Map<String, String> _errorMap = {
    "partner_not_found":
        "Incorrect email id or password entered. Please try again.",
    "profile_exists":
        "An account already exists with this email id or number. Please try again",
    "password_updated": "Password updated",
    "online_payment_not_received":
        "Online payment not received from the customer. Please ask customer to pay online.",
    "lead_update_error": "Error occured. Please try again later",
  };
  void handleError(String errorCode) {
    try {
      var message = _errorMap[errorCode];
      if (message == null) return;
      showToast(message);
    } catch (error, stack) {
      debugPrint(error.toString());
    }
  }
}
