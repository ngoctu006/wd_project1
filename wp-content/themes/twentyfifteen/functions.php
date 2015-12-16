<?php

/**
 * Twenty Fifteen functions and definitions
 *
 * Set up the theme and provides some helper functions, which are used in the
 * theme as custom template tags. Others are attached to action and filter
 * hooks in WordPress to change core functionality.
 *
 * When using a child theme you can override certain functions (those wrapped
 * in a function_exists() call) by defining them first in your child theme's
 * functions.php file. The child theme's functions.php file is included before
 * the parent theme's file, so the child theme functions would be used.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @link https://codex.wordpress.org/Child_Themes
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * {@link https://codex.wordpress.org/Plugin_API}
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
/**
 * Set the content width based on the theme's design and stylesheet.
 *
 * @since Twenty Fifteen 1.0
 */
if (!isset($content_width)) {
    $content_width = 660;
}

/**
 * Twenty Fifteen only works in WordPress 4.1 or later.
 */
if (version_compare($GLOBALS['wp_version'], '4.1-alpha', '<')) {
    require get_template_directory() . '/inc/back-compat.php';
}

if (!function_exists('twentyfifteen_setup')) :

    /**
     * Sets up theme defaults and registers support for various WordPress features.
     *
     * Note that this function is hooked into the after_setup_theme hook, which
     * runs before the init hook. The init hook is too late for some features, such
     * as indicating support for post thumbnails.
     *
     * @since Twenty Fifteen 1.0
     */
    function twentyfifteen_setup() {

        /*
         * Make theme available for translation.
         * Translations can be filed in the /languages/ directory.
         * If you're building a theme based on twentyfifteen, use a find and replace
         * to change 'twentyfifteen' to the name of your theme in all the template files
         */
        load_theme_textdomain('twentyfifteen', get_template_directory() . '/languages');

        // Add default posts and comments RSS feed links to head.
        add_theme_support('automatic-feed-links');

        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
         */
        add_theme_support('title-tag');

        /*
         * Enable support for Post Thumbnails on posts and pages.
         *
         * See: https://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
         */
        add_theme_support('post-thumbnails');
        set_post_thumbnail_size(825, 510, true);

        // This theme uses wp_nav_menu() in two locations.
        register_nav_menus(array(
          'primary' => __('Primary Menu', 'twentyfifteen'),
          'social' => __('Social Links Menu', 'twentyfifteen'),
        ));

        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support('html5', array(
          'search-form', 'comment-form', 'comment-list', 'gallery', 'caption'
        ));

        /*
         * Enable support for Post Formats.
         *
         * See: https://codex.wordpress.org/Post_Formats
         */
        add_theme_support('post-formats', array(
          'aside', 'image', 'video', 'quote', 'link', 'gallery', 'status', 'audio', 'chat'
        ));

        $color_scheme = twentyfifteen_get_color_scheme();
        $default_color = trim($color_scheme[0], '#');

        // Setup the WordPress core custom background feature.
        add_theme_support('custom-background', apply_filters('twentyfifteen_custom_background_args', array(
          'default-color' => $default_color,
          'default-attachment' => 'fixed',
        )));

        /*
         * This theme styles the visual editor to resemble the theme style,
         * specifically font, colors, icons, and column width.
         */
        add_editor_style(array('css/editor-style.css', 'genericons/genericons.css', twentyfifteen_fonts_url()));
    }

endif; // twentyfifteen_setup
add_action('after_setup_theme', 'twentyfifteen_setup');

/**
 * Register widget area.
 *
 * @since Twenty Fifteen 1.0
 *
 * @link https://codex.wordpress.org/Function_Reference/register_sidebar
 */
function twentyfifteen_widgets_init() {
    register_sidebar(array(
      'name' => __('Widget Area', 'twentyfifteen'),
      'id' => 'sidebar-1',
      'description' => __('Add widgets here to appear in your sidebar.', 'twentyfifteen'),
      'before_widget' => '<aside id="%1$s" class="widget %2$s">',
      'after_widget' => '</aside>',
      'before_title' => '<h2 class="widget-title">',
      'after_title' => '</h2>',
    ));
}

add_action('widgets_init', 'twentyfifteen_widgets_init');

