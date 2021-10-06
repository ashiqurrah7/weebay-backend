json.data do
    json.user do
        json.call(
            @user,
            :email,
            :password,
            :name,
            :address,
            :phone
        )
    end
end