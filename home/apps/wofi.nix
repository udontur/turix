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
          font-family: "JetBrains Mono";
          background-color: #101010;
          min-width: 20px !important;
          width: 30px !important; 
          max-width: 20px !important; 
      }

      #outer-box{
          color: rgba(133, 133, 133, 1);
      }

      #img{
          margin-right: 10px;
          margin-left: 10px;
      }

      #entry{
          transition-duration: 0.3s;
      }

      #entry:selected{
          border-width: 2px;
          border-radius: 10px;
          border-color: transparent;
          background-color: transparent;
          background: transparent; 
          color: white;
          border-style: solid;
          border-color: transparent;
          margin-left: 5px;
          margin-right: 5px;
          margin-bottom: 5px;
      }

      #input{
          margin: 5px;
          min-height: 35px;
          border-width: 2px;
          border-color: transparent;
          background-color: transparent;
          background: transparent; 
          color: white;
          border-style: solid;
      }

      #input:focus{
          outline-color: transparent; 
          border-radius: 10px;
          border-width: 2px;
          border-color: rgba(74, 222, 128, 1);
      }
    '';
  };
}
