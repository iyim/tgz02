.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$vCUqFvt3skKsf9aGel7OE3zAWSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$vCUqFvt3skKsf9aGel7OE3zAWSE;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$vCUqFvt3skKsf9aGel7OE3zAWSE;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->lambda$getAppAuthInfo$77$TMEMusicModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V

    return-void
.end method
