{if isset($thnxbestratedproductblock) && !empty($thnxbestratedproductblock)}
	{if isset($thnxbestratedproductblock.device)}
		{assign var=device_data value=$thnxbestratedproductblock.device|json_decode:true}
	{/if}
	<div class="thnx_product_home_small col-sm-4">
		<div class="thnxbestratedproductblock block carousel">
			<h4 class="title_block">
		    	<em>{$thnxbestratedproductblock.title}</em>
		    </h4>
		    <div class="block_content products-block">
		        {if isset($thnxbestratedproductblock) && $thnxbestratedproductblock}
		        	{if isset($thnxbestratedproductblock.products) && !empty($thnxbestratedproductblock.products)}
		        		{foreach from=$thnxbestratedproductblock.products item="product"}
		        			  {include file="catalog/_partials/miniatures/product.tpl" product=$product}
		        		{/foreach}
		        	{/if}
		        {else}
	        		<p class="alert alert-info">{l s='No products at this time.' mod='thnxbestratedproductblock'}</p>
		        {/if}
		    </div>
		</div>
	</div>
{/if}