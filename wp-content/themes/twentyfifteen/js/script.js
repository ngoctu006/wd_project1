/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery(document).ready(function () {
    jQuery('.checkbox input[type="checkbox"]').change(function () {
        console.log('debug');
        var parentUl = jQuery(this).parent().parent();
        var maxNumCheck = parentUl.attr('data-max-choice');
        if (maxNumCheck < 0) {
            return false;
        }
        var countChecked = parentUl.find('input[type="checkbox"]:checked').length;
        if (countChecked >= maxNumCheck) {
            parentUl.find('input[type="checkbox"]:not(:checked)').parent().addClass('disable');
        } else {
            parentUl.find('input[type="checkbox"]:not(:checked)').parent().removeClass('disable');
        }
    })
    jQuery( "#datepicker" ).datepicker();
    jQuery('button.registered').click(function(){
      jQuery(this).addClass('hide');
      jQuery('button.back').removeClass('hide');
      jQuery('input[name="registered"]').attr('value', '1');
      jQuery('.attr_hide').fadeOut();
      return false;
    })
    jQuery('button.back').click(function(){
      jQuery(this).addClass('hide');
      jQuery('button.registered').removeClass('hide');
      jQuery('input[name="registered"]').attr('value', '0');
      jQuery('.attr_hide').fadeIn();
      return false;
    })
})

