//Maya ASCII 2014 scene
//Name: Windmill2.ma
//Last modified: Wed, Oct 23, 2013 09:54:49 AM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1687316304223454 33.50550200673122 22.96080887594011 ;
	setAttr ".r" -type "double3" -6.9383527281471524 718.99999999992315 -1.2425934254440466e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 31.110925975274032;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.0673982981212031 100.1 9.2274933729921322 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30.741797577602117;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.23853710402963768 33.324942491668175 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 44.941121035698252;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 1.0972062259030513 -1.7010002344063739 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.877885661049373;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".s" -type "double3" 3.476077262965839 3.476077262965839 3.476077262965839 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.16570321 0 0.16570319 ;
	setAttr ".pt[1]" -type "float3" 0.16570321 0 0.16570319 ;
	setAttr ".pt[6]" -type "float3" -0.16570321 0 -0.16570319 ;
	setAttr ".pt[7]" -type "float3" 0.16570321 0 -0.16570319 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 0 16.355001956832435 0 ;
	setAttr ".s" -type "double3" 0.5 15.947635207555216 0.5 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "topHalf";
	setAttr ".t" -type "double3" -6.3881051271168516 33.199251495374476 -2.3451874284899743 ;
	setAttr ".rp" -type "double3" 6.4792520585184343 0 0.91427473660853975 ;
	setAttr ".sp" -type "double3" 6.4792520585184343 0 0.91427473660853975 ;
createNode transform -n "blades" -p "topHalf";
	setAttr ".rp" -type "double3" 6.4077698344118552 0 0 ;
	setAttr ".sp" -type "double3" 6.4077698344118552 0 0 ;
createNode transform -n "pCylinder2" -p "blades";
	setAttr ".t" -type "double3" 6.4077698344118552 -2.4651903288156619e-032 4.8292075832833712 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.1326175498741924 0.70220281413792329 1.1326175498741924 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[40:41]" -type "float3"  0 -0.95373583 1.7093578e-016 
		0 0.95373583 1.7093578e-016;
	setAttr ".dr" 1;
