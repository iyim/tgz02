.class public Lcom/aliyun/ccp/api/response/trash/ListTrashResponse;
.super Lcom/aliyun/ccp/api/response/BasePageResponse;
.source "ListTrashResponse.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/ccp/api/model/TrashData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BasePageResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/ccp/api/model/TrashData;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/trash/ListTrashResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/ccp/api/model/TrashData;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/trash/ListTrashResponse;->items:Ljava/util/List;

    return-void
.end method
