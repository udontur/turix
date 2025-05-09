{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/btop/themes/tommorow-night.theme" = {
      text = ''
        #Nord theme but using the Tomorrow Night palette
        #by Appuchia <contact@appu.ltd>

        # Colors should be in 6 or 2 character hexadecimal or single spaced rgb decimal: "#RRGGBB", "#BW" or "0-255 0-255 0-255"
        # example for white: "#ffffff", "#ff" or "255 255 255".

        # All graphs and meters can be gradients
        # For single color graphs leave "mid" and "end" variable empty.
        # Use "start" and "end" variables for two color gradient
        # Use "start", "mid" and "end" for three color gradient

        # Main background, empty for terminal default, need to be empty if you want transparent background
        theme[main_bg]="#1d1f21"

        # Main text color
        theme[main_fg]="#c5c8c6"

        # Title color for boxes
        theme[title]="#c5c8c6"

        # Highlight color for keyboard shortcuts
        theme[hi_fg]="#81beb7"

        # Background color of selected item in processes box
        theme[selected_bg]="#282a2e"

        # Foreground color of selected item in processes box
        theme[selected_fg]="#c5c8c6"

        # Color of inactive/disabled text
        theme[inactive_fg]="#373b41"

        # Misc colors for processes box including mini cpu graphs, details memory graph and details status text
        theme[proc_misc]="#969896"

        # Cpu box outline color
        theme[cpu_box]="#81a2be"

        # Memory/disks box outline color
        theme[mem_box]="#81a2be"

        # Net up/down box outline color
        theme[net_box]="#81a2be"

        # Processes box outline color
        theme[proc_box]="#81a2be"

        # Box divider line and small boxes line color
        theme[div_line]="#81a2be"

        # Temperature graph colors
        theme[temp_start]="#b5bd68"
        theme[temp_mid]="#f0c674"
        theme[temp_end]="#cc6666"

        # CPU graph colors
        theme[cpu_start]="#b5bd68"
        theme[cpu_mid]="#f0c674"
        theme[cpu_end]="#cc6666"

        # Mem/Disk free meter
        theme[free_start]="#b5bd68"
        theme[free_mid]="#f0c674"
        theme[free_end]="#cc6666"

        # Mem/Disk cached meter
        theme[cached_start]="#b5bd68"
        theme[cached_mid]="#f0c674"
        theme[cached_end]="#cc6666"

        # Mem/Disk available meter
        theme[available_start]="#b5bd68"
        theme[available_mid]="#f0c674"
        theme[available_end]="#cc6666"

        # Mem/Disk used meter
        theme[used_start]="#b5bd68"
        theme[used_mid]="#f0c674"
        theme[used_end]="#cc6666"

        # Download graph colors
        theme[download_start]="#b5bd68"
        theme[download_mid]="#f0c674"
        theme[download_end]="#cc6666"

        # Upload graph colors
        theme[upload_start]="#b5bd68"
        theme[upload_mid]="#f0c674"
        theme[upload_end]="#cc6666"
      '';
      enable=true;
      executable = false;
    };
  };
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "tommorow-night";
      theme_background = true;
      truecolor = true;
      force_tty = false;
      presets = "cpu:1:default, proc:0:default cpu:0:default,mem:0:default,net:0:default cpu:0:block,net:0:tty";
      vim_keys = false;
      rounded_corners = true;
      graph_symbol = "block";
      graph_symbol_cpu = "default";
      graph_symbol_gpu = "default";
      graph_symbol_mem = "default";
      graph_symbol_net = "default";
      graph_symbol_proc = "default";
      shown_boxes = "cpu proc mem net gpu0"; # gpu does not work!!!
      update_ms = 500;
      proc_sorting = "cpu lazy";
      proc_reversed = false;
      proc_tree = true;
      proc_colors = true;
      proc_gradient = true;
      proc_per_core = false;
      proc_mem_bytes = true;
      proc_cpu_graphs = false;
      proc_info_smaps = false;
      proc_left = false;
      proc_filter_kernel = false;
      proc_aggregate = false;
      cpu_graph_upper = "Auto";
      cpu_graph_lower = "Auto";
      show_gpu_info = "On";
      cpu_invert_lower = true;
      cpu_single_graph = false;
      cpu_bottom = false;
      show_uptime = true;
      check_temp = true;
      cpu_sensor = "Auto";
      show_coretemp = true;
      cpu_core_map = "";
      temp_scale = "celsius";
      base_10_sizes = false;
      show_cpu_freq = true;
      clock_format = "%X %d-%m";
      background_update = true;
      custom_cpu_name = "";
      disks_filter = "";
      mem_graphs = false;
      mem_below_net = false;
      zfs_arc_cached = true;
      show_swap = false;
      swap_disk = false;
      show_disks = false;
      only_physical = true;
      use_fstab = true;
      zfs_hide_datasets = false;
      disk_free_priv = false;
      show_io_stat = false;
      io_mode = false;
      io_graph_combined = false;
      io_graph_speeds = "";
      net_download = 100;
      net_upload = 100;
      net_auto = true;
      net_sync = true;
      net_iface = "";
      show_battery = false;
      selected_battery = "";
      show_battery_watts = true;
      log_level = "WARNING";
      nvml_measure_pcie_speeds = false;
      gpu_mirror_graph = true;
      custom_gpu_name0 = "gpu0";
      custom_gpu_name1 = "";
      custom_gpu_name2 = "";
      custom_gpu_name3 = "";
      custom_gpu_name4 = "";
      custom_gpu_name5 = "";
    };
  };
}
