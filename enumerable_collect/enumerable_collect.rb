def rot13(secret_messages)
  # your code here
    alphabets = ('a'..'z').to_a
    secret_messages.map! do |message|
        decode = message.chars.collect do |char|
            char == " " ? " " : alphabets[alphabets.index(char.downcase) - 13]
        end
        decode.join
    end
    return secret_messages
end
