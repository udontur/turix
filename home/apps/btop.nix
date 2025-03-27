{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  # home.packages = with pkgs; [ # Cause collision between 2 btop packages
  #   btop-rocm
  # ];
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
      shown_boxes = "cpu proc mem net"; # gpu does not work!!!
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
      gpu_mirror_graph = false;
      custom_gpu_name0 = "";
      custom_gpu_name1 = "";
      custom_gpu_name2 = "";
      custom_gpu_name3 = "";
      custom_gpu_name4 = "";
      custom_gpu_name5 = "";
    };
  };
}
