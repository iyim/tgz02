.class public Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.super Ljava/lang/Object;
.source "BaseReqData.java"


# instance fields
.field private who:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "who"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getWho()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;->who:Ljava/lang/String;

    return-object v0
.end method

.method public setWho(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;->who:Ljava/lang/String;

    return-void
.end method
