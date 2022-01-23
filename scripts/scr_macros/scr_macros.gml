///Some example macros using multiInput

//Standard inputs
#macro in_up multiInput(false,vk_up,gp_padu,gp_axislv,true)
#macro in_down multiInput(false,vk_down,gp_padd,gp_axislv,false)
#macro in_left multiInput(false,vk_left,gp_padl,gp_axislh,true)
#macro in_right multiInput(false,vk_right,gp_padr,gp_axislh,false)

#macro in_a multiInput(false,ord("Z"),gp_face1)
#macro in_b multiInput(false,ord("X"),gp_face2)

//Single-frame inputs (pressed)
//Good for menus and such
#macro in_up_p multiInput(true,vk_up,gp_padu,gp_axislv,true)
#macro in_down_p multiInput(true,vk_down,gp_padd,gp_axislv,false)
#macro in_left_p multiInput(true,vk_left,gp_padl,gp_axislh,true)
#macro in_right_p multiInput(true,vk_right,gp_padr,gp_axislh,false)

#macro in_a_p multiInput(true,ord("Z"),gp_face1)
#macro in_b_p multiInput(true,ord("X"),gp_face2)

#macro in_start multiInput(true,vk_enter,gp_start)
#macro in_select multiInput(true,vk_control,gp_select)