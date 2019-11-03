


function FusionCharts() {
    var salesChart = new FusionCharts({
        type: "column2d",
        renderAt: "chart-container",
        width: "100%",
        height: "500",
        dataFormat: "json",
        dataSource: {
            "chart": {
                "caption": "Burger King Monthly Sales",
                "captionFontColor": "#fff",
                // more chart configuration options
            },
            "data": [{
                "label": "Jan",
                "value": "420000"
            },
                // more data
            ]
        }
    });
    salesChart.render();
};

