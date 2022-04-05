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
define( 'DB_NAME', getenv('MYSQL_DATABASE') );

/** Database username */
define( 'DB_USER', getenv('MYSQL_ADMIN_USER') );

/** Database password */
define( 'DB_PASSWORD', getenv('MYSQL_ADMIN_PASSWORD') );

/** Database hostname */
define( 'DB_HOST', getenv('WP_DB_HOST') );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'w94ZFnpZ_Jew^/JM0@m wt3z%Wv$U/IsfX68MJ&44oMXgQE{9TG:hfN0bA)ILa7P' );
define( 'SECURE_AUTH_KEY',  'M=aEn2vTHW2+Wg(FTt]AR:7A RXmakQ`0u,?sVgbV1<Pz%Pu-%K<Aw7Zl*J(zw;L' );
define( 'LOGGED_IN_KEY',    '#a/3L0ki$oq!P!:gLkxF6dKI3|v^pMx;ik&sZGjwgd_(V^ktv9E_oV_5PnV<L~$L' );
define( 'NONCE_KEY',        'wtq`3}xaIPQ<?8C(`]JUP;F:M%1$x{~T#9xp=.Q&$7^8t<5Ox<qcS8=3ukl61zh|' );
define( 'AUTH_SALT',        '4nWu-|O{%Wa`_ET(Z/;#w/d)1ZWDU#fn>wwIb4_2e q!)$& 1PvW!l<R9T[2&5+n' );
define( 'SECURE_AUTH_SALT', '[HT{R)XKB|vGyx#7Y(8$jPE?Fb;ZSq;*u>avUEHV7.&]X#~vm<|6<>W+9cllK|jM' );
define( 'LOGGED_IN_SALT',   'r8Pq]a3<q:~k}+72xST}T)[l}I$LGEO{~iow=2,:qx=$S^paCd<0eBfV8tGZ8kfX' );
define( 'NONCE_SALT',       'SUuRk+n@!hlWYR*s0PrUg-HH;Zzu^Cq{doj1z#m*>WXg`ot=[^7xr-9V.Z&3G;|0' );

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
