.class public Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;
.super Ljava/lang/Object;
.source "GetweatherResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CYINDEXBean"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private degree:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDegree()Ljava/lang/String;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;->degree:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setDegree(Ljava/lang/String;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;->degree:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$CYINDEXBean;->name:Ljava/lang/String;

    return-void
.end method
