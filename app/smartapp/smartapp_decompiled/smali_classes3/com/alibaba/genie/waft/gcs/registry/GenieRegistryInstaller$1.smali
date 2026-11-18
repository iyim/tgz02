.class Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$1;
.super Ljava/lang/Object;
.source "GenieRegistryInstaller.java"

# interfaces
.implements Lcom/taobao/aranger/intf/ProcessStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->registerProcessState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$1;->this$0:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessStart(Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProcessStart() called with: paramString = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieRegistryInstaller"

    invoke-static {v1, v0}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->getInstance()Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->unfreezeWithProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onProcessStop(Ljava/lang/String;)V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProcessStop() called with: paramString = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieRegistryInstaller"

    invoke-static {v1, v0}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->getInstance()Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->freezeWithProcess(Ljava/lang/String;)V

    return-void
.end method
