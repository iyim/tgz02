.class Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;
.super Landroid/database/ContentObserver;
.source "GenieApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onTtsInfo"
.end annotation


# instance fields
.field listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

.field sessionId:I

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;Landroid/os/Handler;ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    .line 923
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 924
    iput p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->sessionId:I

    .line 925
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 930
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

    .line 932
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "status"

    .line 938
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 940
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->sessionId:I

    invoke-interface {p1, v0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;->onTtsCallback(II)V

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 943
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    .line 945
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->access$100(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 948
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
