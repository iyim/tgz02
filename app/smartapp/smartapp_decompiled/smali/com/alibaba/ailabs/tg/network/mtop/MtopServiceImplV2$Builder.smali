.class public final Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;
.super Ljava/lang/Object;
.source "MtopServiceImplV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;
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

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addConverterFactory(Lcom/alibaba/ailabs/tg/network/Converter$Factory;)Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;
    .locals 2

    .line 77
    new-instance v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

    invoke-direct {v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->access$102(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;Lcom/alibaba/ailabs/tg/network/Converter$Factory;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-object v0
.end method
