.class public Lcom/alibaba/ailabs/genie/config/reponse/QueryReponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "QueryReponse.java"


# instance fields
.field private model:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "model"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/config/reponse/QueryReponse;->model:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/config/reponse/QueryReponse;->model:Ljava/lang/String;

    return-void
.end method
