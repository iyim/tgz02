.class public Lcom/alibaba/ailabs/genie/adv/service/AdvResponseData;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "AdvResponseData.java"


# instance fields
.field private data:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "model"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvResponseData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvResponseData;->data:Ljava/lang/String;

    return-void
.end method
