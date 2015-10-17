class Employee
   attr_reader :name, :email
   def initialize(name, email)
     @name = name
     @email = email
   end

   def calculate_salary
       #What will this return? 
   end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_pay, hours_worked)
            super(name, email) #Navigator, look into what super does. 
        @hourly_pay = hourly_pay
        @hours_worked = hours_worked
    end

    def calculate_salary
        @hourly_pay * @hours_worked


    end

end


class SalariedEmployee < Employee
    def initialize(name, email, yearly_salary)
            super(name, email)
        @yearly_salary = yearly_salary
    end
    
    def calculate_salary
        @yearly_salary/48
    end

end

class MultiPaymentEmployee < Employee

    def initialize(name, email, yearly_salary, hourly_pay, extra_hours)
            super(name, email)
        @yearly_salary = yearly_salary
        @hourly_pay = hourly_pay
        @extra_hours = extra_hours
    end

    def calculate_salary
        (@yearly_salary/48) + (@hourly_pay * @extra_hours)
    end
end

class Payroll
  def initialize(employees)
     @employees = employees
 end

 def notify_employee(employee)
     puts "Email sent to #{employee.email}"
 end

 def pay_employees
     @employees.each do |employee| 
         puts "#{employee.name} => #{employee.calculate_salary}"
         notify_employee(employee)
     end
         bruto = @employees.reduce(0) {|sum, employee| sum + employee.calculate_salary}
         total = bruto + (bruto * 0.18)
         puts total
 end


end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
sara = HourlyEmployee.new('Sara', 's.mardomingo@gmail.com', 15, 50)
rafa = HourlyEmployee.new('Rafa', 'r.jklytu@vbni.es', 15, 80)

employees = [josh, nizar, ted, sara, rafa]
payroll = Payroll.new(employees)
payroll.pay_employees