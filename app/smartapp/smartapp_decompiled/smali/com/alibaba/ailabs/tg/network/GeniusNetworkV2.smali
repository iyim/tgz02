.class public Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;
.super Ljava/lang/Object;
.source "GeniusNetworkV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$UnImplementNetworkStyle;,
        Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;
    }
.end annotation


# instance fields
.field private mServiceImpl:Ljava/lang/Object;

.field private mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;->mServiceImpl:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

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
    sget-object v0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$1;->$SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyleV2:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    const-class v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;->mServiceImpl:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->createGenieMtop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$UnImplementNetworkStyle;

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$UnImplementNetworkStyle;-><init>(Ljava/lang/String;)V

    throw p1
.end method