createNode transform -n "pCube3" -p "blades";
	setAttr ".t" -type "double3" -4.7155719876908586 -4.9303806576313238e-032 4.7263038940033901 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 20.726747483998633 0.47686969348921499 1.397610889440478 ;
	setAttr ".rp" -type "double3" 11.123792676787346 1.0947644252537542e-047 -4.9303806576313074e-032 ;
	setAttr ".rpt" -type "double3" 0 4.9303806576313063e-032 4.9303806576313063e-032 ;
	setAttr ".sp" -type "double3" 0.53668780812691808 2.2957307629332791e-047 -3.5277205514655947e-032 ;
	setAttr ".spt" -type "double3" 10.587104868660479 -1.2009663376795245e-047 -1.4026601061657206e-032 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube5" -p "blades";
	setAttr ".t" -type "double3" -4.7155719876908586 -4.9303806576313238e-032 4.7263038940033901 ;
	setAttr ".r" -type "double3" 90 0 239.99999999999997 ;
	setAttr ".s" -type "double3" 20.726747483998633 0.47686969348921499 1.397610889440478 ;
	setAttr ".rp" -type "double3" 11.123792676787346 1.0947644252537542e-047 -4.9303806576313074e-032 ;
	setAttr ".rpt" -type "double3" 0 4.9303806576313063e-032 4.9303806576313063e-032 ;
	setAttr ".sp" -type "double3" 0.53668780812691808 2.2957307629332791e-047 -3.5277205514655947e-032 ;
	setAttr ".spt" -type "double3" 10.587104868660479 -1.2009663376795245e-047 -1.4026601061657206e-032 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 305 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.4375 0.8125 0.25 0.1875 0.25 0.375 0.4375 0.1875
		 0 0.375 0.8125 0.625 0.8125 0.8125 0 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375
		 0.25 0 0.375 0.875 0.625 0.875 0.75 0 0.625 0.3125 0.6875 0.25 0.3125 0.25 0.375
		 0.3125 0.3125 0 0.375 0.9375 0.625 0.9375 0.6875 0 0.5625 0.2421875 0.5625 0.3125
		 0.5625 0.375 0.5625 0.4375 0.5625 0.5078125 0.5625 0.7421875 0.5625 0.8125 0.5625
		 0.875 0.5625 0.9375 0.5625 0 0.5625 1 0.5 0.2421875 0.5 0.3125 0.5 0.375 0.5 0.4375
		 0.5 0.5078125 0.5 0.7421875 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 0 0.5 1 0.4375 0.2421875
		 0.4375 0.3125 0.4375 0.375 0.4375 0.4375 0.4375 0.5078125 0.4375 0.7421875 0.4375
		 0.8125 0.4375 0.875 0.4375 0.9375 0.4375 0 0.4375 1 0.375 0.125 0.3125 0.125 0.25
		 0.125 0.1875 0.125 0.125 0.125 0.375 0.625 0.4375 0.625 0.5 0.625 0.5625 0.625 0.625
		 0.625 0.875 0.125 0.8125 0.125 0.75 0.125 0.6875 0.125 0.625 0.125 0.5625 0.125 0.5
		 0.125 0.4375 0.125 0.40625 0.0625 0.40625 0.28125 0.40625 0.6875 0.40625 0.96875
		 0.65625 0.0625 0.34375 0.0625 0.40625 0.46875 0.15625 0.0625 0.40625 0.78125 0.84375
		 0.0625 0.40625 0.40625 0.21875 0.0625 0.40625 0.84375 0.78125 0.0625 0.40625 0.34375
		 0.28125 0.0625 0.40625 0.90625 0.71875 0.0625 0.59375 0.28125 0.59375 0.34375 0.59375
		 0.40625 0.59375 0.46875 0.59375 0.6875 0.59375 0.78125 0.59375 0.84375 0.59375 0.90625
		 0.59375 0.96875 0.59375 0.0625 0.53125 0.28125 0.53125 0.34375 0.53125 0.40625 0.53125
		 0.46875 0.53125 0.6875 0.53125 0.78125 0.53125 0.84375 0.53125 0.90625 0.53125 0.96875
		 0.53125 0.0625 0.46875 0.28125 0.46875 0.34375 0.46875 0.40625 0.46875 0.46875 0.46875
		 0.6875 0.46875 0.78125 0.46875 0.84375 0.46875 0.90625 0.46875 0.96875 0.46875 0.0625
		 0.34375 0.1875 0.28125 0.1875 0.21875 0.1875 0.15625 0.1875 0.40625 0.5625 0.46875
		 0.5625 0.53125 0.5625 0.59375 0.5625 0.84375 0.1875 0.78125 0.1875 0.71875 0.1875
		 0.65625 0.1875 0.59375 0.1875 0.53125 0.1875 0.46875 0.1875 0.40625 0.1875 0.40625
		 0 0.4375 0.0625 0.40625 0.125 0.375 0.0625 0.40625 0.2421875 0.4375 0.28125 0.40625
		 0.3125 0.375 0.28125 0.40625 0.625 0.4375 0.6875 0.40625 0.7421875 0.375 0.6875 0.40625
		 0.9375 0.4375 0.96875 0.40625 1 0.375 0.96875 0.65625 0 0.6875 0.0625 0.65625 0.125
		 0.625 0.0625 0.34375 0 0.34375 0.125 0.3125 0.0625 0.40625 0.4375 0.4375 0.46875
		 0.40625 0.5078125 0.375 0.46875 0.15625 0 0.1875 0.0625 0.15625 0.125 0.125 0.0625
		 0.4375 0.78125 0.40625 0.8125 0.375 0.78125 0.8125 0.0625 0.84375 0 0.875 0.0625
		 0.84375 0.125 0.40625 0.375 0.4375 0.40625 0.375 0.40625 0.21875 0 0.25 0.0625 0.21875
		 0.125 0.4375 0.84375 0.40625 0.875 0.375 0.84375 0.75 0.0625 0.78125 0 0.78125 0.125
		 0.4375 0.34375 0.375 0.34375 0.28125 0 0.28125 0.125 0.4375 0.90625 0.375 0.90625
		 0.71875 0 0.71875 0.125 0.59375 0.2421875 0.625 0.28125 0.59375 0.3125 0.5625 0.28125
		 0.5625 0.34375 0.625 0.34375 0.59375 0.375 0.5625 0.40625 0.625 0.40625 0.59375 0.4375
		 0.5625 0.46875 0.625 0.46875 0.59375 0.5078125 0.5625 0.6875 0.59375 0.625 0.625
		 0.6875 0.59375 0.7421875 0.5625 0.78125 0.625 0.78125 0.59375 0.8125 0.5625 0.84375
		 0.625 0.84375 0.59375 0.875 0.5625 0.90625 0.625 0.90625 0.59375 0.9375 0.5625 0.96875
		 0.625 0.96875 0.59375 1 0.5625 0.0625 0.59375 0 0.59375 0.125 0.53125 0.2421875 0.53125
		 0.3125 0.5 0.28125 0.5 0.34375 0.53125 0.375 0.5 0.40625 0.53125 0.4375;
	setAttr ".uvst[0].uvsp[250:304]" 0.5 0.46875 0.53125 0.5078125 0.5 0.6875 0.53125
		 0.625 0.53125 0.7421875 0.5 0.78125 0.53125 0.8125 0.5 0.84375 0.53125 0.875 0.5
		 0.90625 0.53125 0.9375 0.5 0.96875 0.53125 1 0.5 0.0625 0.53125 0 0.53125 0.125 0.46875
		 0.2421875 0.46875 0.3125 0.46875 0.375 0.46875 0.4375 0.46875 0.5078125 0.46875 0.625
		 0.46875 0.7421875 0.46875 0.8125 0.46875 0.875 0.46875 0.9375 0.46875 1 0.46875 0
		 0.46875 0.125 0.375 0.1875 0.34375 0.25 0.3125 0.1875 0.28125 0.25 0.25 0.1875 0.21875
		 0.25 0.1875 0.1875 0.15625 0.25 0.125 0.1875 0.4375 0.5625 0.375 0.5625 0.5 0.5625
		 0.5625 0.5625 0.625 0.5625 0.8125 0.1875 0.875 0.1875 0.84375 0.25 0.75 0.1875 0.78125
		 0.25 0.6875 0.1875 0.71875 0.25 0.65625 0.25 0.625 0.1875 0.5625 0.1875 0.5 0.1875
		 0.4375 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 258 ".vt";
	setAttr ".vt[0:165]"  -0.44494212 -0.3888889 0.13280255 0.44444448 -0.3888889 0.41749895
		 -0.44494212 0.3888889 0.12634933 0.44444448 0.3888889 0.41749895 -0.44494212 0.3888889 -0.12634933
		 0.44444448 0.3888889 -0.41749895 -0.44494212 -0.3888889 -0.13280255 0.44444448 -0.3888889 -0.41749895
		 0.46875 0.4375 -0.24226302 -0.47116083 0.4375 -0.082253009 -0.47116083 -0.4375 -0.083406404
		 0.46875 -0.4375 -0.24226302 0.46875 0.4375 2.1886081e-008 -0.47369719 0.4375 2.2584572e-008
		 -0.47369719 -0.4375 2.2351742e-008 0.46875 -0.4375 2.1420419e-008 0.46875 0.4375 0.24226302
		 -0.47116083 0.4375 0.082253009 -0.47116083 -0.4375 0.083406404 0.46875 -0.4375 0.24226302
		 0.25 0.4375 0.35022202 0.25 0.5 0.1888652 0.25 0.5 2.2817403e-008 0.25 0.5 -0.1888652
		 0.25 0.4375 -0.35022202 0.25 -0.4375 -0.35022202 0.25 -0.5 -0.1888652 0.25 -0.5 2.1420419e-008
		 0.25 -0.5 0.1888652 0.25 -0.4375 0.35022202 -2.1420419e-008 0.4375 0.25020409 -2.0489097e-008 0.5 0.13437736
		 -2.0489097e-008 0.5 2.2351742e-008 -2.0489097e-008 0.5 -0.13437736 -2.0489097e-008 0.4375 -0.25020409
		 -2.0489097e-008 -0.4375 -0.25148383 -2.0489097e-008 -0.5 -0.13459066 -2.0489097e-008 -0.5 2.2584572e-008
		 -2.0489097e-008 -0.5 0.13459066 -2.0489097e-008 -0.4375 0.2514838 -0.25003406 0.4375 0.16981919
		 -0.25028849 0.5 0.096405447 -0.25057301 0.5 2.2351742e-008 -0.25028849 0.5 -0.096405432
		 -0.25003406 0.4375 -0.16981921 -0.25003406 -0.4375 -0.17843764 -0.25028849 -0.5 -0.097841859
		 -0.25057301 -0.5 2.2351742e-008 -0.25028849 -0.5 0.097841859 -0.25003406 -0.4375 0.17843765
		 -0.46927169 0 0.14113164 -0.50465637 0 0.083263703 -0.51020074 0 2.2351742e-008 -0.50465643 0 -0.083263695
		 -0.46927169 0 -0.14113164 -0.25 0 -0.20071584 -2.0489097e-008 0 -0.26972893 0.25 0 -0.3731643
		 0.46875 0 -0.45251501 0.5 0 -0.25 0.5 0 2.0489097e-008 0.5 0 0.25 0.46875 0 0.45251501
		 0.25 0 0.3731643 -2.0489097e-008 0 0.26972896 -0.25 0 0.20071584 -0.37513623 -0.4375 0.14962102
		 -0.37513623 0.4375 0.1407418 -0.37513623 0.4375 -0.1407418 -0.37513623 -0.4375 -0.14962101
		 -0.46918863 -0.25 0.13747555 0.46875 -0.25 0.45251504 -0.46986976 0.4375 0.10734974
		 0.46875 0.4375 0.36307746 -0.46918863 0.25 -0.13286208 0.46875 0.25 -0.45251504 -0.46986976 -0.4375 -0.11196323
		 0.46875 -0.4375 -0.36307746 0.46875 0.4375 -0.36307746 -0.46986976 0.4375 -0.10734974
		 0.375 0.5 -0.21905209 -0.47279459 -0.4375 -0.044332463 -0.50387353 0.25 -0.082115188
		 0.46875 -0.4375 -0.12119491 -0.37615395 -0.5 -0.088113621 0.5 -0.25 -0.25 0.46875 0.4375 -0.12119491
		 -0.47279459 0.4375 -0.044332445 0.375 0.5 2.4214387e-008 -0.47279459 -0.4375 0.044332493
		 -0.50832856 0.25 2.2351742e-008 0.46875 -0.4375 0.12119494 -0.37729204 -0.5 2.2351742e-008
		 0.5 -0.25 1.8626451e-008 0.46875 0.4375 0.12119494 -0.47279459 0.4375 0.044332474
		 0.375 0.5 0.21905209 -0.46986976 -0.4375 0.11196323 -0.50387353 0.25 0.082115203
		 0.46875 -0.4375 0.36307746 -0.37615395 -0.5 0.088113636 0.5 -0.25 0.25 0.375 0.4375 0.40812257
		 0.12499999 0.5 0.16020033 0.25 0.5 0.28139526 0.12499999 0.5 2.2351742e-008 0.25 0.5 0.094813131
		 0.12499999 0.5 -0.16020033 0.25 0.5 -0.094813094 0.375 0.4375 -0.40812254 0.25 0.5 -0.28139526
		 0.375 -0.4375 -0.40812257 0.25 0.25 -0.3731643 0.375 -0.5 -0.21905209 0.25 -0.5 -0.28139526
		 0.375 -0.5 2.0489097e-008 0.25 -0.5 -0.094813094 0.375 -0.5 0.21905209 0.25 -0.5 0.094813123
		 0.375 -0.4375 0.40812254 0.25 -0.5 0.28139526 0.25 -0.25 0.3731643 0.12499999 0.4375 0.29777542
		 -0.12500001 0.5 0.1127162 -2.2351742e-008 0.5 0.20042647 -0.125 0.5 2.2351742e-008
		 -1.8626451e-008 0.5 0.067416608 -0.125 0.5 -0.1127162 -1.8626451e-008 0.5 -0.067416579
		 0.12499999 0.4375 -0.29777542 -1.8626451e-008 0.5 -0.20042649 0.12499999 -0.4375 -0.29777545
		 -1.8626451e-008 0.25 -0.26835036 0.12499999 -0.5 -0.16020033 -1.8626451e-008 -0.5 -0.20127964
		 0.12499999 -0.5 2.2351742e-008 -1.8626451e-008 -0.5 -0.067416579 0.12499999 -0.5 0.16020033
		 -1.8626451e-008 -0.5 0.067416608 0.12499999 -0.4375 0.29777545 -1.8626451e-008 -0.5 0.20127964
		 -1.8626451e-008 -0.25 0.26920351 -0.12500001 0.4375 0.20692931 -0.37615395 0.5 0.086633742
		 -0.25013623 0.5 0.13732386 -0.37729204 0.5 2.2351742e-008 -0.25047284 0.5 0.049659595
		 -0.37615395 0.5 -0.086633734 -0.25047284 0.5 -0.049659565 -0.125 0.4375 -0.20692931
		 -0.25013623 0.5 -0.13732387 -0.125 -0.4375 -0.21204823 -0.25 0.25 -0.1912958 -0.125 -0.5 -0.11356935
		 -0.25013623 -0.5 -0.14306949 -0.125 -0.5 2.2351742e-008 -0.25047284 -0.5 -0.049659569
		 -0.125 -0.5 0.11356935 -0.25047284 -0.5 0.049659599 -0.125 -0.4375 0.21204823 -0.25013623 -0.5 0.14306949
		 -0.25 -0.25 0.19704145 -0.46918863 0.25 0.13286208 -0.50387353 -0.25 0.082741931
		 -0.50208682 0 0.11392917 -0.50832856 -0.25 2.2351742e-008;
	setAttr ".vt[166:257]" -0.5081917 0 0.043825138 -0.50387353 -0.25 -0.082741924
		 -0.5081917 0 -0.043825109 -0.46918863 -0.25 -0.13747555 -0.50208682 0 -0.11392917
		 -0.25 -0.25 -0.19704145 -0.375 0 -0.1701812 -1.8626451e-008 -0.25 -0.26920351 -0.125 0 -0.23237357
		 0.25 -0.25 -0.3731643 0.12499999 0 -0.31735653 0.46875 -0.25 -0.45251504 0.375 0 -0.43506014
		 0.5 0.25 -0.25 0.5 0 -0.375 0.5 0.25 1.8626451e-008 0.5 0 -0.12499999 0.5 0.25 0.25
		 0.5 0 0.125 0.46875 0.25 0.45251504 0.5 0 0.375 0.25 0.25 0.3731643 0.375 0 0.43506014
		 -1.8626451e-008 0.25 0.26835036 0.12499999 0 0.31735656 -0.25 0.25 0.1912958 -0.125 0 0.23237357
		 -0.375 0 0.1701812 -0.375 -0.25 0.16599235 -0.37554491 0.5 0.11726245 -0.375 -0.25 -0.16599235
		 -0.37554491 -0.5 0.12318196 0.5 -0.25 0.375 -0.50175446 -0.25 0.11184207 -0.37554491 0.5 -0.11726247
		 -0.50175446 -0.25 -0.11184207 -0.37554491 -0.5 -0.12318195 0.5 -0.25 -0.375 -0.37689131 0.5 -0.045854483
		 -0.50672197 -0.25 -0.043825112 -0.37689131 -0.5 -0.045854494 0.5 -0.25 -0.12499999
		 -0.37689131 0.5 0.045854513 -0.50672197 -0.25 0.043825142 -0.37689131 -0.5 0.045854524
		 0.5 -0.25 0.125 0.375 0.5 0.32730979 0.375 0.5 0.10977974 0.375 0.5 -0.1097797 0.375 0.5 -0.32730979
		 0.375 -0.25 -0.43506014 0.375 -0.5 -0.32730979 0.375 -0.5 -0.10977971 0.375 -0.5 0.10977973
		 0.375 -0.5 0.32730979 0.375 -0.25 0.43506014 0.12499999 0.5 0.2390321 0.12499999 0.5 0.080353856
		 0.12499999 0.5 -0.080353826 0.12499999 0.5 -0.23903212 0.12499999 -0.25 -0.31735656
		 0.12499999 -0.5 -0.23903212 0.12499999 -0.5 -0.080353826 0.12499999 -0.5 0.080353856
		 0.12499999 -0.5 0.23903212 0.12499999 -0.25 0.31735656 -0.12500001 0.5 0.16578445
		 -0.125 0.5 0.057016078 -0.125 0.5 -0.057016049 -0.125 0.5 -0.16578446 -0.125 -0.25 -0.23027182
		 -0.125 -0.5 -0.16919707 -0.125 -0.5 -0.057016049 -0.125 -0.5 0.057016078 -0.125 -0.5 0.16919707
		 -0.125 -0.25 0.23027182 -0.50175446 0.25 0.10933518 -0.50672197 0.25 0.043825135
		 -0.50672197 0.25 -0.043825105 -0.50175446 0.25 -0.10933518 -0.375 0.25 -0.16007286
		 -0.125 0.25 -0.2268592 0.12499999 0.25 -0.31735653 0.375 0.25 -0.43506014 0.5 0.25 -0.375
		 0.5 0.25 -0.12499999 0.5 0.25 0.125 0.5 0.25 0.375 0.375 0.25 0.43506014 0.12499999 0.25 0.31735656
		 -0.125 0.25 0.2268592 -0.375 0.25 0.16007286;
	setAttr -s 512 ".ed";
	setAttr ".ed[0:165]"  0 66 1 66 49 1 2 67 1 67 40 1 4 68 1 68 44 1 6 69 1
		 69 45 1 0 70 1 70 50 1 1 71 1 71 62 1 2 72 1 72 17 1 3 73 1 73 16 1 4 74 1 74 54 1
		 5 75 1 75 58 1 6 76 1 76 10 1 7 77 1 77 11 1 8 78 1 78 5 1 9 79 1 79 4 1 8 80 1 80 23 1
		 10 81 1 81 14 1 9 82 1 82 53 1 11 83 1 83 15 1 10 84 1 84 46 1 11 85 1 85 59 1 12 86 1
		 86 8 1 13 87 1 87 9 1 12 88 1 88 22 1 14 89 1 89 18 1 13 90 1 90 52 1 15 91 1 91 19 1
		 14 92 1 92 47 1 15 93 1 93 60 1 16 94 1 94 12 1 17 95 1 95 13 1 16 96 1 96 21 1 18 97 1
		 97 0 1 17 98 1 98 51 1 19 99 1 99 1 1 18 100 1 100 48 1 19 101 1 101 61 1 20 102 1
		 102 3 1 21 103 1 103 31 1 20 104 1 104 21 1 22 105 1 105 32 1 21 106 1 106 22 1 23 107 1
		 107 33 1 22 108 1 108 23 1 24 109 1 109 5 1 23 110 1 110 24 1 25 111 1 111 7 1 24 112 1
		 112 57 1 26 113 1 113 11 1 25 114 1 114 26 1 27 115 1 115 15 1 26 116 1 116 27 1
		 28 117 1 117 19 1 27 118 1 118 28 1 29 119 1 119 1 1 28 120 1 120 29 1 29 121 1 121 63 1
		 30 122 1 122 20 1 31 123 1 123 41 1 30 124 1 124 31 1 32 125 1 125 42 1 31 126 1
		 126 32 1 33 127 1 127 43 1 32 128 1 128 33 1 34 129 1 129 24 1 33 130 1 130 34 1
		 35 131 1 131 25 1 34 132 1 132 56 1 36 133 1 133 26 1 35 134 1 134 36 1 37 135 1
		 135 27 1 36 136 1 136 37 1 38 137 1 137 28 1 37 138 1 138 38 1 39 139 1 139 29 1
		 38 140 1 140 39 1 39 141 1 141 64 1 40 142 1 142 30 1 41 143 1 143 17 1 40 144 1
		 144 41 1 42 145 1 145 13 1 41 146 1 146 42 1 43 147 1 147 9 1 42 148 1 148 43 1;
	setAttr ".ed[166:331]" 44 149 1 149 34 1 43 150 1 150 44 1 45 151 1 151 35 1
		 44 152 1 152 55 1 46 153 1 153 36 1 45 154 1 154 46 1 47 155 1 155 37 1 46 156 1
		 156 47 1 48 157 1 157 38 1 47 158 1 158 48 1 49 159 1 159 39 1 48 160 1 160 49 1
		 49 161 1 161 65 1 50 162 1 162 2 1 51 163 1 163 18 1 50 164 1 164 51 1 52 165 1 165 14 1
		 51 166 1 166 52 1 53 167 1 167 10 1 52 168 1 168 53 1 54 169 1 169 6 1 53 170 1 170 54 1
		 55 171 1 171 45 1 54 172 1 172 55 1 56 173 1 173 35 1 55 174 1 174 56 1 57 175 1
		 175 25 1 56 176 1 176 57 1 58 177 1 177 7 1 57 178 1 178 58 1 59 179 1 179 8 1 58 180 1
		 180 59 1 60 181 1 181 12 1 59 182 1 182 60 1 61 183 1 183 16 1 60 184 1 184 61 1
		 62 185 1 185 3 1 61 186 1 186 62 1 63 187 1 187 20 1 62 188 1 188 63 1 64 189 1 189 30 1
		 63 190 1 190 64 1 65 191 1 191 40 1 64 192 1 192 65 1 65 193 1 193 50 1 194 66 1
		 194 161 1 194 193 1 194 70 1 195 67 1 195 144 1 195 143 1 195 72 1 196 172 1 196 171 1
		 196 69 1 196 169 1 197 100 1 197 160 1 197 66 1 197 97 1 198 99 1 198 101 1 198 186 1
		 198 71 1 199 97 1 199 70 1 199 164 1 199 163 1 200 147 1 200 150 1 200 68 1 200 79 1
		 201 76 1 201 167 1 201 170 1 201 169 1 202 69 1 202 154 1 202 84 1 202 76 1 203 85 1
		 203 77 1 203 177 1 203 180 1 204 145 1 204 148 1 204 147 1 204 87 1 205 81 1 205 165 1
		 205 168 1 205 167 1 206 84 1 206 156 1 206 92 1 206 81 1 207 93 1 207 83 1 207 85 1
		 207 182 1 208 143 1 208 146 1 208 145 1 208 95 1 209 89 1 209 163 1 209 166 1 209 165 1
		 210 92 1 210 158 1 210 100 1 210 89 1 211 101 1 211 91 1 211 93 1 211 184 1 212 102 1
		 212 73 1 212 96 1 212 104 1;
	setAttr ".ed[332:497]" 213 106 1 213 96 1 213 94 1 213 88 1 214 108 1 214 88 1
		 214 86 1 214 80 1 215 110 1 215 80 1 215 78 1 215 109 1 216 175 1 216 178 1 216 177 1
		 216 111 1 217 114 1 217 111 1 217 77 1 217 113 1 218 116 1 218 113 1 218 83 1 218 115 1
		 219 118 1 219 115 1 219 91 1 219 117 1 220 120 1 220 117 1 220 99 1 220 119 1 221 121 1
		 221 119 1 221 71 1 221 188 1 222 122 1 222 104 1 222 103 1 222 124 1 223 126 1 223 103 1
		 223 106 1 223 105 1 224 128 1 224 105 1 224 108 1 224 107 1 225 130 1 225 107 1 225 110 1
		 225 129 1 226 173 1 226 176 1 226 175 1 226 131 1 227 134 1 227 131 1 227 114 1 227 133 1
		 228 136 1 228 133 1 228 116 1 228 135 1 229 138 1 229 135 1 229 118 1 229 137 1 230 140 1
		 230 137 1 230 120 1 230 139 1 231 141 1 231 139 1 231 121 1 231 190 1 232 142 1 232 124 1
		 232 123 1 232 144 1 233 146 1 233 123 1 233 126 1 233 125 1 234 148 1 234 125 1 234 128 1
		 234 127 1 235 150 1 235 127 1 235 130 1 235 149 1 236 171 1 236 174 1 236 173 1 236 151 1
		 237 154 1 237 151 1 237 134 1 237 153 1 238 156 1 238 153 1 238 136 1 238 155 1 239 158 1
		 239 155 1 239 138 1 239 157 1 240 160 1 240 157 1 240 140 1 240 159 1 241 161 1 241 159 1
		 241 141 1 241 192 1 242 164 1 242 162 1 242 72 1 242 98 1 243 166 1 243 98 1 243 95 1
		 243 90 1 244 168 1 244 90 1 244 87 1 244 82 1 245 170 1 245 82 1 245 79 1 245 74 1
		 246 68 1 246 152 1 246 172 1 246 74 1 247 174 1 247 152 1 247 149 1 247 132 1 248 176 1
		 248 132 1 248 129 1 248 112 1 249 178 1 249 112 1 249 109 1 249 75 1 250 179 1 250 180 1
		 250 75 1 250 78 1 251 181 1 251 182 1 251 179 1 251 86 1 252 183 1 252 184 1 252 181 1
		 252 94 1 253 186 1 253 183 1 253 73 1 253 185 1 254 187 1 254 188 1;
	setAttr ".ed[498:511]" 254 185 1 254 102 1 255 189 1 255 190 1 255 187 1 255 122 1
		 256 191 1 256 192 1 256 189 1 256 142 1 257 193 1 257 191 1 257 67 1 257 162 1;
	setAttr -s 256 -ch 1024 ".fc[0:255]" -type "polyFaces" 
		f 4 1 190 -258 256
		mu 0 4 153 69 154 89
		f 4 191 254 -259 257
		mu 0 4 154 88 155 89
		f 4 255 -10 -260 258
		mu 0 4 155 71 156 89
		f 4 -9 0 -257 259
		mu 0 4 156 0 153 89
		f 4 3 156 -262 260
		mu 0 4 157 60 158 90
		f 4 157 154 -263 261
		mu 0 4 158 61 159 90
		f 4 155 -14 -264 262
		mu 0 4 159 33 160 90
		f 4 -13 2 -261 263
		mu 0 4 160 2 157 90
		f 4 213 210 -266 264
		mu 0 4 161 77 162 91
		f 4 211 -8 -267 265
		mu 0 4 162 65 163 91
		f 4 -7 -208 -268 266
		mu 0 4 163 6 164 91
		f 4 -207 212 -265 267
		mu 0 4 164 76 161 91
		f 4 69 188 -270 268
		mu 0 4 165 68 166 92
		f 4 189 -2 -271 269
		mu 0 4 166 70 167 92
		f 4 -1 -64 -272 270
		mu 0 4 167 8 168 92
		f 4 -63 68 -269 271
		mu 0 4 168 35 165 92
		f 4 -67 70 -274 272
		mu 0 4 169 37 170 93
		f 4 71 240 -275 273
		mu 0 4 170 84 171 93
		f 4 241 -12 -276 274
		mu 0 4 171 85 172 93
		f 4 -11 -68 -273 275
		mu 0 4 172 1 169 93
		f 4 63 8 -278 276
		mu 0 4 173 0 156 94
		f 4 9 196 -279 277
		mu 0 4 156 71 174 94
		f 4 197 194 -280 278
		mu 0 4 174 72 175 94
		f 4 195 62 -277 279
		mu 0 4 175 34 173 94
		f 4 -163 168 -282 280
		mu 0 4 176 63 177 95
		f 4 169 -6 -283 281
		mu 0 4 177 64 178 95
		f 4 -5 -28 -284 282
		mu 0 4 178 4 179 95
		f 4 -27 -164 -281 283
		mu 0 4 179 17 176 95
		f 4 21 -204 -286 284
		mu 0 4 180 18 181 96
		f 4 -203 208 -287 285
		mu 0 4 181 74 182 96
		f 4 209 206 -288 286
		mu 0 4 182 75 183 96
		f 4 207 20 -285 287
		mu 0 4 183 12 180 96
		f 4 7 176 -290 288
		mu 0 4 163 65 184 97
		f 4 177 -38 -291 289
		mu 0 4 184 66 185 97
		f 4 -37 -22 -292 290
		mu 0 4 185 19 186 97
		f 4 -21 6 -289 291
		mu 0 4 186 6 163 97
		f 4 -39 -24 -294 292
		mu 0 4 187 21 188 98
		f 4 -23 -224 -295 293
		mu 0 4 188 10 189 98
		f 4 -223 228 -296 294
		mu 0 4 189 81 190 98
		f 4 229 -40 -293 295
		mu 0 4 190 82 187 98
		f 4 -159 164 -298 296
		mu 0 4 191 62 192 99
		f 4 165 162 -299 297
		mu 0 4 192 63 176 99
		f 4 163 -44 -300 298
		mu 0 4 176 17 193 99
		f 4 -43 -160 -297 299
		mu 0 4 193 25 191 99
		f 4 31 -200 -302 300
		mu 0 4 194 26 195 100
		f 4 -199 204 -303 301
		mu 0 4 195 73 196 100
		f 4 205 202 -304 302
		mu 0 4 196 74 181 100
		f 4 203 30 -301 303
		mu 0 4 181 18 194 100
		f 4 37 180 -306 304
		mu 0 4 185 66 197 101
		f 4 181 -54 -307 305
		mu 0 4 197 67 198 101
		f 4 -53 -32 -308 306
		mu 0 4 198 27 199 101
		f 4 -31 36 -305 307
		mu 0 4 199 19 185 101
		f 4 -55 -36 -310 308
		mu 0 4 200 29 201 102
		f 4 -35 38 -311 309
		mu 0 4 201 21 187 102
		f 4 39 232 -312 310
		mu 0 4 187 82 202 102
		f 4 233 -56 -309 311
		mu 0 4 202 83 200 102
		f 4 -155 160 -314 312
		mu 0 4 159 61 203 103
		f 4 161 158 -315 313
		mu 0 4 203 62 191 103
		f 4 159 -60 -316 314
		mu 0 4 191 25 204 103
		f 4 -59 -156 -313 315
		mu 0 4 204 33 159 103
		f 4 47 -196 -318 316
		mu 0 4 205 34 175 104
		f 4 -195 200 -319 317
		mu 0 4 175 72 206 104
		f 4 201 198 -320 318
		mu 0 4 206 73 195 104
		f 4 199 46 -317 319
		mu 0 4 195 26 205 104
		f 4 53 184 -322 320
		mu 0 4 198 67 207 105
		f 4 185 -70 -323 321
		mu 0 4 207 68 165 105
		f 4 -69 -48 -324 322
		mu 0 4 165 35 208 105
		f 4 -47 52 -321 323
		mu 0 4 208 27 198 105
		f 4 -71 -52 -326 324
		mu 0 4 170 37 209 106
		f 4 -51 54 -327 325
		mu 0 4 209 29 200 106
		f 4 55 236 -328 326
		mu 0 4 200 83 210 106
		f 4 237 -72 -325 327
		mu 0 4 210 84 170 106
		f 4 73 14 -330 328
		mu 0 4 211 3 212 107
		f 4 15 60 -331 329
		mu 0 4 212 30 213 107
		f 4 61 -78 -332 330
		mu 0 4 213 39 214 107
		f 4 -77 72 -329 331
		mu 0 4 214 38 211 107
		f 4 -81 -62 -334 332
		mu 0 4 215 39 213 108
		f 4 -61 56 -335 333
		mu 0 4 213 30 216 108
		f 4 57 44 -336 334
		mu 0 4 216 22 217 108
		f 4 45 -82 -333 335
		mu 0 4 217 40 215 108
		f 4 -85 -46 -338 336
		mu 0 4 218 40 217 109
		f 4 -45 40 -339 337
		mu 0 4 217 22 219 109
		f 4 41 28 -340 338
		mu 0 4 219 14 220 109
		f 4 29 -86 -337 339
		mu 0 4 220 41 218 109
		f 4 -89 -30 -342 340
		mu 0 4 221 41 220 110
		f 4 -29 24 -343 341
		mu 0 4 220 14 222 110
		f 4 25 -88 -344 342
		mu 0 4 222 5 223 110
		f 4 -87 -90 -341 343
		mu 0 4 223 42 221 110
		f 4 -219 224 -346 344
		mu 0 4 224 79 225 111
		f 4 225 222 -347 345
		mu 0 4 225 80 226 111
		f 4 223 -92 -348 346
		mu 0 4 226 7 227 111
		f 4 -91 -220 -345 347
		mu 0 4 227 43 224 111
		f 4 -97 90 -350 348
		mu 0 4 228 43 227 112
		f 4 91 22 -351 349
		mu 0 4 227 7 229 112
		f 4 23 -96 -352 350
		mu 0 4 229 20 230 112
		f 4 -95 -98 -349 351
		mu 0 4 230 44 228 112
		f 4 -101 94 -354 352
		mu 0 4 231 44 230 113
		f 4 95 34 -355 353
		mu 0 4 230 20 232 113
		f 4 35 -100 -356 354
		mu 0 4 232 28 233 113
		f 4 -99 -102 -353 355
		mu 0 4 233 45 231 113
		f 4 -105 98 -358 356
		mu 0 4 234 45 233 114
		f 4 99 50 -359 357
		mu 0 4 233 28 235 114
		f 4 51 -104 -360 358
		mu 0 4 235 36 236 114
		f 4 -103 -106 -357 359
		mu 0 4 236 46 234 114
		f 4 -109 102 -362 360
		mu 0 4 237 46 236 115
		f 4 103 66 -363 361
		mu 0 4 236 36 238 115
		f 4 67 -108 -364 362
		mu 0 4 238 9 239 115
		f 4 -107 -110 -361 363
		mu 0 4 239 48 237 115
		f 4 -111 106 -366 364
		mu 0 4 240 47 241 116
		f 4 107 10 -367 365
		mu 0 4 241 1 172 116
		f 4 11 244 -368 366
		mu 0 4 172 85 242 116
		f 4 245 -112 -365 367
		mu 0 4 242 86 240 116
		f 4 113 76 -370 368
		mu 0 4 243 38 214 117
		f 4 77 74 -371 369
		mu 0 4 214 39 244 117
		f 4 75 -118 -372 370
		mu 0 4 244 50 245 117
		f 4 -117 112 -369 371
		mu 0 4 245 49 243 117
		f 4 -121 -76 -374 372
		mu 0 4 246 50 244 118
		f 4 -75 80 -375 373
		mu 0 4 244 39 215 118
		f 4 81 78 -376 374
		mu 0 4 215 40 247 118
		f 4 79 -122 -373 375
		mu 0 4 247 51 246 118
		f 4 -125 -80 -378 376
		mu 0 4 248 51 247 119
		f 4 -79 84 -379 377
		mu 0 4 247 40 218 119
		f 4 85 82 -380 378
		mu 0 4 218 41 249 119
		f 4 83 -126 -377 379
		mu 0 4 249 52 248 119
		f 4 -129 -84 -382 380
		mu 0 4 250 52 249 120
		f 4 -83 88 -383 381
		mu 0 4 249 41 221 120
		f 4 89 -128 -384 382
		mu 0 4 221 42 251 120
		f 4 -127 -130 -381 383
		mu 0 4 251 53 250 120
		f 4 -215 220 -386 384
		mu 0 4 252 78 253 121
		f 4 221 218 -387 385
		mu 0 4 253 79 224 121
		f 4 219 -132 -388 386
		mu 0 4 224 43 254 121
		f 4 -131 -216 -385 387
		mu 0 4 254 54 252 121
		f 4 -137 130 -390 388
		mu 0 4 255 54 254 122
		f 4 131 96 -391 389
		mu 0 4 254 43 228 122
		f 4 97 -136 -392 390
		mu 0 4 228 44 256 122
		f 4 -135 -138 -389 391
		mu 0 4 256 55 255 122
		f 4 -141 134 -394 392
		mu 0 4 257 55 256 123
		f 4 135 100 -395 393
		mu 0 4 256 44 231 123
		f 4 101 -140 -396 394
		mu 0 4 231 45 258 123
		f 4 -139 -142 -393 395
		mu 0 4 258 56 257 123
		f 4 -145 138 -398 396
		mu 0 4 259 56 258 124
		f 4 139 104 -399 397
		mu 0 4 258 45 234 124
		f 4 105 -144 -400 398
		mu 0 4 234 46 260 124
		f 4 -143 -146 -397 399
		mu 0 4 260 57 259 124
		f 4 -149 142 -402 400
		mu 0 4 261 57 260 125
		f 4 143 108 -403 401
		mu 0 4 260 46 237 125
		f 4 109 -148 -404 402
		mu 0 4 237 48 262 125
		f 4 -147 -150 -401 403
		mu 0 4 262 59 261 125
		f 4 -151 146 -406 404
		mu 0 4 263 58 264 126
		f 4 147 110 -407 405
		mu 0 4 264 47 240 126
		f 4 111 248 -408 406
		mu 0 4 240 86 265 126
		f 4 249 -152 -405 407
		mu 0 4 265 87 263 126
		f 4 153 116 -410 408
		mu 0 4 266 49 245 127
		f 4 117 114 -411 409
		mu 0 4 245 50 267 127
		f 4 115 -158 -412 410
		mu 0 4 267 61 158 127
		f 4 -157 152 -409 411
		mu 0 4 158 60 266 127
		f 4 -161 -116 -414 412
		mu 0 4 203 61 267 128
		f 4 -115 120 -415 413
		mu 0 4 267 50 246 128
		f 4 121 118 -416 414
		mu 0 4 246 51 268 128
		f 4 119 -162 -413 415
		mu 0 4 268 62 203 128
		f 4 -165 -120 -418 416
		mu 0 4 192 62 268 129
		f 4 -119 124 -419 417
		mu 0 4 268 51 248 129
		f 4 125 122 -420 418
		mu 0 4 248 52 269 129
		f 4 123 -166 -417 419
		mu 0 4 269 63 192 129
		f 4 -169 -124 -422 420
		mu 0 4 177 63 269 130
		f 4 -123 128 -423 421
		mu 0 4 269 52 250 130
		f 4 129 -168 -424 422
		mu 0 4 250 53 270 130
		f 4 -167 -170 -421 423
		mu 0 4 270 64 177 130
		f 4 -211 216 -426 424
		mu 0 4 162 77 271 131
		f 4 217 214 -427 425
		mu 0 4 271 78 252 131
		f 4 215 -172 -428 426
		mu 0 4 252 54 272 131
		f 4 -171 -212 -425 427
		mu 0 4 272 65 162 131
		f 4 -177 170 -430 428
		mu 0 4 184 65 272 132
		f 4 171 136 -431 429
		mu 0 4 272 54 255 132
		f 4 137 -176 -432 430
		mu 0 4 255 55 273 132
		f 4 -175 -178 -429 431
		mu 0 4 273 66 184 132
		f 4 -181 174 -434 432
		mu 0 4 197 66 273 133
		f 4 175 140 -435 433
		mu 0 4 273 55 257 133
		f 4 141 -180 -436 434
		mu 0 4 257 56 274 133
		f 4 -179 -182 -433 435
		mu 0 4 274 67 197 133
		f 4 -185 178 -438 436
		mu 0 4 207 67 274 134
		f 4 179 144 -439 437
		mu 0 4 274 56 259 134
		f 4 145 -184 -440 438
		mu 0 4 259 57 275 134
		f 4 -183 -186 -437 439
		mu 0 4 275 68 207 134
		f 4 -189 182 -442 440
		mu 0 4 166 68 275 135
		f 4 183 148 -443 441
		mu 0 4 275 57 261 135
		f 4 149 -188 -444 442
		mu 0 4 261 59 276 135
		f 4 -187 -190 -441 443
		mu 0 4 276 70 166 135
		f 4 -191 186 -446 444
		mu 0 4 154 69 277 136
		f 4 187 150 -447 445
		mu 0 4 277 58 263 136
		f 4 151 252 -448 446
		mu 0 4 263 87 278 136
		f 4 253 -192 -445 447
		mu 0 4 278 88 154 136
		f 4 -197 192 -450 448
		mu 0 4 174 71 279 137
		f 4 193 12 -451 449
		mu 0 4 279 2 280 137
		f 4 13 64 -452 450
		mu 0 4 280 32 281 137
		f 4 65 -198 -449 451
		mu 0 4 281 72 174 137
		f 4 -201 -66 -454 452
		mu 0 4 206 72 281 138
		f 4 -65 58 -455 453
		mu 0 4 281 32 282 138
		f 4 59 48 -456 454
		mu 0 4 282 24 283 138
		f 4 49 -202 -453 455
		mu 0 4 283 73 206 138
		f 4 -205 -50 -458 456
		mu 0 4 196 73 283 139
		f 4 -49 42 -459 457
		mu 0 4 283 24 284 139
		f 4 43 32 -460 458
		mu 0 4 284 16 285 139
		f 4 33 -206 -457 459
		mu 0 4 285 74 196 139
		f 4 -209 -34 -462 460
		mu 0 4 182 74 285 140
		f 4 -33 26 -463 461
		mu 0 4 285 16 286 140
		f 4 27 16 -464 462
		mu 0 4 286 13 287 140
		f 4 17 -210 -461 463
		mu 0 4 287 75 182 140
		f 4 5 172 -466 464
		mu 0 4 178 64 288 141
		f 4 173 -214 -467 465
		mu 0 4 288 77 161 141
		f 4 -213 -18 -468 466
		mu 0 4 161 76 289 141
		f 4 -17 4 -465 467
		mu 0 4 289 4 178 141
		f 4 -217 -174 -470 468
		mu 0 4 271 77 288 142
		f 4 -173 166 -471 469
		mu 0 4 288 64 270 142
		f 4 167 132 -472 470
		mu 0 4 270 53 290 142
		f 4 133 -218 -469 471
		mu 0 4 290 78 271 142
		f 4 -221 -134 -474 472
		mu 0 4 253 78 290 143
		f 4 -133 126 -475 473
		mu 0 4 290 53 251 143
		f 4 127 92 -476 474
		mu 0 4 251 42 291 143
		f 4 93 -222 -473 475
		mu 0 4 291 79 253 143
		f 4 -225 -94 -478 476
		mu 0 4 225 79 291 144
		f 4 -93 86 -479 477
		mu 0 4 291 42 223 144
		f 4 87 18 -480 478
		mu 0 4 223 5 292 144
		f 4 19 -226 -477 479
		mu 0 4 292 80 225 144
		f 4 -227 -230 -482 480
		mu 0 4 293 82 190 145
		f 4 -229 -20 -483 481
		mu 0 4 190 81 294 145
		f 4 -19 -26 -484 482
		mu 0 4 294 11 295 145
		f 4 -25 -228 -481 483
		mu 0 4 295 15 293 145
		f 4 -231 -234 -486 484
		mu 0 4 296 83 202 146
		f 4 -233 226 -487 485
		mu 0 4 202 82 293 146
		f 4 227 -42 -488 486
		mu 0 4 293 15 297 146
		f 4 -41 -232 -485 487
		mu 0 4 297 23 296 146
		f 4 -235 -238 -490 488
		mu 0 4 298 84 210 147
		f 4 -237 230 -491 489
		mu 0 4 210 83 296 147
		f 4 231 -58 -492 490
		mu 0 4 296 23 299 147
		f 4 -57 -236 -489 491
		mu 0 4 299 31 298 147
		f 4 -241 234 -494 492
		mu 0 4 171 84 298 148
		f 4 235 -16 -495 493
		mu 0 4 298 31 300 148
		f 4 -15 -240 -496 494
		mu 0 4 300 3 301 148
		f 4 -239 -242 -493 495
		mu 0 4 301 85 171 148
		f 4 -243 -246 -498 496
		mu 0 4 302 86 242 149
		f 4 -245 238 -499 497
		mu 0 4 242 85 301 149
		f 4 239 -74 -500 498
		mu 0 4 301 3 211 149
		f 4 -73 -244 -497 499
		mu 0 4 211 38 302 149
		f 4 -247 -250 -502 500
		mu 0 4 303 87 265 150
		f 4 -249 242 -503 501
		mu 0 4 265 86 302 150
		f 4 243 -114 -504 502
		mu 0 4 302 38 243 150
		f 4 -113 -248 -501 503
		mu 0 4 243 49 303 150
		f 4 -251 -254 -506 504
		mu 0 4 304 88 278 151
		f 4 -253 246 -507 505
		mu 0 4 278 87 303 151
		f 4 247 -154 -508 506
		mu 0 4 303 49 266 151
		f 4 -153 -252 -505 507
		mu 0 4 266 60 304 151
		f 4 -255 250 -510 508
		mu 0 4 155 88 304 152
		f 4 251 -4 -511 509
		mu 0 4 304 60 157 152
		f 4 -3 -194 -512 510
		mu 0 4 157 2 279 152
		f 4 -193 -256 -509 511
		mu 0 4 279 71 155 152;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube4" -p "blades";
	setAttr ".t" -type "double3" -4.7155719876908586 -4.9303806576313238e-032 4.7263038940033901 ;
	setAttr ".r" -type "double3" 90 0 119.99999999999999 ;
	setAttr ".s" -type "double3" 20.726747483998633 0.47686969348921499 1.397610889440478 ;
	setAttr ".rp" -type "double3" 11.123792676787346 1.0947644252537542e-047 -4.9303806576313074e-032 ;
	setAttr ".rpt" -type "double3" 0 4.9303806576313063e-032 4.9303806576313063e-032 ;
	setAttr ".sp" -type "double3" 0.53668780812691808 2.2957307629332791e-047 -3.5277205514655947e-032 ;
	setAttr ".spt" -type "double3" 10.587104868660479 -1.2009663376795245e-047 -1.4026601061657206e-032 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 305 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.4375 0.8125 0.25 0.1875 0.25 0.375 0.4375 0.1875
		 0 0.375 0.8125 0.625 0.8125 0.8125 0 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375
		 0.25 0 0.375 0.875 0.625 0.875 0.75 0 0.625 0.3125 0.6875 0.25 0.3125 0.25 0.375
		 0.3125 0.3125 0 0.375 0.9375 0.625 0.9375 0.6875 0 0.5625 0.2421875 0.5625 0.3125
		 0.5625 0.375 0.5625 0.4375 0.5625 0.5078125 0.5625 0.7421875 0.5625 0.8125 0.5625
		 0.875 0.5625 0.9375 0.5625 0 0.5625 1 0.5 0.2421875 0.5 0.3125 0.5 0.375 0.5 0.4375
		 0.5 0.5078125 0.5 0.7421875 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 0 0.5 1 0.4375 0.2421875
		 0.4375 0.3125 0.4375 0.375 0.4375 0.4375 0.4375 0.5078125 0.4375 0.7421875 0.4375
		 0.8125 0.4375 0.875 0.4375 0.9375 0.4375 0 0.4375 1 0.375 0.125 0.3125 0.125 0.25
		 0.125 0.1875 0.125 0.125 0.125 0.375 0.625 0.4375 0.625 0.5 0.625 0.5625 0.625 0.625
		 0.625 0.875 0.125 0.8125 0.125 0.75 0.125 0.6875 0.125 0.625 0.125 0.5625 0.125 0.5
		 0.125 0.4375 0.125 0.40625 0.0625 0.40625 0.28125 0.40625 0.6875 0.40625 0.96875
		 0.65625 0.0625 0.34375 0.0625 0.40625 0.46875 0.15625 0.0625 0.40625 0.78125 0.84375
		 0.0625 0.40625 0.40625 0.21875 0.0625 0.40625 0.84375 0.78125 0.0625 0.40625 0.34375
		 0.28125 0.0625 0.40625 0.90625 0.71875 0.0625 0.59375 0.28125 0.59375 0.34375 0.59375
		 0.40625 0.59375 0.46875 0.59375 0.6875 0.59375 0.78125 0.59375 0.84375 0.59375 0.90625
		 0.59375 0.96875 0.59375 0.0625 0.53125 0.28125 0.53125 0.34375 0.53125 0.40625 0.53125
		 0.46875 0.53125 0.6875 0.53125 0.78125 0.53125 0.84375 0.53125 0.90625 0.53125 0.96875
		 0.53125 0.0625 0.46875 0.28125 0.46875 0.34375 0.46875 0.40625 0.46875 0.46875 0.46875
		 0.6875 0.46875 0.78125 0.46875 0.84375 0.46875 0.90625 0.46875 0.96875 0.46875 0.0625
		 0.34375 0.1875 0.28125 0.1875 0.21875 0.1875 0.15625 0.1875 0.40625 0.5625 0.46875
		 0.5625 0.53125 0.5625 0.59375 0.5625 0.84375 0.1875 0.78125 0.1875 0.71875 0.1875
		 0.65625 0.1875 0.59375 0.1875 0.53125 0.1875 0.46875 0.1875 0.40625 0.1875 0.40625
		 0 0.4375 0.0625 0.40625 0.125 0.375 0.0625 0.40625 0.2421875 0.4375 0.28125 0.40625
		 0.3125 0.375 0.28125 0.40625 0.625 0.4375 0.6875 0.40625 0.7421875 0.375 0.6875 0.40625
		 0.9375 0.4375 0.96875 0.40625 1 0.375 0.96875 0.65625 0 0.6875 0.0625 0.65625 0.125
		 0.625 0.0625 0.34375 0 0.34375 0.125 0.3125 0.0625 0.40625 0.4375 0.4375 0.46875
		 0.40625 0.5078125 0.375 0.46875 0.15625 0 0.1875 0.0625 0.15625 0.125 0.125 0.0625
		 0.4375 0.78125 0.40625 0.8125 0.375 0.78125 0.8125 0.0625 0.84375 0 0.875 0.0625
		 0.84375 0.125 0.40625 0.375 0.4375 0.40625 0.375 0.40625 0.21875 0 0.25 0.0625 0.21875
		 0.125 0.4375 0.84375 0.40625 0.875 0.375 0.84375 0.75 0.0625 0.78125 0 0.78125 0.125
		 0.4375 0.34375 0.375 0.34375 0.28125 0 0.28125 0.125 0.4375 0.90625 0.375 0.90625
		 0.71875 0 0.71875 0.125 0.59375 0.2421875 0.625 0.28125 0.59375 0.3125 0.5625 0.28125
		 0.5625 0.34375 0.625 0.34375 0.59375 0.375 0.5625 0.40625 0.625 0.40625 0.59375 0.4375
		 0.5625 0.46875 0.625 0.46875 0.59375 0.5078125 0.5625 0.6875 0.59375 0.625 0.625
		 0.6875 0.59375 0.7421875 0.5625 0.78125 0.625 0.78125 0.59375 0.8125 0.5625 0.84375
		 0.625 0.84375 0.59375 0.875 0.5625 0.90625 0.625 0.90625 0.59375 0.9375 0.5625 0.96875
		 0.625 0.96875 0.59375 1 0.5625 0.0625 0.59375 0 0.59375 0.125 0.53125 0.2421875 0.53125
		 0.3125 0.5 0.28125 0.5 0.34375 0.53125 0.375 0.5 0.40625 0.53125 0.4375;
	setAttr ".uvst[0].uvsp[250:304]" 0.5 0.46875 0.53125 0.5078125 0.5 0.6875 0.53125
		 0.625 0.53125 0.7421875 0.5 0.78125 0.53125 0.8125 0.5 0.84375 0.53125 0.875 0.5
		 0.90625 0.53125 0.9375 0.5 0.96875 0.53125 1 0.5 0.0625 0.53125 0 0.53125 0.125 0.46875
		 0.2421875 0.46875 0.3125 0.46875 0.375 0.46875 0.4375 0.46875 0.5078125 0.46875 0.625
		 0.46875 0.7421875 0.46875 0.8125 0.46875 0.875 0.46875 0.9375 0.46875 1 0.46875 0
		 0.46875 0.125 0.375 0.1875 0.34375 0.25 0.3125 0.1875 0.28125 0.25 0.25 0.1875 0.21875
		 0.25 0.1875 0.1875 0.15625 0.25 0.125 0.1875 0.4375 0.5625 0.375 0.5625 0.5 0.5625
		 0.5625 0.5625 0.625 0.5625 0.8125 0.1875 0.875 0.1875 0.84375 0.25 0.75 0.1875 0.78125
		 0.25 0.6875 0.1875 0.71875 0.25 0.65625 0.25 0.625 0.1875 0.5625 0.1875 0.5 0.1875
		 0.4375 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 258 ".vt";
	setAttr ".vt[0:165]"  -0.44494212 -0.3888889 0.13280255 0.44444448 -0.3888889 0.41749895
		 -0.44494212 0.3888889 0.12634933 0.44444448 0.3888889 0.41749895 -0.44494212 0.3888889 -0.12634933
		 0.44444448 0.3888889 -0.41749895 -0.44494212 -0.3888889 -0.13280255 0.44444448 -0.3888889 -0.41749895
		 0.46875 0.4375 -0.24226302 -0.47116083 0.4375 -0.082253009 -0.47116083 -0.4375 -0.083406404
		 0.46875 -0.4375 -0.24226302 0.46875 0.4375 2.1886081e-008 -0.47369719 0.4375 2.2584572e-008
		 -0.47369719 -0.4375 2.2351742e-008 0.46875 -0.4375 2.1420419e-008 0.46875 0.4375 0.24226302
		 -0.47116083 0.4375 0.082253009 -0.47116083 -0.4375 0.083406404 0.46875 -0.4375 0.24226302
		 0.25 0.4375 0.35022202 0.25 0.5 0.1888652 0.25 0.5 2.2817403e-008 0.25 0.5 -0.1888652
		 0.25 0.4375 -0.35022202 0.25 -0.4375 -0.35022202 0.25 -0.5 -0.1888652 0.25 -0.5 2.1420419e-008
		 0.25 -0.5 0.1888652 0.25 -0.4375 0.35022202 -2.1420419e-008 0.4375 0.25020409 -2.0489097e-008 0.5 0.13437736
		 -2.0489097e-008 0.5 2.2351742e-008 -2.0489097e-008 0.5 -0.13437736 -2.0489097e-008 0.4375 -0.25020409
		 -2.0489097e-008 -0.4375 -0.25148383 -2.0489097e-008 -0.5 -0.13459066 -2.0489097e-008 -0.5 2.2584572e-008
		 -2.0489097e-008 -0.5 0.13459066 -2.0489097e-008 -0.4375 0.2514838 -0.25003406 0.4375 0.16981919
		 -0.25028849 0.5 0.096405447 -0.25057301 0.5 2.2351742e-008 -0.25028849 0.5 -0.096405432
		 -0.25003406 0.4375 -0.16981921 -0.25003406 -0.4375 -0.17843764 -0.25028849 -0.5 -0.097841859
		 -0.25057301 -0.5 2.2351742e-008 -0.25028849 -0.5 0.097841859 -0.25003406 -0.4375 0.17843765
		 -0.46927169 0 0.14113164 -0.50465637 0 0.083263703 -0.51020074 0 2.2351742e-008 -0.50465643 0 -0.083263695
		 -0.46927169 0 -0.14113164 -0.25 0 -0.20071584 -2.0489097e-008 0 -0.26972893 0.25 0 -0.3731643
		 0.46875 0 -0.45251501 0.5 0 -0.25 0.5 0 2.0489097e-008 0.5 0 0.25 0.46875 0 0.45251501
		 0.25 0 0.3731643 -2.0489097e-008 0 0.26972896 -0.25 0 0.20071584 -0.37513623 -0.4375 0.14962102
		 -0.37513623 0.4375 0.1407418 -0.37513623 0.4375 -0.1407418 -0.37513623 -0.4375 -0.14962101
		 -0.46918863 -0.25 0.13747555 0.46875 -0.25 0.45251504 -0.46986976 0.4375 0.10734974
		 0.46875 0.4375 0.36307746 -0.46918863 0.25 -0.13286208 0.46875 0.25 -0.45251504 -0.46986976 -0.4375 -0.11196323
		 0.46875 -0.4375 -0.36307746 0.46875 0.4375 -0.36307746 -0.46986976 0.4375 -0.10734974
		 0.375 0.5 -0.21905209 -0.47279459 -0.4375 -0.044332463 -0.50387353 0.25 -0.082115188
		 0.46875 -0.4375 -0.12119491 -0.37615395 -0.5 -0.088113621 0.5 -0.25 -0.25 0.46875 0.4375 -0.12119491
		 -0.47279459 0.4375 -0.044332445 0.375 0.5 2.4214387e-008 -0.47279459 -0.4375 0.044332493
		 -0.50832856 0.25 2.2351742e-008 0.46875 -0.4375 0.12119494 -0.37729204 -0.5 2.2351742e-008
		 0.5 -0.25 1.8626451e-008 0.46875 0.4375 0.12119494 -0.47279459 0.4375 0.044332474
		 0.375 0.5 0.21905209 -0.46986976 -0.4375 0.11196323 -0.50387353 0.25 0.082115203
		 0.46875 -0.4375 0.36307746 -0.37615395 -0.5 0.088113636 0.5 -0.25 0.25 0.375 0.4375 0.40812257
		 0.12499999 0.5 0.16020033 0.25 0.5 0.28139526 0.12499999 0.5 2.2351742e-008 0.25 0.5 0.094813131
		 0.12499999 0.5 -0.16020033 0.25 0.5 -0.094813094 0.375 0.4375 -0.40812254 0.25 0.5 -0.28139526
		 0.375 -0.4375 -0.40812257 0.25 0.25 -0.3731643 0.375 -0.5 -0.21905209 0.25 -0.5 -0.28139526
		 0.375 -0.5 2.0489097e-008 0.25 -0.5 -0.094813094 0.375 -0.5 0.21905209 0.25 -0.5 0.094813123
		 0.375 -0.4375 0.40812254 0.25 -0.5 0.28139526 0.25 -0.25 0.3731643 0.12499999 0.4375 0.29777542
		 -0.12500001 0.5 0.1127162 -2.2351742e-008 0.5 0.20042647 -0.125 0.5 2.2351742e-008
		 -1.8626451e-008 0.5 0.067416608 -0.125 0.5 -0.1127162 -1.8626451e-008 0.5 -0.067416579
		 0.12499999 0.4375 -0.29777542 -1.8626451e-008 0.5 -0.20042649 0.12499999 -0.4375 -0.29777545
		 -1.8626451e-008 0.25 -0.26835036 0.12499999 -0.5 -0.16020033 -1.8626451e-008 -0.5 -0.20127964
		 0.12499999 -0.5 2.2351742e-008 -1.8626451e-008 -0.5 -0.067416579 0.12499999 -0.5 0.16020033
		 -1.8626451e-008 -0.5 0.067416608 0.12499999 -0.4375 0.29777545 -1.8626451e-008 -0.5 0.20127964
		 -1.8626451e-008 -0.25 0.26920351 -0.12500001 0.4375 0.20692931 -0.37615395 0.5 0.086633742
		 -0.25013623 0.5 0.13732386 -0.37729204 0.5 2.2351742e-008 -0.25047284 0.5 0.049659595
		 -0.37615395 0.5 -0.086633734 -0.25047284 0.5 -0.049659565 -0.125 0.4375 -0.20692931
		 -0.25013623 0.5 -0.13732387 -0.125 -0.4375 -0.21204823 -0.25 0.25 -0.1912958 -0.125 -0.5 -0.11356935
		 -0.25013623 -0.5 -0.14306949 -0.125 -0.5 2.2351742e-008 -0.25047284 -0.5 -0.049659569
		 -0.125 -0.5 0.11356935 -0.25047284 -0.5 0.049659599 -0.125 -0.4375 0.21204823 -0.25013623 -0.5 0.14306949
		 -0.25 -0.25 0.19704145 -0.46918863 0.25 0.13286208 -0.50387353 -0.25 0.082741931
		 -0.50208682 0 0.11392917 -0.50832856 -0.25 2.2351742e-008;
	setAttr ".vt[166:257]" -0.5081917 0 0.043825138 -0.50387353 -0.25 -0.082741924
		 -0.5081917 0 -0.043825109 -0.46918863 -0.25 -0.13747555 -0.50208682 0 -0.11392917
		 -0.25 -0.25 -0.19704145 -0.375 0 -0.1701812 -1.8626451e-008 -0.25 -0.26920351 -0.125 0 -0.23237357
		 0.25 -0.25 -0.3731643 0.12499999 0 -0.31735653 0.46875 -0.25 -0.45251504 0.375 0 -0.43506014
		 0.5 0.25 -0.25 0.5 0 -0.375 0.5 0.25 1.8626451e-008 0.5 0 -0.12499999 0.5 0.25 0.25
		 0.5 0 0.125 0.46875 0.25 0.45251504 0.5 0 0.375 0.25 0.25 0.3731643 0.375 0 0.43506014
		 -1.8626451e-008 0.25 0.26835036 0.12499999 0 0.31735656 -0.25 0.25 0.1912958 -0.125 0 0.23237357
		 -0.375 0 0.1701812 -0.375 -0.25 0.16599235 -0.37554491 0.5 0.11726245 -0.375 -0.25 -0.16599235
		 -0.37554491 -0.5 0.12318196 0.5 -0.25 0.375 -0.50175446 -0.25 0.11184207 -0.37554491 0.5 -0.11726247
		 -0.50175446 -0.25 -0.11184207 -0.37554491 -0.5 -0.12318195 0.5 -0.25 -0.375 -0.37689131 0.5 -0.045854483
		 -0.50672197 -0.25 -0.043825112 -0.37689131 -0.5 -0.045854494 0.5 -0.25 -0.12499999
		 -0.37689131 0.5 0.045854513 -0.50672197 -0.25 0.043825142 -0.37689131 -0.5 0.045854524
		 0.5 -0.25 0.125 0.375 0.5 0.32730979 0.375 0.5 0.10977974 0.375 0.5 -0.1097797 0.375 0.5 -0.32730979
		 0.375 -0.25 -0.43506014 0.375 -0.5 -0.32730979 0.375 -0.5 -0.10977971 0.375 -0.5 0.10977973
		 0.375 -0.5 0.32730979 0.375 -0.25 0.43506014 0.12499999 0.5 0.2390321 0.12499999 0.5 0.080353856
		 0.12499999 0.5 -0.080353826 0.12499999 0.5 -0.23903212 0.12499999 -0.25 -0.31735656
		 0.12499999 -0.5 -0.23903212 0.12499999 -0.5 -0.080353826 0.12499999 -0.5 0.080353856
		 0.12499999 -0.5 0.23903212 0.12499999 -0.25 0.31735656 -0.12500001 0.5 0.16578445
		 -0.125 0.5 0.057016078 -0.125 0.5 -0.057016049 -0.125 0.5 -0.16578446 -0.125 -0.25 -0.23027182
		 -0.125 -0.5 -0.16919707 -0.125 -0.5 -0.057016049 -0.125 -0.5 0.057016078 -0.125 -0.5 0.16919707
		 -0.125 -0.25 0.23027182 -0.50175446 0.25 0.10933518 -0.50672197 0.25 0.043825135
		 -0.50672197 0.25 -0.043825105 -0.50175446 0.25 -0.10933518 -0.375 0.25 -0.16007286
		 -0.125 0.25 -0.2268592 0.12499999 0.25 -0.31735653 0.375 0.25 -0.43506014 0.5 0.25 -0.375
		 0.5 0.25 -0.12499999 0.5 0.25 0.125 0.5 0.25 0.375 0.375 0.25 0.43506014 0.12499999 0.25 0.31735656
		 -0.125 0.25 0.2268592 -0.375 0.25 0.16007286;
	setAttr -s 512 ".ed";
	setAttr ".ed[0:165]"  0 66 1 66 49 1 2 67 1 67 40 1 4 68 1 68 44 1 6 69 1
		 69 45 1 0 70 1 70 50 1 1 71 1 71 62 1 2 72 1 72 17 1 3 73 1 73 16 1 4 74 1 74 54 1
		 5 75 1 75 58 1 6 76 1 76 10 1 7 77 1 77 11 1 8 78 1 78 5 1 9 79 1 79 4 1 8 80 1 80 23 1
		 10 81 1 81 14 1 9 82 1 82 53 1 11 83 1 83 15 1 10 84 1 84 46 1 11 85 1 85 59 1 12 86 1
		 86 8 1 13 87 1 87 9 1 12 88 1 88 22 1 14 89 1 89 18 1 13 90 1 90 52 1 15 91 1 91 19 1
		 14 92 1 92 47 1 15 93 1 93 60 1 16 94 1 94 12 1 17 95 1 95 13 1 16 96 1 96 21 1 18 97 1
		 97 0 1 17 98 1 98 51 1 19 99 1 99 1 1 18 100 1 100 48 1 19 101 1 101 61 1 20 102 1
		 102 3 1 21 103 1 103 31 1 20 104 1 104 21 1 22 105 1 105 32 1 21 106 1 106 22 1 23 107 1
		 107 33 1 22 108 1 108 23 1 24 109 1 109 5 1 23 110 1 110 24 1 25 111 1 111 7 1 24 112 1
		 112 57 1 26 113 1 113 11 1 25 114 1 114 26 1 27 115 1 115 15 1 26 116 1 116 27 1
		 28 117 1 117 19 1 27 118 1 118 28 1 29 119 1 119 1 1 28 120 1 120 29 1 29 121 1 121 63 1
		 30 122 1 122 20 1 31 123 1 123 41 1 30 124 1 124 31 1 32 125 1 125 42 1 31 126 1
		 126 32 1 33 127 1 127 43 1 32 128 1 128 33 1 34 129 1 129 24 1 33 130 1 130 34 1
		 35 131 1 131 25 1 34 132 1 132 56 1 36 133 1 133 26 1 35 134 1 134 36 1 37 135 1
		 135 27 1 36 136 1 136 37 1 38 137 1 137 28 1 37 138 1 138 38 1 39 139 1 139 29 1
		 38 140 1 140 39 1 39 141 1 141 64 1 40 142 1 142 30 1 41 143 1 143 17 1 40 144 1
		 144 41 1 42 145 1 145 13 1 41 146 1 146 42 1 43 147 1 147 9 1 42 148 1 148 43 1;
	setAttr ".ed[166:331]" 44 149 1 149 34 1 43 150 1 150 44 1 45 151 1 151 35 1
		 44 152 1 152 55 1 46 153 1 153 36 1 45 154 1 154 46 1 47 155 1 155 37 1 46 156 1
		 156 47 1 48 157 1 157 38 1 47 158 1 158 48 1 49 159 1 159 39 1 48 160 1 160 49 1
		 49 161 1 161 65 1 50 162 1 162 2 1 51 163 1 163 18 1 50 164 1 164 51 1 52 165 1 165 14 1
		 51 166 1 166 52 1 53 167 1 167 10 1 52 168 1 168 53 1 54 169 1 169 6 1 53 170 1 170 54 1
		 55 171 1 171 45 1 54 172 1 172 55 1 56 173 1 173 35 1 55 174 1 174 56 1 57 175 1
		 175 25 1 56 176 1 176 57 1 58 177 1 177 7 1 57 178 1 178 58 1 59 179 1 179 8 1 58 180 1
		 180 59 1 60 181 1 181 12 1 59 182 1 182 60 1 61 183 1 183 16 1 60 184 1 184 61 1
		 62 185 1 185 3 1 61 186 1 186 62 1 63 187 1 187 20 1 62 188 1 188 63 1 64 189 1 189 30 1
		 63 190 1 190 64 1 65 191 1 191 40 1 64 192 1 192 65 1 65 193 1 193 50 1 194 66 1
		 194 161 1 194 193 1 194 70 1 195 67 1 195 144 1 195 143 1 195 72 1 196 172 1 196 171 1
		 196 69 1 196 169 1 197 100 1 197 160 1 197 66 1 197 97 1 198 99 1 198 101 1 198 186 1
		 198 71 1 199 97 1 199 70 1 199 164 1 199 163 1 200 147 1 200 150 1 200 68 1 200 79 1
		 201 76 1 201 167 1 201 170 1 201 169 1 202 69 1 202 154 1 202 84 1 202 76 1 203 85 1
		 203 77 1 203 177 1 203 180 1 204 145 1 204 148 1 204 147 1 204 87 1 205 81 1 205 165 1
		 205 168 1 205 167 1 206 84 1 206 156 1 206 92 1 206 81 1 207 93 1 207 83 1 207 85 1
		 207 182 1 208 143 1 208 146 1 208 145 1 208 95 1 209 89 1 209 163 1 209 166 1 209 165 1
		 210 92 1 210 158 1 210 100 1 210 89 1 211 101 1 211 91 1 211 93 1 211 184 1 212 102 1
		 212 73 1 212 96 1 212 104 1;
	setAttr ".ed[332:497]" 213 106 1 213 96 1 213 94 1 213 88 1 214 108 1 214 88 1
		 214 86 1 214 80 1 215 110 1 215 80 1 215 78 1 215 109 1 216 175 1 216 178 1 216 177 1
		 216 111 1 217 114 1 217 111 1 217 77 1 217 113 1 218 116 1 218 113 1 218 83 1 218 115 1
		 219 118 1 219 115 1 219 91 1 219 117 1 220 120 1 220 117 1 220 99 1 220 119 1 221 121 1
		 221 119 1 221 71 1 221 188 1 222 122 1 222 104 1 222 103 1 222 124 1 223 126 1 223 103 1
		 223 106 1 223 105 1 224 128 1 224 105 1 224 108 1 224 107 1 225 130 1 225 107 1 225 110 1
		 225 129 1 226 173 1 226 176 1 226 175 1 226 131 1 227 134 1 227 131 1 227 114 1 227 133 1
		 228 136 1 228 133 1 228 116 1 228 135 1 229 138 1 229 135 1 229 118 1 229 137 1 230 140 1
		 230 137 1 230 120 1 230 139 1 231 141 1 231 139 1 231 121 1 231 190 1 232 142 1 232 124 1
		 232 123 1 232 144 1 233 146 1 233 123 1 233 126 1 233 125 1 234 148 1 234 125 1 234 128 1
		 234 127 1 235 150 1 235 127 1 235 130 1 235 149 1 236 171 1 236 174 1 236 173 1 236 151 1
		 237 154 1 237 151 1 237 134 1 237 153 1 238 156 1 238 153 1 238 136 1 238 155 1 239 158 1
		 239 155 1 239 138 1 239 157 1 240 160 1 240 157 1 240 140 1 240 159 1 241 161 1 241 159 1
		 241 141 1 241 192 1 242 164 1 242 162 1 242 72 1 242 98 1 243 166 1 243 98 1 243 95 1
		 243 90 1 244 168 1 244 90 1 244 87 1 244 82 1 245 170 1 245 82 1 245 79 1 245 74 1
		 246 68 1 246 152 1 246 172 1 246 74 1 247 174 1 247 152 1 247 149 1 247 132 1 248 176 1
		 248 132 1 248 129 1 248 112 1 249 178 1 249 112 1 249 109 1 249 75 1 250 179 1 250 180 1
		 250 75 1 250 78 1 251 181 1 251 182 1 251 179 1 251 86 1 252 183 1 252 184 1 252 181 1
		 252 94 1 253 186 1 253 183 1 253 73 1 253 185 1 254 187 1 254 188 1;
	setAttr ".ed[498:511]" 254 185 1 254 102 1 255 189 1 255 190 1 255 187 1 255 122 1
		 256 191 1 256 192 1 256 189 1 256 142 1 257 193 1 257 191 1 257 67 1 257 162 1;
	setAttr -s 256 -ch 1024 ".fc[0:255]" -type "polyFaces" 
		f 4 1 190 -258 256
		mu 0 4 153 69 154 89
		f 4 191 254 -259 257
		mu 0 4 154 88 155 89
		f 4 255 -10 -260 258
		mu 0 4 155 71 156 89
		f 4 -9 0 -257 259
		mu 0 4 156 0 153 89
		f 4 3 156 -262 260
		mu 0 4 157 60 158 90
		f 4 157 154 -263 261
		mu 0 4 158 61 159 90
		f 4 155 -14 -264 262
		mu 0 4 159 33 160 90
		f 4 -13 2 -261 263
		mu 0 4 160 2 157 90
		f 4 213 210 -266 264
		mu 0 4 161 77 162 91
		f 4 211 -8 -267 265
		mu 0 4 162 65 163 91
		f 4 -7 -208 -268 266
		mu 0 4 163 6 164 91
		f 4 -207 212 -265 267
		mu 0 4 164 76 161 91
		f 4 69 188 -270 268
		mu 0 4 165 68 166 92
		f 4 189 -2 -271 269
		mu 0 4 166 70 167 92
		f 4 -1 -64 -272 270
		mu 0 4 167 8 168 92
		f 4 -63 68 -269 271
		mu 0 4 168 35 165 92
		f 4 -67 70 -274 272
		mu 0 4 169 37 170 93
		f 4 71 240 -275 273
		mu 0 4 170 84 171 93
		f 4 241 -12 -276 274
		mu 0 4 171 85 172 93
		f 4 -11 -68 -273 275
		mu 0 4 172 1 169 93
		f 4 63 8 -278 276
		mu 0 4 173 0 156 94
		f 4 9 196 -279 277
		mu 0 4 156 71 174 94
		f 4 197 194 -280 278
		mu 0 4 174 72 175 94
		f 4 195 62 -277 279
		mu 0 4 175 34 173 94
		f 4 -163 168 -282 280
		mu 0 4 176 63 177 95
		f 4 169 -6 -283 281
		mu 0 4 177 64 178 95
		f 4 -5 -28 -284 282
		mu 0 4 178 4 179 95
		f 4 -27 -164 -281 283
		mu 0 4 179 17 176 95
		f 4 21 -204 -286 284
		mu 0 4 180 18 181 96
		f 4 -203 208 -287 285
		mu 0 4 181 74 182 96
		f 4 209 206 -288 286
		mu 0 4 182 75 183 96
		f 4 207 20 -285 287
		mu 0 4 183 12 180 96
		f 4 7 176 -290 288
		mu 0 4 163 65 184 97
		f 4 177 -38 -291 289
		mu 0 4 184 66 185 97
		f 4 -37 -22 -292 290
		mu 0 4 185 19 186 97
		f 4 -21 6 -289 291
		mu 0 4 186 6 163 97
		f 4 -39 -24 -294 292
		mu 0 4 187 21 188 98
		f 4 -23 -224 -295 293
		mu 0 4 188 10 189 98
		f 4 -223 228 -296 294
		mu 0 4 189 81 190 98
		f 4 229 -40 -293 295
		mu 0 4 190 82 187 98
		f 4 -159 164 -298 296
		mu 0 4 191 62 192 99
		f 4 165 162 -299 297
		mu 0 4 192 63 176 99
		f 4 163 -44 -300 298
		mu 0 4 176 17 193 99
		f 4 -43 -160 -297 299
		mu 0 4 193 25 191 99
		f 4 31 -200 -302 300
		mu 0 4 194 26 195 100
		f 4 -199 204 -303 301
		mu 0 4 195 73 196 100
		f 4 205 202 -304 302
		mu 0 4 196 74 181 100
		f 4 203 30 -301 303
		mu 0 4 181 18 194 100
		f 4 37 180 -306 304
		mu 0 4 185 66 197 101
		f 4 181 -54 -307 305
		mu 0 4 197 67 198 101
		f 4 -53 -32 -308 306
		mu 0 4 198 27 199 101
		f 4 -31 36 -305 307
		mu 0 4 199 19 185 101
		f 4 -55 -36 -310 308
		mu 0 4 200 29 201 102
		f 4 -35 38 -311 309
		mu 0 4 201 21 187 102
		f 4 39 232 -312 310
		mu 0 4 187 82 202 102
		f 4 233 -56 -309 311
		mu 0 4 202 83 200 102
		f 4 -155 160 -314 312
		mu 0 4 159 61 203 103
		f 4 161 158 -315 313
		mu 0 4 203 62 191 103
		f 4 159 -60 -316 314
		mu 0 4 191 25 204 103
		f 4 -59 -156 -313 315
		mu 0 4 204 33 159 103
		f 4 47 -196 -318 316
		mu 0 4 205 34 175 104
		f 4 -195 200 -319 317
		mu 0 4 175 72 206 104
		f 4 201 198 -320 318
		mu 0 4 206 73 195 104
		f 4 199 46 -317 319
		mu 0 4 195 26 205 104
		f 4 53 184 -322 320
		mu 0 4 198 67 207 105
		f 4 185 -70 -323 321
		mu 0 4 207 68 165 105
		f 4 -69 -48 -324 322
		mu 0 4 165 35 208 105
		f 4 -47 52 -321 323
		mu 0 4 208 27 198 105
		f 4 -71 -52 -326 324
		mu 0 4 170 37 209 106
		f 4 -51 54 -327 325
		mu 0 4 209 29 200 106
		f 4 55 236 -328 326
		mu 0 4 200 83 210 106
		f 4 237 -72 -325 327
		mu 0 4 210 84 170 106
		f 4 73 14 -330 328
		mu 0 4 211 3 212 107
		f 4 15 60 -331 329
		mu 0 4 212 30 213 107
		f 4 61 -78 -332 330
		mu 0 4 213 39 214 107
		f 4 -77 72 -329 331
		mu 0 4 214 38 211 107
		f 4 -81 -62 -334 332
		mu 0 4 215 39 213 108
		f 4 -61 56 -335 333
		mu 0 4 213 30 216 108
		f 4 57 44 -336 334
		mu 0 4 216 22 217 108
		f 4 45 -82 -333 335
		mu 0 4 217 40 215 108
		f 4 -85 -46 -338 336
		mu 0 4 218 40 217 109
		f 4 -45 40 -339 337
		mu 0 4 217 22 219 109
		f 4 41 28 -340 338
		mu 0 4 219 14 220 109
		f 4 29 -86 -337 339
		mu 0 4 220 41 218 109
		f 4 -89 -30 -342 340
		mu 0 4 221 41 220 110
		f 4 -29 24 -343 341
		mu 0 4 220 14 222 110
		f 4 25 -88 -344 342
		mu 0 4 222 5 223 110
		f 4 -87 -90 -341 343
		mu 0 4 223 42 221 110
		f 4 -219 224 -346 344
		mu 0 4 224 79 225 111
		f 4 225 222 -347 345
		mu 0 4 225 80 226 111
		f 4 223 -92 -348 346
		mu 0 4 226 7 227 111
		f 4 -91 -220 -345 347
		mu 0 4 227 43 224 111
		f 4 -97 90 -350 348
		mu 0 4 228 43 227 112
		f 4 91 22 -351 349
		mu 0 4 227 7 229 112
		f 4 23 -96 -352 350
		mu 0 4 229 20 230 112
		f 4 -95 -98 -349 351
		mu 0 4 230 44 228 112
		f 4 -101 94 -354 352
		mu 0 4 231 44 230 113
		f 4 95 34 -355 353
		mu 0 4 230 20 232 113
		f 4 35 -100 -356 354
		mu 0 4 232 28 233 113
		f 4 -99 -102 -353 355
		mu 0 4 233 45 231 113
		f 4 -105 98 -358 356
		mu 0 4 234 45 233 114
		f 4 99 50 -359 357
		mu 0 4 233 28 235 114
		f 4 51 -104 -360 358
		mu 0 4 235 36 236 114
		f 4 -103 -106 -357 359
		mu 0 4 236 46 234 114
		f 4 -109 102 -362 360
		mu 0 4 237 46 236 115
		f 4 103 66 -363 361
		mu 0 4 236 36 238 115
		f 4 67 -108 -364 362
		mu 0 4 238 9 239 115
		f 4 -107 -110 -361 363
		mu 0 4 239 48 237 115
		f 4 -111 106 -366 364
		mu 0 4 240 47 241 116
		f 4 107 10 -367 365
		mu 0 4 241 1 172 116
		f 4 11 244 -368 366
		mu 0 4 172 85 242 116
		f 4 245 -112 -365 367
		mu 0 4 242 86 240 116
		f 4 113 76 -370 368
		mu 0 4 243 38 214 117
		f 4 77 74 -371 369
		mu 0 4 214 39 244 117
		f 4 75 -118 -372 370
		mu 0 4 244 50 245 117
		f 4 -117 112 -369 371
		mu 0 4 245 49 243 117
		f 4 -121 -76 -374 372
		mu 0 4 246 50 244 118
		f 4 -75 80 -375 373
		mu 0 4 244 39 215 118
		f 4 81 78 -376 374
		mu 0 4 215 40 247 118
		f 4 79 -122 -373 375
		mu 0 4 247 51 246 118
		f 4 -125 -80 -378 376
		mu 0 4 248 51 247 119
		f 4 -79 84 -379 377
		mu 0 4 247 40 218 119
		f 4 85 82 -380 378
		mu 0 4 218 41 249 119
		f 4 83 -126 -377 379
		mu 0 4 249 52 248 119
		f 4 -129 -84 -382 380
		mu 0 4 250 52 249 120
		f 4 -83 88 -383 381
		mu 0 4 249 41 221 120
		f 4 89 -128 -384 382
		mu 0 4 221 42 251 120
		f 4 -127 -130 -381 383
		mu 0 4 251 53 250 120
		f 4 -215 220 -386 384
		mu 0 4 252 78 253 121
		f 4 221 218 -387 385
		mu 0 4 253 79 224 121
		f 4 219 -132 -388 386
		mu 0 4 224 43 254 121
		f 4 -131 -216 -385 387
		mu 0 4 254 54 252 121
		f 4 -137 130 -390 388
		mu 0 4 255 54 254 122
		f 4 131 96 -391 389
		mu 0 4 254 43 228 122
		f 4 97 -136 -392 390
		mu 0 4 228 44 256 122
		f 4 -135 -138 -389 391
		mu 0 4 256 55 255 122
		f 4 -141 134 -394 392
		mu 0 4 257 55 256 123
		f 4 135 100 -395 393
		mu 0 4 256 44 231 123
		f 4 101 -140 -396 394
		mu 0 4 231 45 258 123
		f 4 -139 -142 -393 395
		mu 0 4 258 56 257 123
		f 4 -145 138 -398 396
		mu 0 4 259 56 258 124
		f 4 139 104 -399 397
		mu 0 4 258 45 234 124
		f 4 105 -144 -400 398
		mu 0 4 234 46 260 124
		f 4 -143 -146 -397 399
		mu 0 4 260 57 259 124
		f 4 -149 142 -402 400
		mu 0 4 261 57 260 125
		f 4 143 108 -403 401
		mu 0 4 260 46 237 125
		f 4 109 -148 -404 402
		mu 0 4 237 48 262 125
		f 4 -147 -150 -401 403
		mu 0 4 262 59 261 125
		f 4 -151 146 -406 404
		mu 0 4 263 58 264 126
		f 4 147 110 -407 405
		mu 0 4 264 47 240 126
		f 4 111 248 -408 406
		mu 0 4 240 86 265 126
		f 4 249 -152 -405 407
		mu 0 4 265 87 263 126
		f 4 153 116 -410 408
		mu 0 4 266 49 245 127
		f 4 117 114 -411 409
		mu 0 4 245 50 267 127
		f 4 115 -158 -412 410
		mu 0 4 267 61 158 127
		f 4 -157 152 -409 411
		mu 0 4 158 60 266 127
		f 4 -161 -116 -414 412
		mu 0 4 203 61 267 128
		f 4 -115 120 -415 413
		mu 0 4 267 50 246 128
		f 4 121 118 -416 414
		mu 0 4 246 51 268 128
		f 4 119 -162 -413 415
		mu 0 4 268 62 203 128
		f 4 -165 -120 -418 416
		mu 0 4 192 62 268 129
		f 4 -119 124 -419 417
		mu 0 4 268 51 248 129
		f 4 125 122 -420 418
		mu 0 4 248 52 269 129
		f 4 123 -166 -417 419
		mu 0 4 269 63 192 129
		f 4 -169 -124 -422 420
		mu 0 4 177 63 269 130
		f 4 -123 128 -423 421
		mu 0 4 269 52 250 130
		f 4 129 -168 -424 422
		mu 0 4 250 53 270 130
		f 4 -167 -170 -421 423
		mu 0 4 270 64 177 130
		f 4 -211 216 -426 424
		mu 0 4 162 77 271 131
		f 4 217 214 -427 425
		mu 0 4 271 78 252 131
		f 4 215 -172 -428 426
		mu 0 4 252 54 272 131
		f 4 -171 -212 -425 427
		mu 0 4 272 65 162 131
		f 4 -177 170 -430 428
		mu 0 4 184 65 272 132
		f 4 171 136 -431 429
		mu 0 4 272 54 255 132
		f 4 137 -176 -432 430
		mu 0 4 255 55 273 132
		f 4 -175 -178 -429 431
		mu 0 4 273 66 184 132
		f 4 -181 174 -434 432
		mu 0 4 197 66 273 133
		f 4 175 140 -435 433
		mu 0 4 273 55 257 133
		f 4 141 -180 -436 434
		mu 0 4 257 56 274 133
		f 4 -179 -182 -433 435
		mu 0 4 274 67 197 133
		f 4 -185 178 -438 436
		mu 0 4 207 67 274 134
		f 4 179 144 -439 437
		mu 0 4 274 56 259 134
		f 4 145 -184 -440 438
		mu 0 4 259 57 275 134
		f 4 -183 -186 -437 439
		mu 0 4 275 68 207 134
		f 4 -189 182 -442 440
		mu 0 4 166 68 275 135
		f 4 183 148 -443 441
		mu 0 4 275 57 261 135
		f 4 149 -188 -444 442
		mu 0 4 261 59 276 135
		f 4 -187 -190 -441 443
		mu 0 4 276 70 166 135
		f 4 -191 186 -446 444
		mu 0 4 154 69 277 136
		f 4 187 150 -447 445
		mu 0 4 277 58 263 136
		f 4 151 252 -448 446
		mu 0 4 263 87 278 136
		f 4 253 -192 -445 447
		mu 0 4 278 88 154 136
		f 4 -197 192 -450 448
		mu 0 4 174 71 279 137
		f 4 193 12 -451 449
		mu 0 4 279 2 280 137
		f 4 13 64 -452 450
		mu 0 4 280 32 281 137
		f 4 65 -198 -449 451
		mu 0 4 281 72 174 137
		f 4 -201 -66 -454 452
		mu 0 4 206 72 281 138
		f 4 -65 58 -455 453
		mu 0 4 281 32 282 138
		f 4 59 48 -456 454
		mu 0 4 282 24 283 138
		f 4 49 -202 -453 455
		mu 0 4 283 73 206 138
		f 4 -205 -50 -458 456
		mu 0 4 196 73 283 139
		f 4 -49 42 -459 457
		mu 0 4 283 24 284 139
		f 4 43 32 -460 458
		mu 0 4 284 16 285 139
		f 4 33 -206 -457 459
		mu 0 4 285 74 196 139
		f 4 -209 -34 -462 460
		mu 0 4 182 74 285 140
		f 4 -33 26 -463 461
		mu 0 4 285 16 286 140
		f 4 27 16 -464 462
		mu 0 4 286 13 287 140
		f 4 17 -210 -461 463
		mu 0 4 287 75 182 140
		f 4 5 172 -466 464
		mu 0 4 178 64 288 141
		f 4 173 -214 -467 465
		mu 0 4 288 77 161 141
		f 4 -213 -18 -468 466
		mu 0 4 161 76 289 141
		f 4 -17 4 -465 467
		mu 0 4 289 4 178 141
		f 4 -217 -174 -470 468
		mu 0 4 271 77 288 142
		f 4 -173 166 -471 469
		mu 0 4 288 64 270 142
		f 4 167 132 -472 470
		mu 0 4 270 53 290 142
		f 4 133 -218 -469 471
		mu 0 4 290 78 271 142
		f 4 -221 -134 -474 472
		mu 0 4 253 78 290 143
		f 4 -133 126 -475 473
		mu 0 4 290 53 251 143
		f 4 127 92 -476 474
		mu 0 4 251 42 291 143
		f 4 93 -222 -473 475
		mu 0 4 291 79 253 143
		f 4 -225 -94 -478 476
		mu 0 4 225 79 291 144
		f 4 -93 86 -479 477
		mu 0 4 291 42 223 144
		f 4 87 18 -480 478
		mu 0 4 223 5 292 144
		f 4 19 -226 -477 479
		mu 0 4 292 80 225 144
		f 4 -227 -230 -482 480
		mu 0 4 293 82 190 145
		f 4 -229 -20 -483 481
		mu 0 4 190 81 294 145
		f 4 -19 -26 -484 482
		mu 0 4 294 11 295 145
		f 4 -25 -228 -481 483
		mu 0 4 295 15 293 145
		f 4 -231 -234 -486 484
		mu 0 4 296 83 202 146
		f 4 -233 226 -487 485
		mu 0 4 202 82 293 146
		f 4 227 -42 -488 486
		mu 0 4 293 15 297 146
		f 4 -41 -232 -485 487
		mu 0 4 297 23 296 146
		f 4 -235 -238 -490 488
		mu 0 4 298 84 210 147
		f 4 -237 230 -491 489
		mu 0 4 210 83 296 147
		f 4 231 -58 -492 490
		mu 0 4 296 23 299 147
		f 4 -57 -236 -489 491
		mu 0 4 299 31 298 147
		f 4 -241 234 -494 492
		mu 0 4 171 84 298 148
		f 4 235 -16 -495 493
		mu 0 4 298 31 300 148
		f 4 -15 -240 -496 494
		mu 0 4 300 3 301 148
		f 4 -239 -242 -493 495
		mu 0 4 301 85 171 148
		f 4 -243 -246 -498 496
		mu 0 4 302 86 242 149
		f 4 -245 238 -499 497
		mu 0 4 242 85 301 149
		f 4 239 -74 -500 498
		mu 0 4 301 3 211 149
		f 4 -73 -244 -497 499
		mu 0 4 211 38 302 149
		f 4 -247 -250 -502 500
		mu 0 4 303 87 265 150
		f 4 -249 242 -503 501
		mu 0 4 265 86 302 150
		f 4 243 -114 -504 502
		mu 0 4 302 38 243 150
		f 4 -113 -248 -501 503
		mu 0 4 243 49 303 150
		f 4 -251 -254 -506 504
		mu 0 4 304 88 278 151
		f 4 -253 246 -507 505
		mu 0 4 278 87 303 151
		f 4 247 -154 -508 506
		mu 0 4 303 49 266 151
		f 4 -153 -252 -505 507
		mu 0 4 266 60 304 151
		f 4 -255 250 -510 508
		mu 0 4 155 88 304 152
		f 4 251 -4 -511 509
		mu 0 4 304 60 157 152
		f 4 -3 -194 -512 510
		mu 0 4 157 2 279 152
		f 4 -193 -256 -509 511
		mu 0 4 279 71 155 152;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube2" -p "topHalf";
	setAttr ".t" -type "double3" 6.4144965694925116 0 0 ;
	setAttr ".s" -type "double3" 1.6145808688195358 2.0111313117498653 8.146395391673904 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 61 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.0024782778 -0.0037381849 ;
	setAttr ".pt[1]" -type "float3" 0 0.0024782778 -0.0037381849 ;
	setAttr ".pt[2]" -type "float3" 0 -0.076532252 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.076532252 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.079068668 -0.0089009814 ;
	setAttr ".pt[5]" -type "float3" 0 -0.079068668 -0.0089009814 ;
	setAttr ".pt[6]" -type "float3" 0.086497553 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.086497553 0 0 ;
	setAttr ".pt[8]" -type "float3" -0.03040513 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.03040513 0 0 ;
	setAttr ".pt[10]" -type "float3" -0.020595253 0 9.3132257e-010 ;
	setAttr ".pt[11]" -type "float3" 0.020595253 0 9.3132257e-010 ;
	setAttr ".pt[12]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[13]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".pt[16]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[17]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.072380297 0 0 ;
	setAttr ".pt[21]" -type "float3" 0.072380297 0 0 ;
	setAttr ".pt[24]" -type "float3" 0 -0.086227953 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.086227953 0 ;
	setAttr ".pt[26]" -type "float3" 0.043938547 0 0 ;
	setAttr ".pt[29]" -type "float3" 0.050407376 0 0 ;
	setAttr ".pt[30]" -type "float3" 0.081391551 0 0 ;
	setAttr ".pt[31]" -type "float3" -0.081391551 0 0 ;
	setAttr ".pt[32]" -type "float3" -0.050407376 0 0 ;
	setAttr ".pt[35]" -type "float3" -0.043938547 0 0 ;
	setAttr ".pt[36]" -type "float3" 0 -0.077507406 0 ;
	setAttr ".pt[37]" -type "float3" 0 -0.077507406 0 ;
	setAttr ".pt[38]" -type "float3" 0.013039596 0 0 ;
	setAttr ".pt[39]" -type "float3" -0.017504612 0 0 ;
	setAttr ".pt[40]" -type "float3" 0.0094209537 0 0 ;
	setAttr ".pt[41]" -type "float3" 0.051185779 0 0 ;
	setAttr ".pt[42]" -type "float3" 0.081391551 0 0 ;
	setAttr ".pt[43]" -type "float3" -0.081391551 0 0 ;
	setAttr ".pt[44]" -type "float3" -0.051185779 0 0 ;
	setAttr ".pt[45]" -type "float3" -0.0094209537 0 0 ;
	setAttr ".pt[46]" -type "float3" 0.017504612 0 0 ;
	setAttr ".pt[47]" -type "float3" -0.013039596 0 0 ;
	setAttr ".pt[48]" -type "float3" 0 -0.085576534 0 ;
	setAttr ".pt[49]" -type "float3" 0 -0.085576534 0 ;
	setAttr ".pt[50]" -type "float3" 0.0044792411 0 0 ;
	setAttr ".pt[51]" -type "float3" -0.0051379604 0 0 ;
	setAttr ".pt[52]" -type "float3" 0.0044792411 0 0 ;
	setAttr ".pt[57]" -type "float3" -0.0044792411 0 0 ;
	setAttr ".pt[58]" -type "float3" 0.0051379604 0 0 ;
	setAttr ".pt[59]" -type "float3" -0.0044792411 0 0 ;
	setAttr ".pt[60]" -type "float3" 0 -0.093455784 0 ;
	setAttr ".pt[61]" -type "float3" 0 -0.093455784 0 ;
	setAttr ".pt[62]" -type "float3" -0.06121774 0 0 ;
	setAttr ".pt[63]" -type "float3" -0.069283307 0 0 ;
	setAttr ".pt[64]" -type "float3" -0.058271546 0 0 ;
	setAttr ".pt[65]" -type "float3" -0.052701447 0 0 ;
	setAttr ".pt[68]" -type "float3" 0.052701447 0 0 ;
	setAttr ".pt[69]" -type "float3" 0.058271546 0 0 ;
	setAttr ".pt[70]" -type "float3" 0.069283307 0 0 ;
	setAttr ".pt[71]" -type "float3" 0.06121774 0 0 ;
	setAttr ".pt[87]" -type "float3" 0 -0.049571294 0 ;
	setAttr ".pt[92]" -type "float3" 0 0.033405039 0 ;
	setAttr ".pt[107]" -type "float3" 0 -0.074173778 0 ;
	setAttr ".pt[127]" -type "float3" 0 -0.049571294 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube2";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1.6145808688195358 0 0 0 0 2.0111313117498653 0 0 0 0 8.146395391673904 0
		 6.4144965694925116 0 0 1;
	setAttr ".wt" 0.40627580881118774;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]";
	setAttr ".ix" -type "matrix" 1.6145808688195358 0 0 0 0 2.0111313117498653 0 0 0 0 8.146395391673904 0
		 6.4144965694925116 0 0 1;
	setAttr ".wt" 0.25270044803619385;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0 9.3132257e-010 0 ;
	setAttr ".tk[1]" -type "float3" 0 9.3132257e-010 0 ;
	setAttr ".tk[2]" -type "float3" -5.5511151e-016 0.054116309 0 ;
	setAttr ".tk[3]" -type "float3" 5.5511151e-016 0.054116309 0 ;
	setAttr ".tk[8]" -type "float3" 0 0 -0.022968678 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.022968678 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.036749888 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.036749888 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.035831142 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.035831142 ;
	setAttr ".tk[18]" -type "float3" -5.5511151e-016 0.0060129208 0 ;
	setAttr ".tk[19]" -type "float3" 5.5511151e-016 0.0060129208 0 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.023887448 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.023887448 ;
	setAttr ".tk[22]" -type "float3" 0 0.018038765 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.018038765 0 ;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[58]" "e[70]" "e[82]" "e[94]" "e[106]" "e[118]" "e[130]";
	setAttr ".ix" -type "matrix" 1.6145808688195358 0 0 0 0 2.0111313117498653 0 0 0 0 8.146395391673904 0
		 6.4144965694925116 0 0 1;
	setAttr ".wt" 0.5271793007850647;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk";
	setAttr ".tk[0]" -type "float3" 0.11563499 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.11563499 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.084840201 -0.010460023 0 ;
	setAttr ".tk[3]" -type "float3" -0.084840201 -0.010460023 0 ;
	setAttr ".tk[4]" -type "float3" 0.10574447 -0.020035423 0 ;
	setAttr ".tk[5]" -type "float3" -0.10574447 -0.020035423 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.049386233 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.049386233 0 ;
	setAttr ".tk[10]" -type "float3" -0.072800629 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.072800644 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.17084925 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.17084925 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.16821174 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.16821174 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.087342001 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.087342001 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.10574447 -0.020035423 0 ;
	setAttr ".tk[25]" -type "float3" 0.10574447 -0.020035423 0 ;
	setAttr ".tk[28]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.049386233 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.049386233 0 ;
	setAttr ".tk[33]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[36]" -type "float3" -0.10574447 -0.020035423 0 ;
	setAttr ".tk[37]" -type "float3" 0.10574447 -0.020035423 0 ;
	setAttr ".tk[39]" -type "float3" -0.0035078293 0 0 ;
	setAttr ".tk[40]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.049386233 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.049386233 0 ;
	setAttr ".tk[45]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.0035078293 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.045960996 -0.010460023 0 ;
	setAttr ".tk[49]" -type "float3" 0.045960996 -0.010460023 0 ;
	setAttr ".tk[50]" -type "float3" -0.058144242 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.092796735 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.047899347 0 0 ;
	setAttr ".tk[53]" -type "float3" 0.018205298 0 0 ;
	setAttr ".tk[54]" -type "float3" 0.11563499 0 0 ;
	setAttr ".tk[55]" -type "float3" -0.11563499 0 0 ;
	setAttr ".tk[56]" -type "float3" -0.018205298 0 0 ;
	setAttr ".tk[57]" -type "float3" 0.047899347 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.092796735 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.058144242 0 0 ;
	setAttr ".tk[60]" -type "float3" -0.045960996 -0.010460023 0 ;
	setAttr ".tk[61]" -type "float3" 0.045960996 -0.010460023 0 ;
	setAttr ".tk[62]" -type "float3" -0.058144271 0 0 ;
	setAttr ".tk[63]" -type "float3" -0.092796735 0 0 ;
	setAttr ".tk[64]" -type "float3" -0.047899347 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.018205298 0 0 ;
	setAttr ".tk[66]" -type "float3" 0.11563499 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.11563499 0 0 ;
	setAttr ".tk[68]" -type "float3" -0.018205283 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.047899347 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.092796735 0 0 ;
	setAttr ".tk[71]" -type "float3" 0.058144271 0 0 ;
