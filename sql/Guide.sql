SELECT * FROM dbo.maven_fuzzy_factory_data_dictionary;

SELECT 
    ws.website_session_id,
    ws.created_at AS fecha_sesion,
    ws.utm_source,
    ws.utm_campaign,
    ws.device_type,
    o.order_id,
    o.created_at AS fecha_orden,
    o.price_usd
FROM dbo.website_sessions ws
LEFT JOIN dbo.orders o 
    ON ws.website_session_id = o.website_session_id
ORDER BY ws.created_at;