class ValidatorManager {
  // Gender
  static String? validateGender(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.genderEmpty;
    }
    return null;
  }

  // First Name
  static String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.firstNameEmpty;
    }
    return null;
  }

  // Last Name
  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.lastNameEmpty;
    }
    return null;
  }

  // Middle Name
  static String? validateMiddleName(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.middleNameEmpty;
    }
    return null;
  }

  // Mobile Number
  static String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.mobileEmpty;
    }
    if (value.length != 10) {
      return ValidatorString.mobileInvalid;
    }
    return null;
  }

  // Occupation
  static String? validateOccupation(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.occupationEmpty;
    }
    return null;
  }

  // Email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.emailEmpty;
    }
    return null;
  }

  // Address Line 1
  static String? validateAddressLine1(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.addressLine1Empty;
    }
    return null;
  }

  // Address Line 2
  static String? validateAddressLine2(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.addressLine2Empty;
    }
    return null;
  }

// Area
  static String? validateArea(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.areaEmpty;
    }
    return null;
  }

  // City
  static String? validateCity(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.cityEmpty;
    }
    return null;
  }

  // State
  static String? validateState(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.stateEmpty;
    }
    return null;
  }

  // Pincode
  static String? validatePostCode(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.pincodeEmpty;
    }
    return null;
  }

  // Country
  static String? validateCountry(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.countryEmpty;
    }
    return null;
  }

  // Password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.passwordEmpty;
    }
    return null;
  }

  // Business Name
  static String? validateBusinessName(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.businessNameEmpty;
    }
    return null;
  }

  // Upload Logo
  static String? validateUploadLogo(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.uploadLogoEmpty;
    }
    return null;
  }

  // Website
  static String? validateWebsite(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.websiteEmpty;
    }
    return null;
  }

  // Business Category
  static String? validateBusinessCategory(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.businessCategoryEmpty;
    }
    return null;
  }

  // Business Sub Category
  static String? validateBusinessSubCategory(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.businessSubCategoryEmpty;
    }
    return null;
  }

  // Adj Factor
  static String? validateAdjFactor(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.adjFactorEmpty;
    }
    return null;
  }

  // About
  static String? validateAbout(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.aboutEmpty;
    }
    return null;
  }

  // Product or Services
  static String? validateProductOrServices(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.productOrServicesEmpty;
    }
    return null;
  }

  // Gives
  static String? validateGives(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.givesEmpty;
    }
    return null;
  }

  // Asks
  static String? validateAsks(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.asksEmpty;
    }
    return null;
  }

  // Date of Birth
  static String? validateDateofBirth(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.dateofBirthEmpty;
    }
    return null;
  }

  // Facebook
  static String? validateFacebook(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.facebookEmpty;
    }
    return null;
  }

  // Instagram
  static String? validateInstagram(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.instagramEmpty;
    }
    return null;
  }

  // LinkedIn
  static String? validateLinkedIn(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorString.linkedInEmpty;
    }
    return null;
  }
}

class ValidatorString {
  static const String firstNameEmpty = 'First Name cannot be empty';
  static const String genderEmpty = 'Gender cannot be empty';
  static const String lastNameEmpty = 'Last Name cannot be empty';
  static const String middleNameEmpty = 'Middle Name cannot be empty';
  static const String mobileEmpty = 'Mobile cannot be empty';
  static const String mobileInvalid = 'Mobile is invalid';
  static const String occupationEmpty = 'Occupation cannot be empty';
  static const String emailEmpty = 'Email cannot be empty';
  static const String addressLine1Empty = 'Address Line 1 cannot be empty';
  static const String addressLine2Empty = 'Address Line 2 cannot be empty';
  static const String areaEmpty = 'Area cannot be empty';
  static const String cityEmpty = 'City cannot be empty';
  static const String stateEmpty = 'State cannot be empty';
  static const String pincodeEmpty = 'Post Code cannot be empty';
  static const String countryEmpty = 'Country cannot be empty';
  static const String passwordEmpty = 'Password cannot be empty';
  static const String businessNameEmpty = 'Business Name cannot be empty';
  static const String uploadLogoEmpty = 'Upload Logo cannot be empty';
  static const String websiteEmpty = 'Website cannot be empty';
  static const String businessCategoryEmpty =
      'Business Category cannot be empty';
  static const String businessSubCategoryEmpty =
      'Business Sub Category cannot be empty';
  static const String adjFactorEmpty = 'Adj Factor cannot be empty';
  static const String aboutEmpty = 'About cannot be empty';
  static const String productOrServicesEmpty =
      'Product or Services cannot be empty';
  static const String givesEmpty = 'Gives cannot be empty';
  static const String asksEmpty = 'Asks cannot be empty';
  static const String dateofBirthEmpty = 'Date of Birth cannot be empty';
  static const String facebookEmpty = 'Facebook cannot be empty';
  static const String instagramEmpty = 'Instagram cannot be empty';
  static const String linkedInEmpty = 'LinkedIn cannot be empty';
}
