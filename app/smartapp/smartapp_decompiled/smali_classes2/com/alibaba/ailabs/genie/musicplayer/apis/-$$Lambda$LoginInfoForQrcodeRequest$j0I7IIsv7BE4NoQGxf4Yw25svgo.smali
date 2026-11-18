.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$j0I7IIsv7BE4NoQGxf4Yw25svgo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$j0I7IIsv7BE4NoQGxf4Yw25svgo;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$j0I7IIsv7BE4NoQGxf4Yw25svgo;->f$1:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$j0I7IIsv7BE4NoQGxf4Yw25svgo;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$j0I7IIsv7BE4NoQGxf4Yw25svgo;->f$1:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;->lambda$getLoginInfoForWechatQrcode$160$LoginInfoForQrcodeRequest(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
