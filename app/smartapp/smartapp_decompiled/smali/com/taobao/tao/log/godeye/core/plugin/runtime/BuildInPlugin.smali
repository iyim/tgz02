.class public Lcom/taobao/tao/log/godeye/core/plugin/runtime/BuildInPlugin;
.super Lcom/taobao/tao/log/godeye/core/plugin/runtime/Plugin;
.source "BuildInPlugin.java"


# direct methods
.method public constructor <init>(Lcom/taobao/tao/log/godeye/core/plugin/runtime/Plugin$PluginData;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/taobao/tao/log/godeye/core/plugin/runtime/Plugin;-><init>(Lcom/taobao/tao/log/godeye/core/plugin/runtime/Plugin$PluginData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/plugin/runtime/BuildInPlugin;->pluginData:Lcom/taobao/tao/log/godeye/core/plugin/runtime/Plugin$PluginData;

    invoke-virtual {v0}, Lcom/taobao/tao/log/godeye/core/plugin/runtime/Plugin$PluginData;->getMainClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/taobao/tao/log/godeye/core/plugin/runtime/BuildInPlugin;->executePluginMainClass(Ljava/lang/Class;)V

    return-void
.end method
