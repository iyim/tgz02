.class Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;
.super Landroid/database/ContentObserver;
.source "GenieApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrangeObserver"
.end annotation


# instance fields
.field listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;

.field orangeKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;Landroid/os/Handler;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    .line 1380
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1381
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;

    .line 1382
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;->orangeKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1387
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

    const-string v0, "AliTVASRManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "status"

    .line 1395
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1397
    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;->onUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1399
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
