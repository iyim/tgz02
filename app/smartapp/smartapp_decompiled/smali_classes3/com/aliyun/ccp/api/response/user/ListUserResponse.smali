.class public Lcom/aliyun/ccp/api/response/user/ListUserResponse;
.super Lcom/aliyun/ccp/api/response/BasePageResponse;
.source "ListUserResponse.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/ccp/api/model/UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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
            "Lcom/aliyun/ccp/api/model/UserData;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/user/ListUserResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/ccp/api/model/UserData;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/user/ListUserResponse;->items:Ljava/util/List;

    return-void
.end method
