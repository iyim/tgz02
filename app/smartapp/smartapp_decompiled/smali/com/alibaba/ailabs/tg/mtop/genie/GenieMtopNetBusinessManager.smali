.class public Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopNetBusinessManager;
.super Ljava/lang/Object;
.source "GenieMtopNetBusinessManager.java"


# static fields
.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopNetBusinessManager;->sCache:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopNetBusinessManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;

    sget-object v1, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->GENIE_MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;-><init>(Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;)V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->build()Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopNetBusinessManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
