// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_random_instance(obj){
/// @description Find and return random instance of an that meets the requirement or noone if none is found
/// @param object

var num_of_obj = instance_number(obj);
var list_of_objs = ds_list_create();
for (var i = 0; i < num_of_obj; i += 1) {
   list_of_objs[| i] = instance_find(obj, i);
}

ds_list_shuffle(list_of_objs);

var obj_that_meets_the_req = noone;
for (var i = 0; i < ds_list_size(list_of_objs); i += 1) {
    if (!place_meeting(list_of_objs[| i].x,list_of_objs[| i].y,obj_other_item)) {
        obj_that_meets_the_req = list_of_objs[| i];
        break;
    } 
}

ds_list_destroy(list_of_objs);

return obj_that_meets_the_req;
}