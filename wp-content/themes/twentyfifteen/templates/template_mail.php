<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

?>
<h2>
    Config template mail to user
</h2>
<form method="POST">
    <?php wp_nonce_field( 'config_mail','nonce_mail'); ?>
    <p>
        <label>Subject</label>
        <input type="text" name="subject_user" value = "<?php echo get_option('subject_body_user'); ?>" size = '60'/>
    </p>
    <p>
        <label>Body</label>
    </p>
        <?php
            $settings = array(
                            'media_buttons' => false,
                            'tinymce' => true
                        );
            $content = '';
            $editor_id = 'body_user';
            wp_editor(get_option('mail_body_user'), $editor_id, $settings);
        ?>

    <input type="submit" value="save" name="submit_mail"  />
</form>
<hr />
<h2>
    Config template mail sent to admin
</h2>
<form method="POST">
    <?php wp_nonce_field( 'config_mail_admin','nonce_mail_admin'); ?>
    <p>
        <label>Subject</label>
        <input type="text" name="subject_admin" value = "<?php echo get_option('subject_suject_admin'); ?>" size = '60'/>
    </p>
    <p>
        <label>Body</label>
    </p>
        <?php
            $settings = array(
                            'media_buttons' => false,
                            'tinymce' => true,
                            'dfw' => true
                        );
            $editor_id = 'body_admin';
            wp_editor(get_option('mail_body_admin'), $editor_id, $settings);
        ?>
    <input type="submit" value="save" name="submit_mail_admin" />
</form>