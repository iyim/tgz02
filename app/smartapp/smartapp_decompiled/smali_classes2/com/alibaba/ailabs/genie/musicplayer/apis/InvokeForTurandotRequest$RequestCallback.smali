.class public interface abstract Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;
.super Ljava/lang/Object;
.source "InvokeForTurandotRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestCallback"
.end annotation


# virtual methods
.method public abstract failed()V
.end method

.method public abstract success(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;",
            ">;)V"
        }
    .end annotation
.end method
