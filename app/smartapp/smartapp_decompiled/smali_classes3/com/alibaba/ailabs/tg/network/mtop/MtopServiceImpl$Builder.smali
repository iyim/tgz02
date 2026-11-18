.class public final Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl$Builder;
.super Ljava/lang/Object;
.source "MtopServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addConverterFactory(Lcom/alibaba/ailabs/tg/network/Converter$Factory;)Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl$Builder;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl$Builder;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;
    .locals 2

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;

    invoke-direct {v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl$Builder;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;->access$102(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;Lcom/alibaba/ailabs/tg/network/Converter$Factory;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-object v0
.end method
