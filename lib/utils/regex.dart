Pattern pattern = r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$';
RegExp passwordRegex = new RegExp(r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$');
RegExp emailPhoneRegex = new RegExp(r'^(?:\d{11}|\w+@\w+\.\w{2,3})$');
RegExp numbersRegex = new RegExp(r'^[0-9]+$');
RegExp emailRegex = new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
RegExp emailRegexNew = new RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
RegExp phoneNumberRegex = new RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$');
RegExp phoneNumberRegex1 = new RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

