class Utils {
  static int calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;

    if (currentDate.month < birthDate.month || (currentDate.month == birthDate.month && currentDate.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  static double calculatePrice(
    String discountType,
    String discountAmount,
    String normalPrice,
  ) {
    double discount = double.tryParse(discountAmount) ?? 0.0;
    double price = double.tryParse(normalPrice) ?? 0.0;

    double finalPrice;
    if (discountType.toLowerCase() == 'fixed') {
      finalPrice = price - discount;
    } else if (discountType.toLowerCase() == 'percentage') {
      finalPrice = price - (price * (discount / 100));
    } else {
      finalPrice = price;
    }

    // Ensure that the final price is not negative
    if (finalPrice < 0) {
      finalPrice = 0.0;
    }

    return finalPrice;
  }

  static bool isDiscountActive({
    required String discountStartDate,
    required String discountStartTime,
    required String discountEndDate,
    required String discountEndTime,
  }) {
    DateTime startDateTime = DateTime.parse('$discountStartDate ${discountStartTime.padLeft(5, '0')}:00');
    DateTime endDateTime = DateTime.parse('$discountEndDate ${discountEndTime.padLeft(5, '0')}:00');
    DateTime now = DateTime.now();
    return now.isAfter(startDateTime) && now.isBefore(endDateTime);
  }
}
