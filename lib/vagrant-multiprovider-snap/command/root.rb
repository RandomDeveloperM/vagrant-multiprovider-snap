require 'optparse'

module VagrantSnap

    module Command

        class Root < Vagrant.plugin("2", :command)

            def initialize(argv, env)

                super

                @main_args, @sub_command, @sub_args = split_main_and_subcommand(argv)

                @subcommands = Vagrant::Registry.new

                @subcommands.register(:take) do
                    require_relative "take"
                    Take
                end

                @subcommands.register(:delete) do
                    require_relative "delete"
                    Delete
                end

                @subcommands.register(:rollback) do
                    require_relative "rollback"
                    Rollback
                end

                @subcommands.register(:list) do
                    require_relative "list"
                    List
                end


            end

            def execute

                if @main_args.include?("-h") || @main_args.include?("--help")
                    return help
                end

                command_class = @subcommands.get(@sub_command.to_sym) if @sub_command
                return help if !command_class || !@sub_command

                # Initialize and execute the command class
                command_class.new(@sub_args, @env).execute

            end

            def help
                opts = OptionParser.new do |opts|
                    opts.banner = 'Usage: vagrant snap <command> [<args>]'
                    opts.separator ""
                    opts.separator "Available subcommands:"

                    keys = []
                    @subcommands.each { |key, value| keys << key.to_s }

                    keys.sort.each do |key|
                        opts.separator "     #{key}"
                    end

                    opts.separator ""
                    opts.separator "For help on any individual command run 'vagrant snap COMMAND -h'"
                end

                @env.ui.info(opts.help, :prefix => false)
            end

        end

    end

end
