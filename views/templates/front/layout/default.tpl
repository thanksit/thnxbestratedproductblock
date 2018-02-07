{if isset($thnxbestratedproductblock) && !empty($thnxbestratedproductblock)}
	{if isset($thnxbestratedproductblock.device)}
		{assign var=device_data value=$thnxbestratedproductblock.device|json_decode:true}
	{/if}
	<div id="thnxbestratedproductblock_{$thnxbestratedproductblock.id_thnxbestratedproductblock}" class="thnxbestratedproductblock thnx_default_products_block" style="margin:{$thnxbestratedproductblock.section_margin};">
		<div class="page_title_area {$thnx.home_title_style}">
			{if isset($thnxbestratedproductblock.title)}
				<h3 class="page-heading">
					<em>{$thnxbestratedproductblock.title}</em>
					<span class="heading_carousel_arrow"></span>
				</h3>
			{/if}
			{if isset($thnxbestratedproductblock.sub_title)}
				<p class="page_subtitle d_none">{$thnxbestratedproductblock.sub_title}</p>
			{/if}
			<div class="heading-line d_none"><span></span></div>
		</div>
		{if isset($thnxbestratedproductblock) && $thnxbestratedproductblock}
			<div id="thnx_bestratedproductsblock" class="thnx_default_products_block_content">
				{if isset($thnxbestratedproductblock.products) && !empty($thnxbestratedproductblock.products)}
					{foreach from=$thnxbestratedproductblock.products item="product"}
						  {include file="catalog/_partials/miniatures/product.tpl" product=$product}
					{/foreach}
				{/if}
			</div>
		{else}
			<div class="thnx_default_products_block_content">
				<p class="alert alert-info">{l s='No special products at this time.' mod='thnxbestratedproductblock'}</p>
			</div>
		{/if}
	</div>
{thnxbestratedproductblock_js name="thnxbestratedproductblock_{$thnxbestratedproductblock.id_thnxbestratedproductblock}"}
<script type="text/javascript">
	var thnxbestratedproductblock = $("#thnxbestratedproductblock_{$thnxbestratedproductblock.id_thnxbestratedproductblock}");
	var sliderSelect = thnxbestratedproductblock.find('ul.product_list.carousel'); 
	var arrowSelect = thnxbestratedproductblock.find('.heading_carousel_arrow'); 

	{if isset($thnxbestratedproductblock.nav_arrow_style) && ($thnxbestratedproductblock.nav_arrow_style == 'arrow_top')}
		var appendArrows = arrowSelect;
	{else}
		var appendArrows = sliderSelect;
	{/if}
	
	if (!!$.prototype.slick)
	sliderSelect.slick( { 
		infinite: {if isset($thnxbestratedproductblock.play_again)}{$thnxbestratedproductblock.play_again|boolval|var_export:true}{else}false{/if},
		autoplay: {if isset($thnxbestratedproductblock.autoplay)}{$thnxbestratedproductblock.autoplay|boolval|var_export:true}{else}false{/if},
		pauseOnHover: {if isset($thnxbestratedproductblock.pause_on_hover)}{$thnxbestratedproductblock.pause_on_hover|boolval|var_export:true}{else}true{/if},
		dots: {if isset($thnxbestratedproductblock.navigation_dots)}{$thnxbestratedproductblock.navigation_dots|boolval|var_export:true}{else}false{/if},
		arrows: {if isset($thnxbestratedproductblock.navigation_arrow)}{$thnxbestratedproductblock.navigation_arrow|boolval|var_export:true}{else}false{/if},
		appendArrows: appendArrows,
		nextArrow : '<i class="slick-next icon-chevron-right"></i>',
		prevArrow : '<i class="slick-prev icon-chevron-left"></i>',
		rows: {if isset($thnxbestratedproductblock.product_rows)}{$thnxbestratedproductblock.product_rows|intval}{else}1{/if},
		// slidesPerRow: 3,
		slidesToShow : {if isset($device_data.device_lg)}{$device_data.device_lg|intval}{else}4{/if},
		slidesToScroll : {if isset($thnxbestratedproductblock.product_scroll) && ($thnxbestratedproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_lg)}{$device_data.device_lg|intval}{else}4{/if}{/if},
		responsive:[
			 { 
				breakpoint: 1200,
				settings:  { 
					slidesToShow: {if isset($device_data.device_lg)}{$device_data.device_lg|intval}{else}4{/if},
					slidesToScroll : {if isset($thnxbestratedproductblock.product_scroll) && ($thnxbestratedproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_lg)}{$device_data.device_lg|intval}{else}4{/if}{/if},
					// slidesToShow : prd_per_column,
				 } 
			 } ,
			 { 
				breakpoint: 993,
				settings:  { 
					slidesToShow: {if isset($device_data.device_md)}{$device_data.device_md|intval}{else}4{/if},
					slidesToScroll : {if isset($thnxbestratedproductblock.product_scroll) && ($thnxbestratedproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_md)}{$device_data.device_md|intval}{else}4{/if}{/if},
					// slidesToShow : 2,
				 } 
			 } ,
			 { 
				breakpoint: 769,
				settings:  { 
					slidesToShow: {if isset($device_data.device_sm)}{$device_data.device_sm|intval}{else}3{/if},
					slidesToScroll : {if isset($thnxbestratedproductblock.product_scroll) && ($thnxbestratedproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_sm)}{$device_data.device_sm|intval}{else}3{/if}{/if},
					// slidesToShow : 2,
				 } 
			 } ,
			 { 
				breakpoint: 641,
				settings:  { 
					slidesToShow: {if isset($device_data.device_xs)}{$device_data.device_xs|intval}{else}2{/if},
					slidesToScroll : {if isset($thnxbestratedproductblock.product_scroll) && ($thnxbestratedproductblock.product_scroll=='per_item')}1{else}{if isset($device_data.device_xs)}{$device_data.device_xs|intval}{else}2{/if}{/if},
					// slidesToShow : 2,
				 } 
			 } ,
			 { 
				breakpoint: 481,
				settings:  { 
					slidesToShow: 1,
					slidesToScroll : 1,
					// slidesToShow : 1,
				 } 
			 } 
		]
	 } );
</script>
{/thnxbestratedproductblock_js}
{/if}