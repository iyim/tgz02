.class public final Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;
.super Ljava/lang/Object;
.source "GeniusNetworkV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;-><init>(Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mBuilderMap:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$1;->$SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyleV2:[I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$UnImplementNetworkStyle;

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$UnImplementNetworkStyle;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mBuilderMap:Ljava/util/Map;

    const-class v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;

    new-instance v1, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;

    invoke-direct {v1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private castType(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mBuilderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mBuilderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addConverterFactory(Lcom/alibaba/ailabs/tg/network/Converter$Factory;)Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;
    .locals 2

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$1;->$SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyleV2:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->castType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;->addConverterFactory(Lcom/alibaba/ailabs/tg/network/Converter$Factory;)Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;
    .locals 3

    .line 85
    sget-object v0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$1;->$SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyleV2:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$UnImplementNetworkStyle;

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$UnImplementNetworkStyle;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    :goto_0
    const-class v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->castType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;

    .line 89
    new-instance v1, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;->build()Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2$Builder;->mStyle:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/ailabs/tg/network/GeniusNetworkV2;-><init>(Ljava/lang/Object;Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;)V

    return-object v1
.end method
