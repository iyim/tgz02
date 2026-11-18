.class Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;
.super Ljava/lang/Object;
.source "TimeLoopUtil.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loop5s()V
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

    .line 162
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

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

    .line 186
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop()V

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 5
    .param p1    # Ljava/lang/Long;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loop time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

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

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;->beat(I)V

    .line 177
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 178
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$1000(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;->timeOut()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 162
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->access$902(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
