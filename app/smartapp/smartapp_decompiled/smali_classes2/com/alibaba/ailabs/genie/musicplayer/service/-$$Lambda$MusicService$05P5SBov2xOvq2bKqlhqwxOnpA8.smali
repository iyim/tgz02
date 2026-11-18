.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$05P5SBov2xOvq2bKqlhqwxOnpA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$05P5SBov2xOvq2bKqlhqwxOnpA8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$05P5SBov2xOvq2bKqlhqwxOnpA8;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$05P5SBov2xOvq2bKqlhqwxOnpA8;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$05P5SBov2xOvq2bKqlhqwxOnpA8;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$05P5SBov2xOvq2bKqlhqwxOnpA8;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->lambda$onStartCommand$6(Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
