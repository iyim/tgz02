.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$ListAppsBySceneRequest$hjD5jao6aHwVJ6UcnFqJsdjAlEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$ListAppsBySceneRequest$hjD5jao6aHwVJ6UcnFqJsdjAlEk;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$ListAppsBySceneRequest$hjD5jao6aHwVJ6UcnFqJsdjAlEk;->f$1:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$ListAppsBySceneRequest$hjD5jao6aHwVJ6UcnFqJsdjAlEk;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$ListAppsBySceneRequest$hjD5jao6aHwVJ6UcnFqJsdjAlEk;->f$1:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;->lambda$getListAppsByScene$158$ListAppsBySceneRequest(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
