# 📦 Maven Fuzzy Factory — Análisis de Marketing y Conversión E-commerce

Análisis de datos de sesiones web, pageviews, pedidos y devoluciones de **Maven Fuzzy Factory**, una tienda online de osos de peluche, con el objetivo de evaluar el crecimiento del negocio, la performance de los canales de marketing y la evolución de la conversión y el revenue entre marzo 2012 y marzo 2015.

Dashboard interactivo hecho en Power BI + consultas SQL para la preparación y exploración de los datos.

---

## 🎯 Objetivo del proyecto

Responder, con datos, cuatro preguntas de negocio:

1. ¿Cuál es la tendencia de sesiones y volumen de pedidos en el sitio?
2. ¿Cuál es la tasa de conversión sesión → pedido, y cómo evolucionó?
3. ¿Qué canales de marketing tuvieron mejor desempeño?
4. ¿Cómo evolucionó el revenue por pedido y por sesión?

---

## 🗂️ Datos

Dataset público de e-commerce con 6 tablas relacionadas:

| Tabla | Descripción |
|---|---|
| `website_sessions.csv` | Sesiones de usuarios con su fuente/canal de adquisición (UTM), dispositivo y referer |
| `website_pageviews.csv` | Vistas de página asociadas a cada sesión |
| `orders.csv` | Pedidos realizados, vinculados a la sesión y usuario que los generó |
| `order_items.csv` | Detalle de productos por pedido (precio, costo) |
| `order_item_refunds.csv` | Devoluciones/reembolsos por ítem |
| `products.csv` | Catálogo de productos |

**Período cubierto:** marzo 2012 – marzo 2015 (36 meses)
**Volumen:** ~473K sesiones, ~32K pedidos, ~1.19M pageviews

---

## 🛠️ Stack utilizado

- **SQL** — limpieza, joins y agregaciones para construir las tablas base del análisis (`/sql`)
- **Power BI** — modelado de datos, medidas DAX y dashboard interactivo (`/dashboard`)

---

## 📊 Dashboard

El dashboard permite explorar de forma dinámica:

- Sesiones y pedidos totales, y su evolución mensual/anual
- Pedidos por sesión (tasa de conversión) por mes o año
- Revenue por sesión por fecha
- Desglose por canal de adquisición (`utm_source` / `utm_campaign`)

![Dashboard overview](dashboard/screenshots/overview.png)
![Canales de marketing](dashboard/screenshots/channels.png)

> 📎 Archivo fuente: [`dashboard/JugueteriaDatosBI.pbix`](dashboard/JugueteriaDatosBI.pbix)

---

## 🔑 Insights principales

**1. El negocio está en crecimiento sostenido.**
Las sesiones mensuales pasaron de ~1,900 en marzo 2012 a picos de +30,000 en la temporada alta de fines de 2014, con estacionalidad marcada en **noviembre–diciembre** (época navideña), donde se concentran los mayores volúmenes de sesiones y pedidos del año.

**2. La conversión mejoró de forma consistente.**
La tasa de conversión sesión→pedido pasó de un promedio de **4.3% en el primer año** a **7.6% en el último año** analizado (conversión global del período: 6.83%), lo que indica que las optimizaciones de sitio/checkout a lo largo del tiempo funcionaron, no solo el crecimiento en volumen de tráfico.

**3. El revenue por sesión casi se duplicó.**
De un promedio de **$2.17 USD/sesión** en el primer año a **$4.86 USD/sesión** en el último, impulsado tanto por la mejor conversión como por un ticket promedio más alto ($50.36 → $63.89 por pedido), probablemente asociado a la ampliación del catálogo de productos.

**4. Los canales de marketing no compiten en la misma liga — cumplen roles distintos.**

| Canal | Sesiones | Pedidos | Tasa de conversión |
|---|---:|---:|---:|
| Google Search – Nonbrand | 282,706 | 18,822 | 6.66% |
| Bing Search – Nonbrand | 54,909 | 3,818 | 6.95% |
| Google Search – Brand | 33,329 | 2,511 | 7.53% |
| Bing Search – Brand | 7,914 | 701 | 8.86% |
| Social (targeted) | 5,590 | 288 | 5.15% |
| Social (pilot) | 5,095 | 55 | 1.08% |

- **Nonbrand (Google/Bing)** es el motor de **adquisición y volumen**: genera la gran mayoría de las sesiones y, por lo tanto, del revenue total. Es el canal donde más impacto absoluto tiene seguir invirtiendo.
- **Brand (Google/Bing)** tiene la **tasa de conversión más alta de todos los canales**, pero un volumen mucho menor porque depende de usuarios que ya buscan la marca activamente. No es un canal de crecimiento, sino de **eficiencia/rentabilidad** — vale la pena mantenerlo, no necesariamente escalarlo.
- **Social (pilot)** tiene la conversión más baja del dataset (1.08%) y bajo volumen: es candidato claro a pausar o rediseñar antes de invertir más presupuesto ahí.

**Recomendación de negocio:** priorizar el presupuesto en nonbrand para seguir creciendo en volumen, proteger/mantener la inversión en brand por su eficiencia, y no destinar más presupuesto a social sin antes rediseñar la estrategia (landing page, targeting o creatividad), dado su bajo desempeño actual.

---

## 📁 Estructura del repositorio

```
maven-fuzzy-factory-analysis/
├── README.md
├── data/
│   ├── website_sessions.csv
│   ├── website_pageviews.csv
│   ├── orders.csv
│   ├── order_items.csv
│   ├── order_item_refunds.csv
│   ├── products.csv
│   └── data_dictionary.csv
├── sql/
│   └── queries.sql
├── dashboard/
│   ├── JugueteriaDatosBI.pbix
│   └── screenshots/
│       ├── overview.png
│       └── channels.png
└── docs/
    └── resumen_ejecutivo.pdf
```

---

## 👤 Autor

**[Tu nombre]**
[LinkedIn] · [Portfolio] · [Email]
