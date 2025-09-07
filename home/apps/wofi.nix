{ config, pkgs, ... }:
{
  programs.wofi = {
    enable = true;
    settings = {
      width = 250;
      height = 450;
      location = "center";
      show = "drun";
      filter_rate = 100;
      image_size = 35;
      gtk_dark = true;
      hide_scroll = true;
    };
    style = ''
      #window{
          font-size: 15px;
          font-family: "Recursive Sans Casual Static";
          background-color: transparent;
          min-width: 20px !important;
          width: 30px !important; 
          max-width: 20px !important; 
      }

      #img{
          margin-right: 10px;
          margin-left: 10px;
      }

      #entry{
          color: red;
          transition-duration: 0.3s;
          text-shadow: 2px 2px 4px black !important;

      }

      #entry:selected{
          border-width: 2px;
          border-radius: 10px;
          border-color: #d9d9d9;
          background-color: transparent;
          background: transparent; 
          color: white;
          border-style: solid;
          margin-left: 5px;
          margin-right: 5px;
          margin-bottom: 5px;
          text-shadow: 2px 2px 4px black !important;
      }

      #input{
          margin: 5px;
          min-height: 35px;
          border-width: 2px;
          background-color: transparent;
          background: transparent; 
          border-color: #d9d9d9;
          color: white;
          border-style: solid;
          border-radius: 10px;
          text-shadow: 2px 2px 4px black !important;
      }

      #input:focus{
          outline-color: transparent; 
          border-radius: 10px;
          border-width: 2px;
          border-color: #d9d9d9;
          text-shadow: 2px 2px 4px black !important;
      }
    '';
  };
}
