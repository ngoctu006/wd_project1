<?php
/*
  Template Name: boucherie

 */
get_header();
?>
<div id="primary" class="content-area">
    <main id="main" class="site-main" role="main">
        <form action='<?php the_permalink(); ?>' method="post" >
        <div class="checkbox">
            <ul>
                <li>
                    <?php
                    $cat1 = get_term_by('slug', 'colis-promo', 'topics');
                    ?>
                    <h2><?php echo $cat1->name; ?></h2>
                    <ul data-max-choice = '-1'>
                        <?php
                        $args = array(
                          'tax_query' => array(
                            array(
                              'taxonomy' => 'topics',
                              'field' => 'slug',
                              'terms' => array($cat1->slug)
                            ),
                          ),
                          'post_type' => 'boucherie',
                          'order' => 'ASC',
                          'orderby' => 'ID'
                        );
                        $query = new WP_Query($args);
                        if ($query->have_posts()) {
                            while ($query->have_posts()) : $query->the_post();
                                ?>
                                <li><input type="checkbox" name="type['boucherie'][<?php echo $cat1->term_id; ?>][]" value = "<?php echo get_the_ID(); ?>" /> <?php echo get_the_title() ?></li>

                                <?php
                            endwhile;
                        }
                        //RESET YOUR QUERY VARS
                        wp_reset_query();
                        ?>
                    </ul>
                </li>
                <li>
                    <?php
                    $cat2 = get_term_by('slug', 'petit-colis', 'topics');
                    ?>
                    <h2><?php echo $cat2->name; ?></h2>
                    <ul data-max-choice = '4'>
                        <?php
                        $args = array(
                          'tax_query' => array(
                            array(
                              'taxonomy' => 'topics',
                              'field' => 'slug',
                              'terms' => array($cat2->slug)
                            ),
                          ),
                          'post_type' => 'boucherie',
                          'order' => 'ASC',
                          'orderby' => 'ID'
                        );
                        $query = new WP_Query($args);
                        if ($query->have_posts()) {
                            while ($query->have_posts()) : $query->the_post();
                                ?>
                                <li><input type="checkbox" name="type['boucherie'][<?php echo $cat2->term_id; ?>][]" value = "<?php echo get_the_ID(); ?>" /><?php echo get_the_title() ?> </li>

                                <?php
                            endwhile;
                        }
                        //RESET YOUR QUERY VARS
                        wp_reset_query();
                        ?>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li>
                            <?php
                                $cat3 = get_term_by('slug', 'grand-colis-6-articles-au-choix-dont-1-dans-colis-plus', 'topics');
                            ?>
                            <h2><?php echo $cat3->name; ?></h2>
                            <ul data-max-choice = '3'>
                                <?php
                                $args = array(
                                  'tax_query' => array(
                                    array(
                                      'taxonomy' => 'topics',
                                      'field' => 'slug',
                                      'terms' => array($cat3->slug)
                                    ),
                                  ),
                                  'post_type' => 'boucherie',
                                  'order' => 'ASC',
                                  'orderby' => 'ID'
                                );
                                $query = new WP_Query($args);
                                if ($query->have_posts()) {
                                    while ($query->have_posts()) : $query->the_post();
                                        ?>
                                        <li><input type="checkbox" name="type['boucherie'][<?php echo $cat3->term_id; ?>][]" value = "<?php echo get_the_ID(); ?>" /><?php echo get_the_title() ?> </li>
                                        <?php
                                    endwhile;
                                }
                                //RESET YOUR QUERY VARS
                                wp_reset_query();
                                ?>
                            </ul>
                        </li>
                        <li>
                            <?php
                                $cat4 = get_term_by('slug', 'colis-plus', 'topics');
                            ?>
                            <h2><?php echo $cat4->name; ?></h2>
                            <ul data-max-choice = '1'>
                                <?php
                                $args = array(
                                  'tax_query' => array(
                                    array(
                                      'taxonomy' => 'topics',
                                      'field' => 'slug',
                                      'terms' => array($cat4->slug)
                                    ),
                                  ),
                                  'post_type' => 'boucherie',
                                  'order' => 'ASC',
                                  'orderby' => 'ID'
                                );
                                $query = new WP_Query($args);
                                if ($query->have_posts()) {
                                    while ($query->have_posts()) : $query->the_post();
                                        ?>
                                        <li><input type="checkbox" name="type['boucherie'][<?php echo $cat4->term_id; ?>][]" value = "<?php echo get_the_ID(); ?>" /><?php echo get_the_title() ?> </li>
                                        <?php
                                    endwhile;
                                }
                                //RESET YOUR QUERY VARS
                                wp_reset_query();
                                ?>
                            </ul>
                        </li>
                    </ul>

                </li>
                <li>
                    <ul>
                        <li>
                            <?php
                                $cat5 = get_term_by('slug', 'super-colis-8-articles-au-choix-dont-2-dans-colis-plus', 'topics');
                            ?>
                            <h2><?php echo $cat5->name; ?></h2>
                            <ul data-max-choice = '8'>
                                <?php
                                $args = array(
                                  'tax_query' => array(
                                    array(
                                      'taxonomy' => 'topics',
                                      'field' => 'slug',
                                      'terms' => array($cat5->slug)
                                    ),
                                  ),
                                  'post_type' => 'boucherie',
                                  'order' => 'ASC',
                                  'orderby' => 'ID'
                                );
                                $query = new WP_Query($args);
                                if ($query->have_posts()) {
                                    while ($query->have_posts()) : $query->the_post();
                                        ?>
                                        <li><input type="checkbox" name="type['boucherie'][<?php echo $cat5->term_id; ?>][]" value = "<?php echo get_the_ID(); ?>" /><?php echo get_the_title() ?> </li>
                                        <?php
                                    endwhile;
                                }
                                //RESET YOUR QUERY VARS
                                wp_reset_query();
                                ?>
                            </ul>
                        </li>
                        <li>
                            <?php
                                $cat6 = get_term_by('slug', 'colis-plus-super-colis-8-articles-au-choix-dont-2-dans-colis-plus', 'topics');
                            ?>
                            <h2><?php echo $cat6->name; ?></h2>
                            <ul data-max-choice = '2'>
                                <?php
                                $args = array(
                                  'tax_query' => array(
                                    array(
                                      'taxonomy' => 'topics',
                                      'field' => 'slug',
                                      'terms' => array($cat6->slug)
                                    ),
                                  ),
                                  'post_type' => 'boucherie',
                                  'order' => 'ASC',
                                  'orderby' => 'ID'
                                );
                                $query = new WP_Query($args);
                                if ($query->have_posts()) {
                                    while ($query->have_posts()) : $query->the_post();
                                        ?>
                                        <li><input type="checkbox" name="type['boucherie'][<?php echo $cat6->term_id; ?>][]" value = "<?php echo get_the_ID(); ?>" /><?php echo get_the_title() ?> </li>
                                        <?php
                                    endwhile;
                                }
                                //RESET YOUR QUERY VARS
                                wp_reset_query();
                                ?>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <?php
                    $cat7 = get_term_by('slug', 'plateau-par-nombre-de-plateau-1-15-2-25-ou-3', 'topics');
                    ?>
                    <h2><?php echo $cat1->name; ?></h2>
                    <ul data-max-choice = '1'>
                        <?php
                        $args = array(
                          'tax_query' => array(
                            array(
                              'taxonomy' => 'topics',
                              'field' => 'slug',
                              'terms' => array($cat7->slug)
                            ),
                          ),
                          'post_type' => 'boucherie',
                          'order' => 'ASC',
                          'orderby' => 'ID'
                        );
                        $query = new WP_Query($args);
                        if ($query->have_posts()) {
                            while ($query->have_posts()) : $query->the_post();
                                ?>
                                <li><input type="checkbox" name="type['boucherie'][<?php echo $cat7->term_id; ?>][]" value = "<?php echo get_the_ID(); ?>" /> <?php echo get_the_title() ?></li>

                                <?php
                            endwhile;
                        }
                        //RESET YOUR QUERY VARS
                        wp_reset_query();
                        ?>
                    </ul>
                </li>
            </ul>
        </div>
            <div class="information-user">
                <p>
                    <label>Nom</label>
                    <input type="text" name="nom" value="" />
                </p>
                <p>
                    <label>Prenom</label>
                    <input type="text" name="prenom" value="" />
                </p>
                <p>
                    <label>Address</label>
                    <input type="text" name="address" value="" />
                </p>
                <p>
                    <label>Code_Postal</label>
                    <input type="text" name="codepostal" value="" />
                </p>
                 <p>
                    <label>Telephone</label>
                    <input type="text" name="telephone" value="" />
                </p>
                <p>
                    <label>Votre Email</label>
                    <input type="text" name="email" value="" />
                </p>
                <p>
                    <label>Datetime picker</label>
                    <input type="text" id = "datepicker" value="" />
                </p>
            </div>
            <?php wp_nonce_field( 'boucherie_my_action', 'boucherie_nonce_field' ); ?>
            <input type="submit" value="submit" name = "submit_boucherie" />
        </form>
    </main><!-- .site-main -->
</div><!-- .content-area -->

<?php get_footer(); ?>
