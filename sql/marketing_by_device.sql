SELECT 
    ISNULL(ws.utm_source, 'direct/unknown') AS canal,
    ws.device_type,
    COUNT(DISTINCT ws.website_session_id) AS sesiones,
    COUNT(DISTINCT o.order_id) AS ordenes,
    CAST(COUNT(DISTINCT o.order_id) * 100.0 / COUNT(DISTINCT ws.website_session_id) AS DECIMAL(5,2)) AS conversion_pct,
    ISNULL(SUM(o.price_usd), 0) AS ingresos,
    CAST(ISNULL(SUM(o.price_usd), 0) * 1.0 / COUNT(DISTINCT ws.website_session_id) AS DECIMAL(8,2)) AS ingreso_por_sesion
FROM dbo.website_sessions ws
LEFT JOIN dbo.orders o 
    ON ws.website_session_id = o.website_session_id
GROUP BY 
    ISNULL(ws.utm_source, 'direct/unknown'),
    ws.device_type
ORDER BY ingresos DESC;