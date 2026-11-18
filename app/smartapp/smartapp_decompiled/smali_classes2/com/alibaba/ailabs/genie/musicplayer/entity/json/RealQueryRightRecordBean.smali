.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "RealQueryRightRecordBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelList;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;

.field private statusCode:Ljava/lang/String;


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
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;->statusCode:Ljava/lang/String;

    return-void
.end method
