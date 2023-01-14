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
define( 'DB_NAME', 'bato' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         '/cG>Ip[bTr]/esk582@mu4$-|U-FXABKvhcRK+qru T4H6t<M5sO{vy04&~&4u0W' );
define( 'SECURE_AUTH_KEY',  '$hL>A63{ta_;pw u}qDvr|@V*Y[G,2fLpQy*Pu5vu.Wo--GcQoNP ]>DvweIg:rn' );
define( 'LOGGED_IN_KEY',    'Tv40Vm>Mw-&?jUvDKe636h[F!@37duXYlPk~*x9E//b#3A>Fm`.A^G6/uZ;NG_Bd' );
define( 'NONCE_KEY',        'X@[Dx6{^dtP~RGB[zlNVsKL_mk$YE{I6fa}9~N}Co2Po:d>QE%z5#WrYT5KPB,)j' );
define( 'AUTH_SALT',        '(e l(L!/=xM]a?HJR}Fc#HfsYgVxOvu&uaSadCCx5*q48WQ6=$NMt]a= 4}Kfyo2' );
define( 'SECURE_AUTH_SALT', 'D](Wb;SU#G4L2X]S= [?O A44x;7oj.Y?<q%Wj)[CAQFi3.jkb7[q/;mV, h5I87' );
define( 'LOGGED_IN_SALT',   'z<8jDz/CRy=Ml@kFpPah[}Bf;T&gZ[I_LR<BOJuvaa:yu5`Xf+#}+pV=21DI);b0' );
define( 'NONCE_SALT',       'xKt-[a<ry/5|eCKE?6A/U&pHqlYXDghE~dzd6@DpgaWOX/d.<Y)ds N#9_:<2_}T' );

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
