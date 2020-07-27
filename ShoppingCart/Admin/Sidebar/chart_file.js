var ctx = document.getElementById("myChart").getContext('2d');


var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ["1 March", "2 March", "3 March", "4 March", "5 March", "6 March", "7 March", "8 March", "9 March", "10 March"],
        datasets: [{
            label: 'Online Sales', // Name the series
            data: [500, 50, 2424, 14040, 14141, 4111, 4544, 47, 5555, 6811], // Specify the data values array
            fill: false,
            borderColor: '#2196f3', // Add custom color border (Line)
            backgroundColor: '#2196f3', // Add custom color background (Points and Fill)
            borderWidth: 1 // Specify bar border width
        },
            {
                label: 'Returns', // Name the series
                data: [400, 90, 224, 4040, 4141, 111, 544, 7, 555,  811], // Specify the data values array
                fill: false,
                borderColor: '#da680f', // Add custom color border (Line)
                backgroundColor: '#da680f', // Add custom color background (Points and Fill)
                borderWidth: 0.5 // Specify bar border width
            }
        ]
    },
    options: {
        responsive: true, // Instruct chart js to respond nicely.
        maintainAspectRatio: false, // Add to prevent default behaviour of full-width/height 
    }
});
//==============================================================================
var data = {
    labels: [
        "Tables",
        "Blue",
        "Yellow"
    ],
    datasets: [{
        data: [300, 50, 100],
        backgroundColor: [
            "#FF6384",
            "#36A2EB",
            "#FFCE56"
        ],
        hoverBackgroundColor: [
            "#FF6384",
            "#36A2EB",
            "#FFCE56"
        ]
    }]
};
var ctx = document.getElementById("myChart1").getContext('2d');;
var myChart = new Chart(ctx, {
    type: 'pie',
    data: data
});
//==============================================================================================================
var ctx = document.getElementById("myChart2").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["November", "December", "January", "February", "March"],
        datasets: [{
            label: 'Order Summary',
            data: [8, 25, 37, 60, 40],
            backgroundColor: [
                'rgba(255,99,132,1)',
                'rgba(255,99,132,1)',
                'rgba(255,99,132,1)',
                'rgba(255,99,132,1)',
                'rgba(255,99,132,1)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(255,99,132,1)',
                'rgba(255,99,132,1)',
                'rgba(255,99,132,1)',
                'rgba(255,99,132,1)'
            ],
            borderWidth: 0.8
        }]
    },
    options: {
        responsive: true,
        scales: {
            xAxes: [{
                ticks: {
                    maxRotation: 00,
                    minRotation: 00
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
//==============================================================================================================

//====================================================================================================//
//var ctx = document.getElementById("myChart15555");
//var myChart = new Chart(ctx, {
//    type: 'bar',
//    data: {
//        labels: ["Kiddies", "Shelves & Desks", "Ottoman & Shoeboxes", "Tables", "Wall Art & Screens"],
//        datasets: [{
//            label: 'Sales by dept.',
//            data: [12, 19, 3, 5, 2, 3, 20, 3, 5, 6, 2, 1],
//            backgroundColor: [
//                'rgba(255, 99, 132, 0.2)',
//                'rgba(54, 162, 235, 0.2)',
//                'rgba(255, 206, 86, 0.2)',
//                'rgba(75, 192, 192, 0.2)',
//                'rgba(153, 102, 255, 0.2)'
//            ],
//            borderColor: [
//                'rgba(255,99,132,1)',
//                'rgba(54, 162, 235, 1)',
//                'rgba(255, 206, 86, 1)',
//                'rgba(75, 192, 192, 1)',
//                'rgba(153, 102, 255, 1)'
//            ],
//            borderWidth: 0.8
//        }]
//    },
//    options: {
//        responsive: true,
//        scales: {
//            xAxes: [{
//                ticks: {
//                    maxRotation: 00,
//                    minRotation: 00
//                }
//            }],
//            yAxes: [{
//                ticks: {
//                    beginAtZero: true
//                }
//            }]
//        }
//    }
//});
