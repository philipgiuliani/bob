defmodule Bob.Job.BuildOTP do
  require Logger

  def run(ref_name, ref, linux) do
    directory = Bob.Directory.new()
    Logger.info("Using directory #{directory}")
    Bob.Script.run({:script, "otp/otp.sh"}, [ref_name, ref, linux], directory)
  end

  def priority(), do: 2
  def weight(), do: 4
  def concurrency(), do: :shared
end
