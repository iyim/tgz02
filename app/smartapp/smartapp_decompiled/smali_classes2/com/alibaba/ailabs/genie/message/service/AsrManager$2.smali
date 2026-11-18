.class Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;
.super Ljava/lang/Object;
.source "AsrManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/service/AsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTtsCallback(II)V
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTtsCallback id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentRegisterSessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    .line 322
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$500(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsrManager"

    .line 321
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$500(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)I

    move-result v0

    if-ne v0, p1, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_3

    .line 341
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$600(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 342
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$600(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;

    .line 343
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;->onError(I)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$600(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 335
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$600(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;

    .line 336
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;->onTtsEnd(I)V

    goto :goto_1

    .line 327
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$600(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 328
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$600(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;

    .line 329
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;->onTtsBegin(I)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
