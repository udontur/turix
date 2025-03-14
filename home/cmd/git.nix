{ pkgs, config, ... }: 
                                                                          
{
    programs.git={
        enable=true;
        userName="udontur";
        userEmail="h@hadrianlau.com";
    };
}

# git clone git@github.com:udontur/SOMETHING.git