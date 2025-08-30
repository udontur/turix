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
          color: white;
          transition-duration: 0.3s;
      }

      #entry:selected{
          border-width: 2px;
          border-radius: 10px;
          border-color: #d9d9d9 !important;
          background-color: transparent;
          background: transparent; 
          color: white;
          border-style: solid;
          margin-left: 5px;
          margin-right: 5px;
          margin-bottom: 5px;
      }

      #input{
          margin: 5px;
          min-height: 35px;
          border-width: 2px;
          background-color: transparent;
          background: transparent; 
          color: white;
          border-style: solid;
      }

      #input:focus{
          outline-color: transparent; 
          border-radius: 10px;
          border-width: 2px;
          border-color: #ff0000 !important;
      }
    '';
  };
}
