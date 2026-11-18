.class final Lcom/alibaba/ailabs/base/util/LogTime$1;
.super Ljava/lang/Object;
.source "LogTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/LogTime$1;->val$page:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/LogTime$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->access$000()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->access$000()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->access$000()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 43
    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/LogTime$1;->val$page:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 51
    :cond_2
    new-instance v0, Lcom/alibaba/ailabs/base/bean/TimeMessage;

    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/LogTime$1;->val$page:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/LogTime$1;->val$message:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/base/bean/TimeMessage;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 52
    sget-object v1, Lcom/alibaba/ailabs/base/util/LogTime;->SHOW:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeMessage :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogTime"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->access$100()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/alibaba/ailabs/base/util/LogTime;->access$102(Ljava/util/List;)Ljava/util/List;

    .line 58
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->access$100()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
