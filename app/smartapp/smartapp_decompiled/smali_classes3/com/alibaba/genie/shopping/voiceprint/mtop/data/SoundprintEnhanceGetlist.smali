.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintEnhanceGetlist;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "SoundprintEnhanceGetlist.java"


# instance fields
.field private model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;",
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
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintEnhanceGetlist;->model:Ljava/util/List;

    return-object v0
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintEnhanceGetlist;->model:Ljava/util/List;

    return-void
.end method
