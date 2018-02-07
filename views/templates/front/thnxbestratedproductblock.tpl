{if !empty($thnxbestratedproductblock)}
	{foreach from=$thnxbestratedproductblock item=thnx_products}
		{include file="./layout/{$thnx_products.layout}.tpl"}
	{/foreach}
{/if}