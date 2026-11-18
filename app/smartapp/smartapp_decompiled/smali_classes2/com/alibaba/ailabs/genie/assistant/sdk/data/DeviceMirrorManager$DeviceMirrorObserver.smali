.class Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager$DeviceMirrorObserver;
.super Landroid/database/ContentObserver;
.source "DeviceMirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceMirrorObserver"
.end annotation


# instance fields
.field listener:Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;Landroid/os/Handler;Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager$DeviceMirrorObserver;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    .line 40
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 41
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager$DeviceMirrorObserver;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uri = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AliTVASRManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager$DeviceMirrorObserver;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;->onUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
