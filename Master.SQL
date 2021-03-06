SELECT

customername,
sono,
eq.equivfactor,
orderqnt,
((eq.equivfactor*orderqnt)/25)/1600 AS Loads,
CASE
	WHEN customername LIKE '%GIANT%' THEN 'AHOLD'
	WHEN customername LIKE '%STOP & SHOP%' THEN 'AHOLD'
	WHEN customername LIKE '%HANNAFORD%' THEN 'AHOLD'
	WHEN customername LIKE '%SPROUTS%' THEN 'SPROUTS'
	WHEN customername LIKE '%WHOLE FOODS%' THEN 'WHOLE FOODS'
	WHEN customername LIKE '%ALBERTSON' THEN 'SAFEWAY'
	WHEN customername LIKE '%ALDI%' THEN 'ALDI'
	WHEN customername LIKE '%AMERIFRESH%' THEN 'AMERIFRESH'
	WHEN customername LIKE '%BEN E KEITH%' THEN 'BEN E KEITH'
	WHEN customername LIKE '%CHARLIE''S PRODUCE%' THEN 'CHARLIE'S PRODUCE''
	WHEN customername LIKE '%COSTCO%' THEN 'COSTCO'
	WHEN customername LIKE '%FIESTA MARKET%' THEN 'FIESTA MARKET'
	WHEN customername LIKE '%FRESH POINT%' THEN 'FRESH POINT'
	WHEN customername LIKE '%H.E. BUTT%' THEN 'HEB'
	WHEN customername LIKE '%IMPERFECT%' THEN 'IMPERFECT'
	WHEN customername LIKE '%JETRO%' THEN 'JETRO'
	WHEN customername LIKE '%KROGER%' THEN 'KROGER'
	WHEN customername LIKE '%KING SOOPERS%' THEN 'KROGER'
	WHEN customername LIKE '%ROUNDY%' THEN 'KROGER'
	WHEN customername LIKE '%LA BONITA%' THEN 'LA BONITA'
	WHEN customername LIKE '%MARKET FRESH PRODUCE%' THEN 'MARKET FRESH PRODUCE'
	WHEN customername LIKE '%MARKON%' THEN 'MARKON'
	WHEN customername LIKE '%PRO*ACT%' THEN 'PRO*ACT'
	WHEN customername LIKE '%PRODUCE ALLIANCE%' THEN 'PRODUCE ALLIANCE'
	WHEN customername LIKE '%REINHART%' THEN 'REINHART'
	WHEN customername LIKE '%SAFEWAY%' THEN 'SAFEWAY'
	WHEN customername LIKE '%SAMS CLUB%' THEN 'SAM''S CLUB'
	WHEN customername LIKE '%SAM''S CLUB%' THEN 'SAM''S CLUB'
	WHEN customername LIKE '%SYSCO%' THEN 'SYSCO'
	WHEN customername LIKE '%TARGET%' THEN 'TARGET'
	WHEN customername LIKE '%TOM LANGE%' THEN 'TOM LANGE'
	WHEN customername LIKE '%TONY''S%' THEN 'TONY''S'
	WHEN customername LIKE '%TOPCO%' THEN 'TOPCO'
	WHEN customername LIKE '%TRADER JOE''S%' THEN 'TRADER JOE''S'
	WHEN customername LIKE '%UMINA BROS%' THEN 'UMINA BROS'
	WHEN customername LIKE '%US FOODS%' THEN 'US FOODS'
	WHEN customername LIKE '%WAL-MART%' THEN 'WAL-MART'
	WHEN customername LIKE '%WALMART%' THEN 'WAL-MART'
	WHEN customername LIKE '%WHOLE FOODS%' THEN 'WHOLE FOODS'
	WHEN customername LIKE '%SPROUTS FARMERS MARKET%' THEN 'SPROUTS FARMERS MARKET'
	ELSE customername
END AS GrowthGroupedCustomers,
CASE 
	WHEN sotype = '1' THEN 'Quote'
	WHEN sotype = '2' THEN 'Sales'
	WHEN sotype = '3' THEN 'Standard Order'
	WHEN sotype = '3' THEN 'Cmcl Stg Order'
	WHEN sotype = '3' THEN 'Invoice'
	WHEN sotype = '3' THEN 'Point of Sales'
	WHEN sotype = '3' THEN 'Bkg-Shipper'
	WHEN sotype = '3' THEN 'Charge Tag'
	WHEN sotype = '3' THEN 'Transfer'
