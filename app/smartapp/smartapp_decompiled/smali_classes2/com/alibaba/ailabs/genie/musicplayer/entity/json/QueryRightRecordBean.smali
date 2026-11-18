.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "QueryRightRecordBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;

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
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;->statusCode:Ljava/lang/String;

    return-void
.end method
