.class final Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "GenieRegistryInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistryInstaller:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;


# direct methods
.method public constructor <init>(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;->mRegistryInstaller:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 85
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;->mRegistryInstaller:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;

    invoke-static {p2}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->access$000(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;->mRegistryInstaller:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;

    invoke-static {p2}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->access$000(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 86
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;->mRegistryInstaller:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;

    invoke-static {p2}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->access$000(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->cancel(Z)Z

    .line 89
    :cond_0
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;->mRegistryInstaller:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;

    new-instance v0, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    invoke-direct {v0, p1}, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->access$002(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;)Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    .line 90
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller$Receiver;->mRegistryInstaller:Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;

    invoke-static {p1}, Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;->access$000(Lcom/alibaba/genie/waft/gcs/registry/GenieRegistryInstaller;)Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
