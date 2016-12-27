$(document).ready(function() {

    var prepare = function(options, originalOptions, jqXHR) {
      var token;
      if (!options.crossDomain) {
        token = $('meta[name="csrf-token"]').attr('content');
        if (token) {
          return jqXHR.setRequestHeader('X-CSRF-Token', token);
        }
      }
    };

    create_event = function(title, start, end){
      $.ajaxPrefilter(prepare);
      $.ajax({
        type: "post",
        url: "/events/create",
        data: {
          title: title,
          start_at: start.toISOString(),
          finish_at: end.toISOString()
        }
      }).done(function(data){
        alert("登録しました!");
      }).fail(function(data){
        alert("登録できませんでした。");
      });
    };

    update_event = function(id, title, start, end){
      $.ajaxPrefilter(prepare);
      $.ajax({
        type: "post",
        url: '/events/update',
        data: {
          id: id,
          title: title,
          start_at: start.toISOString(),
          finish_at: end.toISOString()
        }
      }).done(function(data){
        alert("更新しました!");
      }).fail(function(data){
        alert("更新できませんでした。");
      });
    };

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      navLinks: true,
      selectable: true,
      selectHelper: true,
      select: function(start, end) {
        var title = prompt('イベントを追加');
        var eventData;
        if (title) {
          eventData = {
            title: title,
            start: start,
            end: end
          };
          $('#calendar').fullCalendar('renderEvent', eventData, true);
          $('#calendar').fullCalendar('unselect');
          create_event(title, start, end);
        }
      },
      eventClick: function(event, element) {
        var title = prompt('イベントを変更');
        event.title = title;
        $('#calendar').fullCalendar('updateEvent', event);
        update_event(event.id, title, event.start, event.end);
      },
      timezone: 'UTC',
      events: '/events.json',
      editable: true
    });

});