ELSE 'No sotype'
END AS OrderType,
CASE
	WHEN sostatus = '0' THEN 'Imported'
	WHEN sostatus = '1' THEN 'Quote'
	WHEN sostatus = '2' THEN 'Ordered'
	WHEN sostatus = '4' THEN 'Shipped'
	WHEN sostatus = '6' THEN 'Invoiced'
	WHEN sostatus = 'D' THEN 'Deleted'
	WHEN sostatus = 'P' THEN 'Partial Paid' 
	WHEN sostatus = 'C' THEN 'Paid in Full'
	ELSE 'No Status'
	END as OrderStatus,  
CASE 
	WHEN CUSTOMERNAME = 'ROUNDY''S SUPERMARKETS, INC.' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'STOP & SHOP CHESTER' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'STOP & SHOP FREETOWN' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'GIANT - CARLISLE' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'GIANT - LANDOVER' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'HANNAFORD BROS - NY' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'HANNAFORD BROS - SO PORTLAND' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'SPROUTS FARMERS MARKET - CA' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'SAM''S CLUB HENDERSON # 6091' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'SPROUTS FARMERS MARKET - GA' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'SPROUTS FARMERS MARKET - AZ' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'SPROUTS FARMERS MARKET - TX' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'SPROUTS FARMERS MARKET - UNION CITY' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'H.E. BUTT GROCERY CO' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'H.E. BUTT GROCERY - HOUSTON' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'WHOLE FOODS - CHESHIRE' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'WHOLE FOODS - LANDOVER' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'WHOLE FOODS - MUNSTER' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'WHOLE FOODS - SOUTH' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'WHOLE FOODS - SOUTHWEST' THEN 'TIER 1'
	WHEN CUSTOMERNAME = 'SUPERIOR DISTRIBUTION CENTER' THEN 'TIER 2'
	WHEN CUSTOMERNAME = 'SAFEWAY - TRACY' THEN 'TIER 2'
	WHEN CUSTOMERNAME = 'PRICE CHOPPER (THE GOLUB CLUB)' THEN 'TIER 2'
	WHEN CUSTOMERNAME = 'CARDENAS MARKETS' THEN 'TIER 2'
	ELSE 'IGNORE'
	END AS TIER,
CASE
	WHEN CUSTOMERNAME LIKE '%HOLD%'	THEN 'HOLD'
	WHEN CUSTOMERNAME LIKE '%FORECAST%'	THEN 'FORECAST'
	WHEN CUSTOMERNAME LIKE '%DUMPED INVENTORY%'	THEN 'DUMPED INVENTORY'
	WHEN CUSTOMERNAME LIKE '%EMPLOYEE GIVEAWAY%'	THEN 'EMPLOYEE GIVEAWAY'
	WHEN CUSTOMERNAME LIKE '%LOST INVENTORY%'	THEN 'LOST INVENTORY'
	WHEN CUSTOMERNAME LIKE '%SAMPLE%'	THEN 'SAMPLE'
	WHEN CUSTOMERNAME LIKE '%TRADESHOW%'	THEN 'TRADESHOW'
	WHEN CUSTOMERNAME LIKE '%DONATIONS%'	THEN 'DONATIONS'
	WHEN CUSTOMERNAME LIKE '%GIFT%'	THEN 'GIFT'
	ELSE 'INCLUDED'
	END AS EXCLUSIONS,
	
shipdatetime,	
holdflag,
DATEPART(wk,SHIPDATETIME) as Week,
LEFT(NAME,2)as SIZE

FROM
order_header as oh
INNER JOIN
order_line as ol ON oh.artrxhdridx = ol.artrxhdridx
INNER JOIN
m29_ic_product_equiv as eq ON ol.productidx = eq.productidx
INNER JOIN
m29_produce as p ON p.PRODUCTIDX = ol.productidx
INNER JOIN
m29_ps_size as sz ON sz.SIZEIDX =p.SIZEIDX
WHERE SHIPDATETIME > '2020-11-01'
