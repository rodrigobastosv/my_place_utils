import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

void showSuccessToast(String message) => showToastWidget(
      _getDefaultToastContainer(
        message,
        const Color(0xFF00C851),
      ),
      position: ToastPosition.bottom,
    );

void showWarningToast(String message) => showToastWidget(
      _getDefaultToastContainer(
        message,
        const Color(0xFFFFBB33),
      ),
      position: ToastPosition.bottom,
    );

void showErrorToast(String message) => showToastWidget(
      _getDefaultToastContainer(
        message,
        const Color(0xFFFF4444),
      ),
      position: ToastPosition.bottom,
    );

Widget _getDefaultToastContainer(String message, Color color) => Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 48,
        ),
        child: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
