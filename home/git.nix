{ pkgs, config, ... }: 
                                                                          
{
    programs.git={
        enable=true;
        userName="udontur";
        userEmail="h@hadrian.com";
    };
}