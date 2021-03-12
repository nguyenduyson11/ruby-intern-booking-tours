var day_current = new Date();
var month = day_current.getMonth()+1;
var year = day_current.getFullYear();
var day_of = new Date(year,month,0);
var date = day_of.getDate();
document.addEventListener("turbolinks:load", () => {
  var price = parseFloat($('#tour_price').text());
  console.log(price)
  $('#book_tour_start_date').datetimepicker({
    timepicker:false,
    format: 'd/m/Y',
    minDate: '+1970/01/02',
    maxDate: '2021/03/28',
    maxDate: `${year}/${month}/${date}`,
    onChangeDateTime:function(dp,$input){
      const day = $('#book_tour_tour_day').val();
      const start_day = $input.val();
      if(start_day.trim()){
        var arr = start_day.split('/');
        var next_day = nextday(arr.reverse().join('/'),parseInt(day))
        $('#book_tour_end_date').val(`${next_day.getDate()}/${next_day.getMonth()+1}/${next_day.getFullYear()}`)
      }
    }
  });
  $('#book_tour_quantity').on('change',(e)=>{
    var number = parseInt(e.target.value);
    $('#total_price').text(total_price(price,number));
  }) ;
});
function nextday(date,step){
  var day = new Date(date);
  var nextDay = new Date(day);
  nextDay.setDate(day.getDate() + step);
  return nextDay;
}
function total_price(price,number){
  total =  price * number;
  total = total.toLocaleString('it-IT', {style : 'currency', currency : 'VND'});
  return total;
}
