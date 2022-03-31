<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'eassouli' );

/** Database password */
define( 'DB_PASSWORD', 'hrC/ECGawMmb64A1Ce5vByjIHLSgXi3UvDN0KZkyHc4=' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
    define('AUTH_KEY',         '3?Sv~MENVR!qo8K8U.<yC{!wMP(D8*lf;)_^Mq Pp/9 QfL&;WXw!cLF#J!H1<`+');
    define('SECURE_AUTH_KEY',  'w}yg1.-XgH{Z{ OegJh`iHG,Z^3?>Zc-2E&}&WB{+xUKzW+<xQ7{de]=jTMAzp3Y');
    define('LOGGED_IN_KEY',    'zpdi_/AJ|.dSJZg(vhOX/bF Hpe_6~B-Z0=LhAkA6jmiLN^A^%cQ/B5/0PJ0g_Ac');
    define('NONCE_KEY',        'Ex+fj5XY`7314V31x>p<&Cc nkbkBxu;mZaDg0xO*@^u4V;,.cO)twUNs#B<?_/c');
    define('AUTH_SALT',        'v[F90.3[20n0Rh,Pmr2C@-{PY8.[L/bkYftaWC~Q~XjA[rl2x.aiLu!L?-||ri:7');
    define('SECURE_AUTH_SALT', 'QRZ/b%Q!?ml6f:B`AZEWtf=DK`w)n|61M}~/O+2xNm8EL5dDe4+&j?W-af}}?-[h');
    define('LOGGED_IN_SALT',   '8$!k)&I- 9g-<u7s5xJFqy#)$V=QT-#plX)+z%&M/48s)s4B lshJLmiDo=;mAeS');
    define('NONCE_SALT',       'XVF-&MlCHd^>%RE,-YXN)7`-{^H-zHLX}Lff)l/u}$gVTt!imvM_$rx1?&M5IDHD');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';