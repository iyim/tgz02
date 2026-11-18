.class public Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;
.super Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;
.source "MtopHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile mInstance:Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;
    .locals 2

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->mInstance:Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->mInstance:Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    invoke-direct {v1}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->mInstance:Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->mInstance:Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    return-object v0
.end method


# virtual methods
.method public setMtopInstance(Lmtopsdk/mtop/intf/Mtop;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->mtop:Lmtopsdk/mtop/intf/Mtop;

    return-void
.end method
