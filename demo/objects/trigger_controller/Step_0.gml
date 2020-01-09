/// @description Insert description here
// You can write your code in this editor
trigger = global.trigger
switch (trigger)
{
	case 0: break;
	
	case 1: 
	{
		if (option == 0)
		{
			for (var i = 0; i < array_length_1d(triggerG1); i++)
			{
				if (layer_get_element_type(triggerG1[i]) == layerelementtype_instance)
				{
					var layerelement = triggerG1[i];
					var inst = layer_instance_get_instance(layerelement);
					inst.y = inst.y - 32*4;
				}
			}		
		}
	}
	option = 1;
	break;
			 
	case 2: 
	{
		if (option == 1)
		{
			for (var i = 0; i < array_length_1d(triggerG1); i++)
			{
				if (layer_get_element_type(triggerG1[i]) == layerelementtype_instance)
				{
					var layerelement = triggerG1[i];
					var inst = layer_instance_get_instance(layerelement);
					inst.y = inst.y + 32*4;
				}
			}		
		}
	}
	option = 2;
	break;
	
	case 3:
	{
		if (option == 2)
		{
			for (var i = 0; i < array_length_1d(triggerG1); i++)
			{
				if (layer_get_element_type(triggerG1[i]) == layerelementtype_instance)
				{
					var layerelement = triggerG1[i];
					var inst = layer_instance_get_instance(layerelement);
					inst.y = inst.y + 32*6;
				}
			}		
		}
	}
	option = 3;
	break;
	
	case 4 :
	{
		if (option == 3)
		{
			for (var i = 0; i < array_length_1d(triggerG1); i++)
			{
				if (layer_get_element_type(triggerG1[i]) == layerelementtype_instance)
				{
					var layerelement = triggerG1[i];
					var inst = layer_instance_get_instance(layerelement);
					inst.y = inst.y + 32*6;
				}
			}		
		}
	}
	option = 4;
	break;
	case 5:
	{
		if (option == 4)
		{
			inst_7723DBAA.x += 32*4;
		}
	}
}