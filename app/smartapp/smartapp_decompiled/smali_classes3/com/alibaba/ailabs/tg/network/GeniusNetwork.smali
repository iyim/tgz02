.class public Lcom/alibaba/ailabs/tg/network/GeniusNetwork;
.super Ljava/lang/Object;
.source "GeniusNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/network/GeniusNetwork$UnImplementNetworkStyle;,
        Lcom/alibaba/ailabs/tg/network/GeniusNetwork$Builder;
    }
.end annotation


# instance fields
.field private mServiceImpl:Ljava/lang/Object;

.field private mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyle;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/alibaba/ailabs/tg/network/ServiceStyle;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork;->mServiceImpl:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork$1;->$SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyle:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    const-class v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork;->mServiceImpl:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/tg/network/GeniusNetwork$UnImplementNetworkStyle;

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/tg/network/GeniusNetwork$UnImplementNetworkStyle;-><init>(Ljava/lang/String;)V

    throw p1
.end method
