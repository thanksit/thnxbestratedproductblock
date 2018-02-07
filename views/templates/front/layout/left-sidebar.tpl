{if isset($thnxbestratedproductblock) && !empty($thnxbestratedproductblock)}
	{if isset($thnxbestratedproductblock.device)}
		{assign var=device_data value=$thnxbestratedproductblock.device|json_decode:true}
	{/if}
	<div class="thnxbestratedproductblock block carousel">
		<h4 class="title_block">
	    	{$thnxbestratedproductblock.title}
	    </h4>
	    <div class="block_content">
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
{/if}