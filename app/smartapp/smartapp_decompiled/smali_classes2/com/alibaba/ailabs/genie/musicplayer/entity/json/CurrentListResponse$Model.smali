.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;
.super Ljava/lang/Object;
.source "CurrentListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Model"
.end annotation


# instance fields
.field private pageNum:I

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPageNum()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;->pageNum:I

    return v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;->result:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;->totalCount:I

    return v0
.end method

.method public setPageNum(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;->pageNum:I

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;->result:Ljava/util/List;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;->totalCount:I

    return-void
.end method
