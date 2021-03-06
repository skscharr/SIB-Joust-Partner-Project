@joustApp.controller 'MarketCtrl', (['$scope', ($scope) ->
  doughnutData = [
    {
      value: 75,
      color:"rgba(175,158,118,1)"
    },
    {
      value : 25,
      color : "rgba(175,158,118,0.5)"
    }
  ]

  myDoughnut = new Chart(document.getElementById("doughnutPro").getContext("2d")).Doughnut(doughnutData)

  doughnutData = [
    {
      value: 80,
      color:"rgba(163,84,55,1)"
    },
    {
      value : 20,
      color : "rgba(163,84,55,0.5)"
    }
  ]

  myDoughnut = new Chart(document.getElementById("doughnutPro2").getContext("2d")).Doughnut(doughnutData)

  doughnutData = [
    {
      value: 10,
      color:"rgba(41,59,93,1)"
    },
    {
      value : 90,
      color : "rgba(41,59,93,0.5)"
    }
  ]

  myDoughnut = new Chart(document.getElementById("doughnutPro3").getContext("2d")).Doughnut(doughnutData)

  $doughtMark = $("#doughnutMark")
  $doughtMark2 = $("#doughnutMark2")
  $doughtMark3 = $("#doughnutMark3")
  $barMark = $("#barMark")

  $(window).scroll ->
    if !$doughtMark.data("finished") && window.isScrolledIntoView($doughtMark)
      $doughtMark.data("finished", true)
      doughnutData = [
        {
          value: 12,
          color:"rgba(163,84,55,1)"
        },
        {
          value : 82,
          color : "rgba(163,84,55,0.5)"
        }
      ]

      myDoughnut = new Chart(document.getElementById("doughnutMark").getContext("2d")).Doughnut(doughnutData)

    if !$doughtMark2.data("finished") && window.isScrolledIntoView($doughtMark2)
      $doughtMark2.data("finished", true)
      doughnutData = [
        {
          value: 24,
          color:"rgba(175,158,118,1)"
        },
        {
          value : 76,
          color : "rgba(175,158,118,0.5)"
        }
      ]

      myDoughnut = new Chart(document.getElementById("doughnutMark2").getContext("2d")).Doughnut(doughnutData)

    if !$doughtMark3.data("finished") && window.isScrolledIntoView($doughtMark3)
      $doughtMark3.data("finished", true)

      doughnutData = [
        {
          value: 25,
          color:"rgba(41,59,93,1)"
        },
        {
          value : 75,
          color : "rgba(41,59,93,0.5)"
        }
      ]

      myDoughnut = new Chart(document.getElementById("doughnutMark3").getContext("2d")).Doughnut(doughnutData)
      
    if !$barMark.data("finished") && window.isScrolledIntoView($barMark)
      $barMark.data("finished", true)

      barChartData = {
        labels : ["2010","2011","2012","2013","2014","2015"],
        datasets : [
          {
            fillColor : "rgba(41,59,93,0.5)",
            strokeColor : "rgba(41,59,93,1)",
            data : [0.82,0.9,1.0,1.0,1.0,1.2]
          }
        ]
      }

      myLine = new Chart(document.getElementById("barMark").getContext("2d")).Bar(barChartData)
])