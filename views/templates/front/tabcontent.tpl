{if isset($thnxbestratedproductblock) && !empty($thnxbestratedproductblock)}
	{if isset($thnxbestratedproductblock.device)}
		{assign var=device_data value=$thnxbestratedproductblock.device|json_decode:true}
	{/if}
	{if isset($thnxbestratedproductblock.products) && !empty($thnxbestratedproductblock.products)}
		<div id="thnx_bestratedproductsblock_tab_{if isset($thnxbestratedproductblock.id_thnxbestratedproductblock)}{$thnxbestratedproductblock.id_thnxbestratedproductblock}{/if}" class="tab-pane fade">
			{if isset($thnxbestratedproductblock.products) && !empty($thnxbestratedproductblock.products)}
				{include file="catalog/_partials/product-list/product-list-default.tpl" products=$thnxbestratedproductblock.products}
			{/if}
		</div>
	{else}
		<div id="thnx_bestratedproductsblock_tab_{if isset($thnxbestratedproductblock.id_thnxbestratedproductblock)}{$thnxbestratedproductblock.id_thnxbestratedproductblock}{/if}" class="tab-pane fade">
			<p class="alert alert-info">{l s='No products at this time.' mod='thnxbestratedproductblock'}</p>
		</div>
	{/if}
{/if}