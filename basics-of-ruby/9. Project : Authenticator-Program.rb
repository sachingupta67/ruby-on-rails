users =[
{name:'sachin',password:'123456'},
{name:'Pavan',password:'78910'},
{name:'suraj',password:'123456'},
{name:'sammi',password:'78910'}

]

puts 'Welcome to the Authenticator'
25.times {print "-"}
puts
puts "This program will take user input and compare user and password"
puts "if password is correct then you will get user object"

attempts = 1
while attempts<4
    print "User name:"
    username = gets.chomp

    print "Password:"
    password = gets.chomp
    users.each do |user|

        if user[:name] == username && user[:password] == password
            puts "Welcome #{user[:name]}!"
            puts "Your user object is #{user}"
            break
        else
            puts "Invalid username or password"
            break
        end
    end
    puts 'Press n to quit or any other key to continue'
    input = gets.chomp.downcase
    # if input =='n'
    #     break
    # end
   break if input == 'n'
    attempts+=1
end