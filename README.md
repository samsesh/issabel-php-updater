# Issabel PHP Updater :shield:

## Introduction :rocket:

**Issabel PHP Updater** is an advanced project tailored for seasoned users who possess a deep understanding of Issabel and server management. It addresses critical security vulnerabilities in the default PHP version (used in Issabel version 5) and enhances the security of Issabel installations. While acknowledging that even the updated PHP 7.4 version may still have its own set of bugs in comparison to more recent PHP releases, this project aims to significantly reduce the potential security risks associated with using the older PHP version.

## Background :clipboard:

Issabel, a versatile open-source Unified Communications platform, holds great value for various telephony services. However, the inherent security vulnerabilities in the default PHP version of Issabel 5 have been a cause for concern. By upgrading the underlying PHP version to 7.4, this project endeavors to fortify the security of Issabel installations and preemptively address many of the security issues.

## How to Use :hammer_and_wrench:

To implement the **Issabel PHP Updater**, follow these steps:

1. Execute the following command to initiate the update process:
   ```bash
   curl -fsSL https://github.com/samsesh/issabel-php-updater/raw/Localhost/update.sh | bash
   ```

Additionally, for those interested in using **SuiteCRM** (https://suitecrm.com/) alongside Issabel on the same server, the script `zip.suitecrm.sh` is available for deployment:

1. Run the following command to set up SuiteCRM:
   ```bash
   curl -fsSL https://github.com/samsesh/issabel-php-updater/raw/Localhost/zip.suitecrm.sh | bash
   ```

Refer to the official [SuiteCRM documentation](https://docs.suitecrm.com/) for further information.

## Installation :computer:

To install Issabel on CentOS 7, two options are available:

1. **Net Install Script**:
   Utilize the net install script from the Issabel repository with the following command:
   ```bash
   curl -fsSL http://repo.issabel.org/issabel4-netinstall.sh | bash
   ```

2. **ISO Download**:
   Alternatively, download the ISO file directly from the official Issabel website at [issabel.com](https://www.issabel.com).

## Contributions and Donations :heart:

We greatly appreciate contributions and support for this project. Should you find value in this endeavor, please consider contributing or donating to assist us in maintaining and enhancing it.

Feel free to show your support via the following donation link: [Donate](https://github.com/samsesh/donate/)

Your contributions enable us to continually improve the security and functionality of this project.

---

**Disclaimer**: While this project aims to enhance the security of Issabel installations, no software is immune to security risks. Users are encouraged to exercise caution, stay informed about potential vulnerabilities, and regularly update their systems to mitigate emerging threats.