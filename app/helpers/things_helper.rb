module ThingsHelper
[Time, Date].map do |klass|
  klass::DATE_FORMATS[:variable]     = lambda do |t|
    date = 
    case 
    # display today's date as "today"
    when t = Date.today then "Today"
    # display yesterday's date as 'Yesterday'
    # otherwise, display date: eg. Mon 4th June
    else
      t.strftime("%A %B #{t.day.ordinalize}")
    end
    date
  end
end
end
