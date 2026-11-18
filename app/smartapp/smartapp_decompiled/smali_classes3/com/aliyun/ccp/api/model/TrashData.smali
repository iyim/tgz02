.class public Lcom/aliyun/ccp/api/model/TrashData;
.super Lcom/aliyun/ccp/api/model/FileData;
.source "TrashData.java"


# instance fields
.field private headRevisionId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "head_revision_id"
    .end annotation
.end field

.field private trashedAt:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "trashed_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/aliyun/ccp/api/model/FileData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getHeadRevisionId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/TrashData;->headRevisionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrashedAt()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/TrashData;->trashedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setHeadRevisionId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/TrashData;->headRevisionId:Ljava/lang/String;

    return-void
.end method

.method public setTrashedAt(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/TrashData;->trashedAt:Ljava/lang/String;

    return-void
.end method
