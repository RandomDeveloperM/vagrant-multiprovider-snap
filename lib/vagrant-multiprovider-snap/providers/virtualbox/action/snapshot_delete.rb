module VagrantPlugins

    module ProviderVirtualBox

        module Action

            class SnapshotDelete

                def initialize(app, env)
                    @app = app
                end

                def call(env)

                    env[:ui].info(I18n.t("vagrant_snap.actions.vm.snapshot_delete.deleting",
                        :snapshot => env[:snap_name]),
                        :prefix => false
                    )

                    env[:machine].provider.driver.snapshot_delete(snap_name)

                    @app.call(env)

                end

            end

        end

    end

end