if (!function_exists('twentyfifteen_fonts_url')) :

    /**
     * Register Google fonts for Twenty Fifteen.
     *
     * @since Twenty Fifteen 1.0
     *
     * @return string Google fonts URL for the theme.
     */
    function twentyfifteen_fonts_url() {
        $fonts_url = '';
        $fonts = array();
        $subsets = 'latin,latin-ext';

        /*
         * Translators: If there are characters in your language that are not supported
         * by Noto Sans, translate this to 'off'. Do not translate into your own language.
         */
        if ('off' !== _x('on', 'Noto Sans font: on or off', 'twentyfifteen')) {
            $fonts[] = 'Noto Sans:400italic,700italic,400,700';
        }

        /*
         * Translators: If there are characters in your language that are not supported
         * by Noto Serif, translate this to 'off'. Do not translate into your own language.
         */
        if ('off' !== _x('on', 'Noto Serif font: on or off', 'twentyfifteen')) {
            $fonts[] = 'Noto Serif:400italic,700italic,400,700';
        }

        /*
         * Translators: If there are characters in your language that are not supported
         * by Inconsolata, translate this to 'off'. Do not translate into your own language.
         */
        if ('off' !== _x('on', 'Inconsolata font: on or off', 'twentyfifteen')) {
            $fonts[] = 'Inconsolata:400,700';
        }

        /*
         * Translators: To add an additional character subset specific to your language,
         * translate this to 'greek', 'cyrillic', 'devanagari' or 'vietnamese'. Do not translate into your own language.
         */
        $subset = _x('no-subset', 'Add new subset (greek, cyrillic, devanagari, vietnamese)', 'twentyfifteen');

        if ('cyrillic' == $subset) {
            $subsets .= ',cyrillic,cyrillic-ext';
        }
        elseif ('greek' == $subset) {
            $subsets .= ',greek,greek-ext';
        }
        elseif ('devanagari' == $subset) {
            $subsets .= ',devanagari';
        }
        elseif ('vietnamese' == $subset) {
            $subsets .= ',vietnamese';
        }

        if ($fonts) {
            $fonts_url = add_query_arg(array(
              'family' => urlencode(implode('|', $fonts)),
              'subset' => urlencode($subsets),
                ), 'https://fonts.googleapis.com/css');
        }

        return $fonts_url;
    }

endif;

/**
 * JavaScript Detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since Twenty Fifteen 1.1
 */
function twentyfifteen_javascript_detection() {
    echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}

add_action('wp_head', 'twentyfifteen_javascript_detection', 0);

/**
 * Enqueue scripts and styles.
 *
 * @since Twenty Fifteen 1.0
 */
function twentyfifteen_scripts() {
    // Add custom fonts, used in the main stylesheet.
    wp_enqueue_style('twentyfifteen-fonts', twentyfifteen_fonts_url(), array(), null);

    // Add Genericons, used in the main stylesheet.
    wp_enqueue_style('genericons', get_template_directory_uri() . '/genericons/genericons.css', array(), '3.2');

    // Load our main stylesheet.
    wp_enqueue_style('twentyfifteen-style', get_stylesheet_uri());

    // Load the Internet Explorer specific stylesheet.
    wp_enqueue_style('twentyfifteen-ie', get_template_directory_uri() . '/css/ie.css', array('twentyfifteen-style'), '20141010');
    wp_style_add_data('twentyfifteen-ie', 'conditional', 'lt IE 9');

    // Load the Internet Explorer 7 specific stylesheet.
    wp_enqueue_style('twentyfifteen-ie7', get_template_directory_uri() . '/css/ie7.css', array('twentyfifteen-style'), '20141010');
    wp_style_add_data('twentyfifteen-ie7', 'conditional', 'lt IE 8');

    wp_enqueue_script('twentyfifteen-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20141010', true);

    if (is_singular() && comments_open() && get_option('thread_comments')) {
        wp_enqueue_script('comment-reply');
    }

    if (is_singular() && wp_attachment_is_image()) {
        wp_enqueue_script('twentyfifteen-keyboard-image-navigation', get_template_directory_uri() . '/js/keyboard-image-navigation.js', array('jquery'), '20141010');
    }

    wp_enqueue_script('twentyfifteen-script', get_template_directory_uri() . '/js/functions.js', array('jquery'), '20150330', true);
    wp_localize_script('twentyfifteen-script', 'screenReaderText', array(
      'expand' => '<span class="screen-reader-text">' . __('expand child menu', 'twentyfifteen') . '</span>',
      'collapse' => '<span class="screen-reader-text">' . __('collapse child menu', 'twentyfifteen') . '</span>',
    ));
}

