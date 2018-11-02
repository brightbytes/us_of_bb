defmodule UsOfBb.Mixfile do
  use Mix.Project

  @target System.get_env("NERVES_TARGET") || "rpi3"

  def project do
    [app: :us_of_bb,
     version: "0.0.1",
     target: @target,
     archives: [nerves_bootstrap: "~> 0.1.4"],
     deps_path: "deps/#{@target}",
     build_path: "_build/#{@target}",
     # config_path: "config/#{@target}/config.exs",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases,
     deps: deps ++ system(@target)]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {UsOfBb, []},
      applications: [
        #:nerves_system_rpi2,
        :nerves_system_rpi3,
        :logger,
        :nerves_neopixel,
        :nerves_system,
        :nerves_system_br,
        :nerves_toolchain_arm_unknown_linux_gnueabihf,
        :nerves_toolchain,
        :nerves
      ]
    ]
  end

  def deps do
    [{:nerves, "~> 0.3.0"},
     {:nerves_neopixel, "~> 0.3.0"}]
  end

  def system(target) do
    [{:"nerves_system_#{target}", ">= 0.0.0"}]
  end

  def aliases do
    ["deps.precompile": ["nerves.precompile", "deps.precompile"],
     "deps.loadpaths":  ["deps.loadpaths", "nerves.loadpaths"]]
  end

end
