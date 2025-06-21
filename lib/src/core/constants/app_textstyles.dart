import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kSyne500W16S = TextStyle(
  fontFamily: 'Syne',
  fontSize: AppValues.fontSize_16,
  fontWeight: FontWeight.w500,
  color: AppColors.baseWhite,
  fontFeatures: [FontFeature.liningFigures()],
);

const kError = TextStyle(fontSize: AppValues.fontSize_12, fontWeight: FontWeight.w400, color: AppColors.red600);
// ----------------------------------------------------------
final text2xlMedium = GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.baseWhite);

final text2xlSemiBold = GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.green500);

final kTextSMNormal = GoogleFonts.inter(
  fontSize: AppValues.fontSize_14,
  fontWeight: FontWeight.w400,
  color: AppColors.slate600,
);

final kTextSMMedium = GoogleFonts.inter(
  fontSize: AppValues.fontSize_14,
  fontWeight: FontWeight.w500,
  color: AppColors.slate600,
);

final kTextSMBold = GoogleFonts.poppins(
  fontSize: AppValues.fontSize_16,
  fontWeight: FontWeight.w600,
  color: AppColors.slate900,
);