createNode polyCube -n "polyCube3";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 20.726747483998633 0 0 0 0 1 0 0 0 0 5.8173713769354087 0
		 0 0 10.274851783406962 1;
	setAttr ".wt" 0.18692512810230255;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 20.726747483998633 0 0 0 0 1 0 0 0 0 5.8173713769354087 0
		 0 0 10.274851783406962 1;
	setAttr ".wt" 0.23513959348201752;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[46]" "e[55]" "e[66]" "e[75]" "e[86]" "e[95]";
	setAttr ".ix" -type "matrix" 20.726747483998633 0 0 0 0 1 0 0 0 0 5.8173713769354087 0
		 0 0 10.274851783406962 1;
	setAttr ".wt" 0.43414881825447083;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.35311073 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.35311091 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.35311091 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.35311073 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.16234978 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.16234973 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.16234978 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.16234973 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.12987974 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.060881127 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.060881127 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.12987974 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.12987974 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.060881127 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.060881127 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.12987974 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.23540717 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.11770351 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.11770351 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.23540717 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.23540717 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.11770351 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.11770351 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.23540717 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.29222959 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.15423223 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.15423223 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.29222959 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.29222959 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.15423223 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.15423223 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.29222959 ;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.021710664 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.031738002 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.031738002 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.021710664 ;
	setAttr ".tk[9]" -type "float3" -0.0021795838 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.0021795838 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.0053856056 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.0053856056 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.0021795838 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.0021795838 0 0 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.037289649 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.037289649 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.023639215 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.023639215 ;
	setAttr ".tk[51]" -type "float3" -0.0048381654 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.014484568 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.0048381654 0 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "polyCylinder2.out" "pCylinderShape2.i";
connectAttr "polySmoothFace1.out" "pCubeShape3.i";
connectAttr "polySplitRing3.out" "pCubeShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "polyCube2.out" "polySplitRing1.ip";
connectAttr "pCubeShape2.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "pCubeShape2.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "pCubeShape2.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyCube3.out" "polySplitRing4.ip";
connectAttr "pCubeShape3.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape3.wm" "polySplitRing5.mp";
connectAttr "polyTweak3.out" "polySplitRing6.ip";
connectAttr "pCubeShape3.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySmoothFace1.ip";
connectAttr "polySplitRing6.out" "polyTweak4.ip";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Windmill2.ma
