.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "ListswitchResponseData.java"


# instance fields
.field private model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;->model:Ljava/util/List;

    return-object v0
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;->model:Ljava/util/List;

    return-void
.end method
