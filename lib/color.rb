class String
    def bold_purple
        "\e[1;35m#{self}\e[0m" 
    end
    def text_black
        "\e[0;30m#{self}\e[0m" 
    end
    def text_red
        "\e[0;31m#{self}\e[0m" 
    end
    def text_green
        "\e[0;32m#{self}\e[0m" 
    end
    def text_yellow
        "\e[0;33m#{self}\e[0m" 
    end
    def text_blue
        "\e[0;34m#{self}\e[0m" 
    end
    def text_purple
        "\e[0;35m#{self}\e[0m" 
    end
    def text_cyan
        "\e[0;36m#{self}\e[0m" 
    end
    def text_white
        "\e[0;37m#{self}\e[0m" 
    end
    def text_bold_black
        "\e[1;30m#{self}\e[0m" 
    end
    def text_bold_red
        "\e[1;31m#{self}\e[0m" 
    end
    def text_bold_green
        "\e[1;32m#{self}\e[0m" 
    end
    def text_bold_yellow
        "\e[1;33m#{self}\e[0m" 
    end
    def text_bold_blue
        "\e[1;34m#{self}\e[0m" 
    end
    def text_bold_purple
        "\e[1;35m#{self}\e[0m" 
    end
    def text_bold_cyan
        "\e[1;36m#{self}\e[0m" 
    end
    def text_bold_white
        "\e[1;37m#{self}\e[0m" 
    end
    def bg_black
        "\e[40m#{self}\e[0m" 
    end
    def bg_red
        "\e[41m#{self}\e[0m" 
    end
    def bg_green
        "\e[42m#{self}\e[0m" 
    end
    def bg_yellow
        "\e[43m#{self}\e[0m" 
    end
    def bg_blue
        "\e[44m#{self}\e[0m" 
    end
    def bg_purple
        "\e[45m#{self}\e[0m" 
    end
    def bg_cyan
        "\e[46m#{self}\e[0m" 
    end
    def bg_white
        "\e[47m#{self}\e[0m" 
    end
end