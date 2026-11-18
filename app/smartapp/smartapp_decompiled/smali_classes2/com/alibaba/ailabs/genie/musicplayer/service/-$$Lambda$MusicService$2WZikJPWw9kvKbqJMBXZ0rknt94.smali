.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$2WZikJPWw9kvKbqJMBXZ0rknt94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$2WZikJPWw9kvKbqJMBXZ0rknt94;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$2WZikJPWw9kvKbqJMBXZ0rknt94;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$2WZikJPWw9kvKbqJMBXZ0rknt94;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$2WZikJPWw9kvKbqJMBXZ0rknt94;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->lambda$requestMiGuUrlByID$7$MusicService(Ljava/lang/String;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
