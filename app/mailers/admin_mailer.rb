class AdminMailer < ApplicationMailer
       def alert_admin(studmark)
        @firstname = studmark.firstname
        @lastname  = studmark.lastname
        mail(to:"rekha.gaware1096@gmail.com",subject: 'Student Marks Has Been Addedd !')
    end
end
