.class Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;
.super Ljava/lang/Object;
.source "TimeLoopUtil.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loop3s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 150
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop()V

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 5
    .param p1    # Ljava/lang/Long;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loop time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLoop"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;->beat(I)V

    .line 142
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x13

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 127
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$602(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
