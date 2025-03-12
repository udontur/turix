{ pkgs, config, ... }: 
                                                                          
{
    programs.git={
        enable=true;
        userName="udontur";
        userEmail="h@hadrian.com";
    };
}

# git clone git@github.com:udontur/SOMETHING.git