add_action('wp_enqueue_scripts', 'twentyfifteen_scripts');

/**
 * Add featured image as background image to post navigation elements.
 *
 * @since Twenty Fifteen 1.0
 *
 * @see wp_add_inline_style()
 */
function twentyfifteen_post_nav_background() {
    if (!is_single()) {
        return;
    }

    $previous = ( is_attachment() ) ? get_post(get_post()->post_parent) : get_adjacent_post(false, '', true);
    $next = get_adjacent_post(false, '', false);
    $css = '';

    if (is_attachment() && 'attachment' == $previous->post_type) {
        return;
    }

    if ($previous && has_post_thumbnail($previous->ID)) {
        $prevthumb = wp_get_attachment_image_src(get_post_thumbnail_id($previous->ID), 'post-thumbnail');
        $css .= '
			.post-navigation .nav-previous { background-image: url(' . esc_url($prevthumb[0]) . '); }
			.post-navigation .nav-previous .post-title, .post-navigation .nav-previous a:hover .post-title, .post-navigation .nav-previous .meta-nav { color: #fff; }
			.post-navigation .nav-previous a:before { background-color: rgba(0, 0, 0, 0.4); }
		';
    }

    if ($next && has_post_thumbnail($next->ID)) {
        $nextthumb = wp_get_attachment_image_src(get_post_thumbnail_id($next->ID), 'post-thumbnail');
        $css .= '
			.post-navigation .nav-next { background-image: url(' . esc_url($nextthumb[0]) . '); border-top: 0; }
			.post-navigation .nav-next .post-title, .post-navigation .nav-next a:hover .post-title, .post-navigation .nav-next .meta-nav { color: #fff; }
			.post-navigation .nav-next a:before { background-color: rgba(0, 0, 0, 0.4); }
		';
    }

    wp_add_inline_style('twentyfifteen-style', $css);
}

add_action('wp_enqueue_scripts', 'twentyfifteen_post_nav_background');

/**
 * Display descriptions in main navigation.
 *
 * @since Twenty Fifteen 1.0
 *
 * @param string  $item_output The menu item output.
 * @param WP_Post $item        Menu item object.
 * @param int     $depth       Depth of the menu.
 * @param array   $args        wp_nav_menu() arguments.
 * @return string Menu item with possible description.
 */
function twentyfifteen_nav_description($item_output, $item, $depth, $args) {
    if ('primary' == $args->theme_location && $item->description) {
        $item_output = str_replace($args->link_after . '</a>', '<div class="menu-item-description">' . $item->description . '</div>' . $args->link_after . '</a>', $item_output);
    }

    return $item_output;
}

add_filter('walker_nav_menu_start_el', 'twentyfifteen_nav_description', 10, 4);

/**
 * Add a `screen-reader-text` class to the search form's submit button.
 *
 * @since Twenty Fifteen 1.0
 *
 * @param string $html Search form HTML.
 * @return string Modified search form HTML.
 */
function twentyfifteen_search_form_modify($html) {
    return str_replace('class="search-submit"', 'class="search-submit screen-reader-text"', $html);
}

add_filter('get_search_form', 'twentyfifteen_search_form_modify');

/**
 * Implement the Custom Header feature.
 *
 * @since Twenty Fifteen 1.0
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 *
 * @since Twenty Fifteen 1.0
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Customizer additions.
 *
 * @since Twenty Fifteen 1.0
 */
require get_template_directory() . '/inc/customizer.php';

add_action('init', 'create_post_type_boucherie');

/**
 * Register a book post type.
 *
 * @link http://codex.wordpress.org/Function_Reference/register_post_type
 */
function create_post_type_boucherie() {
    $labels = array(
      'name' => _x('Boucheries', 'post type general name', 'your-plugin-textdomain'),
      'singular_name' => _x('Boucherie', 'post type singular name', 'your-plugin-textdomain'),
      'menu_name' => _x('Boucheries', 'admin menu', 'your-plugin-textdomain'),
      'name_admin_bar' => _x('Boucherie', 'add new on admin bar', 'your-plugin-textdomain'),
      'add_new' => _x('Add New', 'book', 'your-plugin-textdomain'),
      'add_new_item' => __('Add New Boucherie', 'your-plugin-textdomain'),
      'new_item' => __('New Boucherie', 'your-plugin-textdomain'),
      'edit_item' => __('Edit Boucherie', 'your-plugin-textdomain'),
      'view_item' => __('View Boucherie', 'your-plugin-textdomain'),
      'all_items' => __('All Boucheries', 'your-plugin-textdomain'),
      'search_items' => __('Search Boucheries', 'your-plugin-textdomain'),
      'parent_item_colon' => __('Parent Boucheries:', 'your-plugin-textdomain'),
      'not_found' => __('No books found.', 'your-plugin-textdomain'),
      'not_found_in_trash' => __('No books found in Trash.', 'your-plugin-textdomain')
    );

    $args = array(
      'labels' => $labels,
      'description' => __('Description.', 'your-plugin-textdomain'),
      'public' => true,
      'publicly_queryable' => false,
      'show_in_nav_menus' => false,
      'show_ui' => true,
      'show_in_menu' => true,
      'query_var' => false,
      'rewrite' => array('slug' => 'boucherie'),
      'capability_type' => 'post',
      'has_archive' => true,
      'taxonomies' => array('topics'),
      'hierarchical' => false,
      'menu_position' => null,
      'supports' => array('title', 'thumbnail')
    );

    register_post_type('boucherie', $args);
}

//hook into the init action and call create_topics_nonhierarchical_taxonomy when it fires

add_action('init', 'create_topics_nonhierarchical_taxonomy', 0);

function create_topics_nonhierarchical_taxonomy() {

// Labels part for the GUI

    $labels = array(
      'name' => _x('Category', 'taxonomy general name'),
      'singular_name' => _x('Topic', 'taxonomy singular name'),
      'search_items' => __('Search Categorys'),
      'popular_items' => __('Popular Categorys'),
      'all_items' => __('All Categorya'),
      'parent_item' => null,
      'parent_item_colon' => null,
      'edit_item' => __('Edit Category'),
      'update_item' => __('Update Category'),
      'add_new_item' => __('Add New Category'),
      'new_item_name' => __('New Topic Name'),
      'separate_items_with_commas' => __('Separate topics with commas'),
      'add_or_remove_items' => __('Add or remove topics'),
      'choose_from_most_used' => __('Choose from the most used topics'),
      'menu_name' => __('Category'),
    );

// Now register the non-hierarchical taxonomy like tag

    register_taxonomy('topics', 'boucherie', array(
      'hierarchical' => true,
      'labels' => $labels,
      'show_ui' => true,
      'show_admin_column' => true,
      'update_count_callback' => '_update_post_term_count',
      'query_var' => false,
      'rewrite' => array('slug' => 'topic'),
    ));
}

//Create post type manage order
add_action('init', 'create_post_type_orders');

/**
 *
 * @link http://codex.wordpress.org/Function_Reference/register_post_type
 */
function create_post_type_orders() {
    $labels = array(
      'name' => _x('Orders', 'post type general name', 'your-plugin-textdomain'),
      'singular_name' => _x('Order', 'post type singular name', 'your-plugin-textdomain'),
      'menu_name' => _x('Order', 'admin menu', 'your-plugin-textdomain'),
      'name_admin_bar' => _x('Order', 'add new on admin bar', 'your-plugin-textdomain'),
      'edit_item' => __('Edit Order', 'your-plugin-textdomain'),
      'view_item' => __('View Order', 'your-plugin-textdomain'),
      'all_items' => __('All Order', 'your-plugin-textdomain'),
      'search_items' => __('Search Order', 'your-plugin-textdomain'),
      'parent_item_colon' => __('Parent Order:', 'your-plugin-textdomain'),
      'not_found' => __('No Order found.', 'your-plugin-textdomain'),
      'not_found_in_trash' => __('No Order found in Trash.', 'your-plugin-textdomain')
    );

    $args = array(
      'labels' => $labels,
      'description' => __('Description.', 'your-plugin-textdomain'),
      'public' => true,
      'publicly_queryable' => false,
      'show_in_nav_menus' => false,
      'show_ui' => true,
      'show_in_menu' => true,
      'query_var' => false,
      'capability_type' => 'post',
      'has_archive' => true,
      'hierarchical' => false,
      'menu_position' => null,
      'supports' => array('title'),
      'capabilities' => array()
    );

    register_post_type('order', $args);
}

function disable_new_posts() {
    // Hide sidebar link
    global $submenu;
    unset($submenu['edit.php?post_type=order'][10]);

    // Hide link on listing page
    if (isset($_GET['post_type']) && $_GET['post_type'] == 'order') {
        echo '<style type="text/css">
        #favorite-actions, .add-new-h2, .tablenav,a.page-title-action { display:none; }
        </style>';
    }
}

add_action('admin_menu', 'disable_new_posts');

//add_action('init', 'submit_form_boucherie');

function submit_form_boucherie() {
    $flag = TRUE;
    global $WP_Error;
    if (!isset($_POST['boucherie_nonce_field']) || !wp_verify_nonce($_POST['boucherie_nonce_field'], 'boucherie_my_action')) {
        return;
    }
    $email_admin = get_option('admin_email');
    $result = array();
    $products = $_POST['boucherie'];
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $address = $_POST['address'];
    $telephone = $_POST['telephone'];
    $codepostal = $_POST['codepostal'];
    $email = $_POST['email'];
    $registered = $_POST['registered'];
    $date_ordered = $_POST['date_order'];

    if (!$products) {
        $result['error'][] = __('The product must checked');
        $flag = false;
    }
    else {
        $result['boucherie'] = $products;
    }
    if (!$email || !is_email($email)) {
        $result['error'][] = __('The email is not valid');
        $flag = false;
    }
    else {
        $result['email'] = $email;
    }
    if (!$date_ordered) {
        $result['error'][] = __('The day order is not empty');
        $flag = false;
    }
    else {
        $result['date_ordered'][] = $date_ordered;
    }
    $user = get_user_by('email', $email);
    //if user have registered before
    if ($registered) {
        if (!$flag) {
            return $result;
        }
        //if user have registered before
        if (!$user) {
            $result['error'][] = __('This email is not register before,Please try again');
            return $result;
        }
        $user_id = $user->ID;
        $nom = get_user_meta($user_id, 'last_name', true);
        $prenom = get_user_meta($user_id, 'first_name', true);
    }
    else { //if user not register
        if (!$nom) {
            $result['error'][] = __('The name is not empty');
            $flag = false;
        }
        else {
            $result['nom'] = $nom;
        }
        if (!$prenom) {
            $result['error'][] = __('The first name is not empty');
            $flag = false;
        }
        else {
            $result['prenom'] = $prenom;
        }
        if (!$address) {
            $result['error'][] = __('The address is not empty');
            $flag = false;
        }
        else {
            $result['address'] = $address;
        }
        if (!$codepostal || !is_numeric($codepostal)) {
            $result['error'][] = __('The code postal is not valid');
            $flag = false;
        }
        else {
            $result['codepostal'] = $codepostal;
        }
        if (!$telephone || !is_numeric($telephone)) {
            $result['error'][] = __('The telephone is not empty');
            $flag = false;
        }
        else {
            $result['telephone'] = $telephone;
        }
        if ($user) {
            $result['error'][] = __('The email have registered already,Please click button <b> You have ordered before </b>');
            return $result;
        }
        if ($flag) {
            $userdata = array(
              'user_login' => $prenom . $nom,
              'user_email' => $email  // When creating an user, `user_pass` is expected.
            );
            $user_id = wp_insert_user($userdata);
            //On success
            if (is_wp_error($user_id)) {
                $result['error'][] = __("User created fail,Please try again or contact to administator");
            }
            else {
                //create user success then add usermeta
                add_user_meta($user_id, 'first_name', $prenom, TRUE);
                add_user_meta($user_id, 'last_name', $nom, TRUE);
                add_user_meta($user_id, 'address', $address, TRUE);
                add_user_meta($user_id, 'codepostal', $codepostal, TRUE);
                add_user_meta($user_id, 'telephone', $telephone, TRUE);
            }
        }
    }
    if ($user_id && $flag) {
        $title_order = 'order-' . date('dmy');
        $order = array(
          'post_title' => $title_order,
          'post_status' => 'pending',
          'post_type' => 'order',
          'post_author' => '',
        );
        $id_order = wp_insert_post($order, $wp_error);
        if (!$wp_error) {
            add_filter( 'wp_mail_content_type', 'set_html_content_type' );
            add_post_meta($id_order, 'product', serialize($products));
            add_post_meta($id_order, 'id_user_order', $user_id);
            add_post_meta($id_order, 'date_order', $date_ordered, TRUE);

            //sent mail to admin
            if(get_option('subject_admin')){
                $subject = get_option('subject_admin');
            }else{
                $subject = __('New order is ' . $title_order);
            }
            $headers1[] = 'From: ' . $prenom . ' ' . $nom . ' <' . $email . '>';
            $message_admin = get_option('mail_body_admin');
            $message_admin = str_replace('[nom]', $nom, $message_admin);
            $message_admin = str_replace('[prenom]', $prenom, $message_admin);
            $message_admin = str_replace('[address]', $address, $message_admin);
            $message_admin = str_replace('[code_postal]', $codepostal, $message_admin);
            $message_admin = str_replace('[telephone]', $telephone, $message_admin);
            $message_admin = str_replace('[email]', $email, $message_admin);
            $message_admin = str_replace('[date_order]', $date_ordered, $message_admin);
            $products = format_html_list_product($products);
            $message_admin = str_replace('[products]', $products, $message_admin);
            //wp_mail($email_admin, $subject, $message_admin, $headers1);
            $result['success'] = 1;
            remove_filter( 'wp_mail_content_type', 'set_html_content_type' );
        }
    }
    return $result;
}

/**
 * Adds a box to the main column on the Post and Page edit screens.
 */
function infoOrder_add_meta_box() {
    add_meta_box(
        'infoOrder_sectionid', __('Information', ''), 'detail_order_user', 'order', 'advanced'
    );
}

add_action('add_meta_boxes', 'infoOrder_add_meta_box');

function detail_order_user($post) {
    $products = unserialize(get_post_meta($post->ID, 'product', TRUE));
    $id_user = get_post_meta($post->ID, 'id_user_order', TRUE);
    $date_order = get_post_meta($post->ID, 'date_order', TRUE);
    $address = get_user_meta($id_user, 'address', TRUE);
    $codepostal = get_user_meta($id_user, 'codepostal', TRUE);
    $telephone = get_user_meta($id_user, 'telephone', TRUE);
    $user = get_user_by("ID", $id_user);
    $html = '';
    $html .= '<table>
                <tr><td>' . __('Fullname') . ' : </td><td>' . $user->display_name . '</td></tr>
                <tr><td>' . __('Address') . ' : </td><td>' . $address . '</td></tr>
                <tr><td>' . __('Code postal') . ' : </td><td>' . $codepostal . '</td></tr>
                <tr><td>' . __('Telephone') . ' : </td><td>'.$telephone.'</td></tr>
                <tr><td>' . __('Email') . ' : </td><td>' . $user->user_email . '</td></tr>
                <tr><td>' . __('Order date') . ' : </td><td>' . $date_order . '</td></tr>
            </table>';
    $html .= "<h2>" . __('Detail order') . "</h2>";
    $html .= '<div class="checkbox-Bo"><ul>';
    foreach ($products as $cat_id => $product) {
            $html .= '<li><h2>' . get_title_category_boucheries_by_ID($cat_id) . '</h2>
                    <ul>';
            foreach ($product as $id) {
                $html .= '<li>' . get_the_title($id) . '</li>';
            }
            $html .='</ul></li>';
    }
    $html .= '</ul></div>';
    echo $html;
}
function get_title_category_boucheries_by_ID($id) {
    $cat = get_term_by('id', $id, 'topics');
    return $cat->name;
}
function get_slug_category_boucheries_by_ID($id) {
    $cat = get_term_by('id', $id, 'topics');
    return $cat->slug;
}
//Sent mail to user after order publish
add_action( 'transition_post_status', 'send_mail_user_after_order_publish', 10, 3 );

function send_mail_user_after_order_publish( $new_status, $old_status, $post )
{
    if ('publish' !== $new_status or 'publish' === $old_status
            or 'order' !== get_post_type($post))
        return;
    echo "<pre>\n";
    var_dump($post);
    die("debug: " . __METHOD__);
    $products = unserialize(get_post_meta($post->ID, 'product', TRUE));
    $id_user = get_post_meta($post->ID, 'id_user_order', TRUE);
    $date_order = get_post_meta($post->ID, 'date_order', TRUE);
    $address = get_user_meta($id_user, 'address', TRUE);
    $codepostal = get_user_meta($id_user, 'codepostal', TRUE);
    $telephone = get_user_meta($id_user, 'telephone', TRUE);
    $user = get_user_by("ID", $id_user);
    
    add_filter('wp_mail_content_type', 'set_html_content_type');
    //sent mail to user
    if (get_option('subject_user')) {
        $subject = get_option('subject_admin');
    } else {
        $subject = __('New order is');
    }
    $message_user = get_option('mail_body_user');
    $message_user = str_replace('[nom]', $nom, $message_user);
    $message_user = str_replace('[prenom]', $prenom, $message_user);
    $message_user = str_replace('[address]', $address, $message_user);
    $message_user = str_replace('[code_postal]', $codepostal, $message_user);
    $message_user = str_replace('[telephone]', $telephone, $message_user);
    $message_user = str_replace('[email]', $user->user_email, $message_user);
    $message_user = str_replace('[date_order]', $date_order, $message_user);
    $products = format_html_list_product($products);
    $message_user = str_replace('[products]', $products, $message_user);
    wp_mail($email_admin, $subject, $message_admin, $headers1);
    remove_filter('wp_mail_content_type', 'set_html_content_type');
}
function set_html_content_type() {
	return 'text/html';
}
/*
 * add menu template mail
 */
add_action( 'admin_menu', 'register_my_template_mail_menu_page' );
//add_menu_page( $page_title, $menu_title, $capability, $menu_slug, $function, $icon_url, $position );
function register_my_template_mail_menu_page() {
	add_menu_page('Template mail', 'Template mail', 'manage_options', 'templatemail', 'templateMailConfig', '', 6);
}
function templateMailConfig(){
    if($_POST['submit_mail']){
        if(! isset( $_POST['nonce_mail'] )
            || ! wp_verify_nonce( $_POST['nonce_mail'], 'config_mail' )
        ){
           print 'Sorry, your nonce did not verify.';
           exit;
        } else {
            $option_name = 'subject_user' ;
            bo_add_option($option_name, $_POST['subject_user']);
            $option_name = 'mail_body_user' ;
            bo_add_option($option_name, $_POST['body_user']);
        }
    }

    if($_POST['submit_mail_admin']){
        //config mail to admin
        if(! isset( $_POST['nonce_mail_admin'] )
            || ! wp_verify_nonce( $_POST['nonce_mail_admin'], 'config_mail_admin' )
        ){
            print 'Sorry, your nonce did not verify.';
           exit;
        }else {
            $option_name = 'subject_admin' ;
            bo_add_option($option_name, $_POST['subject_admin']);
            $option_name = 'mail_body_admin' ;
            bo_add_option($option_name, $_POST['body_admin']);
        }
    }
    ob_start();
    include get_template_directory() . '/templates/template_mail.php';
    $html = ob_get_contents();
    ob_end_clean();
    echo $html;
}
function bo_add_option($option_name, $value) {
    if (get_option($option_name) !== false) {
        // The option already exists, so we just update it.
        update_option($option_name, $value);
    }
    else {
        // The option hasn't been added yet. We'll add it with $autoload set to 'no'.
        $autoload = 'no';
        add_option($option_name, $value, '', $autoload);
    }
}
function format_html_list_product($products){
    $html .= '<ul>';
    foreach ($products as $cat_id => $product) {
            $html .= '<li><h2>' . get_title_category_boucheries_by_ID($cat_id) . '</h2>
                    <ul>';
            foreach ($product as $id) {
                $html .= '<li>' . get_the_title($id) . '</li>';
            }
            $html .='</ul></li>';
    }
    $html .= '</ul>';
    return $html;
}
//function debug_mail_admin(){
//    $message_admin = get_option('mail_body_admin');
//    $message_admin = str_replace('[name]', , $message_admin);
//    echo "<pre>\n";
//    var_dump($message_admin);
//    die("debug: " . __METHOD__);
//}
//add_action('init','debug_mail_admin');